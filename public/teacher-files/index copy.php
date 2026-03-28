
<?php require '../../private/initialize.php'; ?>

<?php 

$filePreview = isset($_GET['preview']) ? true : false;

$fileToView = isset($_GET['slug']) ? htmlspecialchars($_GET['slug']) : "";
$fileTitle="";
$unpublishedNotice=false;
$username= '';

$fileInfo = '';

if ($fileToView) {
    $sqlFileInfo = "SELECT * FROM teacher_files WHERE teacher_fileSlug = '$fileToView'";
    $sqlFileInfoResult = mysqli_query($conn,$sqlFileInfo);
    $fileInfo = $sqlFileInfoResult->fetch_assoc();

    $fileDescription= "";
    $filePubDate= "";
    $fileUpdateDate= "";
    $fileTeacherId="";
    $fileAccessType= "";
    $filePurchased= "";
    $fileAmount= "";
    $registrantPurchaseStatus="";
    $shared='';

    if ($fileInfo) {
        $fileId = $fileInfo ['teacher_fileId'];
        $fileTeacherId= $fileInfo ['teacher_fileTeacher'];
            $sqlOwnerInfo = "SELECT * FROM registrations WHERE registrantId = $fileTeacherId";
            $sqlOwnerInfoResult = mysqli_query($conn,$sqlOwnerInfo);
            $ownerInfo = $sqlOwnerInfoResult->fetch_assoc();
            if($ownerInfo) {
                $fileOwner = $ownerInfo ['registrantAccountName'];
            } else {
                $fileOwner = "";
            }

        $fileTitle = $fileInfo ['teacher_fileTitle'];
        $fileCategory = $fileInfo ['teacher_fileCategory'];
        $fileDescription = $fileInfo ['teacher_fileDescription'];
        $fileImage = $fileInfo ['teacher_fileImage'];
        $filePubDate = dcomplete_format($fileInfo ['teacher_filePubDate']);
        $fileUpdateDate = dcomplete_format($fileInfo ['teacher_fileUpdateDate']);
        $fileStatus = $fileInfo ['teacher_fileStatus'];
        $fileAccessType = $fileInfo ['teacher_fileAccessType'];
        $fileFormat = $fileInfo ['teacher_fileFormat'];
        $fileAmount = $fileInfo ['teacher_fileAmount'];
        $fileSharedWith = $fileInfo ['teacher_fileSharedWith'];
        $fileLink = $privateFolder.$fileInfo ['teacher_fileContent'];

        $registrantPurchaseAmount = "";

        if ($fileStatus!="Published") {
            $unpublishedNotice = "yes";

        }

        if($username) {
            if (strpos($fileSharedWith, $username) !== false) {
            $shared="yes";
        } 
        }


         $sqlFilePurchased = "SELECT * FROM file_purchase WHERE file_purchasePurchaserUserId='$registrantId' AND file_purchaseFileId='$fileId'";
        $sqlFilePurchasedResult = mysqli_query ($conn,$sqlFilePurchased);

        if ($sqlFilePurchasedResult->num_rows > 0) {
            $filePurchased = true;
            $filePurchase=$sqlFilePurchasedResult->fetch_assoc();

        if ($filePurchased) {
            $registrantPurchaseStatus=$filePurchase['file_purchaseStatus'];
            $registrantPurchaseAmount=$filePurchase['file_purchaseAmount'];
        }
          

        }else {
                $filePurchased=false;
        }


        if ($filePreview) {

                if ($fileStatus=='Published') {
                    if ($registrantId && $fileTeacherId ==$registrantId) {
                    header('Location:'.$website.'/teacher-files/'.$fileToView);
                    } 

                    if (!$registrantId) {
                    header('Location:'.$website.'/teacher-files/'.$fileToView);
                    }
                }

                if ($fileStatus !='Published') {
                    if (!$registrantId || $fileTeacherId!=$registrantId) {
                    header('Location:'.$website.'/teacher-files/'.$fileToView);
                    }
                }

            }

            if (!$filePreview) {
                if ($fileStatus!='Published' && $fileTeacherId ==$registrantId) {
                    header('Location:'.$website.'/teacher-files/'.$fileToView.'?preview=yes');
                }
            }

    } 
  
   
}




$pageName =$fileTitle ? $fileTitle :  "Teacher Files";

if ($filePreview) {
    $pageName = '[Preview] '.$pageName;
} ?>

<?php require (INCLUDESLAYOUT_PATH.'/head.php'); ?>

<?php require (INCLUDESLAYOUT_PATH.'/header.php'); ?>

<?php require(INCLUDESLAYOUT_PATH.'/loading.php')?>





