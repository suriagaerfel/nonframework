<?php //---------------------------FOR INPUTS MESSAGE-------------------------------------?>

<div class="modal website-modal website-modal-wrapper" id="modal-inputs-message" style="z-index:1000000;">
    <div class="website-modal-content" style="width: 350px; margin-top:-200px; ">
        <div id="inputs-message">
           
        </div>
        <div style="display: flex; justify-content:center;">        
            <span class="link-tag-button" id="close-inputs-message-modal">OK</span>
        </div>
    
    </div>
</div>


<?php //---------------------------FOR CONFIRM LOGOUT-------------------------------------?>

<div class="modal website-modal website-modal-wrapper" id="modal-confirm-logout" style="z-index:1000000;">
    <div class="website-modal-content" style="width: fit-content; margin-top:-200px; ">
        <div>
           <small>Are you sure you want to logout?</small>
        </div>
        <div style="display: flex; justify-content:center;"> 
            <span id="confirmed-logout-button" class="link-tag-button active">Yes</span>       
            <span class="close-modal link-tag-button cancel-button">Cancel</span>
        </div>
    
    </div>
</div>







<?php //---------------------------FOR PUBLISHING CONTENT-------------------------------------?>

<div class="modal website-modal website-modal-wrapper" id="modal-confirm-publish">
    <div class="website-modal-content" style="width: 300px;">
        <p>You can't replace the attached document anymore once published.</p>
        <p>Are you sure you want to publish?</p>
        <hr>
        <div style="display: flex; flex-direction:row"> 
            <span class="link-tag-button" id="confirmed-publish-button">Yes</span>          
            <span class="link-tag-button close-modal">No</span>
        </div>
    
    </div>
</div>





<?php //---------------------------FOR CONFIRM UPDATE SUPER MANAGER REGISTRATION-------------------------------------?>

<div class="modal website-modal website-modal-wrapper" id="modal-confirm-super-manager-registration">
    <div class="website-modal-content" style="width: 300px;">
        <small>Are you sure you wan to update?</small>
        <small>If yes, please provide your password to make sure it is not done by accident.</small>
        <div>
            <input type="text" id="confirm-super-manager-registration-record-id" hidden>
            <input type="text" id="confirm-super-manager-registration-website-manager-type" hidden>
            <input type="text" id="confirm-super-manager-registration-action" hidden>
            <input type="password" id="active-super-manager-password" placeholder="Type your password...">
        </div>
       
        <div style="display: flex; flex-direction:row;justify-content:center;"> 
            <span class="link-tag-button" id="confirmed-update-super-manager-registration-button">Continue</span>          
            <span class="link-tag-button close-modal">Close</span>
        </div>
    
    </div>
</div>




<?php //---------------------------FOR PROFILE UPDATE-------------------------------------?>

