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

	<p>
		コーヒー嫌いです。
	</p>
	
	<table>
				<th>お部屋名称</th>
				<th>お部屋タイプ</th>
				<th>一泊料金<br>（部屋単位）</th>
				<th colspan="2">お部屋イメージ</th>
	</table>
  }

<section class="ofh box">
	
<h2 class="c">メニュー（一覧）</h2>

<div class="half">

<dl class="menu">
<dt>ブレンド</dt>
	<dd>自家製ブレンド　　250ｇ<span class="price">750円</span></dd>
	<dd>新春ブレンド　　　250ｇ<span class="price">940円</span></dd>
	
<dt>ストレート豆</dt>
	<dd>コロンビア　　　　250ｇ<span class="price">830円</span></dd>
	<dd>ブラジル　　　　　250ｇ<span class="price">860円</span></dd>
	<dd>モカ　　　　　　　250ｇ<span class="price">960円</span></dd>
	<dd>グァテマラ　　　　250ｇ<span class="price">830円</span></dd>
	<dd>ブルーマウンテン　250ｇ<span class="price">4590円</span></dd>
</dl>

</div>


</section>

</div>


</div>




<aside id="mainimg">
<div class="slide-sub1">slide-sub1</div>
</aside>



</body>
</html>
