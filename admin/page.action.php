<?php
require_once ("admin.inc.php");
$act = $_POST ['act'];            //获取操作类型
if ($act=='add') {	              //如果是添加新页面
	$record = array(              //构造添加数组
		'title'				=>$_POST ['title'],
		'code'				=>$_POST ['code'],
		'content'			=>$_POST ['content'],
		'created_date'		=>date("Y-m-d H:i:s")
	);
	//调用insert方法插入新的页面
	$id = $db->insert('cms_page',$record);
	header("Location: page.php"); //重定向到page.php页面
}

if ($act=='edit'){
	$id = $_POST ['id'];
	$record = array(
		'title'				=>$_POST ['title'],
		'code'				=>$_POST ['code'],
		'content'			=>$_POST ['content']
	);
	 $db->update('cms_page',$record,'id='.$id);
	 header("Location: page.php");
}

if ($act=='delete') {	                      //如果进行页面的删除操作
	$id = $_POST ['id'];                      //获取页面的id值
	$db->delete('cms_page','id in('.$id.')'); //调用delete方法进行删除
	exit();
}

?>