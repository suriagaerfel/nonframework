
<?php require (INCLUDESPROCESSING_PATH.'/registrant-records.php');?>
<?php require (INCLUDESLAYOUT_PATH.'/header.php');?>

<div class=" page workspace-page">

    <?php if ($pageName != 'Workspace - Website Manager') {
       require (INCLUDESLAYOUT_PATH.'/workspace-sidebar.php'); 
       require (INCLUDESLAYOUT_PATH.'/actual-workspace.php');
     }?>

    
     <?php if ($pageName == 'Workspace - Website Manager') {
        require (INCLUDESLAYOUT_PATH.'/summary.php'); 
     }?>
</div>



<?php require (INCLUDESLAYOUT_PATH.'/footer.php');?>

</body>
</html>

