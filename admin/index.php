<?php
require_once ("admin.inc.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Frameset//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-frameset.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<!--显示页面标题-->
<title><?php echo $config['name'];?>-管理后台</title>
</head>
<!--定义一个框架集-->
<frameset rows="40,*" cols="*" frameborder="no" border="0" framespacing="0">
  <!--顶部框架，显示标题头，不可调整大小没有滚动条-->
  <frame src="header.php" name="topFrame"  id="topFrame" scrolling="no" noresize="noresize"/>
  <!--嵌入的框架集，用来显示竖向的2栏式框架-->
  <frameset cols="162,*" frameborder="no" border="0" framespacing="0">
    <!--左侧框架，具有滚动条，不能调整大小-->
    <frame src="menu.php" name="leftFrame" id="leftFrame" scrolling="yes" noresize="noresize"/>
    <!--主要框架栏，滚动条设置为auto-->
    <frame src="category.php" name="mainFrame" id="mainFrame" scrolling="auto"/>
  </frameset>
</frameset>
<noframes>
<body>
<!--对于不支持框架的浏览器，在这里加入内容-->
</body>
</noframes>
</html>
