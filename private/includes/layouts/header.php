<body>
  
        <input type="text" id="website-name-hidden" value="<?php echo $website;?>" hidden >
        <input type="text" id="page-name" value="<?php echo $pageName;?>" hidden >
        <input type="text" id="registrant-id" value="<?php echo $registrantId;?>" hidden >
        <?php if ($registrantId) {?>
        <input type="text" id="registrant-code" value="<?php echo $registrantCode; ?>" hidden>
        <?php  } ?>
        <input type="text" id="account-name" value="<?php echo $accountName;?>"  hidden>
        <input type="text" id="private-folder" value="<?php echo $privateFolder;?>" hidden>
        <input type="text" id="public-folder" value="<?php echo $publicFolder;?>" hidden>
        <input type="text" id="home-searched-user" value="<?php echo $user;?>"hidden>
        <input type="text" id="content-slug" value="<?php echo $slug; ?>" hidden>
        
      

        <?php if ($pageName != 'Create Account' && $pageName != 'Login' && $pageName != 'Get Password Link') {?>
        <div class="header">
            <div class="logo-container">
                <a href="<?php echo $website;?>">
                    <img src="<?php echo $website.'/assets/images/EskQuip-new3.png';?>" alt="EskQuip logo" class="logo" title="EskQuip">
                </a>
            </div>

            <div class="page-navigation-container">
            <?php require (INCLUDESLAYOUT_PATH.'/header-page-navigation.php')?>
            </div>

            <img src="<?php echo $website.'/assets/images/caret-down.svg'?>" class="icon header-icon show-mobile-navigation" id="show-mobile-navigation" onclick="toggleMobileTabletNavigation()">
    
            <img src="<?php echo $website.'/assets/images/caret-up.svg'?>" class="icon header-icon hide-mobile-navigation" id="hide-mobile-navigation" onclick="toggleMobileTabletNavigation()">
              
           
            <?php 
            $placeholder = '';
            ?>
            
            <?php if ($pageName !='Search'){ ?> 
           
            <div id="header-search-container" class="search-container">
                    <img src="<?php echo $website.'/assets/images/header-search.svg'?>"  title="Search" id="header-search-button" style="width: 25px; cursor:pointer;">
            </div>
            <?php }?>

            <div id="account-container" style="display: flex; gap:10px;">
                    <?php if ($registrantId) {?>
                    <div>
                        <a id="updates-button"><img src="<?php echo $website.'/assets/images/update.svg'?>" class="header-icon" title="Updates"></a>
                                
                    </div>

                     <div>
                        <span id="unread-updates-counter" style="display: none;" class="counter"></span>
                    </div>
                    <?php } ?>
                              
                       

                    <?php if (!$loggedIn) {?>
                        <div id="account-not-loggedin">

                        <?php if ($pageName !='Login') { ?>

                        <a href="<?php echo $website.'/login/';?>" class="header-link">Login</a>

                        <?php } ?>

                        

                        <?php if ($pageName !='Create Account' && $pageName !='Login') {?>

                        <a class="header-link">/</a>

                        <?php } ?>

                        

                         <?php if ($pageName !='Create Account') {?>

                        <a href="<?php echo $website.'/create-account/';?>" class="header-link">Create Account</a>

                        <?php } ?>




                        

                        </div>
                        <?php } else {?>

                        <div id="account-loggedin">
                                <div>
                                      <a>
                                    <img src="<?php echo $website.'/assets/images/message.svg'?>" class="header-icon message" title="Messages">
                                </a>

                                </div>
                              
                               
                                     <span id="unread-messages-counter" style="display: none;" class="counter"></span>
                               
                              
                            
                                <a href="<?php echo $website.'/account/'?>"><img src="<?=$profilePictureLink?>" class="header-icon header-profile-image" alt="<?php echo $accountName.' Profile Picture';?>"id='header-profile-picture'></a>

                                <span class="header-link" id="header-account-name"><?php echo $accountName?></span>
                                                             
                                <a id="logout-button"><img src="<?php echo $website.'/assets/images/logout.svg'?>" class="header-icon" title="Logout" ></a>
                        
                        </div>


                        <?php } ?>

                    
            </div>


        </div>

        <div class="page-navigation-container-mobile-tablet" id="page-navigation-container-mobile-tablet">
            <?php require (INCLUDESLAYOUT_PATH.'/header-page-navigation.php')?>
        </div>
        
        
        
       

        <?php } ?>

         <?php include ('website-modal.php');?>

        
      
        

       

    






