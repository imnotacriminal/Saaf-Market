
<?php 
if(!$user->LoggedIn())
{
  $user->redirect('login');
}
 $pagenumber1 = @(int)$_GET['page'];
 $GetCato = @(int)$_GET['category'];
 $GetCatoSub = @(int)$_GET['sub'];
 $search = @$_GET['search'];

 // Search options
 $filter =  @$_SESSION['filter'];
 $perpage = @$_SESSION['perPage'];
 $nofe = @$_SESSION['nofe'];

?>
<div class="row">
<div class="col-sm-3">
   <div align="left" id="vp" style="margin-top:-10px;">
   <div align="left" id="vp">
           <span href="#" style="background: #2b3a40; border-color: #2b3a40;" class="list-group-item active">
           Shop by category:
        </span>
       <div class="catdropdown list-group">
        <?php 
        $array = $site->getCategories(1,0);

        foreach($array as $cato)
        {
            $array2 = $site->getCategories(2,$cato['id']);
            echo ' <div class="catdropdown list-group-item">';
            echo '<input type="checkbox" id="checkbox-dropdown-toggle'.$cato['id'].'">';
            echo ' <label for="checkbox-dropdown-toggle'.$cato['id'].'">' . $cato['cato_name'];
            echo '<span class="glyphicon glyphicon-chevron-right arrow-right"></span>';
            echo '<span class="glyphicon glyphicon-chevron-down arrow-down"></span>';
            echo '   </label>';
            echo '  <ul class="dropdown-ul">';
            foreach($array2 as $sub)
            {
                  echo ' <li class="dropdown-li"><a href="/listings&page=1&sub='.$sub['id'].'">'.$sub['sub_name'].'  <span style="float: right;" class="badge">'.$sub['products'].'</span></a></li>';
            }
            echo '</ul></div>';
        }

        ?>

      </div>
    </div>     
    </div>         