<div class="modal website-modal website-modal-wrapper" id="modal-update-profile">
    <div class="website-modal-content" style="width: 90%;">
         <div class="close-button-container">
            <span class="close-modal" id="update-profile-details-cancel-button">✖</span>
        </div>
         <textarea placeholder="Description" class="description profile-description profile-details-edit" id="profile-description-edit"></textarea>

        <div style="display: flex; gap:10px;">
            <div class="profile-details-group">
                <?php if ($type=='Personal') { ?>
                <input type="text" placeholder="First Name" class="profile-details-edit" id="profile-first-name-edit">
            
                <input type="text" placeholder="Middle Name" class="profile-details-edit" id="profile-middle-name-edit">
            
                <input type="text" placeholder="Last Name" class="profile-details-edit" id="profile-last-name-edit">
                    
                <?php } ?>


                <?php if($type=='School') {?>
                <input type="text" title="Account Name" placeholder="Name" class="profile-details-edit" id="profile-school-name-edit">

                <select id="profile-school-category-edit" class="profile-details-edit">
                    <option value="" hidden>Category</option>
                    <option  value="Elementary School">Elementary School</option>
                    <option  value="Junior High School">Junior High School</option>
                    <option  value="Senior High School" >Senior High School</option>
                    <option  value="College or University" >College or University</option>
                    <option  value="Integrated School">Integrated School</option>
                </select>         
                <?php } ?>

                <input type="text" class="profile-details-edit" id="profile-username-edit" placeholder="Username">
                    
                <input type="text" placeholder='Email Address' disabled class="profile-details-edit" id="profile-email-address-edit">
        
                <input type="text" placeholder="Mobile Number" class="profile-details-edit" id="profile-mobile-number-edit">
            </div>

            <?php if ($type=='Personal') { ?>
                    <div class="profile-details-group" >  

                        <input type="date"  class="profile-details-edit" id="profile-birthdate-edit">
                    
                        <select class="profile-details-edit" id="profile-gender-edit">
                            <option value="" hidden selected>Gender</option>
                            <option  value="Male" >Male</option>
                            <option value="Female" >Female</option>
                            <option value="Other Gender">Other Gender</option>
                            <option value="No Gender" >No Gender</option>
                            <option value="Hide Gender" >Hide Gender</option>
                        </select> 
                
                            
                        <select class="profile-details-edit" id="profile-civil-status-edit">
                            <option value="" hidden selected>Civil Status</option>
                            <option  value="Single" >Single</option>
                            <option  value="Married">Married</option>
                            <option  value="Widowed">Widowed</option>
                            <option  value="Divorced">Divorced</option>
                            <option  value="Separated">Separated</option>
                            <option  value="Common-law">Common-law</option>   
                        </select>                            
                        
                        

                        <select class="profile-details-edit" id="profile-educational-attainment-edit">
                            <option value="" hidden selected>Educational Attainment</option>
                            <option  value="Elementary Undergraduate">Elementary Undergraduate</option>
                            <option  value="Elementary Graduate">Elementary Graduate</option>
                            <option  value="High School Undergraduate">High School Undergraduate</option>
                            <option  value="High School Graduate">High School Graduate</option>
                            <option  value="Associate Degree Holder">Associate Degree Holder</option>
                            <option  value="College Undergraduate">College Undergraduate</option>
                            <option  value="College Graduate" >College Graduate</option>
                            <option  value="with Master's Degree">with Master's Degree</option>
                            <option  value="with Doctorate Degree">with Doctorate Degree</option>
                        </select>
                    
                            
                        <input type="text"  placeholder="School" class="profile-details-edit" id="profile-school-edit">
                        
                            
                        <input type="text" placeholder="Occupation" class="profile-details-edit" id="profile-occupation-edit">
                        
                        
                    </div>

                <?php } ?>
            <div class="profile-details-group">
                <input type="text" value="Philippines" placeholder="Country" hidden id="profile-country">
                <?php // Path to your JSON file
                $data = json_decode(file_get_contents('../philippine_provinces_cities_municipalities_and_barangays_2019v2.json'), true);

                // Prepare regions list for initial dropdown
                $regions = [];
                foreach ($data as $regionCode => $regionData) {
                    $regions[$regionCode] = $regionData['region_name'];
                }?>

                        
                <select id="profile-region" class="profile-details-edit">
                    <option value="">Select Region</option>  
                    <?php foreach ($regions as $code => $name): ?>
                    <option value="<?php echo htmlspecialchars($code); ?>"><?php echo htmlspecialchars($name); ?></option>
                    <?php endforeach; ?>
                </select>
            
                <select id="profile-province-state" class="profile-details-edit">
                    <option value="" selected hidden>Select Province/State</option>
                </select>
                
                <select id="profile-city-municipality" class="profile-details-edit">
                    <option value="" selected hidden>Select City/Municipality</option>
                </select>
                
                <select id="profile-barangay" class="profile-details-edit">
                    <option value="" selected hidden>Select Barangay</option>
                </select>
                        
                <input type="text" placeholder="Street/Subd./Village" class="profile-details-edit" id="profile-street-subd-village">
                
                <div class="cancel-submit-buttons-container profile-details-edit" >
                    <button id="update-profile-details-submit-button" class="profile-details-edit link-tag-button">Submit</button>
                </div>
            </div>
        </div>
    </div>
</div>

<script>
  // Pass the PHP data to JavaScript
  const data = <?php echo json_encode($data) ?>

  const regionSelect = document.getElementById('profile-region');
  const provinceSelect = document.getElementById('profile-province-state');
  const municipalitySelect = document.getElementById('profile-city-municipality');
  const barangaySelect = document.getElementById('profile-barangay');
 
  regionSelect.addEventListener('change', function() {
      const regionCode = this.value;
      provinceSelect.innerHTML = '<option value=""> Select Province/State </option>';
      municipalitySelect.innerHTML = '<option value=""> Select City/Municipality </option>';
      barangaySelect.innerHTML = '<option value=""> Select Barangay</option>';
      municipalitySelect.disabled = true;
      barangaySelect.disabled = true;

      if(regionCode && data[regionCode]) {
          const provinces = data[regionCode]['province_list'];
          for(let p in provinces) {
              let option = document.createElement('option');
              option.value = p;
              option.textContent = p;
              provinceSelect.appendChild(option);
          }
          provinceSelect.disabled = false;
      } else {
          provinceSelect.disabled = true;
      }
  });

  provinceSelect.addEventListener('change', function() {
      const regionCode = regionSelect.value;
      const province = this.value;
      municipalitySelect.innerHTML = '<option value="">Select City/Municipality</option>';
      barangaySelect.innerHTML = '<option value="">Select Barangay</option>';
      barangaySelect.disabled = true;

      if(regionCode && province && data[regionCode]['province_list'][province]) {
          const municipalities = data[regionCode]['province_list'][province]['municipality_list'];
          for(let m in municipalities) {
              let option = document.createElement('option');
              option.value = m;
              option.textContent = m;
              municipalitySelect.appendChild(option);
          }
          municipalitySelect.disabled = false;
      } else {
          municipalitySelect.disabled = true;
      }
  });

  municipalitySelect.addEventListener('change', function() {
      const regionCode = regionSelect.value;
      const province = provinceSelect.value;
      const municipality = this.value;
      barangaySelect.innerHTML = '<option value="">Select Barangay</option>';

      if(regionCode && province && municipality && data[regionCode]['province_list'][province]['municipality_list'][municipality]) {
          const barangays = data[regionCode]['province_list'][province]['municipality_list'][municipality]['barangay_list'];
          for(let i=0; i < barangays.length; i++) {
              let option = document.createElement('option');
              option.value = barangays[i];
              option.textContent = barangays[i];
              barangaySelect.appendChild(option);
          }
          barangaySelect.disabled = false;
      } else {
          barangaySelect.disabled = true;
      }
  });

