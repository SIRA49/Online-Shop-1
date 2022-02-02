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
  $Name = $row['bean_name'];
  if (isset($_SESSION['reserve']['dname']) == true) {
      $dname = $_SESSION['reserve']['dname'];
  }
?>

<?php

$user = 'shiratake';
$pass = 'pass';
//データベースの設定を読み込む
require_once 'dbconfig.php';

//POSTされた値を変数に代入する
$dname = $_POST['dname'];
$dtelno = $_POST['dtelno'];
$dmail = $_POST['dmail'];
$message = $_POST['message'];

$timestamp = time() ;
$Time = date( "Y-m-d" , $timestamp ) ;
//try?catchにてエラーハンドリングを行う。
try {
	//PDOを使ったデータベースへの接続
	//$user,$passはdb_config.phpにて定義済み
	$dbh = new PDO('mysql:host=localhost;dbname=cafe;charset=utf8',$user, $pass);

	//PDOの実行モードの設定
	$dbh->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
	$dbh->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

	//INSERT用のSQLを生成
	$sql = "INSERT INTO inquiry (name,tell,address,message,bean,Time) VALUES ( ?, ?, ?, ?, ?, ?)";
	//SQL実行の準備
	$stmt = $dbh->prepare($sql);
	//bindValueにてSQLに値を組み込む
	$stmt->bindValue(1, $dname, PDO::PARAM_STR);
	$stmt->bindValue(2, $dtelno, PDO::PARAM_STR);
	$stmt->bindValue(3, $dmail, PDO::PARAM_STR);
	$stmt->bindValue(4, $message, PDO::PARAM_STR);
	$stmt->bindValue(5, $Name, PDO::PARAM_STR);
	$stmt->bindValue(6, $Time, PDO::PARAM_INT);
	//SQLの実行
	$stmt->execute();
	//接続を閉じる
	$dbh = null;

	//try{}で発生したPDOExceptionはこの部分でcatchされる
} catch (PDOException $e) {
	//エラーメッセージ出力
	echo "エラー発生: " . htmlspecialchars($e->getMessage(), ENT_QUOTES, 'UTF-8') . "<br>";
	//処理の終了
	die();
}
?>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
<head>

<title>お問い合わせ</title>

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



<h2>ご予約・お問い合わせ<?php echo $Name; ?></h2>

<p>お問い合わせを送信しました。<br>
	 <a href='index1.php'>トップページへ戻る</a>;
	
</p>

</section>

</div>


</div>





<aside id="mainimg">
<div class="slide-sub1">slide-sub1</div>
</aside>



</body>
</html>