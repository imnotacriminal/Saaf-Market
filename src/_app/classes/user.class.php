<?php
class User{ 

	  private $db;

    function __construct($DB_con, pgp $pgp)
    {
      $this->db = $DB_con;
      $this->pgp = $pgp;
    }

    // tba in btc class
    function formatBTC($value)
    {
        $value = sprintf('%.8f', $value);
        $value = rtrim($value, '0');
        return $value;
    }

    public function logout()
    {
      session_unset();
      unset($_SESSION['user_session']);
      return true;
    }

    public function isAdmin($username)
    {
      $a = $this->db->prepare("SELECT * FROM users WHERE username='".$username."' AND is_admin='1'");
      $a->Execute();

      if($a->Rowcount() > 0){ return true; }
      else{ return false; }
    }

    public function isVendor($username)
    {
      $a = $this->db->prepare("SELECT * FROM users WHERE username='".$username."' AND Is_vendor='1'");
      $a->Execute();

      if($a->Rowcount() > 0){ return true; }
      else{ return false; }
    }

    public function getUnreadMessages($username)
    {
      $a = $this->db->prepare("SELECT * FROM private_msg WHERE (sent_to='".$username."' OR sent_from='".$username."')");
      $a->execute();

      $amount = 0;
      if($a->Rowcount() > 0) {
        foreach($a as $b) {
          if($b['sent_to'] == $username && $b['pm_read'] == NULL) {
            $amount++;
          }
          $b = $this->db->prepare("SELECT * FROM private_msg_reply WHERE pm_id='".$b['id']."' AND sent_from <> '".$username."'");
          $b->execute();

          foreach($b as $c) {
            if($c['pm_read'] == NULL) {
              $amount++;
            }
          }
        }
      }
      return $amount;
    }

    public function vendorRating($username)
    {
      $message = array();
      $a = $this->db->prepare('SELECT * FROM product_review WHERE vendor_id="'.$this->getUID($username).'" AND rating="1"');
      $a->Execute();
      $amount1 = $a->Rowcount();
      $one_star = $a->Rowcount() * 1;

      $b = $this->db->prepare('SELECT * FROM product_review WHERE vendor_id="'.$this->getUID($username).'" AND rating="2"');
      $b->Execute();
      $two_stars = $b->Rowcount() * 2;
      $amount2 = $b->Rowcount();

      $c = $this->db->prepare('SELECT * FROM product_review WHERE vendor_id="'.$this->getUID($username).'" AND rating="3"');
      $c->Execute();
      $three_stars = $c->Rowcount() * 3;
      $amount3 = $c->Rowcount();

      $d = $this->db->prepare('SELECT * FROM product_review WHERE vendor_id="'.$this->getUID($username).'" AND rating="4"');
      $d->Execute();
      $four_stars = $d->Rowcount() * 4;
      $amount4 = $d->Rowcount();

      $e = $this->db->prepare('SELECT * FROM product_review WHERE vendor_id="'.$this->getUID($username).'" AND rating="5"');
      $e->Execute();
      $five_stars = $e->Rowcount() * 5;
      $amount5 = $e->Rowcount();

      $all_stars = $one_star + $two_stars + $three_stars + $four_stars + $five_stars;
      $all_reviews = $amount1 + $amount2 + $amount3 + $amount4 + $amount5;
      if($all_reviews > 0) {
        $msg2 = array('Type`' => 'Success', 'Message' => round($all_stars/$all_reviews) .'/5 stars ('.$all_reviews.' Reviews)');
        $message[] = $msg2;
      }else{
        $msg1 = array('Type' => 'Error', 'Message' => 'No ratings yet');
        $message[] = $msg1;
      }
      return $message;
    }

    public function LoggedIn()
    {
      if(isset($_SESSION['user_session']) == true) { return true; }
      else{ return false; }
    }

    public function isBanned($username)
    {
    $message = array();
    $a = $this->db->prepare("SELECT * FROM ban_list WHERE username='".$username."' AND ban_lifted='0'");
    $a->Execute();

    if($a->Rowcount() > 0)
     {
       foreach($a as $b){
        $msg1 =  array('ban_reason' => $b['ban_message']);
       $message[] = $msg1;
       return $message;
        }
      }else{return false; }
    }

