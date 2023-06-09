<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Get All Comment by User = 2</title>
</head>
<body>
    <?php 
        // Get All products From DataBase :
        $sql = "SELECT * FROM comment INNER JOIN user ON users.id = comments.user_id WHERE user_id=2 ORDER BY food_id ASC";
        $result = mysqli_query($conn, $sql);
        //  Use While Loop Here ....
        if ($result->num_rows > 0){
          while($row = $result->fetch_assoc()){  
            $id = $row['id'];
            $user_id = $row['user_id'];
            $description = $row['description'];
            $food_id = $row['food_id'];
            $time = $row['time'];
            
            // Load All Comments
            
            print "<tr> <td>";
            echo $id; 
            print "</td> <td>";
            echo $user_reply_id; 
            print "</td> <td>";
            echo $description; 
            print "</td> <td>";
            echo $status; 
            print "</td> <td>";
            echo $charge_id;
            print "</td> </tr>";
            
          }
        }
        else {
            echo '<h2>هیچ کامنتی از سمت شما  متاسفانه در دیتابیس موجود نمی باشد.....</h2>';
        }
    ?>
</body>
</html>