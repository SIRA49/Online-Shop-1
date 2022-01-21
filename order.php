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

<title>���j���[</title>

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
	
<h2 class="c">���j���[</h2>
	
<h3 class="c">���Ɛ��u�����h�@</h3>

	<div class="box1 �u�����h">
	<figure><img src="images/b1.jpg" alt=""></figure>
	<h4>���Ɛ��u�����h�@250���@750�~</h4>
	<p>����Ȃ�ł͂̎_�������y���݂����������Ԃ̏��i�ł��B</p>
        <p>�z���ɂ̓R�����r�A,�u���W��,���J,�O�@�e�}�����g�p���Ă���܂��B</p>
        
	<span class="mark">�l�C</span>
	</div>

	<div class="box1 �u�����h">
	<figure><img src="images/b1.jpg" alt=""></figure>
	<h4>�V�t�u�����h�@250���@940�~</h4>
	<p>�ǎ��ȓ����g�p�����V�t�ɂӂ��킵���A���������u�����h�ł���</p>
        <p>���E�R�N�E����̂悳�͂܂��ɐ�i�B</p>
	<span class="mark">�l�C</span>
	</div>

	

<h3 class="c">�X�g���[�g��</h3>

	<div class="box1 �X�g���[�g">
	<figure><img src="images/koro.jpg" alt=""></figure>
	<h4>�R�����r�A�@250���@830�~</h4>
	<p>�}�C���h�R�[�q�[�̑�\�B�D�ꂽ����A�R�N�������Ă��܂��B</p>
        <p>�u�G���p���C�\�E�X�v�����v�̃v���~�A�i�ł��B</p>
	<span class="mark">�l�C</span>
	</div>

	<div class="box1 �X�g���[�g">
	<figure><img src="images/bura.jpg" alt=""></figure>
	<h4>�u���W���@250���@860�~</h4>
	<p>���X�ł́A�X�g���[�g�ɂ��u�����h�ɂ��������Ȃ��u���W���Y�R�[�q�[���A�_���ƒ��ڎ�����s���w�_��_�����x���n�߂܂����B</p>
        <p>�~�i�X�W�F���C�B�̃Z���[�h��u�˂��瑗����A�o�����X���Ƃ�N�Z�̂Ȃ��A��������y���݂��������B</p>
	
	</div>

	<div class="box1 �X�g���[�g">
	<figure><img src="images/moka.jpg" alt=""></figure>
	<h4>���J�@250���@960�~</h4>
	<p>�E�H�V���h���J�Ȃ�ł͂́w���C���t���[�o�[�E�t���{�f�B�[�E��i�Ȍ�������x�����X�y�V�����e�B�[�R�[�q�[�Ƃ��ĕ]������Ă��܂��B</p>
	</div>

<div class="box1 �X�g���[�g">
	<figure><img src="images/gua.jpg" alt=""></figure>
	<h4>�O�@�e�}���@250���@830�~</h4>
	<p>���荂���R�[�q�[�Œm����L���Y�n�A���e�B�O�A�n��B</p>
        <p>���肪�����A�ǎ��̎_���ƃR�N�������ł��B</p>
	</div>

<div class="box1 �X�g���[�g">
	<figure><img src="images/buru.jpg" alt=""></figure>
	<h4>�u���[�}�E���e���@250���@4590�~</h4>
	<p>�u���[�}�E���e���̍ō��K�i�yNo.1�z�͏�i�ł��炩�������������ŁA�o�����X�̗ǂ��͐�i�ł��B</p>
<p>�u���[�}�E���e���̓R�[�q�[�̍ō����i�Ƃ���Ă��܂��B</p>
	<span class="mark">�l�C</span>
	</div>


	</section>

<section class="ofh box">
	
<h2 class="c">���j���[�i�ꗗ�j</h2>

<div class="half">

<dl class="menu">
<dt>�u�����h</dt>
	<dd>���Ɛ��u�����h�@�@250��<span class="price">750�~</span></dd>
	<dd>�V�t�u�����h�@�@�@250��<span class="price">940�~</span></dd>
	
<dt>�X�g���[�g��</dt>
	<dd>�R�����r�A�@�@�@�@250��<span class="price">830�~</span></dd>
	<dd>�u���W���@�@�@�@�@250��<span class="price">860�~</span></dd>
	<dd>���J�@�@�@�@�@�@�@250��<span class="price">960�~</span></dd>
	<dd>�O�@�e�}���@�@�@�@250��<span class="price">830�~</span></dd>
	<dd>�u���[�}�E���e���@250��<span class="price">4590�~</span></dd>
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