    public function pgpAuth_Enabled($username)
    {
      $a = $this->db->prepare("SELECT * FROM users WHERE username='".$username."' AND 2fa_status='1'");
      $a->Execute();

      if($a->Rowcount() > 0 ) { return true; }else{ return false; }
    }

    public function Redirect($url)
    {
      header("Location: $url");
    }

    public function UserExists($username)
    {
	    $a = $this->db->prepare("SELECT * FROM users WHERE username='".$username."'");
	    $a->Execute();

	    if($a->Rowcount() > 0) { return true; }else{ return false; }
    }

    public function GetUID($username)
    {
      $a = $this->db->prepare("SELECT * FROM users WHERE username='". $username ."'");
      $a->Execute();

      if($a->Rowcount() > 0 ){ foreach($a as $id ) { return $id['id']; } }
    }

    public function GetUsername($id)
    {
      $a = $this->db->prepare("SELECT * FROM users WHERE id='". $id ."'");
      $a->Execute();

      if($a->Rowcount() > 0 ){ foreach($a as $username ) { return $username['username']; } }
    }

    public function Register($username, $password, $profile_pin)
    {
      $date = date('d/m/Y');
      $salt = "h@c.km9d1cK";
      $message = array();

      if(!$this->UserExists($username)){
       if(strlen($username) > 5){
        if(strlen($password) > 5){
          if(strlen($profile_pin) > 5)
          {
            $a = $this->db->prepare('INSERT INTO users(username, password_hash, profile_pin_hash, date_joined) VALUES (:username, :password, :pin, :date_joined)');
            $a->execute(array(':username'=>$username, ':password'=>hash('sha256', $password . $salt), ':pin'=>hash('sha256', $profile_pin . $salt), ':date_joined'=>$date));
            if($a->Rowcount() > 0){
              $msg1 = array('Message_type' => 'Success',  'Message' => 'User registerd, you can now login.');
              $message[] = $msg1;
              return $message;
            }else{
              $msg1 = array('Message_type' => 'Error',  'Message' => 'Something went wrong, please try again later.');
              $message[] = $msg1;
              return $message;
            }
          }else{
            $msg1 = array('Message_type' => 'Error',  'Message' => 'Pincode needs to be over 5 characters.');
            $message[] = $msg1;
            return $message;
          }
        }else{
          $msg1 = array('Message_type' => 'Error',  'Message' => 'Password needs to be over 5 characters.');
          $message[] = $msg1;
          return $message;
        }
       }else{
         $msg1 = array('Message_type' => 'Error',  'Message' => 'Username needs to be over 5 characters.');
         $message[] = $msg1;
         return $message;
       }
      }else{
        $msg1 = array('Message_type' => 'Error',  'Message' => 'User already exists.');
        $message[] = $msg1;
        return $message;
      }
    }

    public function UpdateLastOnline($username)
    {
      $date = date('d/m/Y');
      $a = $this->db->prepare("UPDATE users SET last_online='".$date."' WHERE username='".$username."'");
      $a->Execute();
    }

    public function Login($username, $password, $type, $twofastatus)
    {
   	  $salt = "h@c.km9d1cK";
      $message = array();
   	  if(!$this->isBanned($username))
   	  {

		      $a = $this->db->prepare("SELECT * FROM users WHERE username='".$username."' AND password_hash='".hash('sha256', $password . $salt)."'");
      	  $a->execute();
   	  	  if($a->Rowcount() > 0){
            if($type == 'normal'){
              if(!$this->pgpAuth_Enabled($username) || $twofastatus == "done"){
                $this->UpdateLastOnline($username);
                $_SESSION['user_session'] = $username;
                $this->Redirect("/home");
                return true;
              }else{
               $msg1 = array('Message_type' => 'Error', 'Message' => 'This account has 2FA enabled, please login using the 2FA login.');
               $message[] = $msg1;
               return $message;
              }
            }elseif($type = 'PGP'){
              $_SESSION['temp_name'] = $username;
              $_SESSION['temp_pass'] = $password;
              return true;
            }
   	  	  }else{
            $msg1 = array('Message_type' => 'Error',  'Message' => 'Incorrect username or password.');
   	  	    $message[] = $msg1;
            return $message;
          }

   	  }else{
   	  	 $msg1 = array('Message_type' => 'Error', 'Message' => 'This account has been banned from ' . SITE_NAME . ' if you\'d wish to get more information please create a support ticket.');
         $message[] = $msg1;
         return $message;
   	  }
    }