<div id="files-page"class="page with-sidebars-page with-single-sidebar-page" >
     
    <div class="page-details page-details-single-sidebar">
        <?php if ($fileToView) {?>    
            <?php if ($fileInfo && !$unpublishedNotice || $fileTeacherId==$registrantId){?>
                <?php if ($fileSubscribed || $fileAccessType =='Free' || $registrantPurchaseStatus=='Approved' || $shared || $fileTeacherId == $registrantId) { ?>
                    <?php if ($fileFormat=="pdf"){?>
                    <button class="show-details link-tag-button">Show Details</button>
                    <button class="hide-details link-tag-button">Hide Details</button>
                    <br>
                    <div class="live-content-details-container">
                        <h1 class="live-content-title"><?php echo $fileTitle;?></h1>
                    <hr>
                    <div class="details-container">
                            <p><strong>Category: </strong><?php echo $fileCategory;?></p>
                            <p><strong> Owner: </strong><?php echo $fileOwner;?></p>

                            <?php if ($filePurchased) {?>
                            <p><strong>Purchased for: </strong><?php echo '₱'.$registrantPurchaseAmount;?></p>
                            <?php } ?>
                        </div>
                        <hr>
                        <div class="details-container">
                            <p><strong>Published:</strong> <?php echo $filePubDate;?></p>
                    
                            <?php if ($fileUpdateDate > $filePubDate) {?>
                            <p><strong>Updated:</strong> <?php echo $fileUpdateDate;?></p>
                            <?php } ?>
                        </div>
                        <hr>
                        <p><strong>Description:</strong> <?php echo $fileDescription;?></p>
                    </div>
                
                    <iframe class="pdf-reader" src="<?php echo $fileLink.'?iframe=true'?>"></iframe>
                    <?php }?>

                    <?php if($fileFormat=="docx") {?>
                    <div class="content-notice">
                        <p>Docx file cannot be loaded.</p>  
                    </div>  
                    <?php } ?>

                <?php } ?>

                <?php if ($fileAccessType=='Subscription' && !$fileSubscribed) { ?>
                    <div class="content-notice">
                        <p> It seems that you have no active file subscription. Access to <?php echo '<strong>'.$fileTitle.'</strong>'?> is denied.</p>  
                    </div>
                <?php } ?>

                <?php if ($fileAccessType=='Purchased' && $filePurchased && $registrantPurchaseStatus=='Pending') { ?>
                    <div class="content-notice">
                        <p> Your purchase for <?php echo '<strong>'.$fileTitle.'</strong>'?> has not been approved yet by the owner. </p> 
                    </div> 
                <?php } ?>

                <?php if ($fileAccessType=='Purchased' && $filePurchased && $registrantPurchaseStatus=='Rejected') { ?>
                    <div class="content-notice">
                        <p>
                            Your purchase for <?php echo '<strong>'.$fileTitle.'</strong>'?> has been rejected by the owner.
                        </p> 
                    </div> 
                <?php } ?>

                <?php if ($fileAccessType=='Purchased' && !$shared && !$filePurchased) { ?>

                    <?php if ($registrantId) { ?>
                     <?php if ($registrantId != $fileTeacherId) { ?>
                        <div class="content-notice">
                            <p>
                                <a href="<?php echo $website.'/teacher-files/purchase.php?file-id='.$fileId?>">Purchase</a> <?php echo '<strong>'.$fileTitle.'</strong>'?> for <?php echo 'P'.$fileAmount?> to get an access.
                            </p>  
                        </div>
                    <?php } ?>
                    <?php } ?>

                    <?php if (!$registrantId ) {?>  
                    <div class="content-notice">
                        <p> <?php echo '<strong>'.$fileTitle.'</strong>'?> was restricted by the owner. <a href="<?php echo $website.'/login/'?>">Login</a> to view.
                        </p>
                    </div>
                    <?php } ?>

                <?php } ?>
            <?php } ?>

            

            <?php if ($fileInfo && $unpublishedNotice && $fileTeacherId!=$registrantId) {?> 
                <div class="content-notice">
                        <p>
                            It seems that the file is currently not published.
                        </p>  
                    </div>             
            <?php } ?>


            <?php if (!$fileInfo) {?> 
                <div class="content-notice">     
                    <p>Opps! We cannot find the file.</p>
                </div> 
            <?php }  ?>

            <?php require (INCLUDESLAYOUT_PATH.'/native-ad.php'); ?>
         
        

        <?php }  ?>

        <?php if (!$fileToView) { ?>
            <div id="teacher-files-list">
            </div>   
        <?php } ?>

    </div>



    <?php require (INCLUDESLAYOUT_PATH.'/promotional-sidebar.php');?>


</div>





<?php require (INCLUDESLAYOUT_PATH.'/footer.php');?>


</body>
</html>