</script>




<?php //---------------------------FOR CONFIRM DELETE UPDATE-------------------------------------?>

<div class="modal website-modal website-modal-wrapper" id="modal-confirm-delete-update" style="z-index: 90000000;">
    <div class="website-modal-content">
        <small>Are you sure you want to delete?</small>

        <input type="text" id="delete-update-id" hidden>

        <hr>
        <div style="display: flex; flex-direction:row"> 
            <span class="link-tag-button" id="confirmed-delete-update-button">Yes</span>          
            <span class="link-tag-button" id="close-confirm-delete-update-modal-button">No</span>
        </div>
    
    </div>
</div>














<?php //---------------------------FOR DELETING CONTENT-------------------------------------?>

<div class="modal website-modal website-modal-wrapper" id="modal-confirm-delete-content">
    <div class="website-modal-content">
        <p>Are you sure you want to delete?</p>

        <input type="text" id="delete-content-id" hidden>
        <input type="text" id="delete-sub-content-id" hidden>

        <hr>
        <div style="display: flex; flex-direction:row"> 
            <span class="link-tag-button" id="confirmed-delete-content-button">Yes</span>          
            <span class="link-tag-button close-modal">No</span>
        </div>
    
    </div>
</div>




<?php //---------------------------FOR DELETING RECORD-------------------------------------?>

<div class="modal website-modal website-modal-wrapper" id="modal-confirm-delete-record">
    <div class="website-modal-content">
        <p>Are you sure you want to delete?</p>

        <input type="text" id="delete-record-id"hidden>
        <input type="text" id="delete-record-category" hidden>

        <hr>
        <div style="display: flex; flex-direction:row"> 
            <span class="link-tag-button" id="confirmed-delete-record-button">Yes</span>          
            <span class="link-tag-button close-modal">No</span>
        </div>
    
    </div>
</div>

<?php //---------------------------FOR MESSAGE MODE-------------------------------------?>

<div class="modal website-modal website-modal-wrapper" id="modal-message-mode">
    <div class="website-modal-content">
        <div class="close-button-container">
            <span class="close-modal">✖</span>
        </div>
        <div>
            <small>Message mode:</small>
            <!-- <div style="margin-top: 10px;" id="message-modes">
                 <span class="link-tag-button active" id="message-mode-personal-button">Personal</span>
                <span class="link-tag-button" id="message-mode-message-manager-button">Message Manager</span>
            </div> -->
           
            
        </div>

        
    
    </div>
</div>










<?php //---------------------------FOR UPLOADING IMAGE-------------------------------------?>

<div class="modal website-modal website-modal-wrapper" id="modal-upload-image">
    <div class="website-modal-content" style="width: 300px; display:flex;flex-direction:column; gap:10px;">
        <div class="close-button-container">
             <span class="close-modal">✖</span>
        </div>
       

            <small class='modal-replace-image-warning'>
                Select an image with a JPEG or JPG format. 
                <br>The existing image will be deleted after the update.
                <?php if ($pageName != 'My Account') {?>
                <br>You can extract an image from your PDF document <a href="https://www.freeconvert.com/pdf-to-jpg" target="_blank"><strong style="font-size:10pt;">here</strong></a>.
                <?php } ?>

            </small> 
            
            <div id="modal-upload-image-message" class="alert alert-danger" style="margin-bottom:10px;"></div>
                      
            
            <input type="text" id="upload-type" hidden>
            <input type="text" id="upload-action-file" hidden>

            <input type="file" id="upload-image" class="attachment">

            <button id="upload-button"></button>

    </div>
</div>




