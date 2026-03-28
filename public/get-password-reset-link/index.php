<!------------------------------------------- INITIALIZAIONS-------------------------------------------->
<?php

//Initializing the paths.
require '../../private/initialize.php'; 

//Set the page name
$pageName = "Get Password Reset Link";

//The file for the header will be included in the page.
require (INCLUDESLAYOUT_PATH.'/head.php');

$credential = isset($_SESSION['email_username']) ? $_SESSION['email_username'] :"";


?>




<?php require (INCLUDESLAYOUT_PATH.'/header.php');?>


<div id="get-reset-link-page" class="page form-page">

    <div class="form-page-content-container">

        <?php require (INCLUDESLAYOUT_PATH.'/home-sidebar.php');?>

        <div class="form-section">

            <div id="get-link-form" >
                   
                <div id="get-reset-password-link-message" class="alert alert-danger" style="display: none;"></div>
                <h5 class="form-title">Provide Details</h5>
                <input type="text" id="get-reset-password-link-credential" placeholder="Email address o username">
                <button id="get-password-reset-link-submit-button">Get Password Reset Link</button>   
            </div>
        </div>

    </div>





</div>









<?php require (INCLUDESLAYOUT_PATH.'/footer.php');?>
</body>

</html>