    public function ValidatePin($username, $pin)
    {
      $salt = "h@c.km9d1cK";
      $a = $this->db->prepare('SELECT * FROM users WHERE username="'.$username.'" AND profile_pin_hash="'.hash('sha256', $pin . $salt).'" ');
      $a->execute();
      if($a->Rowcount() > 0) { return true; }
      else{ return false; }
    }

    public function RecoverUser($username, $new_password, $recovery_pin)
    {
      $message = array();
      if($this->UserExists($username))
      {
      	if($this->ValidatePin($username, $recovery_pin))
      	{
      	  $salt = "h@c.km9d1cK";
      	  $a = $this->db->prepare("UPDATE users SET password_hash='".hash('sha256', $new_password . $salt)."' WHERE username='".$username."'");
          $a->Execute();
      	  if($a->Rowcount() > 0 ) {
            $msg1 =  array('Message_type' => 'Success', 'Message' => 'Password changed.' );
            $message[] = $msg1;
          }else{
           $msg1 =  array('Message_type' => 'Error', 'Message' => 'Something went wrong, please try again later.' );
           $message[] = $msg1;
         }
      	}else{
		    $msg1 =  array('Message_type' => 'Error', 'Message' => 'Pincode incorrect.' );
        $message[] = $msg1;
      	}
      }else{
    	$msg1 = array('Message_type' => 'Error', 'Message' => 'User does not exist' );
      $message[] = $msg1;
      }
      return $message;
    }

    /**************
    Start of orders
    ***************/
    public function GetAllOrders($username)
    {
      $orders = array();
      $a = $this->db->prepare("SELECT * FROM orders WHERE user_id='".$this->getUID($username)."'");
      $a->Execute();

      if($a->Rowcount() > 0) {
        foreach($a as $order) {
          $b = $this->db->prepare("SELECT * FROM products WHERE Id='".$order['product_id']."'");
          $b->execute();
          foreach($b as $product) {
            $order_array = array('id' => $order['id'], 'vendor' => $this->getUsername($product['vendor_id']), 'product' => $product['name'], 'quantity' => $order['product_quantity'], 'price' => $this->formatBTC($order['product_price']), 'date_orderd' => $order['order_date'], 'status' => $order['order_status']);
            $orders[] = $order_array;
          }
        }
      }else{
          $message = array('Message_type' => 'Error', 'Message' => 'No orders found' );
          $orders[] = $message;
      }
      return $orders;
    }

    public function GetOrderMessages($orderid) 
    {
      $ordermsg = array();
      $a = $this->db->prepare("SELECT * FROM order_messages WHERE order_id='".$orderid."'");
      $a->Execute();

      if($a->Rowcount() > 0) {
        foreach($a as $msg) {
          $msg = array('id' => $msg['id'], 'sent_by' => $this->getUsername($msg['user_id']), 'message' => $msg['order_message'], 'date_sent' => $msg['message_date']);
          $ordermsg[] = $msg;
        }
      }else{
        $message = array('Message_type' => 'Error', 'Message' => 'No order messages found' );
        $ordermsg[] = $message;  
      }
      return $ordermsg;
    }
    
    public function GetOrder($orderid, $username)
    {
      $order = array();
      $a = $this->db->prepare("SELECT * FROM orders WHERE id='".$orderid."' AND user_id='".$this->getUID($username)."'");
      $a->Execute();

      if($a->Rowcount() > 0) {
        foreach($a as $order) {
          $b = $this->db->prepare("SELECT * FROM products WHERE Id='".$order['product_id']."'");
          $b->execute();
          foreach($b as $product){
            $order_array = array('id' => $order['id'], 'vendor' => $this->getUsername($order['vendor_id']), 'product' => $product['name'], 'quantity'=>$order['product_quantity'], 'price' => $this->formatBTC($order['price']), 'date_orderd' => $order['date'], 'stats' => $order['order_status;']);
            $order[] = $order_array;
          }
        }
      }else{
        $message = array('Message_type' => 'Error', 'Message' => 'Order not found' );
        $order[] = $message;
      }
      return $order;
    }
    /**************
    End of orders
    ***************/


