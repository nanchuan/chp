<?php
//输入UTF-8文档类型
header('Content-Type: text/html; charset=utf-8');
//检测是否已经存在database.inc.php文件，以判断是否安装了数据库
if(!is_file(dirname(__FILE__).'/data/database.inc.php')){
	exit("<p align='center'>CMS系统尚未安装！<br><br>
	      <a href='./install/index.php'>马上开始安装 </a></p>");
}
//包含配置文件和功能文件
include_once 'include/config.inc.php';
include_once 'include/common.function.php';
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>xxx1</title>
<link href="images/css.css" rel="stylesheet" type="text/css" />
</head>
<body>
<div class="main">
<table width="100%" border="0" cellspacing="0" cellpadding="0">
  <tr>
    <td width="443" height="100" align="center" bgcolor="#182E43"><a href="index.php" class="white"><strong><em><font size=6>xxx1</font></em></strong></a></td>
    <td align="right" valign="top" bgcolor="#182E43" class="white" style="padding-top:5px">
    <a href="javascript:window.external.addFavorite('http://luyuexin.imwork.net:35317/Chp23/index.php','xxx1');" class="white">加入收藏 </a>｜ 
    <a href="admin/" class="white">后台管理&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</a> </td>
  </tr>
</table>
<!--导航栏表格-->
<table width="100%" border="0" cellspacing="0" cellpadding="0" class="navBg">
  <tr>
    <td align="center" valign="top">
      <div class="nav"><a href="index.php">首  页</a></div>
      <!--使用foreach循环提取getCategoryList返回的数组-->
      <?php foreach(getCategoryList() as $list){?>
      <!--输出导航栏文本与链接-->
      <div class="nav"><a href="list.php?id=<?php echo $list['id']?>"><?php echo $list['name']?></a></div>
      <?php }?>
       <!--使用foreach循环提取getPageList返回的数组-->     
      <?php foreach(getPageList() as $list){?>
      <div class="nav"><a href="page.php?id=<?php echo $list['id']?>"><?php echo $list['title']?></a></div>
      <?php }?>      
      <div class="nav"><a href="message.php">留言板</a></div></td>
  </tr>
</table>
