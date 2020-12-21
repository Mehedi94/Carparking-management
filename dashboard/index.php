<?php
    session_start();

    require_once('../config.php');
    require_once('HelperFunction.php');
 

    if(!isset($_SESSION['success'])){
        header('location: ../login.php');
        die('Dont Try to Mess. -_- ');
    }

    $email = $_SESSION['email'];

    insertHelperUsers();
    

    if(isset($_POST['save'])){
        $id = $_SESSION['id'];
        $name =$_SESSION['name'];
        $email = $_SESSION['email'];
        $phone = $_POST['phone'];

        $error = array();

        if(empty($phone)){
            $error['ph']="<h6>Phone Number is requred</h6>";
        }

        if(count($error)==0){
              if ($_POST['_token'] === $_SESSION['_token'])
    {
        // File information 
        $uploaded_name = $_FILES[ 'uploaded' ][ 'name' ]; 
        $uploaded_ext  = substr( $uploaded_name, strrpos( $uploaded_name, '.' ) + 1); 
        $uploaded_size = $_FILES[ 'uploaded' ][ 'size' ]; 
        $uploaded_type = $_FILES[ 'uploaded' ][ 'type' ]; 
        $uploaded_tmp  = $_FILES[ 'uploaded' ][ 'tmp_name' ]; 

        // Where are we going to be writing to? 
        $target_path   = 'uploads/'; 
        $target_file   =  md5( uniqid() . $uploaded_name ) . '.' . $uploaded_ext; 
        $picUrl = $target_path.$target_file;
        $temp_file     = ( ( ini_get( 'upload_tmp_dir' ) == '' ) ? ( sys_get_temp_dir() ) : ( ini_get( 'upload_tmp_dir' ) ) ); 
        $temp_file    .= DIRECTORY_SEPARATOR . md5( uniqid() . $uploaded_name ) . '.' . $uploaded_ext; 

        // Is it an image? 
        if( ( strtolower( $uploaded_ext ) == 'jpg' || strtolower( $uploaded_ext ) == 'jpeg' || strtolower( $uploaded_ext ) == 'png' ) && 
            ( $uploaded_size < 100000 ) && 
            ( $uploaded_type == 'image/jpeg' || $uploaded_type == 'image/png' ) && 
            getimagesize( $uploaded_tmp ) ) { 

            // Strip any metadata, by re-encoding image (Note, using php-Imagick is recommended over php-GD) 
            if( $uploaded_type == 'image/jpeg' ) { 

                $img = imagecreatefromjpeg( $uploaded_tmp ); 
                imagejpeg( $img, $temp_file, 100); 
                            } 
            else { 
                $img = imagecreatefrompng( $uploaded_tmp ); 
                imagepng( $img, $temp_file, 9); 
            } 
            imagedestroy( $img ); 

            // Can we move the file to the web root from the temp folder? 
            if( rename( $temp_file, ( getcwd() . DIRECTORY_SEPARATOR . $target_path . $target_file ) ) ) { 
                // Yes! 
                $target = getcwd() . DIRECTORY_SEPARATOR . $target_path . $target_file;
                
                $insert = mysqli_query($connection,"INSERT INTO user_profile (id,name,email,phone,pic) VALUES('$id','$name','$email','$phone','$picUrl')");

                if($insert=== TRUE){
                   
                    $_SESSION['true']='';
                     header('location: profile.php');
                }
            } 
            else { 
                // No 
                echo "<script> alert(Your image was not uploaded');</script>"; 
            } 

            // Delete any temp files 
            if( file_exists( $temp_file ) ) 
                unlink( $temp_file ); 
        } 
        else { 
            // Invalid file 
            
             echo "<script> alert('Your image was not uploaded. We can only accept JPEG or PNG images.');</script>";  
        } 

    }
    else{
        die("CSRF TOKEN MATCH FAILED!...");
    }
        }

    }
    generateSessionToken();

?>
    <!DOCTYPE html>
    <html lang="en">

    <head>
        <?php  include_once('title.php'); 

        function title(){

            // ... change title name...
            echo $mytitle= "Profile. Car Parking Website";

        }

    ?>

    </head>

    <body>
        <?php  include_once('header.php');  ?>

            <div class="user-area">
                <div class="container">
                    <?php include_once('sidebar.php'); ?>

                        <div class="dashboard-area">
                            <div class="container">


                                <?php


                                    $query=mysqli_query($connection,"SELECT *FROM parking_info");


                                ?>
                                <div class="input-area-left custom-btn-area col-md-12 col-sm-12 col-xs-12">

                                    <form enctype="multipart/form-data" action="<?php echo $_SERVER['PHP_SELF'];   ?>" method="POST">

                                        <input type="hidden" name="id" value="<?php echo $_SESSION['id']  ?>">
                                        <input type="text" name="name" value="<?php echo $_SESSION['name']  ?>" readonly="readonly">
                                        <input type="email" name="email" value="<?php echo $_SESSION['email']  ?>" readonly="readonly">
                                        <input type="number" name="phone" placeholder="Phone">

                                        <?php

                            if(isset($error['ph'])){
                                echo "<div class='error'>";
                                    echo $error['ph'];
                                echo "</div>";
                            }

                        ?>

                                            <label>Profile Picture</label>
                                            <input name="uploaded" type="file">

                                            <input type="hidden" name="_token" value="<?php echo $_SESSION['_token']; ?>" />

                                            <input type="submit" name="save" value="Save">
                                    </form>

                                </div>
                            </div>
                        </div>
                </div>
            </div>

            <?php  include_once('../footer.php');    ?>
    </body>

    </html>