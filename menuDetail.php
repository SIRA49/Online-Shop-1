<?php
  $rno = htmlspecialchars($_GET["rno"]);
  require_once('./dbConfig.php');
  $link = mysqli_connect(DB_SERVER, DB_USER, DB_PASS, DB_NAME);
  if ($link == null) {
    die("接続に失敗しました");
  }
  mysqli_set_charset($link, "utf8");
?>

<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">

<title>メニュー</title>

<link rel="stylesheet" href="css/style.css">


</head>

<body>
<header>
<h1 id="logo"><a href="index1.php"><img src="images/logo.png" alt=""></a></h1>

<?php include("./topmenu.php"); ?>

<ul class="icon">
<li><a href="#"><img src="images/icon_facebook.png" alt="Facebook"></a></li>
<li><a href="#"><img src="images/icon_twitter.png" alt="Twitter"></a></li>
<li><a href="#"><img src="images/icon_instagram.png" alt="Instagram"></a></li>
</ul>
</header>

<div id="contents">

<div id="main">



<?php
session_start();
  $sql = "SELECT bean_name, information, main_image, image1,
          type_name, price  FROM cafe, cafe_type  
        WHERE cafe.type_id = cafe_type.type_id  
        AND cafe.product_no = {$rno}"; 
  $result = mysqli_query($link, $sql);
  $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
  $Name = $row['bean_name'];
  $_SESSION['beanname'] = $Name;
?>

      <section>
        <form method="post" action="purchaseform.php" >
          <h2>豆の詳細</h2>
          <h3>『<?php echo $row['bean_name']; ?>』</h3>
          <p>
<?php echo $row['information']; ?>
          </p>
          <table>
            <tr>
              <td><img src="./images/<?php echo $row['main_image']; ?>"></td>
              <td><img src="./images/<?php echo $row['image1']; ?>"></td>
            </tr>
          </table>
          <br>
          
          <table border="1" class="menu">
            <th>コーヒー豆</th>
            <th>価額<br>（100g単位）</th>
            <tr>
              <td><?php echo $row['type_name']; ?></td>
              <td class="number"> &yen;<?php echo number_format($row['price']); ?></td>
            </tr>
          </table>
          
       <p class="c">
       <input class="btn" type="submit" value="購入する" />
       <input class="btn" type="button" value="前の画面に戻る" onclick="history.back();" />
       </p>
    <form>
  </section>
	</div>
</div>




<aside id="mainimg">
<div class="slide-sub1">slide-sub1</div>
</aside>



</body>
</html>
