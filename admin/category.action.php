<?php
require_once ("admin.inc.php");     //����admin.inc.phpҳ��
$act = $_POST['act'];               //�ӱ����л�ȡ����������
if($act=='add'){                    //�������Ӳ���
	$pid = $_POST['pid'];           //��ȡ����Ŀ��id��
	$record = array(                //�����������Ҫʹ�õĹ�������
		'pid'=>$_POST ['pid'],
		'name'=>$_POST ['name'],		
		'seq'=>$_POST ['seq']
	);
	//����insert������cms_category���в����¼
	$id = $db->insert('cms_category',$record);
	header("Location: category.php");//�ض���category.phpҳ��
}
if ($act=='edit'){                 //����Ǹ��²���
	$pid = $_POST['pid'];          //��ȡ����id
	$id  = $_POST['cid'];          //��ȡ��ǰid
	$record = array(               //�����༭����
		'pid'=>$_POST ['pid'],
		'name'=>$_POST ['name'],		
		'seq'=>$_POST ['seq']
	);
	//����update��������cms_category��
	$db->update('cms_category',$record,'id='.$id);
	header("Location: category.php");
}
if ($act=='delete'){                //�����ɾ������
	$id = $_POST['id'];
	$ids = getAllCatetoryIds($id);  //��ȡ��ǰid��������id
	$db->delete('cms_category','id in('.$ids.')'); //��cms_category����ɾ�����е�����id
	//���������б��е�delete_session_idΪ��ǰɾ����userid
	$db->update('cms_article',array('delete_session_id'=>$_COOKIE['userid']),'cid in('.$ids.')');
	exit(1);                       //�˳�����
}


//�ݹ飬���������ӽڵ� 1��2��3��
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