<%
function sharembweb_com(str)
	dim c
	c="��ӭ���� sharembweb.com<hr>"
	c=c&"ѧϰ��������ϵ���ߣ�313801120��Ⱥ35915100<hr>"
	sharembweb_com=c
end function
'������Ϣ
Function authorInfo(FileInfo)
    Dim c 
    c = "'************************************************************" & vbCrLf 
    If FileInfo <> "" Then c = c & "'  �ļ���" & FileInfo & vbCrLf 
    c = c & "'���ߣ��ƶ� (��ͨASP/VB/PHP/JS/Flash��������������ϵ����)" & vbCrlf
    c = c & "'��Ȩ��Դ���빫����������;�������ʹ�á� " & vbCrlf
    c = c & "'������20160111" & vbCrLf 
    c = c & "'��ϵ��QQ313801120  ����Ⱥ35915100(Ⱥ�����м�����)    ����313801120@qq.com   ������ҳ sharembweb.com" & vbCrlf
    c = c & "'����������ĵ������¡����Ⱥ(35915100)�����(sharembweb.com)���" & vbCrlf
    c = c & "'*                                    Powered By �ƶ� " & vbCrlf
    c = c & "'************************************************************" & vbCrlf
    authorInfo = c 
End Function  
Function authorInfo2()
    Dim c 
    c = "                '''" & vbCrLf 
    c = c & "               (0 0)" & vbCrLf 
    c = c & "   +-----oOO----(_)------------+" & vbCrLf 
    c = c & "   |                           |" & vbCrLf 
    c = c & "   |    ������һ��������       |" & vbCrLf 
    c = c & "   |    QQ:313801120           |" & vbCrLf 
    c = c & "   |    sharembweb.com         |" & vbCrLf 
    c = c & "   |                           |" & vbCrLf 
    c = c & "   +------------------oOO------+" & vbCrLf 
    c = c & "              |__|__|" & vbCrLf 
    c = c & "               || ||" & vbCrLf 
    c = c & "              ooO Ooo" & vbCrLf 

    authorInfo2 = c 
End Function 
response.Write(sharembweb_com(""))
response.Write("<pre>" & authorInfo("") & authorInfo2())
%>

