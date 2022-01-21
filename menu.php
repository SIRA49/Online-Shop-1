<?php
  if (empty($_GET["tid"]) == true) {
      $tid = "";
  } else {
      $tid = htmlspecialchars($_GET["tid"]);
  }
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



<section>
	
<h2 class="c">メニュー</h2>

<?php
  if (empty($tid) == true) {
    $sql = "SELECT bean_name, type_name, dayfee, main_image, product_no
      FROM cafe, cafe_type 
      WHERE cafe.type_id = cafe_type.type_id";
  } else {
    $sql = "SELECT bean_name, type_name, dayfee, main_image, product_no
      FROM cafe, cafe_type 
      WHERE cafe.type_id = cafe_type.type_id
      AND cafe.type_id = {$tid}"; 
  }
  $result = mysqli_query($link, $sql);
  $cnt = mysqli_num_rows($result);
  if ($cnt == 0) {
    echo "<b>ご指定のお部屋は只今準備ができておりません</b>";  
} else {
	?>
			  <h3>自慢のコーヒー豆をご紹介</h3>
			  <p>
				コーヒー大っ嫌い
			  </p>
			  <table>
				<th>コーヒー豆</th>
				<th>タイプ</th>
				<th>価額<br>（100g単位）</th>
				<th>イメージ写真</th>
	<!-- ここにPHPスクリプトを埋め込む -->          
	<?php
		while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)) {
		  echo "<tr>";
		  echo "<td>{$row['bean_name']}</td>";
		  echo "<td>{$row['type_name']}</td>";
		  $roomfee = number_format($row['dayfee']);
		  echo "<td class='number'>&yen; {$roomfee}</td>";
		  echo "<td><img class='small' src='./images/{$row['main_image']}'></td>";
		  echo "<td><a href='./roomDetail.php?rno={$row['product_no']}'>詳細</a></td>";
		  echo "</tr>";
		}
	  }
	?>
	
	</table>
	</div>
</div>




<aside id="mainimg">
<div class="slide-sub1">slide-sub1</div>
</aside>



</body>
</html>
