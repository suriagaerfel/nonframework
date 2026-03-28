<?php require '../../private/initialize.php'; ?>

<?php 
$articleToRead = isset($_GET['slug']) ? htmlspecialchars($_GET['slug']) : "";
$articlePreview = isset($_GET['preview']) ? true : false;
$articleTitle="";
$unpublishedNotice=false;
$articleInfo = '';


if ($articleToRead) {
   
    $sqlArticleInfo = "SELECT * FROM writer_articles WHERE writer_articleSlug = '$articleToRead'";
    $sqlArticleInfoResult = mysqli_query($conn,$sqlArticleInfo);
    $articleInfo = $sqlArticleInfoResult->fetch_assoc();

    $articleWriterId="";
    $articleTitle="";
    $articleImage="";
    $articleCategory="";
    $articleTopic="";
    $articleContent="";
    $articleWriter="";
    $articleUpdateDate="";

    if ($articleInfo) {
        $articleId = $articleInfo ['writer_articleId'];
        $articleWriterId = $articleInfo ['writer_articleWriterId'];

        $sqlWriterInfo = "SELECT * FROM registrations WHERE registrantId = $articleWriterId";
        $sqlWriterInfoResult = mysqli_query($conn,$sqlWriterInfo);
        $writerInfo = $sqlWriterInfoResult->fetch_assoc();
        if($writerInfo) {
            $articleWriter = $writerInfo ['registrantAccountName'];
        } else {
            $articleWriter = "";
        }

        $articleTitle = $articleInfo ['writer_articleTitle'];
        $articleImage = $articleInfo ['writer_articleImage'] ? $privateFolder.$articleInfo ['writer_articleImage'] : "";
        $articleCategory = $articleInfo ['writer_articleCategory'];
        $articleTopic = $articleInfo ['writer_articleTopic'];
        $articleContent = $articleInfo ['writer_articleContent'];
        $articleEditorId = $articleInfo ['writer_articleEditors'];
        $articleEditor = "";

        if ($articleEditorId) {
            $sqlEditorInfo = "SELECT * FROM registrations WHERE registrantId = '$articleEditorId'";
            $sqlEditorInfoResult = mysqli_query($conn,$sqlEditorInfo);
            $editorInfo = $sqlEditorInfoResult->fetch_assoc();
            if($editorInfo) {
                $articleEditor = $editorInfo ['registrantAccountName'];
            }
        }
        
        $articlePubDate = $articleInfo ['writer_articlePubDate'];
        $articleUpdateDate = $articleInfo ['writer_articleUpdateDate'];
        $articleStatus = $articleInfo ['writer_articleStatus'];

        
        if ($articleStatus!="Published") {

            $unpublishedNotice = true;
        }





        if ($articlePreview) {

            if ($articleStatus=='Published') {

                if ($registrantId) {
                
                    if ($articleWriterId ==$registrantId) {
                    header('Location:'.$website.'/articles/'.$articleToRead);
                    } 

                    if ($articleEditorId ==$registrantId) {
                    header('Location:'.$website.'/articles/'.$articleToRead);
                    } 

                }
            
                if (!$registrantId) {
                header('Location:'.$website.'/articles/'.$articleToRead);
                }


            }

            if ($articleStatus !='Published') {

                if (!$registrantId) {
                    header('Location:'.$website.'/articles/'.$articleToRead);
                }

            }
        }

        if (!$articlePreview) {

            if ($articleStatus!='Published') {
        
                if ($registrantId) {

                    if ($articleWriterId ==$registrantId || $articleEditorId ==$registrantId) {
                        
                    header('Location:'.$website.'/articles/'.$articleToRead.'?preview=yes');

                    }  
                }   

            } 
    
        }   


    }



} 

    

$pageName =$articleTitle ? $articleTitle :  "Articles";

if ($articlePreview) {
    $pageName = '[Preview] '.$pageName;
}

if ($pageName == 'Terms of Use') {
    header ('Location:'.$website.'/terms-of-use/');
}

if ($pageName == 'About Us') {
    header ('Location:'.$website.'/about-us/');
}

if ($pageName == 'Data Privacy') {
    header ('Location:'.$website.'/data-privacy/');
}

?>

<?php require (INCLUDESLAYOUT_PATH.'/head.php'); ?>

<?php require (INCLUDESLAYOUT_PATH.'/header.php'); ?>
<?php require(INCLUDESLAYOUT_PATH.'/loading.php')?>








