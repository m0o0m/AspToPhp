<?php


//************************************************************
//���ߣ��ƶ� (��ͨASP/VB/PHP/JS/Flash��������������ϵ����)
//��Ȩ��Դ���빫����������;�������ʹ�á�
//������2016-01-15
//��ϵ��QQ313801120  ����Ⱥ35915100(Ⱥ�����м�����)    ����313801120@qq.com   ������ҳ sharembweb.com
//����������ĵ������¡����Ⱥ(35915100)�����(sharembweb.com)���
//*                                    Powered By �ƶ�
//************************************************************


//define('$db',"aaa");
$conn="";
function openConn() {
	global $conn;
	$conn = new mysql();
	
	$dbhost='localhost';$dbuser='root';$dbpwd='123456';$dbname='phpwebdata';
	$conna = @mysql_connect($dbhost,$dbuser,$dbpwd);
    if(!$conna){
		exit('<a href="PHP2/ImageWaterMark/Include/startInstall.php" target="_blank">���ӷ�����ʧ�ܣ��������</a>');
	}
    if(!mysql_select_db($dbname,$conna)){
		exit('<a href="PHP2/ImageWaterMark/Include/startInstall.php" target="_blank">�������ݿ�ʧ�ܣ��������</a>');	
	}
	
	mysql_query("set names 'gb2312'"); //���ݿ��������
	
	$conn->connect($dbhost,$dbuser,$dbpwd);
	$conn->select_db($dbname);
	//$conn->select_db("phpcmsv9");
	return $conn;
}

//Sql���Բ���
function testSql() {
	global $conn; 
	$rs=$conn->query("select * From padmin"); 
	while($arr=$conn->fetch_array($rs)){ 
		echo($arr["UserName"] . "<hr>");	
	}
}
//Sql���Բ���
function testSql2() { 
	$conn=openConn();
	$rs=$conn->query("select * From padmin"); 
	while($arr=$conn->fetch_array($rs)){
		echo($arr["UserName"] . "<hr>");	
	}
}

?>