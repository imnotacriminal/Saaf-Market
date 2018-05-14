<?php 
class Forum{

	private $db;

    function __construct($DB_con, User $user)
    {
      $this->db = $DB_con;
	    $this->user = $user;
    }

    public function AllowedToPost($catoID, $username)
    {
    	$a = $this->db->prepare("SELECT * FROM forum_categories WHERE allowed_to_post='1' AND id='".$catoID."'");
    	$a->Execute();
    	if($a->Rowcount() > 0) { return true; } else{ if($this->user->isAdmin($username)) { return true; }else{ return false; } }
    }

    public function isLocked($topicID) 
    {
    	$a = $this->db->prepare('SELECT * FROM forum_topics WHERE topic_locked="0" AND id="'.$topicID.'"');
    	$a->Execute();
    	if($a->Rowcount() > 0) { return true; }else{ return false; }
    }

    public function TopicExists($TopicID) 
    {
    	$a = $this->db->prepare("SELECT * FROM forum_topics WHERE id='".$topicID."'");
    	$a->execute();
    	if($a->Rowcount() > 0) { return true; }else{ return false; }
    }

    public function GetForumCategories() 
    {
    	$array = array();
    	$a = $this->db->prepare("SELECT * FROM forum_categories WHERE cato_enabled='1'");
    	$a->execute();
    	if($a->Rowcount() > 0) {
    		foreach($a as $cato) {
			  $topics = $this->db->prepare("SELECT * FROM forum_topics WHERE cato_id='".$cato['id']."'");
              $topics->Execute();
              if($topics->Rowcount() == 0) { $TopicAmount = "No topics posted"; }else{ $TopicAmount = $topics->Rowcount(); }
       	      $replies = $this->db->prepare("SELECT * FROM forum_replies WHERE cato_id='".$cato['id']."'");
          	  $replies->Execute();
       	      if($replies->Rowcount() == 0 ) { $ReplyAmount = "No replies posted"; }else{ $ReplyAmount = $replies->Rowcount(); }

       	      $newest1 = $this->db->prepare("SELECT * FROM forum_topics WHERE cato_id='".$cato['id']."' ORDER BY topic_posted DESC LIMIT 1");
          	  $newest1->Execute();
            
           	  $newest2 = $this->db->prepare("SELECT * FROM forum_replies WHERE cato_id='".$cato['id']."' ORDER BY reply_Date DESC LIMIT 1");
          	  $newest2->Execute();

          	  if($newest1->Rowcount() == 0) { $latestpost = 'n/a'; }else{ 
          	  	if($newest2->Rowcount() == 0 ) { foreach($newest1 as $one) { $latestpost = $one['topic_posted']; } }else{
          	  		foreach($newest1 as $one) {
          	  			foreach($newest2 as $two) {
          	  				$date1 = $one['topic_posted'];
          	  				$date2 = $two['reply_Date'];

          	  				if($date1 < $date2) { $latestpost = $date2;
          	  				}elseif($date2 < $date1) { $latestpost = $date1; }
          	  			}
          	  		}
          	  	}
          	  } 

          	  $cato_array = array('id' => $cato['id'], 'name' => $cato['cato_name'], 'desc' => $cato['cato_desc'], 'topics' => $TopicAmount, 'replies' => $ReplyAmount, 'latest_post' => $latestpost);
          	  $array[] = $cato_array;
    		}
    	}else{
			$error = array('Message_type' => 'Error', 'Message' => 'No categories found');
            $array[] = $error;
    	}
    	return $array;
    }

    public function GetTopics($category) 
    {
    	$array = array();
    	$a = $this->db->prepare('SELECT * FROM forum_topics WHERE cato_id="'.$category.'"');
    	$a->Execute();

    	if($a->Rowcount() > 0) {
    		foreach($a as $topic) {
    			$b = $this->db->prepare('SELECT * FROM forum_replies WHERE topic_id="'.$topic['id'].'"');
    			$b->Execute();
    			if($b->Rowcount() == 0 ) { $latestReply = $topic['topic_posted']; }else{ foreach($b as $date) { $latestReply = $date['reply_date']; }}

    			$topic_array = array('id' => $topic['id'], 'title' => $topic['topic_name'], 'author' => $topic['posted_by'], 'date_posted' => $topic['topic_posted'], 'latest_post'=>$latestReply, 'locked' => $topic['topic_locked'], 'pinned' => $topic['topic_pinned']);
    			$array[] = $topic_array;
    		}
    	}else{
			$error = array('Message_type' => 'Error', 'Message' => 'No topics found');
            $array[] = $error;
    	}
    	return $array;
    }

