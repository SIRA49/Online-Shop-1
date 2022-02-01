<?php
session_start();
$loginerr = "";
if (isset($_SESSION["loginerr"])) {
    $loginerr = "<p style='color: red;'>".$_SESSION["loginerr"]."</p>";
    unset($_SESSION["loginerr"]);
}
?>
<!DOCTYPE html>
<html lang="ja">
<head>
  <meta charset="UTF-8">
<head>

<title>管理者ページ</title>

<link rel="stylesheet" href="css/style.css">

</head>

<body>
<header>
<h1 id="logo"><a href="index1.php"><img src="images/logo.png" alt=""></a></h1>



<ul class="icon">
<li><a href="#"><img src="images/icon_facebook.png" alt="Facebook"></a></li>
<li><a href="#"><img src="images/icon_twitter.png" alt="Twitter"></a></li>
<li><a href="#"><img src="images/icon_instagram.png" alt="Instagram"></a></li>
</ul>
</header>


<div id="contents">
<div id="main">
<h2>オーナーログイン画面</h2>
    <p>オーナーのIDとパスワードを入力してください。</p>
    <form method="post" action="./ownerCheck.php">
    <table class="host">
      <tr>
        <th>オーナーID</th>
        <td><input type="text" name="id"></td>
      </tr>
      <tr>
        <th>パスワード</th>
        <td><input type="password" name="pass"></td>
      </tr>
    </table>
    <?php echo $loginerr; ?>
    <input class="submit_a" type="submit" value="ログイン">
    </form>



</div>


</div>





<aside id="mainimg">
<div class="slide-sub1">slide-sub1</div>
</aside>



</body>
</html>