<div id="articles-page" class="page with-sidebars-page with-single-sidebar-page" >
    
    <div class="page-details page-details-single-sidebar">

        <?php if ($articleToRead) {?>
            <div class="live-article-container">           
                <h1 id="live-article-title"><?php echo $articleTitle?></h1>
                <div id="live-article-details-container">
                        <div>
                            <em>by </em><em><?php echo $articleWriter;?></em>
                        </div>
                        <div>
                            <em>Category: </em><em><?php echo $articleCategory;?></em>
                        </div>
                        <div>
                            <em>Published: </em><em><?php echo dcomplete_format($articlePubDate);?></em>
                        </div>

                        <?php if ($articleUpdateDate > $articlePubDate) {?>
                        <div>
                            <em>Updated: </em><em><?php echo dcomplete_format($articleUpdateDate);?></em>
                        </div>
                        <?php } ?>

                        <?php if ($articleEditor){?>
                        <div>
                            <em>Editor: </em><em><?php echo $articleEditor;?></em>
                        </div>
                        <?php } ?>
                </div>

                <?php if ($articleImage) {?>
                    <img src="<?php echo $articleImage?>" alt="<?php echo 'Featured image:'.$articleTitle;?>" ><br><br>
                <?php }?>

                <div class="article-content">
                    <?php echo $articleContent?>
                </div>


                <?php if ($articleInfo) { ?>
                    <?php if ($unpublishedNotice) { ?>
                        <?php if ($registrantId) { ?>
                            <?php if ($articleWriterId != $registrantId && $articleEditorId != $registrantId) { ?>
                                <div class="content-notice">
                                    <p>It seems that the article is currently not published.</p>
                                </div>
                            <?php }?>
                        <?php } ?>
                        <?php if (!$registrantId) { ?>
                                <div class="content-notice">
                                    <p>It seems that the article is currently not published.</p>
                                </div>
                        <?php }?>
                    <?php } ?>
                <?php } ?>

                <?php if (!$articleInfo) {?>
                <div class="content-notice">
                    <p >Opps! We cannot find the article.</p>
                </div>
                <?php }  ?>

                <?php require (INCLUDESLAYOUT_PATH.'/native-ad.php'); ?>


                <?php if ($articleInfo) { ?>
            
                    <?php 

                    $sqlCategoryArticlesList = "SELECT * FROM writer_articles WHERE writer_articleCategory = '$articleCategory' AND writer_articleSlug != '$articleToRead' AND writer_articleStatus='Published' ORDER BY writer_articleId DESC LIMIT 3";
                    $sqlCategoryArticlesListResult = mysqli_query($conn,$sqlCategoryArticlesList); ?>

                    <?php if ($sqlCategoryArticlesListResult->num_rows>0) { ?>
                    <div class="category-articles-container" >
                        
                        <h5>More for <?php echo $articleCategory?></h5>
                        <hr>
                        <div class="category-article">
                            <?php while ($categoryArticles = $sqlCategoryArticlesListResult->fetch_assoc()) { 
                                $categoryArticleId = $categoryArticles ['writer_articleId']; 
                                $categoryArticleTitle = $categoryArticles ['writer_articleTitle'];
                                $categoryArticleSlug = $categoryArticles ['writer_articleSlug']; ?>   
                        
                                <?php if ($categoryArticleId!=$articleId) {?>
                                    <a href="<?php echo $website.'/articles/'.$categoryArticleSlug;?>">
                                        <em>
                                        <?php if(str_word_count($categoryArticleTitle)>$word_limit_title) {
                                            echo limit_words_title($categoryArticleTitle,$word_limit_title);
                                        } else {
                                            echo $categoryArticleTitle;
                                        } ?>
                                        </em>
                                    </a>
                                <?php }?>
                        
                            <?php } ?>
                        </div>

                        <hr>
                        
                    </div>
                    <?php  } ?> 

                <?php } ?>

            </div>
        
            <?php require (INCLUDESPROCESSING_PATH.'/content-performance-tracking-processing.php');?>

        <?php }  ?>

        <?php if (!$articleToRead) { ?>
            <div id="articles-list">
            </div>     
        <?php } ?>

    

    </div>

    <?php require (INCLUDESLAYOUT_PATH.'/promotional-sidebar.php');?>


</div>







<?php require (INCLUDESLAYOUT_PATH.'/footer.php');?>


</body>
</html>