<?php //---------------------------FOR COMMENTS-------------------------------------?>

<div class="modal website-modal website-modal-wrapper" id="modal-comment">
    <div class="website-modal-content" style="width: 400px;height:500px;display:flex;flex-direction:column;justify-content:space-between;">
        <div class="close-button-container">
             <span class="close-modal" style="font-size: 10px;">CLOSE</span> 
        </div>
        <div id="comments-result" style="height: 400px; max-height:430px; overflow:scroll;scrollbar-width: none; scrollbar-height: none; display:flex;flex-direction:column-reverse;gap:20px; overflow-y: auto;position:sticky;top:0; ">
           
        </div>
        <div style="width: 100%;">
            <textarea id="content-comment" style="resize: none;height:70px;width:100%;" placeholder="What's on your mind?"></textarea>
            <button id="submit-comment">Send</button>
        </div>
        
       

       
                

    </div>
</div>




<?php //---------------------------FOR WEBSITE UPDATES-------------------------------------?>

<div class="modal website-modal website-modal-wrapper" id="modal-updates">
    <div class="website-modal-content" style="width: 400px;height:90%; margin-right:5px;">
        <div style="display: flex; justify-content:space-between;gap:5px;">
            <div>
                <strong>UPDATES</strong>
            </div>
           
            <div style="display: flex; gap:5px; ">
                <div style="margin-top:-10px; ">
                    <input type="search" style="height: 30px; " placeholder="Search update..." id="searched-update">
                </div>
                <?php if ($websiteManagerMessageManagerRegistration || $websiteManagerSuperManagerRegistration) {?>
                <div style="margin-top: -8px;">
                     <span class="link-tag-button" id="new-update">Add</span>
                </div>   
                <?php } ?>
                <div class="close-button-container">
                    <span class="close-modal" style="font-size: 12px;">✖</span> 
                </div>
            </div>
        </div>
        <hr>
        <div id="updates-result" style="overflow:scroll; scrollbar-width:none;scrollbar-height:none;">
           
        </div>
        <div id="update-item" style="display: none; overflow:scroll; scrollbar-width:none;scrollbar-height:none;">
            <div id="update-item-actions" style="position: sticky;top:0;background-color:white;">
                <span id="back-to-updates-result">
                    <img src="<?php echo $publicFolder.'/assets/images/return.png'?>">
                </span>
                <div id="edit-update-actions" style="display: none;">
                    <span id="to-publish-update-button" class="link-tag-button">Publish</span>
                    <span id="to-unpublish-update-button" class="link-tag-button">Unpublish</span>
                    <span id="to-duplicate-update-button" class="link-tag-button">Duplicate</span>
                    <span id="to-delete-update-button" class="link-tag-button">Delete</span>

                </div>
            </div>
            <input type="text" id="update-id" placeholder="Update Id.." hidden>
            <input type="text" id="update-mode" placeholder="Update mode.." hidden>
            <select  id="update-type">
                <option value="" selected hidden>Update Type</option>
                <option value="Registration">Registration</option>
                <option value="Subscription">Subscription</option>
                <option value="Maintenance">Maintenance</option>

            </select>
            <input type="text" id="update-title" placeholder="Title...">
            <textarea id="update-content" placeholder="Content...." style="width: 100%;
            height:250px; resize:none;"></textarea>
            <button id="submit-update-button"></button>
        </div>
  
    </div>
</div>


























<?php //---------------------------FOR ADDING/UPDATING PROMOTIONS-------------------------------------?>
<div class="modal website-modal website-modal-wrapper" id="modal-promotion">
    <div class="website-modal-content">
        <div class="close-button-container">
            <span class="close-modal">✖</span>
        </div>
        <div id="promotion-message" class="alert alert-danger" style="display: none;"></div>
        <div id="modal-promotion-inputs-container">
            <div id="group-1">
                <input type="text" placeholder="Id" id="promotion-id" hidden>
                <input type="text" placeholder="Name/Company" id="promotion-name-company">
                <input type="text" placeholder="Title" id="promotion-title">
            
                <div>
                    <select id="promotion-type">
                        <option value="" hidden>Type</option>
                        <option value="Products">Products</option>
                        <option value="Services">Services</option>
                    </select>
                    <input type="text" placeholder="Topic (s)" id="promotion-topics">     
                </div>

                <textarea placeholder="Description" id="promotion-description"></textarea>
            </div>
    
            <div id="group-2">       
                <div id="promotion-days-amount">
                    <input type="number" placeholder="Number of Days" id="promotion-duration">
                    <input type="text" placeholder="Amount" id="promotion-amount">
                    
                </div>

                <div>
                    <input type="text" placeholder="Link" id="promotion-link"> 
                </div>

                <div id="promotion-attachments">
                    <div>
                        <label for="promotion-image">Image</label>
                        <input type="file" id="promotion-image">
                        <input type="text" id="promotion-image-link" hidden>
                    </div>
                    <div>
                        <label for="promotion-agreement">Agreement</label>
                        <input type="file" id="promotion-agreement">
                        <input type="text" id="promotion-agreement-link" hidden>
                    </div>
                </div>

                
            </div>

        </div>

        <button id="promotion-submit-button">Add</button>
       
    </div>
