<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add a Comment to a Food</title>
</head>
<body>
    <?php
       $foodid = $_SESSION["food_id"];
       include './product/id=$foodid';
    ?>
    <h6>کامنت شما به ....</h6>
    <hr />
    <form action="" method="post"  enctype="multipart/form-data">
       <label for="txtcommentdes">متن کامنت شما</label>
       <input type="text" name="txtcommentdes" id="txtcommentdes">
       <input type="submit" value="پست" name="btnpostcomment">
    </form>
    

    <?php 
       $txtcommentdes = $_POST["txtcommentdes"];
       $user_id = $_SESSION["user_id"];
       $sql = "INSERT INTO `comments` (`description`, `user_id`, `food_id`, `time`)
       VALUES ($txtcommentdes,,$user_id,$foodid, date('Y/m/d'))";
       $result = mysqli_query($conn, $sql);

       if($result) 
        echo " کامنت اضافه شد";
       else 
        echo "کامنت اضافه نشد";
    ?>
</body>
</html>