    public function GetTopic($TopicID)
    {
    	$array = array();
    	$a = $this->db->prepare("SELECT * FROM forum_topics where id='".$TopicID."'");
    	$a->Execute();

    	if($a->Rowcount() > 0) {
    		foreach($a as $topic) {
    			$topic_array = array('id' => $topic['id'], 'title' => $topic['topic_name'], 'text' => $topic['topic_text'], 'author' => $topic['posted_by'], 'date_posted'=> $topic['topic_posted'], 'locked' => $topic['topic_locked'], 'pinned' => $topic['topic_pinned']);
    			$array[] = $topic_array;
    		}
    	}else{
			$error = array('Message_type' => 'Error', 'Message' => 'Topic not found');
            $array[] = $error;
    	}
    	return $array;
    }

    public function GetTopicReplies($TopicID) 
    {
   		$array = array();
   		$a = $this->db->prepare("SELECT * FROM forum_replies WHERE topic_id='".$TopicID."'");
   		$a->Execute(); 

   		if($a->Rowcount() > 0) {
   			foreach($a as $reply) {
   				$reply_array = array('id' => $reply['id'], 'message' => $reply['reply_text'], 'date_posted' => $reply['reply_date'], 'posted_by' => $user->GetUsername($reply['user_id']));
   				$array[] = $reply_array;	
   			}
   		}else{
			$error = array('Message_type' => 'Error', 'Message' => 'No replies found.');
            $array[] = $error;
   		}
    }

    public function CreateTopic($TopicTitle, $TopicText, $author, $CatoID)
    {
		$date = date('d/m/Y');
    	$array = array();
    	if($this->AllowedToPost($CatoID, $author)) {
    		if(!empty($TopicTitle)) {
    			if(!empty($TopicText)) {		
    				$a = $this->db->prepare('INSERT INTO forum_topics(cato_id, topic_name, topic_text, topic_posted, posted_by, topic_locked, topic_pinned) VALUES (:cato_id, :topic_name, :topic_text, :topic_posted, :posted_by, :topic_locked, :topic_pinned)');
    				$a->Execute(array('cato_id' => $CatoID, ':topic_name' => htmlspecialchars($TopicTitle), ':topic_text' => htmlspecialchars($TopicText), ':topic_posted' => $date, ':posted_by'=>$author, ':topic_locked' => '0', ':topic_pinned' => '0'));
    				if($a->Rowcount() > 0) {
						  $Success = array('Message_type' => 'Success', 'Message' => 'Topic posted.');
              $array[] = $Success;
    				}else{
						  $error = array('Message_type' => 'Error', 'Message' => 'Please fill in the topic text.');
            	$array[] = $error;		
    				}
    			}else{
					  $error = array('Message_type' => 'Error', 'Message' => 'Please fill in the topic text.');
            $array[] = $error;
    			}
    		}else{
				  $error = array('Message_type' => 'Error', 'Message' => 'Please fill in a topic title.');
				  $array[] = $error;
    		}
    	}else{
			  $error = array('Message_type' => 'Error', 'Message' => 'You are not allowed to post in this category.');
        $array[] = $error;
    	}
    	return $array;
    }

    public function CreateReply($TopicID, $ReplyText, $author)
    {
    	$array = array();
		      b$date = date('d/m/Y');
    	if(!$this->isLocked($topicID)) {
    		if(!empty($ReplyText)) { 
    			if($this->TopicExists($topicID)) {
    				$catoID = $this->db->prepare('SELECT * FROM forum_topics WHERE id="'.$topicID.'"');
    				$catoID->Execute();
    				foreach($catoID as $eh) { $realcatoid = $eh['cato_id']; }

    				$a = $this->db->prepare('INSERT INTO forum_replies(topic_id, cato_id, user_id, reply_text, reply_date) VALUES (:topic_id, :cato_id, :user_id, :reply_text, :reply_date');
    				$a->Execute(array(':topic_id' => $TopicID, ':cato_id' => $realcatoid, ':user_id' => $user->GetUID($author), ':reply_text' => htmlspecialchars($ReplyText), ':reply_date'=>$date));
    				
    				if($a->Rowcount() > 0) {
						  $Success = array('Message_type' => 'Success', 'Message' => 'Reply posted.');
            	$array[] = $Success;
    				}else{
						  $error = array('Message_type' => 'Error', 'Message' => 'Something went wrong, please try again.');
              $array[] = $error;	
    				}
    			}else{
					   $error = array('Message_type' => 'Error', 'Message' => 'Topic does not seem to exist.');
             $array[] = $error;
    			}
    		}else{
				  $error = array('Message_type' => 'Error', 'Message' => 'Please fill in your reply.');
          $array[] = $error;
    		}
    	}else{
			  $error = array('Message_type' => 'Error', 'Message' => 'You cannot post in a locked topic.');
        $array[] = $error;
    	}
    	return $array;
    }

}