</div>









<?php //---------------------------FOR SHOWING CONTENT IMAGE-------------------------------------?>


<div class="modal website-modal website-modal-wrapper" id="modal-show-image">
    <div class="website-modal-content">
       <div class="close-button-container">
            <span class="close-modal">✖</span>
        </div>
       
     
        <img id="image">
    
        <hr>

           <a class="link-tag-button" id="change-image-button"></a> 
     


    </div>
</div>



<?php //---------------------------FOR SHOWING CONTENT-------------------------------------?>


<div class="modal website-modal website-modal-wrapper" id="modal-show-content">
    <div class="website-modal-content" style="width: fit-content; height:fit-content;">
        <div class="close-button-container">
            <span class="close-modal">✖</span>
        </div>
       
        <div id="replace-content-message" class="alert alert-success" style="display: none;"></div>

        <iframe src="" frameborder="0" id="content-iframe" style="width:80vw; height:70vh;"></iframe> 

        <div id="replace-content-container" style="display: none; width: 350px;" class="replace-active">
            <input type="file" id="new-content">
        </div>

        

        <div style="display: flex;" class="replace-active">
            <span id="replace-content-submit-button" class="link-tag-button" style="display: none;">REPLACE</span> 
            <span class="link-tag-button" id="retain-content-button" style="display: none;">RETAIN</span> 
        </div> 
       
        <span class="link-tag-button" id="replace-content-button">REPLACE</span>
          


    </div>
</div>


<?php //---------------------------FOR SHOWING ALL CATEGORIES-------------------------------------?>


<div class="modal website-modal website-modal-wrapper" id="modal-all-categories">
    <div class="website-modal-content" style="width: 350px; height:fit-content;">
        <div class="close-button-container">
            <span class="close-modal">✖</span>
        </div>
       <div id='delete-category-message'></div>
       <div id="all-categories-result">

       </div>
        
          


    </div>
</div>





<?php //---------------------------FOR SUBSCRIPTION-------------------------------------?>