    /************************
    Start of ticket system
    ************************/
    public function UnreadTicketReplies($ticketid, $username)
    {
      $a = $this->db->prepare("SELECT * FROM ticket_comments WHERE coment_read='NULL' AND ticket_id='".$ticketid."' AND NOT(user_id='".$this->getUID($username)."')");
      $a->Execute();
      return $a->Rowcount();
    }

    public function SetRepliesAsRead($commentid, $username)
    {
      $a = $this->db->prepare("UPDATE Ticket_comments SET comment_read='1' WHERE id='".$commentid."' AND NOT(user_id='".$this->getUID($username)."')");
      $a->Execute();
      return true;
    }

		public function GetAllTickets($username)
    {
      $array = array();
      $a = $this->db->prepare("SELECT * FROM tickets WHERE user_id='".$this->getUID($username)."' ORDER BY ticket_date");
      $a->execute();

      if($a->Rowcount() > 0) {
        foreach($a as $ticket) {
          $ticket_array = array('id' => $ticket['id'], 'ticket_subject' => htmlspecialchars($ticket['ticket_issue']), 'ticket_status' => $ticket['is_active'], 'ticket_date' => $ticket['ticket_date'], 'unread_replies' => $this->UnreadTicketReplies($ticket['id'], $username));
          $array[] = $ticket;
        }
      }else{
        $errormsg = array('Message_type' => 'Error', 'Message' => 'You have no tickets.');
        $array[] = $errormsg;
      }
      return $array;
    }

    public function getTicket($ticketid, $username)
    {
      $array = array();
      $a = $this->db->prepare("SELECT * FROM tickets WHERE user_id='".$this->getUID($username)."' AND id='".$ticketid."'");
      $a->Execute();

      if($a->Rowcount() > 0) {
        foreach($a as $ticket) {
          $ticket_array = array('id' => $ticket['id'], 'ticket_subject' => htmlspecialchars($ticket['ticket_issue']), 'ticket_message' => htmlspecialchars($ticket['ticket_message']) ,'ticket_status' => $ticket['is_active'], 'ticket_date' => $ticket['date']);
          $array[] = $ticket_array;

          $b = $this->db->prepare("SELECT * FROM ticket_comments WHERE ticket_id='".$ticket['id']."' ORDER BY comment_date");
          $b->Execute();

          if($b->Rowcount() > 0) {
            foreach($b as $ticket_comment) {
              $this->SetRepliesAsRead($ticket_comment['id'], $username);
              $ticket_comment_array = array('comment_id' => $ticket_comment['id'], 'user' => $this->getUsername($ticket_comment['user_id']), 'comment_text' => $ticket_comment['comment'], 'comment_date' => $ticket_comment['comment_date'], 'comment_read' => $ticket_comment['comment_read']);
              $array[] = $ticket_comment_array;
            }
          }
        }
      }else{
        $errormsg = array('Message_type' => 'Error', 'Message' => 'Ticket not found.');
        $array[] = $errormsg;
      }
      return $array;
    }

    public function CreateTicket($username, $ticket_subject, $ticket_text)
    {
      $array = array();
      $date = date('d/m/Y H:i:s');

      if(!empty($ticket_subject)) {
        if(!empty($ticket_text)) {
          if(!empty($username)) {
            $a = $this->db->prepare("INSERT INTO tickets(user_id, is_active, ticket_type, ticket_issue, ticket_comment, ticket_date) VALUES (:user_id, :is_active, :ticket_type, :ticket_issue, :ticket_comment, :ticket_date)");
            $a->Execute(array(':user_id'=>$this->getUID($username), ':is_active'=>'1', ':ticket_type'=>"1", ':ticket_issue'=>$ticket_subject, ':ticket_comment'=>$ticket_text, ':ticket_date'=>$date));

            $successmsg = array('Message_type' => 'Success', 'Message' => 'Your ticket has successfully been created.');
            $array[] = $successmsg;
          }else{
            $errormsg = array('Message_type' => 'Error', 'Message' => 'Something went wrong, please try again.');
            $array[] = $errormsg;
          }
        }else{
          $errormsg = array('Message_type' => 'Error', 'Message' => 'Your ticket text cannot be empty.');
          $array[] = $errormsg;
        }
      }else{
        $errormsg = array('Message_type' => 'Error', 'Message' => 'Your ticket subject cannot be empty.');
        $array[] = $errormsg;
      }
      return $array;
    }