</div>
<br>
<div class="container-fluid">
    <div class="item-container">  

        <div class="ProductListing row">
          <div class="listing col-md-9" style="">
            <div class="listingFilters row">
              <div class="pages col-md-4">
                <div class="pages">
               <?php
              $currentpage2 = "";

			  if(empty($pagenumber1)){ $currentpage2 = 1; }else{ $currentpage2 = $pagenumber1; }

			  if($GetCato > 0){
			  	$nav = $site->ProductPagiation($currentpage2, 1, $GetCato, $_SESSION['perPage'], $nofe);
			  }elseif(@$_GET['sub'] > 0) {
			  	$nav = $site->ProductPagiation($currentpage2, 2, @$_GET['sub'], $_SESSION['perPage'], $nofe);
			  }elseif(!empty($search)) {
			  	$nav = $site->ProductPagiation($currentpage2, 3, $search, $_SESSION['perPage'], $nofe);
			  }else{
			  	$nav = $site->ProductPagiation($currentpage2, 4, 0, $_SESSION['perPage'], $nofe);
			  }
              foreach($nav as $navi)
              {

              	$style = "";
              	if($navi['current_page'] == "true") { $style = 'style="background: lightgray; color: grey"'; }
              	 echo '  <a autofocus="autofocus" href="listings'.$navi['url'].'" '.$style.' class="btn btn-default">'.$navi['page'].'</a>  '; 
              } 
               ?>
                </div>
              </div>
              <?php 
              if(isset($_POST['submitFilter']))
              {

                if(@$_POST['noFE'] == "on") { $_SESSION['nofe'] = "on"; }
                
                // AMount to show
                if($_POST['showPP'] == "6") { $limit = "6"; }
                elseif($_POST['showPP'] == "12"){ $limit = " 12"; }
                elseif($_POST['showPP'] == "18"){ $limit = " 18"; }
                elseif($_POST['showPP'] == "24") { $limit = " 24"; }
                elseif($_POST['showPP'] == "30") { $limit = " 30"; }
                
                // Sort by
                if($_POST['sortBy'] == "1"){ $sortby = 'ORDER BY id +0';}
                elseif($_POST['sortBy'] == "2"){ $sortby = "ORDER BY name"; }
                elseif($_POST['sortBy'] == "3"){ $sortby = 'ORDER BY name DESC'; }
                elseif($_POST['sortBy'] == "4"){ $sortby = 'ORDER BY price DESC'; }
                elseif($_POST['sortBy'] == "5"){ $sortby = 'ORDER BY price ASC'; }
                $lel = $sortby;
                  unset($_SESSION['filter']);
                unset($_SESSION['perPage']);
                
                $_SESSION['filter'] = $lel;
                $_SESSION['perPage'] = $limit;
                header("Location: listings&page=1");
              }

              ?>
              <form method="POST">
              <div class="noFE col-md-2">
                <label class="labernoFE" for="noFE">Escrow only:  </label>
                <input id="noFE" type="checkbox" name="noFE" class="noFE">  
              </div>
              <div class="perPage col-md-2">
                <span>Show </span>
                <select name="showPP" class="sortbydrop btn btn-default">
                  <option value="6">6</option>
                  <option value="12">12</option>
                  <option value="18">18</option>
                  <option value="24">24</option>
                  <option value="30">30</option>
                </select>
              </div>
              <div class="sortBy col-md-3">
                <span>Sort by: </span>
                 <select name="sortBy" class="sortbydrop btn btn-default">
                  <option value="1">Default</option>
                  <option value="2">Name A-Z</option>
                  <option value="3">Name Z-A</option>
                  <option value="4">Price</option>
                  <option value="5">Price</option>
                </select>
              </div>
              <div class="applyFilter col-md-1">
                <button  name="submitFilter"  class="btn btn-success">Go</button>
              </div>
              </form>
              </div>
            <div class="listingItems">
              <div class="listingHeader row">
                <div class="imageHeader col-md-2"></div>
                <div class="name col-md-3">
                  <span class="nameTitle"><strong>Name</strong></span>
                </div>
                <div class="shipping col-md-3">
                  <span class="shippingTitle"><strong>Shipping</strong></span>
                </div>
                <div class="price col-md-2">
                  <span class="priceTitle"><strong>Price</strong></span>
                </div>
                <div class="vendor col-md-2">
                  <span class="vendorTitle"><strong>Vendor</strong></span>
                </div>
              </div>
                 <div id="vp" style="margin-top: -22px;"></div>
              <?php 
              $currentpage = "";

			        if(empty($pagenumber1)){ $currentpage = 1; }else{ $currentpage = $pagenumber1; }
              if(!empty($search)) {
              	$product = $site->ViewAllProducts($currentpage, true, "search", $search, $perpage, $filter, $nofe);
              }elseif($GetCato > 0) {
				        $product = $site->ViewAllProducts($currentpage, true, "main ".$GetCato, "", $perpage, $filter, $nofe);
              }elseif($GetCatoSub > 0) {
				        $product = $site->ViewAllProducts($currentpage, true, "sub ".$GetCatoSub, "", $perpage, $filter, $nofe);
              }elseif($GetCato > 0 && GetCatoSub > 0) {
              	$product = $site->ViewAllProducts($currentpage, true, "main ".$GetCato, "", $perpage, $filter, $nofe);
              }else{
              	$product = $site->ViewAllProducts($currentpage, false, 0, "", $perpage, $filter, $nofe);
              }
              foreach($product as $items)
              {
                if(@$items['Message_type'] == "Error"){
                  echo '<div class="alert alert-danger" style="margin-left: auto; margin-right: auto; width: 100%">';
                  echo '<center>'.$items['Message_type'].': <strong> <b> '.$items['Message'].'</b> </strong> ';
                  echo '</div>';   
                }else{
                  echo '<div class="listing"><div style="margin-top: -24px;" class="product well row">';
                  echo '<div class="productImage col-md-2"><span class="border-top-0"><img style="width:80px; height:80px" border src="'.$items['product_image'].'" ></img></span></div>';
    
                    echo '<div class="productName col-md-3">';
                    echo '<span class="productTitle col-md-12"><strong><a href="/product&code='.$items['product_code'].'">'.$items['product_name'].'</a></strong></span>'; 
                    echo '<span class="listingDescription  col-md-12">'.$items['product_desc'].'</span>';
                      //if($items['product_type'] == "1") { $type = '<span style="background-color: green;" class="col-md-4 badge">Escrow</span> '; }      
                      //if($items['product_type'] == "2") { $type = '<span style="background-color: darkred;" class="col-md-4 badge">FE</span> '; }
                      //if($items['product_type'] == "3") { $type = '<span style="background-color: darkorange;" class="col-md-4 badge">Half FE</span> '; }
                      //echo $type;
                    echo '</div>';
    
                    echo '<div class="productShipping col-md-3">';
                    echo '<span class="shippingFrom "><i class="fa fa-truck" aria-hidden="true"></i><strong> From: '.$items['product_ships_from'].'</strong></span>';
                    echo '<br/>';
                    echo '<span class="shippingTo "><span class="glyphicon glyphicon-globe" aria-hidden="true"></span><strong> To: '.$items['product_ships_to'].'</strong></span>';
                    echo '</div>';
    
                    echo '<div class="productPrice col-md-2 ">';
                    echo '<span class="price">'.$items['product_price'].' <strong>BTC</strong></span>';
                    echo '</div>';
    
                    echo '<div class="productVendor col-md-2">';
                    echo '<span class="vendorName"><a href="#vedorAccount">'.$items['product_vendor'].'</a></span>';
                     echo '<span class="vendorRating badge">'.$items['rating'].' </span>';
                    echo '</div></div>';
                }

              }
              ?>


              </div>
              </div>
