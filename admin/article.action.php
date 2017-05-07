<?php
/**
 * 
 */
require_once ("admin.inc.php");
$act = trim($_POST ['act']);          //判断操作类型
if ($act=='add') {                    //如果是添加操作
	if(empty($_POST['title'])){       //标题不能为空
		exit("<script>alert('标题不能为空!');window.history.go(-1)</script>");
	}
	if(empty($_POST['cid'])){        //用户必须选择一个栏目
		exit("<script>alert('栏目不能为空!');window.history.go(-1)</script>");
	}
	$record = array(                 //构建插入数组
		'cid'			=>$_POST ['cid'],
		'title'			=>$_POST ['title'],
		'subtitle'		=>$_POST ['subtitle'],
		'att'			=>is_array($_POST ['att'])?implode(',',$_POST ['att']):'',
		'source'		=>$_POST ['source'],
		'author'		=>$_POST ['author'],
		'resume'		=>$_POST ['resume'],
		'content'		=>$_POST ['content'],
		'pubdate'		=>date ( "Y-m-d H:i:s" ),
		'created_date'	=>date ( "Y-m-d H:i:s" ),
		'created_by'	=>$_COOKIE['userid']	
	);
	if(!empty($_FILES['pic']['name'])){
		$upload_file = uploadFile('pic');                 //上传图片，返回上传图片的地址
		$record['pic']=$upload_file;
	} 
	$id = $db->insert('cms_article',$record);             //调用insert插入数据
	header("Location: article.php?id=".$_POST['cid']);    //重定向到article.php页面
}

//修改
if ($act=='edit'){
	$id = $_POST ['id'];
	if(empty($_POST['title'])){
		exit("<script>alert('标题不能为空!');window.history.go(-1)</script>");
	}
	if(empty($_POST['cid'])){
		exit("<script>alert('栏目不能为空!');window.history.go(-1)</script>");
	}	
	
	$record = array(
		'cid'			=>$_POST ['cid'],
		'title'			=>$_POST ['title'],
		'subtitle'		=>$_POST ['subtitle'],
		'att'			=>is_array($_POST ['att'])?implode(',',$_POST ['att']):'',
		'source'		=>$_POST ['source'],
		'author'		=>$_POST ['author'],
		'resume'		=>$_POST ['resume'],
		'content'		=>$_POST ['content'],
		'pubdate'	=>date ( "Y-m-d H:i:s" ),
		'created_date'	=>date ( "Y-m-d H:i:s" ),
		'created_by'	=>$_COOKIE['userid']	
	);
	if(!empty($_FILES['pic']['name'])){
		$upload_file = uploadFile('pic');//上传图片，返回地址
		$record['pic']=$upload_file;
	}
	$db->update('cms_article',$record,'id='.$id);
	header("Location: article.php?id=".$_POST['cid']);
}

//删除
if ($act=='delete') {	
	$id = $_POST ['id'];
	$db->update('cms_article',array('delete_session_id'=>$_COOKIE['userid']),'id in('.$id.')');
	exit();
}

//转移文章
if ($act=='move') {	
	$scid =$_POST['scid'];
	$id = $_POST ['id'];
	$db->update('cms_article',array('cid'=>$scid),'id in('.$id.')');
	exit();
}

//删除缩略图
if ($act=='delpic') {
	$id = $_POST ['id'];
	$pic_path = $db->getOneField("select pic from cms_article where id=".$id);
	$pic_path = $db->getOneField("select pic from cms_article where id=".$id);
	if(is_file(ROOT_PATH.$pic_path)){
		@unlink(ROOT_PATH.$pic_path);
	}
	$db->update('cms_article',array('pic'=>''),'id in('.$id.')');
	exit();
}

//彻底删除垃圾
if ($act=='cdelete') {	
	$id = $_POST ['id'];
	$db->delete('cms_article','id in('.$id.')');
	exit();
}

//还原垃圾
if ($act=='revert') {	
	$id = $_POST ['id'];
	$db->query("UPDATE cms_article set delete_session_id = null where id in (".$id.")");
}


?>