    public function ReplyOnTicket($ticketid, $username, $comment)
    {
      $array = array();
      $date = date('d/m/Y H:i:s');

      $ticket = $this->db->prepare("SELECT * FROM tickets WHERE user_id='".$this->getUID($username)."' AND id='".$ticketid."'");
      $ticket->Execute();

      if($ticket->Rowcount() > 0) {
        foreach($ticket as $a) {
          if($a['is_active'] == 1) {
            if(!empty($comment)) {
              if(!empty($username)) {
                $a = $this->db->prepare("INSERT INTO ticket_comments(ticket_id, user_id, comment, comment_date) VALUES (:ticket_id, :user_id, :comment, :comment_date)");
                $a->Execute(array(':ticket_id'=>$ticketid, ':user_id'=>$userid, ':comment'=>$comment, ":comment_date"=>$date));
              }else{
                $errormsg = array('Message_type' => 'Error', 'Message' => 'Something went wrong, please try again.');
                $array[] = $errormsg;
              }
            }else{
              $errormsg = array('Message_type' => 'Error', 'Message' => 'Ticket reply cannot be empty.');
              $array[] = $errormsg;
            }
          }else{
            $errormsg = array('Message_type' => 'Error', 'Message' => 'Ticket not active, you cannot leave a reply.');
            $array[] = $errormsg;
          }
        }
      }else{
        $errormsg = array('Message_type' => 'Error', 'Message' => 'Ticket not found.');
        $array[] = $errormsg;
      }
    }


    /************************
    End of ticket system
    ************************/
    

    /******************************
    Start of Private message system
    ******************************/
    public function GetAllPMS($username)
    {
      $array = array();
      $a = $this->db->prepare("SELECT * FROM private_msg WHERE sent_from='".$username."' OR sent_to='".$username."'");
      $a->Execute();

      if($a->Rowcount() > 0) {
        foreach($a as $pm) {
          $pm_array = array('id' => $pm['id'], 'sent_from' => $pm['sent_from'], 'sent_to' => $pm['sent_to'], 'subject' => $pm['pm_subject'], 'sent_on' => $pm['pm_senton']);
          $array[] = $pm_array;
        }
      }else{
        $errormsg = array('Message_type' => 'Error', 'Message' => 'You have no private messages.');
        $array[] = $errormsg;
      }
      return $array;
    }

    public function GetPM($pmid, $username)
    {
      $array = array();

      $a = $this->db->prepare("SELECT * FROM private_msg WHERE id='".$pmid."' AND sent_from='".$username."' OR id='".$pmid." AND 'sent_to='".$username."'");
      $a->Execute();

      if($a->Rowcount() > 0) {
        foreach($a as $pm) {
          $this->SetPMread($pm['id'], $username, 1);
          $pmarray1 = array('id' => $pm['id'], 'subject' => $pm['subject'], 'sent_from' => $pm['sent_from'], 'message' => $pm['pm_msg'], 'sent_on' => $pm['sent_on'], 'pm_read' => $pm['pm_read']);
          $array[] = $pmarray1;

          $b = $this->db->prepare("SELECT * FROM private_msg_reply WHERE Pm_id='".$pm['id']."'");
          $b->Execute();
          foreach($b as $pm2) {
            $this->SetPMread($pm2['id'], $username, 2);
            $pmarray2 = array('id' => $pm2['id'], 'subject'=> $pm2['pm_subject'], 'sent_from' => $pm['sent_from'], 'message' => $pm2['pm_msg'], 'sent_on' => $pm['sent_on'], 'pm_read' => $pm['pm_read']);
            $array[] = $pmarray2;
          }
        }
      }else{
        $errormsg = array('Message_type' => 'Error', 'Message' => 'Cannot find private message.');
        $array[] = $errormsg;
      }
      return $array;
    }

