<?php echo $header; ?><?php echo $column_left; ?><?php echo $column_right; ?>
<div id="content"><?php echo $content_top; ?>
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>
  <h1><?php echo $heading_title; ?></h1>
  <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data">
    <h2><?php echo $text_location; ?></h2>
    <div class="contact-info">
      <div class="content"><div class="left"><b><?php echo $text_address; ?></b><br />
        <?php echo $store; ?><br />
        <?php echo $address; ?></div>
      <div class="right">
        <?php if ($telephone) { ?>
        <b><?php echo $text_telephone; ?></b><br />
        <?php echo $telephone; ?><br />
        <br />
        <?php } ?>
        <?php if ($fax) { ?>
        <b><?php echo $text_fax; ?></b><br />
        <?php echo $fax; ?>
        <?php } ?>
      </div>
    </div>
    </div>
    <h2><?php echo $text_contact; ?></h2>
    <style>
        .contact {
            padding: 20px !important;
        }
        .contact input {
            width: 205px;
            border: 1px solid #ccc;
        }
        .contact textarea {
            width: 205px;
            border: 1px solid #ccc;
        }
    </style>
    <div class="content contact" style="width:250px; float: left; height: 460px; border: 1px solid #f1f1f1; border-radius: 5px;">
        <b><?php echo $entry_name; ?></b><br />
        <input type="text" name="name" value="<?php echo $name; ?>" />
        <br />
        <?php if ($error_name) { ?>
        <span class="error"><?php echo $error_name; ?></span>
        <?php } ?>
        <br />
        <b><?php echo $entry_email; ?></b><br />
        <input type="text" name="email" value="<?php echo $email; ?>" />
        <br />
        <?php if ($error_email) { ?>
        <span class="error"><?php echo $error_email; ?></span>
        <?php } ?>
        <br />
        <b><?php echo $entry_enquiry; ?></b><br />
        <textarea name="enquiry" cols="40" rows="10" style="width: 99%;"><?php echo $enquiry; ?></textarea>
        <br />
        <?php if ($error_enquiry) { ?>
        <span class="error"><?php echo $error_enquiry; ?></span>
        <?php } ?>
        <br />
        <b><?php echo $entry_captcha; ?></b><br />
        <input type="text" name="captcha" value="<?php echo $captcha; ?>" />
        <br />
        <img src="index.php?route=information/contact/captcha" alt="" />
        <?php if ($error_captcha) { ?>
        <span class="error"><?php echo $error_captcha; ?></span>
        <?php } ?>
    </div>
    <div style="width: 640px; float: right; border: 1px solid #f1f1f1; border-radius: 5px; padding:5px;">
        <!DOCTYPE html>
            <html>
            <head>
            <script type="text/javascript"
                src="http://maps.google.com/maps/api/js?sensor=false">
            </script>
            <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <script type="text/javascript">
              function initialize() {
                var position = new google.maps.LatLng(21.11637,105.957402);
                var myOptions = {
                  zoom: 15,
                  center: position,
                  mapTypeId: google.maps.MapTypeId.ROADMAP
                };
                var map = new google.maps.Map(
                    document.getElementById("map_canvas"),
                    myOptions);

                var marker = new google.maps.Marker({
                    position: position,
                    map: map,
                    title:"iShop 227 Trần Phú - Từ Sơn - Bắc Ninh"
                });  

                var contentString = '<span style="color:#0760AD;font-size:20px;"><strong>Cửa hàng iShop</strong></span><br/>Địa chỉ: 227 Trần Phú - Từ Sơn - Bắc Ninh<br/>Điện thoại: <strong>096.808.9988</strong><br />Email: ishop227tpts@hotmail.com';
                var infowindow = new google.maps.InfoWindow({
                    content: contentString
                });

                google.maps.event.addListener(marker, 'click', function() {
                  infowindow.open(map,marker);
                });

              }

            </script>
            </head>
            <body onload="initialize()">
              <div id="map_canvas" style="width:640px; height:490px"></div>
            </body>
            </html>
    </div>
    <div class="clear"></div>
    <div class="buttons">
      <div class="right"><input type="submit" value="<?php echo $button_continue; ?>" class="button" /></div>
    </div>
  </form>
  <div>sssssssssss</div>
  <?php echo $content_bottom; ?></div>
<?php echo $footer; ?>