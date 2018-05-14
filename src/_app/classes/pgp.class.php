<?php
class pgp{

	  private $db;

    function __construct($DB_con)
    {
      $this->db = $DB_con;
    }

    public function setUser(User $user) 
    {
     $this->user = $user;
    }

    public function TwoFacEnabled($username)
    {
      $a = $this->db->prepare("SELECT * FROM users WHERE username='".$username."' AND 2fa_status='1'");
      $a->Execute();

      if($a->Rowcount() > 0){ return true; }else{ return false; }
    }

    public function keySet($username)
    {
      $a = $this->db->prepare('SELECT * FROM users WHERE username="'.$username.'"');
      $a->Execute();

      if($a->Rowcount() > 0 ){
      	foreach($a as $b) {
      	if(!empty($b['pgp_public_key'])) { return true; }else{ return false; }
  	  	}
      }else{ return false; }
	  }

  	public function generateSecretKey($length = 15)
    {
      $secret = '';
      for($i = 0; $length > $i; $i++) { $secret = $secret.rand(0,9); }
      return $secret;
    }

	  public function GetPGPkey($username)
	  {
	    if($this->user->UserExists($username))
	    {
	  	  $a = $this->db->prepare("SELECT * FROM users WHERE username='".$username."'");
		    $a->Execute();

		    if($a->Rowcount() > 0){
			  foreach($a as $key){
			  	if(!empty($key['pgp_public_key']))
			  	{ return $key['pgp_public_key']; }else{ return false;}
			  }
		   }else{ return false; }
	    }
	  }

	  private $secret;
    public function generateSecret()
    {
	  $secret = $this->generateSecretKey();
	  $secret_hash = $secret;
	  $_SESSION['pgp-secret-hash'] = $secret_hash;
	  if(DEBUG_MODE == true) { echo $secret_hash; }
	  $this->secret = $secret;
    }

	  public function encryptSecret($pub_key)
    {
      putenv("GNUPGHOME=/tmp");
      $enc = (null);
      $res = gnupg_init();
      $rtv = gnupg_import($res, $pub_key);

      $rtv = gnupg_addencryptkey($res, $rtv['fingerprint']);
      $enc = gnupg_encrypt($res, $this->secret);
      gnupg_clearencryptkeys($res);
      return $enc;
      putenv(NULL);
    }

	  public function verifySecret($userhash)
    {
      $userhash2 = str_replace(' ', '', $userhash);
      if($userhash2 == $_SESSION['pgp-secret-hash']){ return true; }
      else{ return false;}
    }

    public function EncryptMessage($pubkey, $plaintext)
    {
      putenv("GNUPGHOME=/tmp");
      $enc = (null);
      $res = gnupg_init();
      $rtv = gnupg_import($res, $pubkey);

      $rtv = gnupg_addencryptkey($res, $rtv['fingerprint']);
      $enc = gnupg_encrypt($res, $plaintext);
      gnupg_clearencryptkeys($res);

      return $enc;
      putenv(NULL);
     }

}