		public function SendPM($sender, $reciever, $subject, $message)
		{
			$array = array();
			$date = date('d/m/Y H:i:s');

			if($this->pgp->GetPGPkey($username) != false) {
				if($this->pgp->GetPGPkey($reciever) != false) {
					if(!empty($subject)) {
						if(!empty($message)) {
							if($this->UserExists($username)) {
								$a = $this->db->prepare("INSERT INTO private_msg(msg_type, sent_from, sent_to, pm_subject, pm_msg, pm_senton) VALUES (:msg_type, :sent_from, :sent_to, :pm_subject, :pm_msg, :pm_senton)");
								$a->Execute(array(':msg_type'=>'1', ':sent_from'=>$sender, ':sent_to'=>$reciever, ':pm_subject'=>$subject, ':pm_msg'=>$this->pgp->EncryptMessage($this->GetPGPkey($reciever), $message), ':pm_senton'=>$date));

								if($a->Rowcount() > 0) {
									$successmsg = array('Message_type' => 'Success', 'Message' => 'Private message sent.');
									$array[] = $successmsg;
								}else{
									$errormsg = array('Message_type' => 'Error', 'Message' => 'Something went wrong, please try again.');
									$array[] = $errormsg;
								}
							}else{
								$errormsg = array('Message_type' => 'Error', 'Message' => 'User does not exist.');
								$array[] = $errormsg;
							}
						}else{
							$errormsg = array('Message_type' => 'Error', 'Message' => 'Your message cannot be empty.');
							$array[] = $errormsg;
						}
					}else{
						$errormsg = array('Message_type' => 'Error', 'Message' => 'Your subject cannot be empty.');
						$array[] = $errormsg;
					}
				}else{
					$errormsg = array('Message_type' => 'Error', 'Message' => 'User who recieves the pm does not have a PGP key set.');
					$array[] = $errormsg;
				}
			}else{
				$errormsg = array('Message_type' => 'Error', 'Message' => 'You need to set a PGP key in order to send private messages.');
				$array[] = $errormsg;
			}
			return $array;
		}

		public function replyPM($pmid, $sender, $reciever, $message)
		{
        $array = array();
				$date = date('d/m/Y H:i:s');

				$a = $this->db->prepare("SELECT * FROM pivate_msg WHERE id='".$pmid."' AND ()");
				$a->Execute();

				if($a->Rowcount() > 0) {
          if($this->pgp->GetPGPkey($sender) != false) {
            if($this->pgp->GetPGPkey($reciever) != false) {
              if(!empty($message)) {
                $b = $this->db->prepare("INSERT INTO private_msg_reply(pm_id, sent_from, pm_msg, pm_senton) VALUES (:pm_id, :sent_from, :pm_msg, :pm_senton)");
                 $b->Execute(array(':pm_id'=>$pm_id, ':sent_from'=>$sender, ':pm_msg'=>$this->pgp->EncryptMessage($message), 'pm_senton'=>$date));

                 if($b->Rowcount() > 0) {
                    $successmsg = array('Message_type' => 'Error', 'Success' => 'Reply sent.');
                    $array[] = $successmsg;
                 }else{
                    $errormsg = array('Message_type' => 'Error', 'Message' => 'Something went wrong, please try again.');
                    $array[] = $errormsg;
                 }
              }else{
                $errormsg = array('Message_type' => 'Error', 'Message' => 'Your reply cannot be empty.');
                $array[] = $errormsg;
              }
            }else{
              $errormsg = array('Message_type' => 'Error', 'Message' => 'User who recieves the reply does not have a PGP key set.');
              $array[] = $errormsg;
            }
          }else{
            $errormsg = array('Message_type' => 'Error', 'Message' => 'YOu need to set a PGP key in order to send a reply.');
            $array[] = $errormsg;
          }
				}else{
          $errormsg = array('Message_type' => 'Error', 'Message' => 'Cannot find private message.');
          $array[] = $errormsg;
				}
        return $array;
		}

    public function SetPMread($pmid, $username, $type)
    {
      if($type == 1) {
        $a = $this->db->prepare('UPDATE private_msg SET pm_read="1" WHERE id="'.$pmid.'" AND sent_to="'.$username.'"');
        $a->execute();
        if($a->Rowcount() > 0){ return true; }else{ return false; }
      }elseif($type == 2){
        $b = $this->db->prepare('UPDATE private_msg_reply SET Pm_read="1" WHERE id="'.$pmid.'" AND sent_from <> "'.$username.'"');
        $b->execute();
        if($b->Rowcount() > 0) { return true; }else{ return false; }
      }
    }
    /*****************************
    End of Private message system
    ******************************/
}
