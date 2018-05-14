<?php
class Site{

	private $db;

    function __construct($DB_con, User $user)
    {
      $this->db = $DB_con;
	  $this->user = $user;
    }

    public function getCategories($type, $id)
    {
    	$array = array();
    	if($type == 1) {
    		$a = $this->db->prepare("SELECT * FROM categories WHERE enabled='1'");
    		$a->Execute();

    		foreach($a as $cato) {
				$b = $this->db->prepare("SELECT Category FROM products WHERE category='". $cato['id'] . "'");
            	$b->execute();
            	$AmountOfProducts = $b->rowCount();

    			$list = array('id' => $cato['id'] ,'cato_name' => $cato['category'], 'products' => $AmountOfProducts);
    			$array[] = $list;
    		}
    	}elseif($type == 2) {
    	 	$a = $this->db->prepare("SELECT * FROM subcategories WHERE categoryid='".$id."' AND enabled='1'");
    	 	$a->execute();

    	 	foreach($a as $sub) {
				$b = $this->db->prepare("SELECT Category FROM products WHERE SubCategory='". $sub['id'] . "'");
                $b->execute();
    	 		$products = $b->Rowcount();

    	 		$list = array('id' => $sub['id'], 'sub_name' => $sub['sub_name'], 'products' => $products);
    	 		$array[] = $list;
    	 	}
    	}
    	return $array;
    }

	function get_paging_info($tot_rows,$pp,$curr_page)
    {
        $pages = ceil($tot_rows / $pp); // calc pages

        $data = array(); // start out array
        $data['si']        = ($curr_page * $pp) - $pp;
        $data['pages']     = $pages;
        $data['curr_page'] = $curr_page;
        return $data;
    }

    public function ProductPagiation($currentpage, $type, $input, $perpage, $nofe)
    {
    	$array = array();
        $filter1;

    	if($nofe == "on") { $filter1 = "AND type=1"; }
    	if($type == "1") {
			$a = $this->db->prepare("SELECT * FROM products WHERE Category='".$input."' ".@$filter1." ");
            $a->execute();
    	}elseif ($type == "2") {
            $a = $this->db->prepare("SELECT * FROM products WHERE  SubCategory='".$input."'  ".@$filter1."");
            $a->execute();
    	}elseif ($type == "3") {
            $a = $this->db->prepare("SELECT * FROM products WHERE (name LIKE '%".$input."%' OR description LIKE '%".$input."%' OR tags LIKE '% ".$input."%')  ".@$filter1."");
            $a->execute();
    	}elseif ($type == "4") {
			$a = $this->db->prepare("SELECT * FROM products ".@$filter1." ");
            $a->execute();
    	}

    	$product_amount = $a->rowCount();
    	$paging_info = $this->get_paging_info($product_amount, $perpage, $currentpage);

    	if($product_amount > $perpage)
    	{
		$max = 4;
        if($type==1){ $link = '&category='.$input; }if($type==2){ $link = '&sub='.$input; }if($type==3){ $link = '&search='.$input; }if($type==4) { $link = ''; }
        if($paging_info['curr_page'] < $max)
                  $sp = 1;
        elseif($paging_info['curr_page'] >= ($paging_info['pages'] - floor($max / 2)) )
            $sp = $paging_info['pages'] - $max + 1;
        elseif($paging_info['curr_page'] >= $max)
            $sp = $paging_info['curr_page']  - floor($max/2);
        for($i = $sp; $i <= ($sp + $max -1);$i++) :
            if($i > $paging_info['pages'])
	    continue;

       if($paging_info['curr_page'] == 0 ) {
       	$page = array('page' => '1', 'url' => '&page=1' . $link, 'current_page' => 'true');
       	$array[] = $page;
       }
       if($paging_info['curr_page'] == $i) :
		 $page = array('page' => $i, 'url' => '&page='. $i . $link, 'current_page' => 'true');
       	 $array[] = $page;
       else :
		 $page = array('page' => $i, 'url' => '&page='. $i . $link, 'current_page' => 'false');
       	 $array[] = $page;
         endif;
	   endfor;

	    if($paging_info['curr_page'] < ($paging_info['pages'] - floor($max / 2)) && $paging_info['pages'] > $max) :
       	  $page1 = array('page' => '...', 'url' => '#', 'current_page' => 'false');
       	  $page2 = array('page' => $paging_info['pages'], 'url' => '&page='. $paging_info['pages'] . $link, 'current_page' => 'false');

          $array[] = $page1;
          $array[] = $page2;
        endif;
    	}
    	return $array;
    }

