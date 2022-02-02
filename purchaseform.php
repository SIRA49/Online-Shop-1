<?php
  session_start();
  $dnameErr = "";
  if (isset($_SESSION['errMsg']['dname'])) {
    $dnameErr = "<span style='color: red;'>" . $_SESSION['errMsg']['dname'] ."</span>";
  }
  unset($_SESSION['errMsg']); // すべてのエラーメッセージをクリア
  require_once('./dbConfig.php');
  $link = mysqli_connect(DB_SERVER, DB_USER, DB_PASS, DB_NAME);
  if ($link == null) {
    die("接続に失敗しました：" . mysqli_connect_error());
  }
  mysqli_set_charset($link, "utf8");

  $sql = "SELECT bean_name  FROM cafe,cafe_type  WHERE  cafe.type_id = cafe_type.type_id";
  $result = mysqli_query($link, $sql);
  $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
  $Name = $_SESSION['beanname'];

  if (isset($_SESSION['reserve']['dname']) == true) {
      $dname = $_SESSION['reserve']['dname'];
  }
?>

<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
<head>

<title>購入確定ページ</title>

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



<h2>購入フォーム</h2>

<form method="post" action="add1.php" >
<table class="ta1">
<tr>
<th>お名前※</th>
<td><input type="text" name="dname" required size="30" class="ws"></td>
</tr>
<tr>
<th>電話番号※</th>
<td><input type="text" name="dtelno" required size="30" class="ws"></td>
</tr>
<th>メールアドレス※</th>
<td><input type="text" name="dmail" required size="30" class="ws"></td>
</tr>
<tr>
<th>住所※</th>
<td><input type="text" name="address" required size="50" class="ws"></td>
</tr>
<tr>
<th>支払方法</th>
<td>代引きのみ</td>
</tr>
<tr>
<th>購入商品</th>
<td><?php echo $Name; ?></td>
</tr>
</table>
<p class="c">
    <input class="btn" type="submit" value="購入確定" />
    <input class="btn" type="button" value="前の画面に戻る" onclick="history.back();" />
</p>
  </form>

</section>

</div>


</div>





<aside id="mainimg">
<div class="slide-sub1">slide-sub1</div>
</aside>



</body>
</html>