<div class="modal website-modal website-modal-wrapper" id="modal-subscription">
    <div class="website-modal-content">
      <div class="close-button-container">
            <span class="close-modal">✖</span>
        </div>
       
        <div style="display:inline-block; gap:20px;">
        <button class="link-tag-button button"id="show-subscription-heads-button">Subscription Notes</button>

        <small id="subscriptions-updates">
                <?php if ($type=='Personal') {?>
                    <?php if($toolSubscribed) { ?>
                        <small>Tools (<?php echo $subscriptionRemainingDaysTool.' Days';?>)</small>
                    <?php } ?>

                    <?php if($pendingToolSubscription) { ?>
                        <small>Tools (Pending)</small>
                    <?php } ?>

                    <?php if(!$pendingToolSubscription && !$toolSubscribed) { ?>
                        <small>Tools (Inactive)</small>
                    <?php } ?>
            
                    <?php if($sellerSubscribed) { ?>
                        <small>Seller (<?php echo $subscriptionRemainingDaysSeller.' Days';?>)</small>
                    <?php } ?>

                    <?php if($pendingSellerSubscription) { ?>
                        <small>Seller (Pending)</small>
                    <?php } ?>

                    <?php if($teacherRegistration && !$pendingSellerSubscription && !$sellerSubscribed) { ?>
                        <small>Seller (Inactive)</small>
                    <?php } ?>
            <?php } ?>

            <?php if ($type=='School') {?>
                    <?php if($shelfSubscribed) { ?>
                        <small>Shelf (<?php echo $subscriptionRemainingDaysShelf.' Days';?>)</small>
                    <?php } ?>

                    <?php if($pendingShelfSubscription) { ?>
                        <small>Shelf (Pending)</small>
                    <?php } ?>

                    <?php if(!$pendingShelfSubscription && !$shelfSubscribed) { ?>
                        <small>Shelf (Inactive)</small>
                    <?php } ?>
            <?php } ?>
            </small>
        </div>
        <?php $stype = isset($_SESSION['type']) ? $_SESSION['type'] : "Tool";?>
        <?php $duration = isset($_SESSION['duration']) ? $_SESSION['duration'] : "";?>

            
        <div  class="modal-subscription-head">
            <?php if($type=='Personal') {?>
                <small>Price :</small>
                <small>Tools- ₱59/mo</small>
                <?php if($teacherRegistration){?>
                <small>Seller- ₱109/mo</small>
                <?php } ?>
            <?php } ?>
            <?php if($type=='School') {?>
                <small>Price :</small>
                <small>Shelf- ₱1490/year</small>
            <?php } ?>

        </div>

        <div class="modal-subscription-head">
            <small>Send to :</small>
            <small>GCASH (09942762632, Erfel S.)</small>
        </div>

        <div class="modal-subscription-head">
            <small>Verification :</small>
            <small>Mon - Fri (8am-9am, 11am-12nn, 4pm-5pm)</small>
        </div>


        <?php $paymentOptionName = isset($_SESSION['paymentOptionName']) ? $_SESSION['paymentOptionName'] : "";?>
        <?php $referenceNumber = isset($_SESSION['referenceNumber']) ? $_SESSION['referenceNumber'] : "";?>
        <?php $proofOfPayment = isset($_SESSION['proofOfPayment']) ? $_SESSION['proofOfPayment'] : "";?>

        
        <div class='alert alert-danger' id="subscription-message">

        </div>


        <input type="text" value="<?php echo  $inSubscriptionToolList?>" hidden id="in-tool-subscription-list">
        <input type="text" value="<?php echo  $inSubscriptionFileList?>" hidden id="in-file-subscription-list">
        <input type="text" value="<?php echo  $inSubscriptionSellerList?>" hidden id="in-seller-subscription-list">
        <input type="text" value="<?php echo  $inSubscriptionShelfList?>" hidden id="in-shelf-subscription-list">
        <input type="text"  value="<?php echo  $teacherRegistration?>" hidden id="in-teacher-registration">
        <input type="text" value="<?php echo $registrantId?>" hidden id="subscription-registrant-hidden-id">

        <div id="subscription-type-duration-amount" class="subscription-inputs-container">
        <select id="subscription-type" <?php if ($subscription=='disabled') {echo 'disabled';}?>>
            <option value="" selected hidden>Subscription Type</option>
            <?php if (!$inSubscriptionToolList && $type=='Personal') { ?>
            <option value="Tools" <?php if ($stype=='Tools') {echo 'selected';}?>>Tools</option>
            <?php } ?>

            <?php if (!$inSubscriptionSellerList && $teacherRegistration) { ?>
            <option value="Seller" <?php if ($stype=='Seller') {echo 'selected';}?>>Seller</option>
            <?php } ?>

            <?php if (!$inSubscriptionShelfList && $type=='School') { ?>
            <option value="Shelf" <?php if ($stype=='Shelf') {echo 'selected';}?>>Shelf</option>
            <?php } ?>
            </select>
        
        
        <input type="number" placeholder="<?php if ($type=='Personal') {echo 'Number of Months';} if ($type=='School') {echo 'Number of Years';}?>" value="<?php echo $duration?>" min="1" id="subscription-duration" <?php if ($subscription=='disabled') {echo 'disabled';}?>>

        <input id="subscription-total" hidden>
        
        </div>
        
        <div id="subscription-payment-option-reference-number" class="subscription-inputs-container">
            <select id="subscription-payment-option" <?php if ($subscription=='disabled') {echo 'disabled';}?>>
                <option value="" hidden>Your Payment Option</option>
                <option value="GCASH" <?php if ($paymentOptionName=='GCASH') {echo 'selected';}?>>GCASH</option>
                <option value="Other" <?php if ($paymentOptionName=='Other') {echo 'selected';}?>>Other</option>
            </select>
            <input type="text" placeholder="Your Reference Number" value="<?php echo $referenceNumber?>" id="subscription-reference-number" <?php if ($subscription=='disabled') {echo 'disabled';}?>>
        </div>

        <label for="proofOfPayment">Proof of Payment [JPEG or JPG format]</label>
        <input type="file" value="<?php echo $proofOfPayment?>" id="subscription-proof-of-payment" <?php if ($subscription=='disabled') {echo 'disabled';}?>>

        <?php if ($subscription!='disabled') {?>
        <div class="cancel-submit-buttons-container">
            <strong id="subscription-summary"></strong>
            <button class="cancel-button  close-modal">Cancel</button>
            <button id="submit-subscription-button">Submit</button>
        </div>
        <?php } ?>
   
        
    </div>
</div>




<?php //---------------------------FOR PURCHASING-------------------------------------?>

