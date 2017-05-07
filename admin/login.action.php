<?php
session_start ();                                     //开启会话
header('Content-Type: text/html; charset=utf-8');     //输出文件头
include_once ("../include/config.inc.php");           //包含全局配置
if (isset ( $_POST ["username"] )) {                  //检测是否输入了用户名
	$username = $_POST ["username"];
} else {
	$username = "";
}
if (isset ( $_POST ["password"] )) {                  //检测是否输入了密码
	$password = $_POST ["password"];
} else {
	$password = "";
}
setcookie (username, $username,time()+3600*24*365);   //在Cookie中存放用户名
if (empty($username)||empty($password)){              //检测用户名和密码
	exit("<script>alert('用户名或密码不能为空！');window.history.go(-1)</script>");
}
//在数据库中判断用户名和密码
$user_row = $db->getOneRow("select userid from cms_users where username = '".$username."' and password='".md5 ( $password ) ."'");
if (!empty($user_row )) {                           //如果检索成功
	setcookie (userid, $user_row ['userid'] );      //在Cookie中存放用户名
	header("Location: index.php");                  //定位到管理首页
}else{
	exit("<script>alert('用户名或密码不正确！');window.history.go(-1)</script>");
}
?>
