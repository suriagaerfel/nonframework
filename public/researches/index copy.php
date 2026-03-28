
<?php require '../../private/initialize.php'; ?>

<?php 

$researchPreview = isset($_GET['preview']) ? true : false;
$researchToView = isset($_GET['slug']) ? $_GET['slug'] : "";
$researchTitle="";
$unpublishedNotice=false;
$researchInfo='';

if ($researchToView) {
    $sqlResearchInfo = "SELECT * FROM school_researches WHERE school_researchSlug = '$researchToView'";
    $sqlResearchInfoResult = mysqli_query($conn,$sqlResearchInfo);
    $researchInfo = $sqlResearchInfoResult->fetch_assoc();

    if ($researchInfo) {
        $researchId = $researchInfo ['school_researchId'];
        $researchUploaderId = $researchInfo ['school_researchUploader'];
            $sqlUploaderInfo = "SELECT * FROM registrations WHERE registrantId = $researchUploaderId";
            $sqlUploaderInfoResult = mysqli_query($conn,$sqlUploaderInfo);
            $uploaderInfo = $sqlUploaderInfoResult->fetch_assoc();
            if($uploaderInfo) {
                $researchUploader = $uploaderInfo ['registrantAccountName'];
            } else {
                $researchUploader = "";
            }

        $researchTitle = $researchInfo ['school_researchTitle'];
        $researchCategory = $researchInfo ['school_researchCategory'];
        $researchAbstract = $researchInfo ['school_researchAbstract'];
        $researchImage = $researchInfo ['school_researchImage'];
        $researchProponents = $researchInfo ['school_researchProponents'];
        $researchFormat = $researchInfo ['school_researchFormat'];
        $researchDate = dcomplete_format($researchInfo ['school_researchDate']);
        $researchUploadDate = $researchInfo ['school_researchUploadDate'];
        $researchLiveDate = dcomplete_format($researchInfo ['school_researchLiveDate']);
        $researchStatus = $researchInfo ['school_researchStatus'];
        $researchLink = $privateFolder.$researchInfo ['school_researchLink'];

        if ($researchStatus!="Published") {
            $unpublishedNotice = "yes";
        }

        

        if ($researchPreview) {

            if ($researchStatus=='Published') {
                
                if ($registrantId && $researchUploaderId ==$registrantId) {
                header('Location:'.$website.'/researches/'.$researchToView);
                }
                
                if (!$registrantId) {
                header('Location:'.$website.'/researches/'.$researchToView);
                } 
            }

                if ($researchStatus !='Published') {
                    if (!$registrantId || $researchUploaderId !=$registrantId) {
                    header('Location:'.$website.'/researches/'.$researchToView);
                    }
            }
        }

        if (!$researchPreview) {
                if ($researchStatus!='Published' && $researchUploaderId ==$registrantId) {
                    header('Location:'.$website.'/researches/'.$researchToView.'?preview=yes');
                }
        }

    } 

}


$pageName =$researchTitle ? $researchTitle :  "Researches";

if ($researchPreview) {
    $pageName = '[Preview] '.$pageName;
}
?>


<?php require (INCLUDESLAYOUT_PATH.'/head.php'); ?>
<?php require (INCLUDESLAYOUT_PATH.'/header.php'); ?>
<?php require(INCLUDESLAYOUT_PATH.'/loading.php')?>












<div id="researches-page"class="page with-sidebars-page with-single-sidebar-page" >
     
    <div class="page-details page-details-single-sidebar">
        <?php if ($researchToView) {?>
            <?php if ($researchInfo && !$unpublishedNotice || $researchUploaderId==$registrantId) {?>
            
            <?php if ($researchFormat=="pdf"){?>

            <button class="show-details link-tag-button">Show Details</button>
            <button class="hide-details link-tag-button">Hide Details</button>
            <br>
            <div class="live-content-details-container">
                <h1 class="live-content-title"><?php echo $researchTitle;?></h1>
                <hr>
                <div class="details-container">
                    <p><strong>Category:</strong> <?php echo $researchCategory;?></p>
                    <p><strong>Uploader:</strong> <?php echo $researchUploader;?></p>
                    <p><strong>Proponents:</strong> <?php echo $researchProponents;?></p>
                </div>
                <hr>s
                <div class="details-container">
                    <p><strong>Finished:</strong> <?php echo $researchDate;?></p>
                    <p><strong>Uploaded:</strong> <?php echo $researchUploadDate;?></p>
                    <p><strong>Live:</strong> <?php echo $researchLiveDate;?></p>
                    <?php if ($researchUpdateDate > $researchPubDate) {?>
                    <p><strong>Updated:</strong> <?php echo $researchUpdateDate;?></p>
                    <?php } ?>
                </div>
                <hr>
                <small><strong>Abstract:</strong> <?php echo $researchAbstract;?></small>
            </div>

            <iframe src="<?php echo $researchLink.'?iframe=true'?>" class="pdf-reader"></iframe>
            <?php }?>

            <?php if($researchFormat=="docx") {?>
            <div class="content-notice">
                <p>Docx file cannot be loaded.</p>    
            </div>
            <?php } ?>
            <?php } ?>

            <?php if ($researchInfo && $unpublishedNotice && $researchUploaderId!=$registrantId) {?>    
                    <div class="content-notice">
                    <p>It seems that the research is currently not published.</p>       
                    </div>        
            <?php } ?>

            <?php if (!$researchInfo) {?>  
                <div class="content-notice">       
                <p>Opps! We cannot find the research.</p>
                </div> 
            <?php }  ?>

            <?php require (INCLUDESLAYOUT_PATH.'/native-ad.php'); ?>

            <?php require (INCLUDESPROCESSING_PATH.'/content-performance-tracking-processing.php');?>
    
        <?php }  ?>

        <?php if (!$researchToView) {?>
            <div id="researches-list">
            </div>
        <?php } ?>


    </div>


    


</div>
<?php require (INCLUDESLAYOUT_PATH.'/promotional-sidebar.php');?>



<?php require (INCLUDESLAYOUT_PATH.'/footer.php');?>


</body>
</html>
