
<?php if (str_contains($currentURL, '/workspace/')){ ?>
      <?php if ($pageName !=='Workspace - Site Manager' && $pageName !=='Workspace - Data Analyst' && $pageName !=='Workspace - Funder') {?>
      <img src="<?php echo $website.'/assets/images/list.svg'?>" class="icon list-icon">
      <img src="<?php echo $website.'/assets/images/edit.svg'?>" class="icon edit-icon">
      <?php } ?>     
  <?php } ?>


  <?php if ($pageName=='Create Account' || $pageName=='Login' || $pageName=='Get Password Reset Link' || $pageName=='Reset Password') {?>
  <div class="footer-page-links-container">
    <a href=""><small><?php echo date('Y',$currentTime).' &copy; All Rights Reserved'?></small></a>
    <a href="<?php echo $website.'/terms-of-use/'?>"><small>Terms of Use</small></a>
    <a href="<?php echo $website.'/data-privacy/'?>"><small>Data Privacy</small></a>
    <a href="<?php echo $website.'/about-us/'?>"><small>About Us</small></a>
  </div>
<?php } ?>

 <script src="<?php echo $website.'/assets/js/variables.js'?>"></script>
 <script src="<?php echo $website.'/assets/js/functions.js'?>"></script>
  <script src="<?php echo $website.'/assets/js/triggers.js'?>"></script>
  

  <?php if ($pageName == 'Workspace - Writer') {?>
    <script src="<?php echo $website.'/assets/js/eskquip-text-editor.js'?>"></script>
  <?php } ?>

 



<?php ob_end_flush();?>