<div class="modal website-modal website-modal-wrapper" id="modal-purchase">
    <div class="website-modal-content" style="width: 400px;">
         <div class="close-button-container">
            <span class="close-modal">✖</span>
        </div> 
            <input type="text" id="purchase-processing-file" hidden>
            <small id="show-seller-details-button" class="link-tag-button">Show Seller's Details</small>
            <small id="show-purchase-details-button" class="link-tag-button" style="display: none;">Show Purchase Details</small>
            <div id="purchase-purchase-details">
        
                <p>
                    <strong>Title:</strong>
                    <span id="purchase-content-title"></span>
                </p>
                <br>
                <p>
                    <strong>Type:</strong>
                    <span id="purchase-content-type"></span>
                </p>
                <br>
                 <p style="display: none;">
                    <strong>Id:</strong>
                    <span id="purchase-content-id"></span>
                </p>
              
                <p style="display: none;">
                    <strong>Seller Id:</strong>
                    <span id="purchase-content-seller-id"></span>
                </p>
              

                <p>
                    <strong>Seller:</strong>
                    <span id="purchase-content-seller-name"></span>
                </p>
                <br>
                <p>
                    <strong>Amount:</strong>
                    <span id="purchase-content-amount"></span>
                </p>
                <br> 
                <p>
                    <strong>Send to:</strong>
                    <span id="purchase-content-send-to"></span>
                </p>
                <br>   
                <p>
                    <strong>Purchase Review:</strong>
                    <span id="purchase-content-review"></span>
                </p>
                <br>  
                <div id="purchase-inputs">
                    <select id="purchase-content-payment-channel">
                        <option value="" hidden selected>My Payment Channel</option>
                        <option value="GCash">GCash</option>
                        <option value="PayMaya">PayMaya</option>
                    </select>
                    <input type="text" placeholder="Reference Number" id="purchase-content-reference-number">
                    <input type="file" id="purchase-content-payment-proof">
                    <button id="purchase-submit-button">Purchase</button>
                </div>
                <div id="purchase-message">

                </div>
            </div>

            <div id="purchase-seller-details" style="display: none;">
                <p>
                    <strong>Seller:</strong>
                    <span id="seller-name-shown"></span>
                </p>
             <br>
                <strong>*Seller Subscription</strong>
                <hr>
                <p>
                    <strong>Status:</strong>
                    <span id="subscription-status-shown"></span>
                </p>
                <br>

                <p>
                    <strong>Start:</strong>
                    <span id="subscription-start-shown"></span>
                </p>
                <br>

                <p>
                    <strong>Expiry:</strong>
                    <span id="subscription-expiry-shown"></span>
                </p>
                <br>

                <p>
                    <strong>Remaining Days:</strong>
                    <span id="subscription-remaining-days-shown"></span>
                </p>
                <br>

                 <p>
                    <strong>Active:</strong>
                    <span id="subscription-active-shown"></span>
                </p>
                
                
                
            </div>
            <div id="login-purchase-notice" style="display: none;">
                <p>Please <a href="<?php echo $website.'/login/';?>">login</a> to purchase.</p>
            </div>

            

     
       
    </div>
    
    </div>
</div>







<?php //---------------------------FOR PURCHASES-------------------------------------?>

<div class="modal website-modal website-modal-wrapper" id="modal-purchases">
    <div class="website-modal-content" style="width: fit-content; height:90%;">
        <div class="close-button-container">
            <span class="close-modal">✖</span>
        </div>
        <input type="text" id="filtered-status" hidden>
        <div id="purchases-status-filter" style="margin-bottom: 15px;">
            <small class="link-tag-button" id="purchase-status-all">All</small>
            <small class="link-tag-button" id="purchase-status-pending">Pending</small>
            <small class="link-tag-button" id="purchase-status-approved">Approved</small>
            <small class="link-tag-button" id="purchase-status-rejected">Rejected</small>
            <small class="link-tag-button" id="purchase-status-revoked">Revoked</small>
            <small class="link-tag-button" id="purchase-status-kept">Kept</small>
        </div> 
       
        <div id="purchases-list" style="width: 400px;" >
            
        </div>

            
    </div>
</div>


<?php //---------------------------FOR SELLER DETAILS-------------------------------------?>

<div class="modal website-modal website-modal-wrapper" id="modal-seller-details">
    <div class="website-modal-content" style="width: fit-content; height:fit-content;">
         <div class="close-button-container">
            <span class="close-modal">✖</span>
        </div>
        <div id="purchases-status-filter" style="width:350px; margin-bottom: 15px;" >
            <div id="update-my-seller-details-message" class="alert alert-danger" style="display: none;"></div>
            <input type="text" id="my-payment-channel" placeholder="My payment channel...">
            <input type="text" id="my-account-name" placeholder="My account name...">
            <input type="text" id="my-account-number" placeholder="My account number...">
            <input type="text" id="my-review-schedules" placeholder="My review schedule...">
            <button id="update-my-seller-details-submit-button">Update Details</button>
        </div>          
    </div>
</div>



<?php //---------------------------FOR OTHER REGISTRATION-------------------------------------?>