    public function GetFeaturedListings($limit)
    {
        // standard limit should be 4 :^)
        $array = array();
        $a = $this->db->prepare('SELECT * FROM products WHERE featured="1" LIMIT '.$limit.'');
        $a->execute();

        if($a->rowCount() > 0) {
            foreach($a as $product ) {
                $rating = $this->user->vendorRating($this->user->getUsername($product['user_id']));
                foreach($rating as $vendor_rep) {
                    $product_array = array('product_id' => $product['id'], 'product_code' => $product['code'], 'product_name' => $product['name'], 'product_desc' => $product['short_description'], 'product_image' => $product['image'], 'product_ships_from' => $product['ShipsTo'], 'product_ships_to' => $product['ShipsFrom'], 'product_price' => $this->user->formatBTC($product['price']), 'product_vendor' => $this->user->getUsername($product['user_id']), 'product_type' => $product['type'], 'rating' => $vendor_rep['Message']);
                    $array[] = $product_array;
                }
            }        
        }else{
            $error = array('Message_type' => 'Error', 'Message' => 'No featured products found');
            $array[] = $error;
        }
        return $array;
    }

	public function ViewAllProducts($page, $SearchBool, $CatoID, $searchtext, $perpage, $filter, $nofe)
    {
    	$array = array();
    	$pagenumber = $page-1;
    	$CatoType = split(" ", $CatoID);
    	$filter1;
    	$filter2;

		if($page == 1) { $limit = 0; }else{ $limit = $page * $perpage - $perpage; }
		if(@$nofe == "on") { $filter1 = "AND type='1'"; }

    	if($SearchBool == True) {
    		if($CatoType[0] == "main") {
    			$a = $this->db->prepare("SELECT * FROM products WHERE Category='".$CatoType[1]."' ".@$filter1." ".$filter." LIMIT ".$limit.", ".$perpage." ");
            	$a->execute();
    		}elseif ($CatoType[0] == "main") {
				$a = $this->db->prepare("SELECT * FROM products WHERE Category='".$CatoType[1]."' ".@$filter1." ".$filter." LIMIT ".$limit.", ".$perpage." ");
            	$a->execute();
    		}elseif ($CatoType[0] == "sub") {
				$a = $this->db->prepare("SELECT * FROM products WHERE  SubCategory='".$CatoType[1]."' ".@$filter1." ".$filter."  LIMIT ".$limit.",".$perpage."");
            	$a->execute();
    		}elseif ($CatoType[0] == "search") {
				$a = $this->db->prepare("SELECT * FROM products WHERE (name LIKE '%".$searchtext."%' OR description LIKE '%".$searchtext."%' OR tags LIKE '% ".$searchtext."%') ".@$filter1." ".$filter."  LIMIT ".$limit.", ".$perpage." ");
            	$a->execute();
    		}
    	}elseif ($SearchBool == false) {
			$a = $this->db->prepare("SELECT * FROM products ".@$dongs2." ".$filter." LIMIT ".$limit.", ".$perpage." ");
      		$a->execute();
    	}

    	if($a->Rowcount() > 0) {
    		foreach($a as $product ) {
                $rating = $this->user->vendorRating($this->user->getUsername($product['user_id']));
                foreach($rating as $vendor_rep) {
                 $product = array('product_id' => $product['id'], 'product_code' => $product['code'], 'product_name' => $product['name'], 'product_desc' => $product['short_description'], 'product_image' => $product['image'], 'product_ships_from' => $product['ShipsTo'], 'product_ships_to' => $product['ShipsFrom'], 'product_price' => $this->user->formatBTC($product['price']), 'product_vendor' => $this->user->getUsername($product['user_id']), 'product_type' => $product['type'], 'rating' => $vendor_rep['Message']);
                $array[] = $product;
                }
    		}
    	}else{
    		$error = array('Message_type' => 'Error', 'Message' => 'No products found');
    		$array[] = $error;
    	}
    	return $array;
    }

    public function ViewProduct($product_code)
    {
        $array = array();
        $a = $this->db->prepare("SELECT * FROM products WHERE code='".$product_code."' AND is_hidden='0'");
        $a->Execute();

        if($a->Rowcount() > 0) {
            foreach($a as $product) {

              $product = array('product_name' => $product['name'], 'product_desc' => $product['description'], 'product_price' => $this->user->formatBTC($product['price']), 'product_vendor' => $this->user->getUsername($product['user_id']), 'product_img1' => $product['image'], 'product_img2' => $product['image2'], 'product_img3' => $product['image3'], 'product_img4' => $product['image3']);
              $array[] = $product;
            }
        }else{
            $error = array('Message_type' => 'Error', 'Message' => 'Product not found');
            $array[] = $error;
        }
        return $array;
    }

}
