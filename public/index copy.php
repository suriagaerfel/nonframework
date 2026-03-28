<?php require '../private/initialize.php'; ?>

<?php $pageName = "Home"; ?>

<?php require (INCLUDESLAYOUT_PATH.'/head.php'); ?>

<?php require (INCLUDESLAYOUT_PATH.'/header.php'); ?>

<?php require(INCLUDESLAYOUT_PATH.'/loading.php')?>





<div id="home-page" class="page <?php if ($u && $uInfo) { echo 'with-sidebars-page';} ?> <?php if (!$u) { echo 'with-single-sidebar-page';} ?>">
    


    <?php if ($u && $uInfo){?>


    <div id="account-details" class="page-details">  
        <?php require (INCLUDESLAYOUT_PATH.'/profile.php') ?>   
        <div class="account-contents-filter">
            <?php if (!$showShared) {?>
                <small>Contents by <?php echo $u_accountName;?></small>
            <?php }?>

            <?php if ($showShared) {?>
                <a href="<?php echo $u;?>"class="link-tag-button">Contents by <?php echo $u_accountName;?></a>
            <?php }?>

            <?php if (!$showShared) {?>
                <a href="<?php echo $u.'?show-shared=yes';?>"class="link-tag-button">Shared with <?php echo $u_accountName;?></a>
            <?php }?>

            <?php if ($showShared) {?>
                <small>Shared with <?php echo $u_accountName;?></small>
            <?php }?>
        </div>
    </div>


    <?php } ?>




    <div class="page-details <?php if ($u && $uInfo) {echo 'page-details-no-sidebar';}?> <?php if (!$u && !$uInfo) {echo 'page-details-single-sidebar';}?>">
        
        <div id="contents-list">     
        </div>
            
    </div>
    



    <?php if (!$u && !$uInfo){?>
        <?php require (INCLUDESLAYOUT_PATH.'/promotional-sidebar.php');?>
    <?php }?>
   




</div>








<?php require (INCLUDESLAYOUT_PATH.'/footer.php');?>
</body>


</html>