<div class="modal website-modal website-modal-wrapper" id="modal-other-registration">
    <div class="website-modal-content"> 
         <div class="close-button-container">
            <span class="close-modal">✖</span>
        </div>
                       
        <div id="modal-other-registration-navigation">
                    <?php if ($type=='Personal') {?>
                    <small>Register as:</small>
                    <?php } ?>

                    <?php if ($type=='School') {?>
                    <small>Register for:</small>
                    <?php } ?>

                  
                    <?php if ($type=='Personal') {?>

                    <button class="link-tag-button" id="regtype-teacher-button">Teacher</button>

                    <button class="link-tag-button" id="regtype-writer-button">Writer</button>
                     
                   <button class="link-tag-button" id="regtype-editor-button">Editor</button>
                  
                    <button class="link-tag-button" id="regtype-developer-button">Developer</button>
                 

                    <?php } ?>


                    <?php if ($type=='School') {?>
                        <button class="link-tag-button" id="regtype-researches-button">Researches</button>
                    <?php } ?>

        </div>
        
                        
        
        <div id="modal-other-registration-download-section">
            <a href="#" class="link-tag-button" id="download-agreement-form-link">Download Agreement Form</a>
        </div>
    
        <div class="alert alert-danger" id="modal-other-registration-message">

        </div>
        
        <div id="modal-other-registration-inputs-container">
            <input type="text" id="other-registration-hidden-regtype" hidden>
            <input type="text" value="<?php echo $registrantId?>" id="other-registration-registrant-hidden-id" hidden >
            <input type="text" value="<?php echo $firstName?>"  id="other-registration-registrant-hidden-firstName" hidden>
            <input type="text" value="<?php echo $lastName?>"  id="other-registration-registrant-hidden-lastName" hidden>
            <input type="text" value="<?php echo $accountName?>"  id="other-registration-registrant-hidden-accountName" hidden>
            
            <?php if ($type=='Personal') {?>
            <label class="other-registration-label" id="license-certification-sample-label"></label>
            <input type="file" id="license-certification" class="license-certification-sample">
            <input type="text" id="sample" class="license-certification-sample">
            <?php } ?>

            <?php if ($type=='School') {?>
            <input type="file" id="license-certification" class="license-certification-sample">
            <input type="text" id="sample" class="license-certification-sample">
            <?php } ?>

            
            <label for="agreement" class="other-registration-label" id="agreement-label">Agreement [PDF format]</label>
            <input type="file" title="Agreement Form" id="agreement" >
                
        </div>

        <div class="alert alert-success" id="modal-other-registration-status">

        </div>

        <div id="modal-other-registration-submitted-documents-container">
                <small>Your Submissions: </small>
                
                <a class="link-tag-button" id="submitted-license-certification">License or Certification</a>
                                        
                <a class="link-tag-button" id="submitted-sample">Sample (s)</a>
            
                <a class="link-tag-button" id="submitted-agreement">Agreement</a>
        </div>
        
        
        <div class="cancel-submit-buttons-container" id="other-registration-buttons">
            <button  class="cancel-button  close-modal">Cancel</button>
            <button type="submit" name="register" id="register-submit-button">Submit</button>
        </div>
                     
   
    </div>
</div>






<?php //-----------------FOR SHOWING WORKSPACE LIST----------------------------- ?>

<div class="modal website-modal website-modal-wrapper" id="modal-workspace-list">
   <div class="website-modal-content"> 
        <div class="close-button-container">
            <span class="close-modal">✖</span>
        </div>
         
        <div  class="workspace-list">

        <?php if ($type=='Personal') {?>
    
            <?php if($teacherRegistration) { ?>
                    <a href="<?php echo $website.'/workspace/teacher.php'?>" class="link-tag-button" target='_blank'>Teacher</a>
            <?php }?>

            <?php if($writerRegistration) { ?>
                    <a href="<?php echo $website.'/workspace/writer.php'?>" class="link-tag-button" target='_blank'>Writer</a>
            <?php }?>

            <?php if($editorRegistration) { ?>
                    <a href="<?php echo $website.'/workspace/editor.php'?>" class="link-tag-button" target='_blank'>Editor</a>
            <?php }?>

            <?php if($developerRegistration) { ?>
                    <a href="<?php echo $website.'/workspace/developer.php'?>" class="link-tag-button" target='_blank'>Developer</a>
            <?php }?>

            <?php if($websiteManagerRegistration) { ?>
                    <a href="<?php echo $website.'/workspace/website-manager.php'?>" class="link-tag-button" target='_blank'>Website Manager</a>
            <?php }?>

            <?php } ?>

            
            <?php if ($type=='School') {?>
            <a href="<?php echo $website.'/workspace/researches.php'?>" class="link-tag-button" target='_blank'>Researches</a>
            <?php } ?>
        </div>
    </div>
</div>





















 
        
    










