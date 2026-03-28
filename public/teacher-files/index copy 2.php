
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







<div id="files-page"class="page with-sidebars-page with-single-sidebar-page" >
     
    <div class="page-details page-details-single-sidebar">
                <?php if ($fileToView) { ?>
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


                    <?php if ($fileFormat=="pdf") {?>  
                    <iframe class="pdf-reader" src="<?php echo $fileLink.'?iframe=true'?>"></iframe>
                    <?php }?>



                    <?php if($fileFormat=="docx") {?>
                    <div class="content-notice">
                        <p>Docx file cannot be loaded.</p>  
                    </div>  
                    <?php } ?>

                    <?php require (INCLUDESLAYOUT_PATH.'/native-ad.php'); ?>
            <?php } ?>

     

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
