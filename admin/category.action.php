<?php
require_once ("admin.inc.php");     //包含admin.inc.php页面
$act = $_POST['act'];               //从表单域中获取操作的类型
if($act=='add'){                    //如果是添加操作
	$pid = $_POST['pid'];           //获取父栏目的id号
	$record = array(                //构建插入操作要使用的关联数组
		'pid'=>$_POST ['pid'],
		'name'=>$_POST ['name'],		
		'seq'=>$_POST ['seq']
	);
	//调用insert方法向cms_category表中插入记录
	$id = $db->insert('cms_category',$record);
	header("Location: category.php");//重定向到category.php页面
}
if ($act=='edit'){                 //如果是更新操作
	$pid = $_POST['pid'];          //获取父项id
	$id  = $_POST['cid'];          //获取当前id
	$record = array(               //构建编辑数组
		'pid'=>$_POST ['pid'],
		'name'=>$_POST ['name'],		
		'seq'=>$_POST ['seq']
	);
	//调用update方法更新cms_category表
	$db->update('cms_category',$record,'id='.$id);
	header("Location: category.php");
}
if ($act=='delete'){                //如果是删除操作
	$id = $_POST['id'];
	$ids = getAllCatetoryIds($id);  //获取当前id的所有子id
	$db->delete('cms_category','id in('.$ids.')'); //从cms_category表中删除所有的子项id
	//更新文章列表中的delete_session_id为当前删除的userid
	$db->update('cms_article',array('delete_session_id'=>$_COOKIE['userid']),'cid in('.$ids.')');
	exit(1);                       //退出操作
}


//递归，返回所有子节点 1，2，3，
function getAllChildCategoryIds($id,&$ids=''){
	global $db;
	$list = $db->getList("select id from cms_category where pid=".$id);
	foreach($list as $ls){
		$ids = empty($ids)?$ls['id']:$ids .','.$ls['id'];
		getAllChildCategoryIds($ls['id'],$ids);
	}
	return $ids;
}
function getAllCatetoryIds($id){
	$ids = getAllChildCategoryIds($id);
	return empty($ids)?$id:$id.','.$ids;
}
?>