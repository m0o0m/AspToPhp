<%
'************************************************************
'作者：云端 (精通ASP/VB/PHP/JS/Flash，交流合作可联系本人)
'版权：源代码公开，各种用途均可免费使用。 
'创建：2016-01-11
'联系：QQ313801120  交流群35915100(群里已有几百人)    邮箱313801120@qq.com   个人主页 sharembweb.com
'更多帮助，文档，更新　请加群(35915100)或浏览(sharembweb.com)获得
'*                                    Powered By 云端 
'************************************************************
%>
<%
pUBlIC pUBtIMeR : pUBtIMeR = nOW()	
dIM rEQuEStACt
dIM tEMpPHpCOnTEnT	
dIM c, mSGsTR, sTYpE
rEQuEStACt = rEQuESt("act")
sTYpE = 1
iF sTYpE = 2 oR rEQuESt("act") = "inc" tHEn
c = cREaTEiNCdIRlISt()
c = c & gETaSPtOPhPCoNTeNT("sharembweb.com.asp", mSGsTR)
cALl cREaTEfILe("/PHP2/Web/" & "index.php", c)
eLSeIF rEQuESt("act") = "web1asp" tHEn
cALl gETaSPtOPhPCoNTeNT("web/1.asp", mSGsTR)
cALl rW(mSGsTR)
eLSeIF rEQuESt("act") = "webfunction" tHEn
cALl gETaSPtOPhPCoNTeNT("web/function.asp", mSGsTR)
cALl rW(mSGsTR)
eLSeIF rEQuESt("act") = "setAccess" tHEn
cALl gETaSPtOPhPCoNTeNT("web/setAccess.asp", mSGsTR)
cALl rW(mSGsTR)
eLSeIF rEQuESt("act") = "aspweb" tHEn
cALl gETaSPtOPhPCoNTeNT("aspweb.asp", mSGsTR)
cALl rW(mSGsTR)
eLSeIF rEQuESt("act")="handlecontent" tHEn
cALl cREaTEfILe("sharembweb.com.asp",rEQuESt("content"))
tEMpPHpCOnTEnT=gETaSPtOPhPCoNTeNT("sharembweb.com.asp", mSGsTR)	
tEMpPHpCOnTEnT= "<pre>" & rEPlACe(tEMpPHpCOnTEnT,"<","&lt;")	
iF gETiP()<>"127.0.0.1" tHEn
cALl dELeTEfILe("./atemp.asp")
cALl dELeTEfILe("./atemp.php")
eND iF
cALl rWEnD(tEMpPHpCOnTEnT )
eLSe
cALl gETaSPtOPhPCoNTeNT("sharembweb.com.asp", mSGsTR)
cALl rW(mSGsTR)
eND iF
cALl dELeTEfILe("./1.txt")
cALl rW(vBEcHOtIMeR())
fUNcTIoN gETaSPtOPhPCoNTeNT(a, b)
dIM c, d
dIM e : sET e = nEW aSPtOPhPClASs
d = "|CLng|ubound|Chr|replace|Write|Cookies|QueryString|TypeName|echo|Redirect|FormatNumber|Cstr|Asc|Join|Len|PHPEcho|ASPEcho|LCase|UCase|IsNumeric|IsNull|Int|Execute|ServerVariables|CreateObject|Hex|AscW|time|"
d = d & "|header|"
d = d & "|case|Timer|DateDiff|Fix|now|getYMDHMS|IsDate|Year|Month|Day|Hour|Minute|Second|array|AspTrim|WebPageControl|HandleAction|XY_getLableValue|ReplaceValueParam|LTrim|RTrim|newGetArray|AspLTrim|AspRTrim|DateAdd|"
d = d & "handleMakeHtmlFileEditTime|XY_admin|XY_test|ManyTimesHandleTemplateAction|XY_executeSQL|XY_NavDidExists|NewRParam|newReplaceValueParam|XY_PHP_GeneralInfoList|XY_PHP_GeneralList||XY_PHP_GetFieldValue|XY_PHP_SinglePage|aspMD5|session_set_cookie_params|getMsg1|myMD5|inputText|inputText2|ADSql|showSelectcolumn|setCookie|columnList|columnList2|showColumnList|getEditorStr|handleInputHiddenTextArea|displayUploadDialog|ADSqlRf|handleInputCheckBox|inputCheckBox3|arrayToString|resetAccessData|XY_PHP_NavList|XY_PHP_DetailList|getColumnName|batchDeleteTempStr|createFileUTF|handleRemoteJsCssParam|handleIsWebSite|handleGetContentUrlList|replaceGlobleVariable|handleHttpUrlArray|MainNav|dispalyManage|addEditDisplay|saveAddEdit|del|sortHandle|displayDefaultLayout||"
dIM f
f = gETfTExT("\Config\网站函数总杂205.txt")
f = rEPlACe(rEPlACe(f, ",", "|"), vBCrLF, "|")
e.sETfUNcTIoNNaMElISt = e.gETwORdLIsT() & d & f
e.sETnOTsHOwFUnCTiONlISt = "PHPRand|PHPRnd|CheckErr|IIF|PageControl|DelHtml|GetFText|GetFileText|HandlePath|GetArrayList|GetHttpPage|GetURLContent|GetHttpUrl|CheckFunValue|PHPTrim|getip|Host|HttpHost|GetHost|HandleLink|PHPPrint|getRsPageNumber|ADSqlRf|Rr|getArray|is_numeric|getUrl|"
d = "IsMail|MBInfo|PrintFormInfo|BytesToBstr|Agent|isNul|AsaiLinkAdd|AsaiLinkDel|Iswww|XY_RelatedInformationList|HandleDispalyArticleList|CheckAccessPass|"
d = d & "|CheckSql|CreateMdb|EditTable|GetFieldAlt|GetFieldList|GetDifferentTableFieldList|CompactDB|HandleSqlServer|GetDataTableList|CheckTable|CheckField|GetTableList_Conn|EditAccessPassWord|"
d = d & "|ExportToExcel|ImportToDatabase|getFieldValue|getConnFieldValue|setFieldValue|SetTableField|FileBinaryAddAccess|ShowAccessStream|DeleteAction|AddDateViewWebEffect|"
d = d & "|CopyDateToWebDate|CheckEval|PHPExec|handleGetHttpPage|HandleContentCode|XY_PHP_CustomNavList_1|"
e.sETsPAcEFuNCtIOnLIsT = d
e.sETiSDiSPlAYhTMl = tRUe
c = gETfTExT(a)
c = dELeTEaSPtEMpCOdE(c)
c = e.aSPtOPhP(c)
b = e.gETtEMpACtIOnLIsT()
sET e = nOThINg
c = pHPtRIm(c)
gETaSPtOPhPCoNTeNT = c
eND fUNcTIoN
fUNcTIoN dELeTEaSPtEMpCOdE(a)
dIM b, c, d, e
b = "'【删除此行start】" : c = "'【删除此行end】"
fOR d = 1 tO 9
iF iNStR(a, b) = fALsE tHEn
eXIt fOR
eND iF
e = gETsTRcUT(a, b, c, 1)
a = rEPlACe(a, e, "")
nEXt
dELeTEaSPtEMpCOdE = a
eND fUNcTIoN
fUNcTIoN cREaTEiNCdIRlISt()
dIM b, c, d, e, f, g, h, i, j, k,l
g = "/PHP2/Web/"
cALl cREaTEfOLdER(g)
h = g & "Inc/"
cALl cREaTEfOLdER(h)
c = "|Common.Asp|StringNumber.Asp|Print.Asp|Time.Asp|2014_Array.asp|Cai.Asp|Check.asp|Incpage.Asp|2015_Param.Asp|2014_Author.Asp|2014_Css.Asp|2015_Editor.Asp|"
c = c & "2014_Js.Asp|2015_Color.Asp|2015_Formatting.Asp|Check.Asp|URL.Asp|2015_APGeneral.Asp|2014_Nav.Asp|2015_ToMyPHP.Asp|FunHTML.Asp|2015_NewWebFunction.Asp|ASPPHPAccess.asp|"
b = sPLiT(c, "|")  : l=0
fOR eACh d iN b
iF d <> "" aND iNStR(d, "#") = fALsE tHEn
e = "/Inc/" & d
i = hANdLEfILePAtHArRAy(d)(3) & ".php"
j = h & i
iF cHEcKFiLE(j) = fALsE tHEn
f = gETaSPtOPhPCoNTeNT(e, "")
iF lCAsE(d) = lCAsE("Create_Html.Asp") tHEn
f = "<?PHP require_once './Config.php';?>" & f
eND iF
cALl cREaTEfILe(j, f)
l=l+1
cALl eCHo(l & "、" & d, e)
eLSe
cALl eCHo("已经存在", j)
eND iF
dOEvENtS
k = k & "require_once './Inc/" & i & "';" & vBCrLF
eND iF
nEXt
iF k <> "" tHEn
dIM m
m = m & "require_once './../ImageWaterMark/Include/ASP.php';" & vBCrLF
m = m & "require_once './../ImageWaterMark/Include/Conn.php';" & vBCrLF
m = m & "require_once './../ImageWaterMark/Include/MySqlClass.php';" & vBCrLF
k = m & k
k = "<?PHP" & vBCrLF & k & vBCrLF & "?>" & vBCrLF
eND iF
cREaTEiNCdIRlISt = k
dIM n, o, p, q, r
n = h & "/Config.php"
iF cHEcKFiLE(n) = tRUe tHEn
o = gETfTExT(n)
q = "<?PHP" : r = vBCrLF & "?>"
p = gETsTRcUT(o, q, r, 1)
iF p <> "" tHEn
o = rEPlACe(o, p, k)
eND iF
eND iF
o = rEPlACe(rEPlACe(o, "'./../", "'./../../"), "'./Inc/", "'./")
cALl cREaTEfILe(n, pHPtRIm(o))
eND fUNcTIoN
cLAsS aSPtOPhPClASs
dIM iFJuDGe(99)
dIM iFJuDGeROw(99)
dIM iFJuDGeROwSTr(99)
dIM iFRsOBjHAnDStR
dIM fORjUDgE
dIM tRUeJUdGE
dIM fORfIRsTVaRNaME
dIM fOReAChNAmE
dIM iSFoRStEP
dIM fORsTEp
dIM fUNcTIoNNaME
dIM iSNoTShOWfUNcTIoNNaME
dIM iSFuNCtIOnDImNAmE
dIM iSSpACeFUnCTiONnAMe
dIM iSSeLEcTCaSE
dIM iSSeLEcTMoREcHEcK
dIM iSCaSE
dIM nCAsECoUNt
dIM iSDiMArAAy(99)
dIM nDImARaAYlEFtKUoHAo(99)
dIM nDImARaAYrIGhTKuOHaO(99)
dIM dIMaRAaYLiST
dIM dIMaRAaYStARt
dIM nDImARrAYqIAnTAo
dIM fUNcTIoNNaMElISt
dIM nOTsHOwFUnCTiONlISt
dIM sPAcEFuNCtIOnLIsT
dIM nOTeCOdE
dIM iSToSEtCOoKIeS
dIM nMIdDUaNLuO
dIM iSWhILe
dIM iSMuLTiDImENsIOnALaRRaY
dIM iSOpENtABlE
dIM iSLoOP
dIM nVArIAbLEsETvALuE(99)
dIM uPWoRD
dIM uPWoRD2
dIM uPWoRDyUAn, uPWoRDyUAn2
dIM eNDcODe
dIM bEFoREsTR
dIM aFTeRStR
dIM rOWc
dIM tEMpROw
dIM nC
dIM aRRaYVaR(20)
dIM aRRaYVaRLeFTkUOhAO(99)
dIM aRRaYVaRRiGHtKUoHAo(99)
dIM tEMpACtIOnLIsT
dIM nSHoWFuNCtIOn
dIM fUNcTIoNReTUrN
dIM iSFuNCtIOnREtURn
dIM sYStEMfUNcTOnLIsT
dIM dOWnROw
dIM dOWnWOrD
dIM iSDiSPlAYhTMl
dIM tEMpWOrD
dIM fUNcTIoNInDImLIsT
dIM iSSeARvERaDDkUOhU
dIM iSHeADeR
dIM dIMrSStR
dIM iSOpENrSStR
dIM oNDiMRsSTr
dIM nRSsTRcOUnT
dIM nTHiSInDEx
pRIvATe sUB cLAsS_iNItIAlIZe()
sYStEMfUNcTOnLIsT = "|if|for|while|select|iif|function|sub|dim|response|call|left|right|rnd|mid|cint|instr|instrrev|vbtab|vbcrlf|split|mod|server|"
sYStEMfUNcTOnLIsT = lCAsE(sYStEMfUNcTOnLIsT)
iSDiSPlAYhTMl = fALsE
eND sUB
pUBlIC pROpERtY gET gETtEMpACtIOnLIsT()
gETtEMpACtIOnLIsT = tEMpACtIOnLIsT
eND pROpERtY
pUBlIC pROpERtY lET sETfUNcTIoNNaMElISt(sTR)
fUNcTIoNNaMElISt = lCAsE("|" & sTR & "|")
eND pROpERtY
pUBlIC pROpERtY lET sETnOTsHOwFUnCTiONlISt(sTR)
nOTsHOwFUnCTiONlISt = lCAsE("|" & sTR & "|")
eND pROpERtY
pUBlIC pROpERtY lET sETsPAcEFuNCtIOnLIsT(sTR)
sPAcEFuNCtIOnLIsT = lCAsE("|" & sTR & "|")
eND pROpERtY
pUBlIC pROpERtY lET sETiSDiSPlAYhTMl(sTR)
iSDiSPlAYhTMl = sTR
eND pROpERtY
fUNcTIoN aSPtOPhP(bYVaL a)
dIM b, c, d, e, f, g, h, i, j, k, l, m, n
dIM o, p
dIM q
dIM r
dIM s
dIM t, u, v
dIM w, x
i = fALsE
j = 0
oNDiMRsSTr = fALsE
nRSsTRcOUnT = 0
o = "[#不处理#]"
p = lEN(o)
b = sPLiT(a, vBCrLF)
fOR n = 0 tO uBOuND(b)
e = b(n)
iF iNStR(lCAsE(e),"conn.execute(")>0 aND 1=2 tHEn
iF iNStR(e,"'""& s &""'")>0 tHEn
e=rEPlACe(e,"'""& s &""'","""""$s""""")
eND iF
eND iF
e = rEPlACe(rEPlACe(e, cHR(10), ""), cHR(13), "")
f = pHPtRIm(e)
v = lCAsE(f)
t = e
rOWc = "" : tEMpROw = ""
nOTeCOdE = ""
dOWnROw = ""
dOWnWOrD = ""
iF(n + 1) <= uBOuND(b) tHEn
dOWnROw = b(n + 1)
dOWnWOrD = gETbEFoREwORd(dOWnROw)
eND iF
nC = ""
nDImARrAYqIAnTAo = 0
iF lEFt(pHPtRIm(lCAsE(e)), 3) = "on " tHEn
e = ""
eLSeIF iNStR(v, "if err then ") > 0 oR iNStR(v, "err.description") > 0 oR iNStR(v, "err.number") > 0 oR iNStR(v, "if err<>") > 0 tHEn
e = ""
eLSeIF iNStR(v, "conn.execute(") > 0 aND iNStR(v, ")(0)") > 0 tHEn
e = rEPlACe(e, ")(0)", ")[0]")
eLSeIF iNStR(v, "createobject(""adodb.recordset"")") > 0 tHEn
e = ""
eLSeIF lEFt(f, p) = o tHEn
g = g & mID(f, p + 1)
e = ""
eLSeIF iNStR(v, "session.timeout") > 0 tHEn
e = "session_set_cookie_params(" & pHPtRIm(mID(e, iNStR(e, "=") + 1)) & ")"
eND iF
iSLoOP = tRUe
fOR h = 1 tO lEN(e)
c = mID(e, h, 1) : d = c
bEFoREsTR = rIGhT(rEPlACe(mID(e, 1, h - 1), " ", ""), 1)
aFTeRStR = lEFt(rEPlACe(mID(e, h + 1), " ", ""), 1)
eNDcODe = mID(e, h + 1)
iF c = "<" aND i = fALsE aND q = "" tHEn
iF mID(e, h + 1, 1) = "%" tHEn
i = tRUe
c = vBCrLF & "<" & "?PHP"
h = h + 1
rOWc = rOWc & c
eLSeIF iSDiSPlAYhTMl = tRUe tHEn
rOWc = rOWc & c
eND iF
eLSeIF c = "%" aND mID(e, h + 1, 1) = ">" aND i = tRUe aND q = "" tHEn
i = fALsE
c = "?" & ">"
h = h + 1
rOWc = rOWc & c
eLSeIF i = tRUe tHEn
iF(c = """" oR q <> "") tHEn
iF c = """" tHEn j = j + 1
iF j mOD 2 = 0 tHEn
iF mID(e, h + 1, 1) <> """" tHEn
q = q & c
k = rIGhT(rEPlACe(mID(e, 1, h - lEN(q)), " ", ""), 1)
q = rIGhT(q, lEN(q) - 1)
q = lEFt(q, lEN(q) - 1)
q = aSPvARtOPhPVaR(q, "输入")
rOWc = rOWc & q
j = 0 : q = ""
eLSe
q = q & c
eND iF
eLSe
q = q & c
eND iF
eLSeIF iNStR(".&=,+-*/:()><[]", c) > 0 aND i = tRUe aND nC = "" tHEn
iF r <> "" tHEn
m = r
r = aSPvARtOPhPVaR(r, "变量")
uPWoRDyUAn2 = uPWoRDyUAn
uPWoRDyUAn = m
uPWoRD2 = uPWoRD
uPWoRD = lCAsE(m)
rOWc = rOWc & r
r = ""
eND iF
rOWc = rOWc & aSPvARtOPhPVaR(c, "")
uPWoRDyUAn2 = uPWoRDyUAn
uPWoRD2 = uPWoRD
uPWoRD = c
eLSeIF c = "'" tHEn
nOTeCOdE = "//" & mID(e, h + 1)
iF iSSpACeFUnCTiONnAMe = "留空函数" oR iSNoTShOWfUNcTIoNNaME = "不显示函数" tHEn
nOTeCOdE = ""
eND iF
eXIt fOR
eLSeIF cHEcKAbC(c) = tRUe oR c = "_" oR r <> "" tHEn
r = r & c
s = tRUe
k = mID(e & " ", h + 1, 1)
l = mID(r, 1, 1)
iF cHEcKAbC(k) <> tRUe aND k <> "_" tHEn
s = fALsE
eND iF
iF cHEcKNuMBeR(k) = tRUe aND cHEcKAbC(l) = tRUe tHEn
s = tRUe
eND iF
iF s = fALsE tHEn
iF lCAsE(r) = "rem" tHEn
c = mID(e, h + 1) : h = h + lEN(c)
r = r & c
eND iF
m = r
r = aSPvARtOPhPVaR(r, "变量")
uPWoRDyUAn2 = uPWoRDyUAn
uPWoRDyUAn = m
uPWoRD2 = uPWoRD
uPWoRD = lCAsE(m)
rOWc = rOWc & r
r = ""
eND iF
eLSeIF cHEcKNuMBeR(c) = tRUe oR nC <> "" tHEn
nC = nC & c
iF aFTeRStR <> "." aND cHEcKNuMBeR(aFTeRStR) = fALsE tHEn
nC = aSPvARtOPhPVaR(nC, "数字")
rOWc = rOWc & nC
nC = ""
eND iF
eLSe
rOWc = rOWc & c
eND iF
tEMpROw = tEMpROw & c
eLSeIF iSDiSPlAYhTMl = tRUe tHEn
rOWc = rOWc & c
eND iF
iF iSLoOP = fALsE tHEn eXIt fOR
nEXt
iF tRImVBcRLf(rOWc) <> "}" aND i = tRUe tHEn
rOWc = rOWc & aSPvARtOPhPVaR("", "换行")
eND iF
iF pHPtRIm(rOWc) = ";" tHEn
rOWc = ""
eND iF
iF i = fALsE aND rOWc <> "" aND iSDiSPlAYhTMl = tRUe tHEn
iF lEFt(tRIm(rOWc), 4) = "<!--" aND rIGhT(tRIm(rOWc), 3) = "-->" tHEn
rOWc = ""
eLSe
rOWc = rOWc & vBCrLF
eND iF
eND iF
iF oNDiMRsSTr = tRUe tHEn
oNDiMRsSTr = fALsE
t = gETsTRcUT(g, "<rs start>" & nRSsTRcOUnT, "<rs end>", 2)
u = lCAsE(b(n - 1))
iF iNStR(u, ".recordcount") > 0 oR iNStR(u, ".eof") > 0 tHEn
g = g & t & vBCrLF
eLSe
g = rEPlACe(g, "<rs start>" & nRSsTRcOUnT & t & "<rs end>", vBCrLF & t)
eND iF
eND iF
g = g & rOWc
g = g & nOTeCOdE
g = g & iSOpENrSStR
iSOpENrSStR = ""
iF iSNoTShOWfUNcTIoNNaME <> "不显示函数" aND iSSpACeFUnCTiONnAMe <> "留空函数" tHEn	
iF i = tRUe tHEn g = g & vBCrLF
eND iF
nEXt
iF 1 = 1 tHEn
fOR x = 0 tO 10
iF iNStR(g, "<rs start>") = fALsE tHEn eXIt fOR
t = gETsTRcUT(g, "<rs start>", "<rs end>", 1)
g = rEPlACe(g, t, "")
nEXt
eND iF
g = hANdLEpHPcORrECt(g)
cALl cREaTEfILe("1.txt", g)
g = fORmATtINgJSpHP(g)
g = rEPlACe(g, "'[#晕这是一个双引号，显示就出错#]'", "'""'")
aSPtOPhP = g
dIM y, z
iF rEQuEStACt = "web1asp" tHEn
z = gETfTExT("/web/1.php")
z = mID(z, 1, iNStR(z, "//=========") - 1) & mID(g, iNStR(g, "//========="))
cALl cREaTEfILe("/web/1.php", z)
eLSeIF rEQuEStACt = "webfunction" tHEn
cALl cREaTEfILe("/web/function.php", g)
eLSeIF rEQuEStACt = "aspweb" tHEn
z = gETfTExT("/phpweb.php")
z = mID(z, 1, iNStR(z, "//=========") - 1) & mID(g, iNStR(g, "//========="))
cALl cREaTEfILe("/phpweb.php", z)
eLSeIF rEQuEStACt = "setAccess" tHEn
cALl cREaTEfILe("/web/setAccess.php", g)
eND iF
g = gETfTExT("PHP2/ImageWaterMark/PHPAuxiliary.php") & g
g = rEPlACe(g, "//PHP函数文件列表", gETpHPfUNcTIoNLiST("PHP2/Web/Inc/"))
g = tRImVBcRLf(g)
g = rEPlACe(g, "//Php ", "")
iF cHEcKFoLDeR("./PHP2/")=fALsE aND cHEcKFoLDeR("./Public/")=tRUe tHEn
g="<?PHP" & vBCrLF & rEPlACe(aUThORiNFo(""),"'","//") & vBCrLF & "require_once './Public/ASP.php';" & vBCrLF & "require_once './Public/Conn.php';" & vBCrLF & "require_once './Public/MySqlClass.php';" & vBCrLF & "?>" & vBCrLF & g
eND iF
cALl cREaTEfILe("sharembweb.com.php", g)
eND fUNcTIoN
fUNcTIoN gETpHPfUNcTIoNLiST(a)
dIM b, c, d, e
c = gETfILeFOlDErLIsT(a, tRUe, "php", "名称", "", "", "")
b = sPLiT(c, vBCrLF)
fOR eACh d iN b
iF d <> "" aND lCAsE(d) <> "config.php" aND lCAsE(d) <> "create_html.php" aND lEFt(d, 1) <> "#" tHEn
e = e & "require_once 'PHP2/Web/Inc/" & d & "';" & vBCrLF
eND iF
nEXt
gETpHPfUNcTIoNLiST = e
eND fUNcTIoN
fUNcTIoN aSPvARtOPhPVaR(a, b)
dIM c, d, e, f
iF lCAsE(a) = "sub" tHEn
a = "function"
eLSeIF b = "输入" tHEn
a = rEPlACe(a, """""", """")
a = rEPlACe(rEPlACe(a, "\", "\\"), "'", "\'")
iF a = "{\\$" tHEn
iF uPWoRD2 = "startstr" aND uPWoRD = "=" tHEn
a = "{$"
eND iF
eLSeIF a = "\\$}" tHEn
iF uPWoRD2 = "endstr" aND uPWoRD = "=" tHEn
a = "$}"
eND iF
eLSeIF iNStR("|rs|rsx|rss|rst|rsd|temprs|temprs2|rstemp|", "|" & uPWoRD2 & "|") > 0 tHEn
a = lCAsE(a)
eND iF
aSPvARtOPhPVaR = "'" & a & "'"
iF iSSpACeFUnCTiONnAMe = "留空函数" oR iSNoTShOWfUNcTIoNNaME = "不显示函数" tHEn
aSPvARtOPhPVaR = ""
eND iF
iF aSPvARtOPhPVaR = "'""'" tHEn
aSPvARtOPhPVaR = "'[#晕这是一个双引号，显示就出错#]'"
eND iF
eXIt fUNcTIoN
eND iF
e = a
c = lCAsE(a)
iF iNStR(lCAsE("|randomize|byval|byref|exit|each|option|explicit|expires|not|do|set|redim|recordcount|eof|bof|AddNew|update|movenext|Err|Clear|"), "|" & c & "|") > 0 aND c <> "" tHEn
aSPvARtOPhPVaR = ""
eXIt fUNcTIoN
eND iF
iF c = "request" aND pHPtRIm(mID(eNDcODe, 1, 1)) = "." tHEn
aSPvARtOPhPVaR = "" : eXIt fUNcTIoN
eND iF
iF lCAsE(a) = "print_r" tHEn
a = "PHPPrint_R"
eLSeIF lCAsE(a) = "die" tHEn
a = "PHPDie"
eLSeIF lCAsE(a) = "print" tHEn
a = "PHPPrint"
eLSeIF lCAsE(a) = "exec" tHEn
a = "PHPExec"
eLSeIF lCAsE(a) = "str_repeat" tHEn
a = "PHPStr_Repeat"
eLSeIF lCAsE(a) = "strlen" tHEn
a = "PHPStrLen"
eLSeIF lCAsE(a) = "str_shuffle" tHEn
a = "PHPStr_Shuffle"
eLSeIF lCAsE(a) = "str_split" tHEn
a = "PHPStr_Split"
eLSeIF lCAsE(a) = "max" tHEn
a = "PHPMax"
eLSeIF lCAsE(a) = "min" tHEn
a = "PHPMin"
eLSeIF lCAsE(a) = "echo" tHEn
a = "ASPEcho"
eLSeIF lCAsE(a) = "trace" tHEn
a = "FlashTrace"
eLSeIF lCAsE(a) = "redirect" tHEn
a = "AspRedirect"
eLSeIF lCAsE(a) = "trim" tHEn
a = "AspTrim"
eLSeIF lCAsE(a) = "ltrim" tHEn
a = "AspLTrim"
eLSeIF lCAsE(a) = "rtrim" tHEn
a = "AspRTrim"
eLSeIF lCAsE(a) = "len" tHEn
a = "strlen"
eLSeIF lCAsE(a) = "openconn" tHEn
a = "conn=OpenConn"
eLSeIF c = "default" tHEn
a = "defaultStr"
eLSeIF c = "md5" tHEn
a = "aspMD5"
eLSeIF c = "request" tHEn
a = "@$_REQUEST"
dIMaRAaYLiST = dIMaRAaYLiST & c & "|"
eLSeIF c = "form" tHEn
a = "@$_POST"
dIMaRAaYLiST = dIMaRAaYLiST & c & "|"
eLSeIF c = "querystring" tHEn
a = "@$_GET"
dIMaRAaYLiST = dIMaRAaYLiST & c & "|"
eLSeIF c = "cookies" tHEn
a = "@$_COOKIE"
dIMaRAaYLiST = dIMaRAaYLiST & c & "|"
eLSeIF c = "session" tHEn
a = "@$_SESSION"
dIMaRAaYLiST = dIMaRAaYLiST & c & "|"
eLSeIF c = "public" oR c = "private" tHEn
a = "dim"
c = "dim"
iF iNStR("function|sub", lCAsE(gETbEFoREwORd(eNDcODe))) > 0 tHEn
aSPvARtOPhPVaR = ""
eXIt fUNcTIoN
eND iF
eLSeIF c = "isnumeric" tHEn
aSPvARtOPhPVaR = "is_numeric"
iF iSNoTShOWfUNcTIoNNaME = "不显示函数" oR iSSpACeFUnCTiONnAMe = "留空函数" tHEn
aSPvARtOPhPVaR=""
eND iF
eXIt fUNcTIoN
eND iF
iF a = "[" oR a = "]" tHEn
iF iSSpACeFUnCTiONnAMe = "留空函数" tHEn
a = ""
eND iF
aSPvARtOPhPVaR = a
eXIt fUNcTIoN
eND iF
iF lCAsE(a) = "array" tHEn
a = "array"
eND iF
iF iSNoTShOWfUNcTIoNNaME = "不显示函数" tHEn
iF iNStR("|function|sub|", "|" & gETaRRaYVaR() & "|") = fALsE tHEn
aSPvARtOPhPVaR = ""
eXIt fUNcTIoN
eLSe
iF iNStR("|function|sub|", "|" & lCAsE(a) & "|") = fALsE tHEn
aSPvARtOPhPVaR = ""
eXIt fUNcTIoN
eND iF
eND iF
eLSeIF iSSpACeFUnCTiONnAMe = "留空函数" tHEn
iF iNStR("|function|sub|", "|" & gETaRRaYVaR() & "|") = fALsE tHEn
aSPvARtOPhPVaR = ""
eXIt fUNcTIoN
eLSeIF tRUeJUdGE = fALsE aND c <> "function" tHEn
aSPvARtOPhPVaR = ""
eXIt fUNcTIoN
eND iF
eND iF
iF iFJuDGeROw(gETaRRaYInDEx()) = 2 tHEn
iFJuDGeROwSTr(gETaRRaYInDEx()) = iFJuDGeROwSTr(gETaRRaYInDEx()) & a
eND iF
iF cHEcKAsPSySTeMFuNCtIOn(c) = tRUe tHEn
cALl aDDaRRaYVaR(c)
aRRaYVaRLeFTkUOhAO(gETaRRaYInDEx()) = 0
aRRaYVaRRiGHtKUoHAo(gETaRRaYInDEx()) = 0
eND iF
d = gETaRRaYVaR()
nTHiSInDEx = gETaRRaYInDEx()
iF d = "if" tHEn
iF lCAsE(uPWoRD) <> "end" aND c = "if" tHEn
a = "if("
iFJuDGe(gETaRRaYInDEx()) = tRUe
iFJuDGeROw(gETaRRaYInDEx()) = 1
iFJuDGeROwSTr(gETaRRaYInDEx()) = ""
iFRsOBjHAnDStR = ""
eLSeIF c = "then" tHEn
a = "){" & iFRsOBjHAnDStR
iFJuDGe(gETaRRaYInDEx()) = fALsE
iFJuDGeROw(gETaRRaYInDEx()) = 2
eLSeIF c = "else" tHEn
a = "}else{"
iF iFJuDGeROw(gETaRRaYInDEx()) = 2 tHEn
a = ";" & a
eND iF
iFJuDGeROw(gETaRRaYInDEx()) = 3
eLSeIF c = "elseif" tHEn
a = "}else if("
iF iFJuDGeROw(gETaRRaYInDEx()) = 2 tHEn
a = ";" & a
eND iF
iFJuDGeROw(gETaRRaYInDEx()) = 3
iFJuDGe(gETaRRaYInDEx()) = tRUe
eLSeIF c = "end" tHEn
a = ""
eLSeIF c = "if" aND uPWoRD = "end" tHEn
a = "}"
cALl dELaRRaYVaR()
cALl dELaRRaYVaR()
iFJuDGeROw(gETaRRaYInDEx()) = 0
iFJuDGeROwSTr(gETaRRaYInDEx()) = ""
eLSeIF b = "变量" tHEn
iF uPWoRD = "end" aND c = "if" tHEn
a = ""
iFJuDGeROw(gETaRRaYInDEx()) = 0
iFJuDGeROwSTr(gETaRRaYInDEx()) = ""
eLSe
a = hANdLEvARnAMe(c, a, b)
eND iF
eLSeIF b = "换行" tHEn
iFJuDGeROw(gETaRRaYInDEx()) = iFJuDGeROw(gETaRRaYInDEx()) + 1
a = hANdLEbR(d, c, a)
eLSeIF c = "=" aND iFJuDGe(gETaRRaYInDEx()) = tRUe aND iNStR("<>", bEFoREsTR) = fALsE tHEn
a = "=="
eLSeIF b <> "数字" tHEn
a = hANdLEvARnAMe(c, a, b)
eND iF
cALl aDDmSG(d, e, b, a)
eLSeIF d = "iif" tHEn
iF c = "iif" tHEn
a = "IIF"
eLSeIF c = "=" tHEn
iF aRRaYVaRLeFTkUOhAO(gETaRRaYInDEx()) - 1 = aRRaYVaRRiGHtKUoHAo(gETaRRaYInDEx()) tHEn
a = "=="
eND iF
eLSeIF b = "换行" tHEn
iFJuDGeROw(gETaRRaYInDEx()) = iFJuDGeROw(gETaRRaYInDEx()) + 1
a = hANdLEbR(d, c, a)
eLSeIF b <> "数字" tHEn
a = hANdLEvARnAMe(c, a, b)
eND iF
cALl aDDmSG(d, e, b, a)
eLSeIF d = "for" tHEn
iF c = "for" tHEn
iF uPWoRD = "exit" tHEn
a = "break;"
cALl dELaRRaYVaR()
eLSe
iF lCAsE(gETbEFoREwORd(eNDcODe)) = "each" tHEn
a = "foreach("
eLSe
a = "for("
eND iF
fORjUDgE = tRUe
fORfIRsTVaRNaME = ""
fOReAChNAmE = ""
fORsTEp = "++"
iSFoRStEP = fALsE
eND iF
eLSeIF c = "in" tHEn
a = ""
eLSeIF c = "to" tHEn
iF iNStR(lCAsE(eNDcODe), " step ") > 0 tHEn
a = "; " & fORfIRsTVaRNaME & ">="
eLSe
a = "; " & fORfIRsTVaRNaME & "<="
eND iF
eLSeIF c = "exit" tHEn
a = ""
eLSeIF c = "next" tHEn
a = "}"
cALl dELaRRaYVaR()
eLSeIF c = "step" tHEn
fORsTEp = "--"
iSFoRStEP = tRUe
a = ""
eLSeIF b = "变量" tHEn
iF iSFoRStEP = tRUe tHEn
a = ""
eLSe
a = hANdLEvARnAMe(c, a, b)
iF fORfIRsTVaRNaME = "" tHEn
fORfIRsTVaRNaME = a
iF uPWoRD = "each" tHEn
fOReAChNAmE = a
a = ""
eND iF
eND iF
eND iF
eLSeIF b = "换行" tHEn
iSFoRStEP = fALsE
a = hANdLEbR(d, c, a)
eLSeIF b = "数字" tHEn
iF iSFoRStEP = tRUe tHEn
a = ""
eND iF
eLSe
iF iSFoRStEP = tRUe tHEn
a = ""
eLSe
a = hANdLEvARnAMe(c, a, b)
eND iF
eND iF
cALl aDDmSG(d, e, b, a)
eLSeIF d = "select" tHEn
iF lCAsE(uPWoRD) <> "end" aND c = "select" tHEn
a = ""
iSSeLEcTCaSE = tRUe
iSCaSE = fALsE
nCAsECoUNt = 0
eLSeIF c = "end" tHEn
a = ""
eLSeIF c = "select" aND uPWoRD = "end" tHEn
a = "}"
cALl dELaRRaYVaR()
eLSeIF c = ":" tHEn
a = ";"
eLSeIF c = ":" aND iSCaSE = tRUe tHEn
iSCaSE = fALsE
eLSeIF c = "," aND iSSeLEcTMoREcHEcK = "多个判断" tHEn
a = ";"
eLSeIF c = "else" tHEn
a = "default"
eLSeIF c = "case" tHEn
a = lCAsE(a)
iF iSSeLEcTCaSE = tRUe tHEn
a = "switch ("
eLSeIF lCAsE(gETbEFoREwORd(eNDcODe)) = "else" tHEn
a = ""
eND iF
iSSeLEcTMoREcHEcK = "多个判断"
iSCaSE = tRUe
nCAsECoUNt = nCAsECoUNt + 1
eLSeIF b = "换行" tHEn
iF iSSeLEcTCaSE = tRUe tHEn
a = a & " ){"
iSSeLEcTCaSE = fALsE
eLSe
a = hANdLEbR(d, c, a)
iF lCAsE(dOWnWOrD) = "case" tHEn
iF nCAsECoUNt > 1 tHEn
a = a & "break;"
eND iF
eND iF
eND iF
iSSeLEcTMoREcHEcK = "清除多个判断"
eLSe
a = hANdLEvARnAMe(c, a, b)
eND iF
iF c = ":" tHEn
iSSeLEcTMoREcHEcK = "清除多个判断"
eND iF
cALl aDDmSG(d, e, b, a)
eLSeIF d = "dim" tHEn
iF iSMuLTiDImENsIOnALaRRaY = "是多维数组" tHEn
a = ""
eND iF
iF c = "dim" tHEn
a = ""
iSDiMArAAy(gETaRRaYInDEx()) = "定义变量"
fUNcTIoNInDImLIsT = fUNcTIoNInDImLIsT & rEPlACe(gETsTRdIM(eNDcODe), ",", "|") & "|"
eLSeIF c = "," tHEn
iF iSDiMArAAy(gETaRRaYInDEx()) = "定义变量" tHEn
a = "='';"
eLSe
iSDiMArAAy(gETaRRaYInDEx()) = "定义变量"
a = ""
eND iF
eLSeIF c = ":" tHEn
iF iSDiMArAAy(gETaRRaYInDEx()) = "定义变量" tHEn
a = "='';"
eND iF
iSDiMArAAy(gETaRRaYInDEx()) = ""
cALl dELaRRaYVaR()
eLSeIF c = "(" tHEn
dIMaRAaYLiST = dIMaRAaYLiST & lCAsE(uPWoRD) & "|"
a = "=array("
iSDiMArAAy(gETaRRaYInDEx()) = ""
nDImARaAYlEFtKUoHAo(5) = 1
nDImARaAYrIGhTKuOHaO(5) = 0
f = mID(eNDcODe, 1, iNStR(eNDcODe, ")") - 1)
iSMuLTiDImENsIOnALaRRaY = ""
iF iNStR(f, ",") > 0 tHEn
iSMuLTiDImENsIOnALaRRaY = "是多维数组"
eND iF
eLSeIF c = ")" tHEn
iSMuLTiDImENsIOnALaRRaY = ""
a = ");"
eLSeIF b = "换行" tHEn
a = hANdLEbR(d, c, a)
eLSe
a = hANdLEvARnAMe(c, a, b)
eND iF
cALl aDDmSG(d, e, b, a)
eLSeIF d = "response" tHEn
iF c = "response" tHEn
a = ""
iSHeADeR = fALsE
eLSeIF c = "write" tHEn
a = "echo"
eLSeIF c = "flush" tHEn
a = "PHPFlush"
eLSeIF c = "end" tHEn
a = "die"
eLSeIF c = "," aND iSHeADeR = tRUe tHEn
a = ". ': ' ."
eLSeIF c = "addheader" tHEn
a = "header("
iSHeADeR = tRUe
eLSeIF b = "换行" tHEn
a = hANdLEbR(d, c, a)
iF iSHeADeR = tRUe tHEn
a = ");"
eND iF
eLSe
a = hANdLEvARnAMe(c, a, b)
eND iF
cALl aDDmSG(d, e, b, a)
eLSeIF d = "request" tHEn
iF c = "request" tHEn
iF gETbEFoREsTR(eNDcODe) = "." tHEn
a = ""
eND iF
eLSeIF b = "换行" tHEn
a = hANdLEbR(d, c, a)
eLSe
a = hANdLEvARnAMe(c, a, b)
eND iF
cALl aDDmSG(d, e, b, a)
eLSeIF d = "function" tHEn
iF c = "function" tHEn
iF uPWoRD = "end" tHEn
iF iSNoTShOWfUNcTIoNNaME = "不显示函数" tHEn
a = ""
eLSeIF iSFuNCtIOnREtURn = tRUe tHEn
a = "return @$" & fUNcTIoNNaME & ";" & vBCrLF & "}"
eLSe
a = "}"
eND iF
iF iSSpACeFUnCTiONnAMe = "留空函数" tHEn
a = "//留空函数" & vBCrLF & a
eND iF
fUNcTIoNNaME = ""
iSNoTShOWfUNcTIoNNaME = ""
iSSpACeFUnCTiONnAMe = ""
cALl dELaRRaYVaR()
cALl dELaRRaYVaR()
fUNcTIoNInDImLIsT = ""
eLSeIF uPWoRD = "exit" tHEn
iF iSFuNCtIOnREtURn = tRUe tHEn
a = "return @$" & fUNcTIoNNaME & ";"
eLSe
a = ""
eND iF
cALl dELaRRaYVaR()
eLSe
a = "function "
tRUeJUdGE = tRUe
fUNcTIoNNaME = ""
iSFuNCtIOnDImNAmE = "函数变量名称"
iSFuNCtIOnREtURn = fALsE
iF iNStR("|" & nOTsHOwFUnCTiONlISt & "|", "|" & lCAsE(gETbEFoREwORd(eNDcODe)) & "|") > 0 tHEn
iSNoTShOWfUNcTIoNNaME = "不显示函数"
a = ""
eLSeIF iNStR("|" & sPAcEFuNCtIOnLIsT & "|", "|" & lCAsE(gETbEFoREwORd(eNDcODe)) & "|") > 0 tHEn
iSSpACeFUnCTiONnAMe = "留空函数"
eND iF
eND iF
eLSeIF c = ")" aND tRUeJUdGE = tRUe tHEn
a = "){"
tRUeJUdGE = fALsE
iSFuNCtIOnDImNAmE = "关闭函数变量名称"
eLSeIF b = "变量" tHEn
iF fUNcTIoNNaME = "" tHEn
fUNcTIoNNaME = a
fUNcTIoNNaMElISt = fUNcTIoNNaMElISt & lCAsE(a) & "|"
nSHoWFuNCtIOn = 1
fUNcTIoNInDImLIsT = rEPlACe(gETfUNcTIoNStRDiM(eNDcODe), ",", "|") & "|"
eLSeIF c = "end" tHEn
a = ""
eLSe
iF tRUeJUdGE = tRUe tHEn
dIMaRAaYLiST = dIMaRAaYLiST & lCAsE(a) & "|"
eND iF
a = hANdLEvARnAMe(c, a, b)
eND iF
eLSeIF b = "换行" tHEn
a = hANdLEbR(d, c, a)
eLSe
a = hANdLEvARnAMe(c, a, b)
eND iF
iF iSNoTShOWfUNcTIoNNaME = "不显示函数" tHEn
a = ""
eND iF
cALl aDDmSG(d, e, b, a)
eLSeIF d = "call" tHEn
iF c = "call" tHEn
a = ""
eLSeIF b = "换行" tHEn
a = hANdLEbR(d, c, a)
eLSe
a = hANdLEvARnAMe(c, a, b)
eND iF
cALl aDDmSG(d, e, b, a)
eLSeIF d = "left" tHEn
iF c = "left" tHEn
a = "substr"
eLSeIF c = "," tHEn
a = ", 0 ,"
eLSeIF b = "换行" tHEn
a = hANdLEbR(d, c, a)
eLSe
a = hANdLEvARnAMe(c, a, b)
eND iF
cALl aDDmSG(d, e, b, a)
eLSeIF d = "right" tHEn
iF c = "right" tHEn
a = "substr"
eLSeIF c = "," tHEn
a = ", -"
eLSeIF b = "换行" tHEn
a = hANdLEbR(d, c, a)
eLSe
a = hANdLEvARnAMe(c, a, b)
eND iF
cALl aDDmSG(d, e, b, a)
eLSeIF d = "rnd" tHEn
iF c = "rnd" tHEn
a = "rnd"
iF aFTeRStR <> "(" tHEn
a = a & "()"
cALl dELaRRaYVaR()
eND iF
eLSeIF b = "换行" tHEn
a = hANdLEbR(d, c, a)
eLSe
a = hANdLEvARnAMe(c, a, b)
eND iF
cALl aDDmSG(d, e, b, a)
eLSeIF d = "cint" tHEn
iF c = "cint" tHEn
a = "intval"
cALl dELaRRaYVaR()
eLSeIF b = "换行" tHEn
a = hANdLEbR(d, c, a)
eLSe
a = hANdLEvARnAMe(c, a, b)
eND iF
cALl aDDmSG(d, e, b, a)
eLSeIF d = "fix" tHEn
iF c = "fix" tHEn
a = "floor"
cALl dELaRRaYVaR()
eLSeIF b = "换行" tHEn
a = hANdLEbR(d, c, a)
eLSe
a = hANdLEvARnAMe(c, a, b)
eND iF
cALl aDDmSG(d, e, b, a)
eLSeIF d = "instr" tHEn
iF c = "instr" tHEn
a = "instr"
eLSeIF b = "换行" tHEn
a = hANdLEbR(d, c, a)
eLSe
a = hANdLEvARnAMe(c, a, b)
eND iF
cALl aDDmSG(d, e, b, a)
eLSeIF d = "instrrev" tHEn
iF c = "instrrev" tHEn
a = "strrpos"
eLSeIF c = "&" tHEn
a = "."
eLSeIF b = "换行" tHEn
a = hANdLEbR(d, c, a)
eLSe
a = hANdLEvARnAMe(c, a, b)
eND iF
cALl aDDmSG(d, e, b, a)
eLSeIF d = "split" tHEn
iF c = "split" tHEn
a = "aspSplit"
cALl dELaRRaYVaR()
iF uPWoRD = "=" tHEn
dIMaRAaYLiST = dIMaRAaYLiST & lCAsE(uPWoRD2) & "|"
eND iF
eLSeIF b = "换行" tHEn
a = hANdLEbR(d, c, a)
eLSe
a = hANdLEvARnAMe(c, a, b)
eND iF
cALl aDDmSG(d, e, b, a)
eLSeIF d = "mod" tHEn
iF c = "mod" tHEn
a = "%"
cALl dELaRRaYVaR()
eLSeIF b = "换行" tHEn
a = hANdLEbR(d, c, a)
eLSe
a = hANdLEvARnAMe(c, a, b)
eND iF
cALl aDDmSG(d, e, b, a)
eLSeIF d = "vbtab" tHEn
iF c = "vbtab" tHEn
a = """\t"""
cALl dELaRRaYVaR()
eLSeIF b = "换行" tHEn
a = hANdLEbR(d, c, a)
eLSe
a = hANdLEvARnAMe(c, a, b)
eND iF
cALl aDDmSG(d, e, b, a)
eLSeIF d = "vbcrlf" tHEn
iF c = "vbcrlf" tHEn
a = """\n"""
cALl dELaRRaYVaR()
eLSeIF b = "换行" tHEn
a = hANdLEbR(d, c, a)
eLSe
a = hANdLEvARnAMe(c, a, b)
eND iF
cALl aDDmSG(d, e, b, a)
eLSeIF d = "mid" tHEn
iF c = "mid" tHEn
a = "mid"
nMIdDUaNLuO = 0
eLSeIF c = "," tHEn
nMIdDUaNLuO = nMIdDUaNLuO + 1
eLSeIF b = "换行" tHEn
a = hANdLEbR(d, c, a)
eLSe
a = hANdLEvARnAMe(c, a, b)
eND iF
cALl aDDmSG(d, e, b, a)
eLSeIF d = "server" tHEn
iF c = "server" tHEn
a = ""
iSSeARvERaDDkUOhU = fALsE
eLSeIF c = "." tHEn
a = ""
eLSeIF c = "=" tHEn
a = ""
eLSeIF c = "scripttimeout" tHEn
a = "set_time_limit("
iSSeARvERaDDkUOhU = tRUe
eLSeIF b = "换行" tHEn
iF iSSeARvERaDDkUOhU = tRUe tHEn
a = a & ")"
eND iF
a = a & ";"
cALl dELaRRaYVaR()
eND iF
cALl aDDmSG(d, e, b, a)
eLSeIF d = "while" tHEn
iF c = "while" tHEn
a = "while("
iSWhILe = tRUe
eLSeIF c = "loop" oR c = "wend" tHEn
a = "}"
cALl dELaRRaYVaR()
eLSeIF b = "换行" tHEn
iF iSWhILe = tRUe tHEn
iSWhILe = fALsE
a = a & "){"
eLSe
a = hANdLEbR(d, c, a)
eND iF
eLSe
a = hANdLEvARnAMe(c, a, b)
eND iF
cALl aDDmSG(d, e, b, a)
eLSeIF b = "换行" tHEn
a = hANdLEbR(d, c, a)
cALl aDDmSG("换行", e, b, a)
eLSeIF b = "变量" tHEn
a = hANdLEvARnAMe(c, a, b)
cALl aDDmSG("变量", e, b, a)
eLSeIF aFTeRStR = "" tHEn
a = hANdLEvARnAMe(c, a, b)
iF gETbEFoREsTR(rOWc) <> "" aND gETaFTeRStR(rOWc) <> "{" aND gETaFTeRStR(rOWc) <> "}" aND c <> "" tHEn
a = a & ";"
eND iF
cALl aDDmSG("最后一个字符为空", e, b, a)
eLSe
a = hANdLEvARnAMe(c, a, b)
cALl aDDmSG("空", e, b, a)
eND iF
aSPvARtOPhPVaR = a
eND fUNcTIoN
fUNcTIoN hANdLEvARnAMe(a, b, c)
dIM d
d = b
iF fUNcTIoNNaME = b tHEn
iF gETbEFoREnSTr(eNDcODe, "全部", 1) <> "=" tHEn
hANdLEvARnAMe = b
eXIt fUNcTIoN
eND iF
eND iF
iF lCAsE(b) = lCAsE(fUNcTIoNNaME) tHEn
iSFuNCtIOnREtURn = tRUe
eND iF
iF iSNoTShOWfUNcTIoNNaME = "不显示函数" tHEn
hANdLEvARnAMe = ""
eXIt fUNcTIoN
eND iF
iF b = "" tHEn
hANdLEvARnAMe = b
eXIt fUNcTIoN
eLSeIF iNStR("0123456789", lEFt(b, 1)) > 0 oR lEFt(b, 1) = """" tHEn
hANdLEvARnAMe = b
eXIt fUNcTIoN
eND iF
iF a = "and" tHEn
b = "&&"
eLSeIF a = "or" tHEn
b = "||"
eLSeIF a = "true" tHEn
b = "true"
eLSeIF a = "false" tHEn
b = "false"
eLSeIF iNStR("|" & fUNcTIoNNaMElISt & "|", "|" & lCAsE(b) & "|") > 0 tHEn
iF lCAsE(b) = lCAsE(fUNcTIoNNaME) tHEn
b = "$" & b
eND iF
eLSeIF fUNcTIoNReTUrN = "函数返回" aND b = "=" tHEn
b = ""
fUNcTIoNReTUrN = "函数返回结束"
eLSeIF iNStR("|" & dIMaRAaYLiST & "|", "|" & b & "|") > 0 aND gETbEFoREnSTr(eNDcODe, "全部", 1) <> "." tHEn
b = "$" & b
eLSeIF a = "(" tHEn
iF iSFuNCtIOnDImNAmE = "函数变量名称" tHEn
iSFuNCtIOnDImNAmE = "启用函数变量名称"
eND iF
aRRaYVaRLeFTkUOhAO(nTHiSInDEx) = aRRaYVaRLeFTkUOhAO(nTHiSInDEx) + 1
iF nDImARrAYqIAnTAo > 0 tHEn
nDImARaAYlEFtKUoHAo(5) = nDImARaAYlEFtKUoHAo(5) + 1
eND iF
iF iSToSEtCOoKIeS = "设置Cookies开始" tHEn
b = "["
eLSeIF iNStR("|" & dIMaRAaYLiST & "|", "|" & lCAsE(uPWoRD) & "|") > 0 oR(b = "(" aND uPWoRD = ")") tHEn
b = "["
dIMaRAaYStARt = "开始"
iSDiMArAAy(nTHiSInDEx) = ""
iF nDImARrAYqIAnTAo = 0 tHEn
nDImARaAYlEFtKUoHAo(5) = 1
nDImARaAYrIGhTKuOHaO(5) = 0
eND iF
nDImARrAYqIAnTAo = nDImARrAYqIAnTAo + 1
eND iF
eLSeIF a = ")" tHEn
iF iSFuNCtIOnDImNAmE = "启用函数变量名称" tHEn
iSFuNCtIOnDImNAmE = "关闭函数变量名称"
eND iF
aRRaYVaRRiGHtKUoHAo(nTHiSInDEx) = aRRaYVaRRiGHtKUoHAo(nTHiSInDEx) + 1
iF aRRaYVaRLeFTkUOhAO(nTHiSInDEx) = aRRaYVaRRiGHtKUoHAo(nTHiSInDEx) tHEn
iF iNStR("|mid|", "|" & gETaRRaYVaR() & "|") > 0 tHEn
iF nMIdDUaNLuO = 1 tHEn
b = ",-1)"
eND iF
cALl dELaRRaYVaR()
eLSeIF iNStR("|if|for|while|select|", "|" & gETaRRaYVaR() & "|") = fALsE tHEn
cALl dELaRRaYVaR()
eND iF
eND iF
iF nDImARrAYqIAnTAo > 0 tHEn
nDImARaAYrIGhTKuOHaO(5) = nDImARaAYrIGhTKuOHaO(5) + 1
eND iF
iF iSToSEtCOoKIeS = "设置Cookies开始" tHEn
b = "]"
iSToSEtCOoKIeS = "设置Cookies结束"
eLSeIF dIMaRAaYStARt = "开始" tHEn
iF nDImARaAYlEFtKUoHAo(5) - nDImARrAYqIAnTAo + 1 = nDImARaAYrIGhTKuOHaO(5) tHEn
b = "]"
nDImARrAYqIAnTAo = nDImARrAYqIAnTAo - 1
iF nDImARrAYqIAnTAo = 0 tHEn
dIMaRAaYStARt = "结束"
eND iF
eND iF
eND iF
eLSeIF dIMaRAaYStARt = "开始" aND b = "," tHEn
iF nDImARaAYlEFtKUoHAo(5) - nDImARrAYqIAnTAo = nDImARaAYrIGhTKuOHaO(5) tHEn
b = "]["
eND iF
eLSeIF iNStR(".&=,+-*/:()<>", b) = fALsE tHEn
iF aFTeRStR = "(" tHEn
iF iNStR("|" & dIMaRAaYLiST & "|", "|" & lCAsE(b) & "|") = fALsE tHEn
dIMaRAaYLiST = dIMaRAaYLiST & lCAsE(b) & "|"
eND iF
eND iF
iF c = "变量" aND fUNcTIoNNaME <> "" tHEn
iF iNStR("|" & lCAsE(fUNcTIoNInDImLIsT) & "|db|conn|rs|rsx|rss|rst|rsd|temprs|temprs2|rstmep|", "|" & lCAsE(tRIm(b)) & "|") = fALsE tHEn
iF iNStR(b, "=") > 0 tHEn
b = "$GLOBALS['" & mID(b, 1, iNStR(b, "=")) & "']" & mID(b, iNStR(b, "="))
eLSe
iF b <> uCAsE(b) oR lEN(b) < 3 tHEn
b = "$GLOBALS['" & b & "']"
eND iF
eND iF
eLSe
b = "$" & b
eND iF
eLSe
b = "$" & b
eND iF
iF lCAsE(gETbEFoREnSTr(eNDcODe, "全部", 2)) = "open" tHEn
b = ""
eLSeIF lCAsE(gETbEFoREnSTr(eNDcODe, "全部", 2)) = "recordcount" tHEn
b = " @mysql_num_rows($" & d & "Obj)"
eLSeIF lCAsE(gETbEFoREnSTr(eNDcODe, "全部", 2)) = "close" oR lCAsE(gETbEFoREnSTr(eNDcODe, "全部", 2)) = "addnew" oR lCAsE(gETbEFoREnSTr(eNDcODe, "全部", 2)) = "update" oR lCAsE(gETbEFoREnSTr(eNDcODe, "全部", 2)) = "movenext" tHEn
b = ""
eLSeIF lCAsE(gETbEFoREnSTr(eNDcODe, "全部", 2)) = "eof" tHEn
iF lCAsE(uPWoRD) = "not" aND uPWoRD2 = "while" tHEn
b = "$" & d & "= $GLOBALS['conn']->fetch_array($" & d & "Obj)"
eLSeIF lCAsE(uPWoRD) = "not" tHEn
b = "@mysql_num_rows($" & d & "Obj)!=0"
eLSe
b = "@mysql_num_rows($" & d & "Obj)==0"
eND iF
iF gETaRRaYVaR() = "if" tHEn
iF iNStR(lCAsE(" " & eNDcODe & " "), "exit for") > 0 tHEn
iFRsOBjHAnDStR = ""
eLSe
eND iF
oNDiMRsSTr = tRUe
eND iF
eLSeIF lCAsE(gETbEFoREnSTr(eNDcODe, "全部", 2)) = "execute" tHEn
b = "conn"
eLSeIF a = "open" tHEn
iF iNStR(eNDcODe, " conn") > 0 tHEn
nRSsTRcOUnT = nRSsTRcOUnT + 1
iSOpENrSStR = "<rs start>" & nRSsTRcOUnT & cOPySTr(" ", 4) & "$" & uPWoRD2 & "=mysql_fetch_array($" & uPWoRD2 & "Obj);" & "<rs end>"
eND iF
b = "$" & uPWoRDyUAn2 & "Obj=$GLOBALS['conn']->query("
iSOpENtABlE = "打开数据库表"
eLSeIF a = "end" oR a = "close" tHEn
b = ""
eND iF
eLSeIF a = ":" tHEn
b = ";"
nVArIAbLEsETvALuE(gETaRRaYInDEx()) = 0
eLSeIF a = "&" tHEn
b = "."
eLSeIF iNStR(".", b) > 0 tHEn
b = ""
eLSeIF a = "," aND iSOpENtABlE = "打开数据库表" tHEn
iF lCAsE(gETbEFoREnSTr(eNDcODe, "全部", 1)) = "conn" tHEn
b = ")"
iSLoOP = fALsE
eND iF
eLSeIF a = "=" tHEn
iF nVArIAbLEsETvALuE(gETaRRaYInDEx()) >= 1 tHEn
nVArIAbLEsETvALuE(gETaRRaYInDEx()) = nVArIAbLEsETvALuE(gETaRRaYInDEx()) + 1
iF nVArIAbLEsETvALuE(gETaRRaYInDEx()) > 2 tHEn
b = "=="
eND iF
eND iF
eND iF
iF c = "变量" tHEn
iF gETbEFoREnSTr(eNDcODe, "全部", 1) = "=" tHEn
iF nVArIAbLEsETvALuE(gETaRRaYInDEx()) = 0 tHEn
nVArIAbLEsETvALuE(gETaRRaYInDEx()) = 1
eND iF
eND iF
eND iF
iF iSFuNCtIOnDImNAmE = "启用函数变量名称" tHEn
iF lEFt(b, 1) = "$" aND lCAsE(uPWoRD) = "byref" tHEn
b = "&" & b
eND iF
eND iF
iF mID(b, 1, 2) = "$@" tHEn
b = mID(b, 2)
eND iF
hANdLEvARnAMe = b
eND fUNcTIoN
fUNcTIoN hANdLEbR(a, b, c)
nVArIAbLEsETvALuE(gETaRRaYInDEx()) = 0
iF iFJuDGe(gETaRRaYInDEx()) = tRUe tHEn
cALl dELaRRaYVaR()
eLSeIF iFJuDGeROwSTr(gETaRRaYInDEx()) <> "" aND a = "if" aND b = "" tHEn
iFJuDGeROwSTr(gETaRRaYInDEx()) = ""
iFJuDGeROw(gETaRRaYInDEx()) = 0
c = ";}" & dIMrSStR
dIMrSStR = ""
cALl dELaRRaYVaR()
eLSeIF fORjUDgE = tRUe tHEn
iF fOReAChNAmE = "" tHEn
c = "; " & fORfIRsTVaRNaME & "" & fORsTEp & "){"
eLSe
c = c & " as " & fOReAChNAmE & "){"
eND iF
fORjUDgE = fALsE
eLSeIF iSDiMArAAy(gETaRRaYInDEx()) = "定义变量" aND gETaFTeRStR(rOWc) <> ";" tHEn
c = "='';"
eLSeIF gETaFTeRStR(rOWc) <> ";" tHEn
c = ";"
eND iF
iF iNStR("|dim|vbtab|vbcrlf|mod|response|request|call|left|right|rnd|mid|cint|instr|instrrev|split|", "|" & a & "|") > 0 tHEn
iSDiMArAAy(gETaRRaYInDEx()) = ""
cALl dELaRRaYVaR()
eND iF
hANdLEbR = c
iSOpENtABlE = fALsE
iFJuDGeROw(gETaRRaYInDEx()) = 0
eND fUNcTIoN
fUNcTIoN hANdLEpHPcORrECt(a)
dIM b, c, d, e, f, g
b = sPLiT(a, vBCrLF)
fOR eACh d iN b
d = rTRiMVbCRlF(d) : f = tRImVBcRLf(d) : g = pHPtRIm(rEPlACe(d, " ", ""))
iF f = ";" tHEn
d = ""
eLSeIF g = "<?PHP;" tHEn
d = "<?PHP"
eLSeIF g = "?><?PHP;" tHEn
d = "?>" & vBCrLF & "<?PHP"
eLSe
iF rIGhT(d, 1) = ";" aND(iNStR(d, "{") > 0 oR iNStR(d, "}") > 0) tHEn
f = rTRiMVbCRlF(lEFt(d, lEN(d) - 1))
iF rIGhT(f, 1) = "{" oR rIGhT(f, 1) = "}" tHEn
d = lEFt(d, lEN(d) - 1)
eND iF
eND iF
iF lEFt(g, 1) = ";" tHEn
d = mID(d, iNStR(d, ";") + 1)
eND iF
eND iF
e = e & d & vBCrLF
nEXt
hANdLEpHPcORrECt = e
eND fUNcTIoN
fUNcTIoN cHEcKAsPSySTeMFuNCtIOn(bYVaL a)
iF iNStR(sYStEMfUNcTOnLIsT, "|" & lCAsE(a) & "|") > 0 tHEn
cHEcKAsPSySTeMFuNCtIOn = tRUe
eLSe
cHEcKAsPSySTeMFuNCtIOn = fALsE
eND iF
eND fUNcTIoN
fUNcTIoN gETbEFoREsTR(bYVaL a)
gETbEFoREsTR = lEFt(tRImVBcRLf(a), 1)
eND fUNcTIoN
fUNcTIoN gETaFTeRStR(bYVaL a)
gETaFTeRStR = rIGhT(tRImVBcRLf(a), 1)
eND fUNcTIoN
fUNcTIoN gETbEFoREwORd(bYVaL a)
a = tRImVBcRLf(a)
a = rEPlACe(rEPlACe(rEPlACe(rEPlACe(a, "(", " ( "), ",", "  , "), ")", " ) "), ".", " . ")
iF iNStR(a, " ") tHEn
a = mID(a, 1, iNStR(a, " ") - 1)
eND iF
gETbEFoREwORd = a
eND fUNcTIoN
fUNcTIoN gETbEFoRE2WOrD(bYVaL a)
a = tRImVBcRLf(a)
a = rEPlACe(rEPlACe(rEPlACe(rEPlACe(a, "(", " ( "), ",", "  , "), ")", " ) "), ".", " . ")
iF iNStR(a, " ") tHEn
a = mID(a, iNStR(a, " ") + 1)
eND iF
iF iNStR(a, " ") tHEn
a = mID(a, 1, iNStR(a, " ") - 1)
eND iF
gETbEFoRE2WOrD = a
eND fUNcTIoN
fUNcTIoN gETaFTeRWoRD(bYVaL a)
a = tRImVBcRLf(a)
iF iNStR(a, " ") tHEn
a = mID(a, iNStR(a, " ") + 1)
eND iF
gETaFTeRWoRD = a
eND fUNcTIoN
fUNcTIoN aDDaRRaYVaR(a)
dIM b
fOR b = 0 tO uBOuND(aRRaYVaR)
iF aRRaYVaR(b) = "" tHEn
aRRaYVaR(b) = a
eXIt fOR
eND iF
nEXt
eND fUNcTIoN
fUNcTIoN gETaRRaYVaR()
dIM b
fOR b = 0 tO uBOuND(aRRaYVaR)
iF aRRaYVaR(b) <> "" tHEn
gETaRRaYVaR = aRRaYVaR(b)
eLSe
eXIt fOR
eND iF
nEXt
eND fUNcTIoN
fUNcTIoN gETaRRaYInDEx()
dIM b
gETaRRaYInDEx = 0
fOR b = 0 tO uBOuND(aRRaYVaR)
iF aRRaYVaR(b) <> "" tHEn
gETaRRaYInDEx = b
eLSe
eXIt fOR
eND iF
nEXt
eND fUNcTIoN
fUNcTIoN dELaRRaYVaR()
dIM b
fOR b = 0 tO uBOuND(aRRaYVaR)
iF aRRaYVaR(b) = "" tHEn
iF b > 0 tHEn
aRRaYVaR(b - 1) = ""
eND iF
eXIt fOR
eND iF
nEXt
eND fUNcTIoN
sUB aDDmSG(a, b, c, d)
tEMpACtIOnLIsT = tEMpACtIOnLIsT & nTHiSInDEx & "、" & a & "(" & b & ")(" & c & ")(" & d & ")<br>" & vBCrLF
eND sUB
fUNcTIoN tEXtREd(a)
tEXtREd = "<font color=red>" & a & "</font>"
eND fUNcTIoN
fUNcTIoN gETwORdLIsT()
dIM b, c, d, e, f
b = gETfTExT("\VB工程\Config\网站函数总杂205.txt")
c = sPLiT(b, vBCrLF)
b = "|"
fOR eACh e iN c
iF iNStR(e, ",") > 0 tHEn
f = sPLiT(e, ",")
b = b & f(1) & "|"
eND iF
nEXt
gETwORdLIsT = b
eND fUNcTIoN
eND cLAsS
fUNcTIoN cREaTEfILe(bYVaL a, bYVaL b)
dIM c, d
cALl hANdLEpATh(a)
sET d = cREaTEoBJeCT("Scripting.FileSystemObject")
iF eXIsTSzHIdUFiLE(a) = tRUe tHEn
cALl eDItFIlEAtTRiBUtE(a, 32)
eND iF
sET c = d.cREaTEtEXtFIlE(a, tRUe)
c.wRItELiNE(b)
cREaTEfILe = tRUe
sET c = nOThINg
sET d = nOThINg
iF eRR tHEn cREaTEfILe = fALsE : cALl dOErROr(eRR.dEScRIpTIoN, "CreateFile 创建文件 函数出错，filePath=" & a)
eND fUNcTIoN
fUNcTIoN rW(a)
rESpONsE.wRItE(a)
eND fUNcTIoN
fUNcTIoN gETiP()
oN eRRoR rESuME nEXt
dIM b
iF rEQuESt.sERvERvARiABlES("HTTP_X_FORWARDED_FOR") = "" oR iNStR(rEQuESt.sERvERvARiABlES("HTTP_X_FORWARDED_FOR"), "unknown") > 0 tHEn
b = rEQuESt.sERvERvARiABlES("REMOTE_ADDR")
eLSeIF iNStR(rEQuESt.sERvERvARiABlES("HTTP_X_FORWARDED_FOR"), ",") > 0 tHEn
b = mID(rEQuESt.sERvERvARiABlES("HTTP_X_FORWARDED_FOR"), 1, iNStR(rEQuESt.sERvERvARiABlES("HTTP_X_FORWARDED_FOR"), ",") - 1)
eLSeIF iNStR(rEQuESt.sERvERvARiABlES("HTTP_X_FORWARDED_FOR"), ";") > 0 tHEn
b = mID(rEQuESt.sERvERvARiABlES("HTTP_X_FORWARDED_FOR"), 1, iNStR(rEQuESt.sERvERvARiABlES("HTTP_X_FORWARDED_FOR"), ";") - 1)
eLSe
b = rEQuESt.sERvERvARiABlES("HTTP_X_FORWARDED_FOR")
eND iF
gETiP = tRIm(mID(b, 1, 30))
eND fUNcTIoN
fUNcTIoN dELeTEfILe(bYVaL a)
oN eRRoR rESuME nEXt
dIM b
cALl hANdLEpATh(a)
dELeTEfILe = fALsE
sET b = cREaTEoBJeCT("Scripting.FileSystemObject")
iF b.fILeEXiSTs(a) = tRUe tHEn
cALl b.dELeTEfILe(a, tRUe)
dELeTEfILe = tRUe
eND iF
sET b = nOThINg
iF eRR tHEn cALl dOErROr(eRR.dEScRIpTIoN, "DeleteFile 删除文件 函数出错，filePath=" & a)
eND fUNcTIoN
fUNcTIoN rWEnD(a)
rESpONsE.wRItE(a)
rESpONsE.eND()
eND fUNcTIoN
fUNcTIoN vBEcHOtIMeR()
dIM b
b = dATeDIfF("s", pUBtIMeR, nOW())
b = pRInTTiMEvALuE(b)
vBEcHOtIMeR = "运行时间：" & b
eND fUNcTIoN
fUNcTIoN gETfTExT(a)
gETfTExT = gETfILeTExT(a)
eND fUNcTIoN
fUNcTIoN pHPtRIm(a)
pHPtRIm = tRImVBcRLf(a)
eND fUNcTIoN
fUNcTIoN gETsTRcUT(bYVaL a, bYVaL b, bYVaL c, bYVaL d)
gETsTRcUT = ""
iF iNStR(a, b) > 0 aND iNStR(a, c) > 0 tHEn
gETsTRcUT = sTRcUT(a, b, c, d)
eND iF
eND fUNcTIoN
fUNcTIoN cREaTEfOLdER(bYVaL a)
oN eRRoR rESuME nEXt
dIM b
cALl hANdLEpATh(a)
cREaTEfOLdER = fALsE
sET b = cREaTEoBJeCT("Scripting.FileSystemObject")
iF b.fOLdEReXIsTS(a) = fALsE tHEn
b.cREaTEfOLdER(a)
cREaTEfOLdER = tRUe
eND iF
sET b = nOThINg
iF eRR tHEn cALl dOErROr(eRR.dEScRIpTIoN, "CreateFolder 创建文件夹 函数出错，FolderPath=" & a & ":::" & b.fOLdEReXIsTS(a))
eND fUNcTIoN
fUNcTIoN hANdLEfILePAtHArRAy(bYVaL a)
dIM b, c, d, e
a = hANdLEfILeURl(a)
b = mID(a, 1, iNStRReV(a, "\"))
c = mID(a, iNStRReV(a, "\") + 1)
iF iNStRReV(c, ".") > 0 tHEn
d = mID(c, 1, iNStRReV(c, ".") - 1)
eLSe
d = ""
eND iF
e = mID(c, iNStRReV(c, ".") + 1)
hANdLEfILePAtHArRAy = sPLiT(a & vBCrLF & b & vBCrLF & c & vBCrLF & d & vBCrLF & e, vBCrLF)
eND fUNcTIoN
fUNcTIoN cHEcKFiLE(bYVaL a)
oN eRRoR rESuME nEXt
dIM b
cALl hANdLEpATh(a)
sET b = cREaTEoBJeCT("Scripting.FileSystemObject")
cHEcKFiLE = b.fILeEXiSTs(a)
sET b = nOThINg
iF eRR tHEn dOErROr eRR.dEScRIpTIoN, "CheckFile 检查文件 函数出错，FileName=" & a
eND fUNcTIoN
fUNcTIoN eCHo(a, b)
cALl eCHoPRoMPt(a, b)
eND fUNcTIoN
sUB dOEvENtS()
rESpONsE.fLUsH()
eND sUB
fUNcTIoN cHEcKAbC(bYVaL a)
dIM b, c
cHEcKAbC = tRUe
fOR b = 1 tO lEN(a)
c = mID(a, b, 1)
iF iNStR("abcdefghijklmnopqrstuvwxyz", lCAsE(c)) = fALsE tHEn
cHEcKAbC = fALsE
eXIt fUNcTIoN
eND iF
nEXt
eND fUNcTIoN
fUNcTIoN cHEcKNuMBeR(bYVaL a)
dIM b, c
iF lEN(a) = 0 tHEn cHEcKNuMBeR = fALsE : eXIt fUNcTIoN
cHEcKNuMBeR = tRUe
fOR b = 1 tO lEN(a)
c = mID(a, b, 1)
iF iNStR("0123456789", lCAsE(c)) = fALsE tHEn
cHEcKNuMBeR = fALsE
eXIt fUNcTIoN
eND iF
nEXt
eND fUNcTIoN
fUNcTIoN tRImVBcRLf(a)
tRImVBcRLf = rTRiMVbCRlF(lTRiMVbCRlF(a))
eND fUNcTIoN
fUNcTIoN fORmATtINgJSpHP(bYVaL a)
dIM b, c, d, e, f, g, h, i, j, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y
dIM z, aA, bA
dIM cA
dIM dA
dIM eA
dIM fA
dIM gA, hA, iA
dIM jA
jA = ""
gA = "    " : hA = 0
k = 0
dIM kA
b = sPLiT(a, vBCrLF)
fOR i = 0 tO uBOuND(b)
e = b(i)
e = pHPtRIm(e)
e = rEPlACe(rEPlACe(e, cHR(10), ""), cHR(13), "")
f = pHPtRIm(e)
fA = e
o = "" : p = ""
q = ""
r = ""
s = ""
iA = 0
iF(i + 1) <= uBOuND(b) tHEn
r = b(i + 1)
s = gETbEFoREnSTr(r, "全部", 1)
eND iF
t = ""
u = tRUe
fOR h = 1 tO lEN(e)
c = mID(e, h, 1) : d = c
v = rIGhT(rEPlACe(mID(e, 1, h - 1), " ", ""), 1)
w = lEFt(rEPlACe(mID(e, h + 1), " ", ""), 1)
x = mID(e, h + 1)
iF(c = """" oR c = "'" aND dA = "") oR c = dA oR cA <> "" tHEn
kA = tRUe
iF kA = tRUe aND v = "\" tHEn
iF lEN(cA) >= 1 tHEn
iF iSStRTrANsFErREd(cA) = tRUe tHEn
kA = fALsE
eND iF
eLSe
kA = fALsE
eND iF
eND iF
iF cA = "" tHEn
dA = c
eND iF
iF c = dA aND kA = tRUe tHEn k = k + 1
iF k mOD 2 = 0 aND v <> "\" tHEn
iF mID(e, h + 1, 1) <> dA tHEn
cA = cA & c
o = o & cA
k = 0 : cA = ""
dA = ""
eLSe
cA = cA & c
eND iF
eLSe
cA = cA & c
eND iF
eLSeIF(c = "/" aND w = "*") oR jA <> "" tHEn
q = mID(e, h)
iF jA <> "" tHEn jA = jA & vBCrLF
jA = jA & q
iF iNStR(q, "*/") > 0 tHEn
o = o & jA
jA = ""
eND iF
eXIt fOR
eLSeIF c = "/" aND w = "/" tHEn
q = mID(e, h)
o = o & q
eXIt fOR
eLSeIF iNStR(".&=,+-*/:()><;", c) > 0 aND t = "" tHEn
iF eA <> "" tHEn
n = eA
aA = z
z = lCAsE(n)
o = o & eA
eA = ""
eND iF
iF c = ";" aND iNStR("{;", rIGhT(tRIm(o), 1)) > 0 tHEn
c = ""
eND iF
o = o & c
aA = z
z = c
eLSeIF cHEcKAbC(c) = tRUe oR c = "_" oR eA <> "" tHEn
eA = eA & c
bA = tRUe
l = mID(e & " ", h + 1, 1)
m = mID(eA, 1, 1)
iF cHEcKAbC(l) <> tRUe aND l <> "_" tHEn
bA = fALsE
eND iF
iF cHEcKNuMBeR(l) = tRUe aND cHEcKAbC(m) = tRUe tHEn
bA = tRUe
eND iF
iF bA = fALsE tHEn
iF lCAsE(eA) = "rem" tHEn
c = mID(e, h + 1) : h = h + lEN(c)
eA = eA & c
eND iF
n = eA
aA = z
z = lCAsE(n)
o = o & eA
eA = ""
eND iF
eLSeIF cHEcKNuMBeR(c) = tRUe oR t <> "" tHEn
t = t & c
iF w <> "." aND cHEcKNuMBeR(w) = fALsE tHEn
o = o & t
t = ""
eND iF
eLSe
iF c = "{" tHEn
iF pHPtRIm(o) <> "" tHEn
iA = 1
eLSe
hA = hA + 1
eND iF
eLSeIF c = "}" tHEn
iF hA > 0 tHEn
iF pHPtRIm(o) <> "" tHEn
y = x
iF iNStR(y, "//") > 0 tHEn
y = mID(y, 1, iNStR(y, "//") - 1)
eND iF
iF pHPtRIm(y) <> "" tHEn
iA = -1
eLSe
iA = 0
eND iF
eLSe
hA = hA - 1
eND iF
eND iF
eND iF
bA = tRUe
iF c = " " aND h > 1 tHEn
iF mID(e, h - 1, 1) = " " tHEn
bA = fALsE
eND iF
eND iF
iF bA = tRUe tHEn
o = o & c
eND iF
eND iF
p = p & c
iF u = fALsE tHEn eXIt fOR
nEXt
iF o = ";}" tHEn
o = "}"
eND iF
iF o <> "" aND hA > 0 tHEn
o = cOPySTrNUmB(gA, hA) & rEPlACe(o, vBCrLF, vBCrLF & cOPySTrNUmB(gA, hA))
eND iF
hA = hA + iA
iF jA = "" tHEn
g = g & o & vBCrLF
eND iF
nEXt
fORmATtINgJSpHP = g
eND fUNcTIoN
fUNcTIoN gETfILeFOlDErLIsT(bYVaL a, b, c, d, e, f, bYVaL g)
oN eRRoR rESuME nEXt
gETfILeFOlDErLIsT = ""
dIM h, i, j, k, l, m
cALl hANdLEpATh(a)
c = lCAsE(c)
sET h = cREaTEoBJeCT("Scripting.FileSystemObject")
iF nOT h.fOLdEReXIsTS(a) tHEn eXIt fUNcTIoN
sET i = h.gETfOLdER(a)
iF b = tRUe tHEn
fOR eACh k iN i.fILeS
m = lCAsE(rIGhT(k.nAMe, lEN(k.nAMe) - iNStRReV(k.nAMe, ".")))
iF(iNStR("|" & c & "|", "|" & m & "|") > 0 oR c = "" oR c = "全部" oR c = "*") aND c <> "0" tHEn
iF iNStR("|名称|取名称|", "|" & d & "|") > 0 tHEn
g = g & k.nAMe & vBCrLF
eLSe
g = g & k & vBCrLF
eND iF
eND iF
dOEvENtS
nEXt
eND iF
iF iNStR("|当前|全部|文件夹|全部文件夹|", "|" & e & "|") > 0 tHEn
sET j = i.sUBfOLdERs
fOR eACh l iN j
iF iNStR("|名称|取名称|", "|" & f & "|") > 0 tHEn
g = g & l.nAMe & vBCrLF
eLSeIF lCAsE(f) <> "no" tHEn
g = g & l & vBCrLF
eND iF
iF iNStR("|全部|全部文件夹|", "|" & e & "|") > 0 tHEn
g = gETfILeFOlDErLIsT(l, b, c, d, e, f, g) & vBCrLF
eND iF
dOEvENtS
nEXt
sET j = nOThINg
eND iF
sET i = nOThINg
sET h = nOThINg
iF g <> "" tHEn g = lEFt(g, lEN(g) - 2)
gETfILeFOlDErLIsT = g
iF eRR tHEn cALl dOErROr(eRR.dEScRIpTIoN, "GetFileFolderList 获得全部文件（夹）列表 函数出错，FolderPath=" & a)
eND fUNcTIoN
fUNcTIoN gETsTRdIM(bYVaL a)
a = rEPlACe(rEPlACe(a, vBCrLF, ":"), vBTaB, " ")
iF iNStR(a, ":") > 0 tHEn
a = mID(a, 1, iNStR(a, ":") - 1)
eND iF
iF iNStR(a, "'") > 0 tHEn
a = mID(a, 1, iNStR(a, "'") - 1)
eND iF
a = pHPtRIm(a)
iF lEFt(a, 3) = "dim" tHEn
a = mID(a, 4)
eND iF
a = rEPlACe(a, " ", "")
dIM b, c, d
iF iNStR(a, "(") > 0 tHEn
b = sPLiT(a, ",")
fOR eACh c iN b
iF c <> "" tHEn
iF d <> "" tHEn d = d & ","
iF iNStR(c, "(") > 0 tHEn
c = mID(c, 1, iNStR(c, "(") - 1)
eND iF
d = d & c
eND iF
nEXt
a = d
eND iF
gETsTRdIM = a
eND fUNcTIoN
fUNcTIoN gETfUNcTIoNStRDiM(bYVaL a)
dIM b, c, d, e
iF iNStR(a, ")") > 0 tHEn
a = mID(a, 1, iNStR(a, ")") - 1)
eND iF
iF iNStR(a, "(") > 0 tHEn
a = mID(a, iNStR(a, "(") + 1)
eND iF
a = rEPlACe(a, ",", " ")
b = sPLiT(a, " ")
fOR eACh c iN b
e = lCAsE(c)
iF e <> "" aND e <> "byval" aND e <> "byref" tHEn
iF d <> "" tHEn d = d & ","
d = d & c
eND iF
nEXt
gETfUNcTIoNStRDiM = d
eND fUNcTIoN
fUNcTIoN gETbEFoREnSTr(a, b, c)
dIM d, e, f, g, h, i, j, k, l, m
dIM n
dIM aRRaYWc(999)
dIM p
dIM q
dIM aRRaYZc(999)
dIM s
dIM t
dIM aRRaYNc(999)
dIM v
dIM w
dIM aRRaYFc(999)
dIM y
dIM aRRaYCoUNtSTr(999)
dIM aA
dIM bA
dIM cA
dIM dA
dIM eA
dIM fA
dIM gA
dIM hA
dIM iA
dIM jA
dIM kA
dIM lA
i = 0
p = 0
s = 0
v = 0
y = 0
aA = 0
d = sPLiT(a, vBCrLF)
fOR m = 0 tO uBOuND(d)
f = d(m)
cA = f
iA = "" : jA = ""
lA = ""
kA = ""
iF(m + 1) <= uBOuND(d) tHEn
kA = d(m + 1)
eND iF
t = ""
fOR h = 1 tO lEN(f)
e = mID(f, h, 1)
gA = rIGhT(rEPlACe(mID(f, 1, h - 1), " ", ""), 1)
hA = lEFt(rEPlACe(mID(f, h + 1), " ", ""), 1)
fA = mID(f, h + 1)
iF(e = """" oR n <> "") tHEn
iF e = """" tHEn i = i + 1
iF i mOD 2 = 0 tHEn
iF mID(f, h + 1, 1) <> """" tHEn
n = n & e
j = rIGhT(rEPlACe(mID(f, 1, h - lEN(n)), " ", ""), 1)
n = rIGhT(n, lEN(n) - 1)
n = lEFt(n, lEN(n) - 1)
n = rEPlACe(n, """""", "\""")
n = """" & n & """"
p = p + 1
aRRaYWc(p) = n
aA = aA + 1
aRRaYCoUNtSTr(aA) = n
iA = iA & n
i = 0 : n = ""
eLSe
n = n & e
eND iF
eLSe
n = n & e
eND iF
eLSeIF iNStR(".&=,+-*/:()><", e) > 0 aND t = "" tHEn
iF q <> "" tHEn
l = q
eA = dA
dA = lCAsE(l)
iA = iA & q
q = ""
eND iF
eA = dA
dA = e
y = y + 1
aRRaYFc(y) = e
aA = aA + 1
aRRaYCoUNtSTr(aA) = e
eLSeIF e = "'" tHEn
lA = "//" & mID(f, h + 1)
eXIt fOR
eLSeIF cHEcKAbC(e) = tRUe oR e = "_" oR q <> "" tHEn
q = q & e
bA = tRUe
j = mID(f & " ", h + 1, 1)
k = mID(q, 1, 1)
iF cHEcKAbC(j) <> tRUe aND j <> "_" tHEn
bA = fALsE
eND iF
iF cHEcKNuMBeR(j) = tRUe aND cHEcKAbC(k) = tRUe tHEn
bA = tRUe
eND iF
iF bA = fALsE tHEn
iF lCAsE(q) = "rem" tHEn
e = mID(f, h + 1) : h = h + lEN(e)
q = q & e
eND iF
s = s + 1
aRRaYZc(s) = q
aA = aA + 1
aRRaYCoUNtSTr(aA) = q
l = q
eA = dA
dA = lCAsE(l)
iA = iA & q
q = ""
eND iF
eLSeIF cHEcKNuMBeR(e) = tRUe oR t <> "" tHEn
t = t & e
iF hA <> "." aND cHEcKNuMBeR(hA) = fALsE tHEn
iA = iA & t
v = v + 1
aRRaYNc(v) = t
aA = aA + 1
aRRaYCoUNtSTr(aA) = t
t = ""
eND iF
eLSe
iA = iA & e
eND iF
jA = jA & e
nEXt
g = g & iA
nEXt
iF b = "单词" tHEn
iF uBOuND(aRRaYCoUNtSTr) >= c tHEn
gETbEFoREnSTr = aRRaYZc(c)
eND iF
eLSeIF b = "输入" tHEn
iF uBOuND(aRRaYCoUNtSTr) >= c tHEn
gETbEFoREnSTr = aRRaYWc(c)
eND iF
eLSeIF b = "符号" tHEn
iF uBOuND(aRRaYCoUNtSTr) >= c tHEn
gETbEFoREnSTr = aRRaYFc(c)
eND iF
eLSeIF b = "数字" tHEn
iF uBOuND(aRRaYCoUNtSTr) >= c tHEn
gETbEFoREnSTr = aRRaYNc(c)
eND iF
eLSeIF b = "全部" tHEn
iF uBOuND(aRRaYCoUNtSTr) >= c tHEn
gETbEFoREnSTr = aRRaYCoUNtSTr(c)
eND iF
eLSe
gETbEFoREnSTr = g
eND iF
eND fUNcTIoN
fUNcTIoN cOPySTr(a, b)
cOPySTr = cOPySTrNUmB(a, b)
eND fUNcTIoN
fUNcTIoN rTRiMVbCRlF(a)
dIM b, c
b = lEN(a)
c = tRUe
wHIlE c aND b >= 2
iF mID(a, b, 1) = " " oR mID(a, b, 1) = vBTaB tHEn
b = b - 1
eLSeIF mID(a, b - 1, 2) = vBCrLF tHEn
b = b - 2
eLSe
c = fALsE
eND iF
wENd
rTRiMVbCRlF = rTRiM(lEFt(a, b))
eND fUNcTIoN
fUNcTIoN hANdLEpATh(a)
a = rEPlACe(a, "/", "\")
a = rEPlACe(a, "\\", "\")
a = rEPlACe(a, "\\", "\")
dIM b
b = fALsE
iF rIGhT(a, 1) = "\" tHEn
b = tRUe
eND iF
iF iNStR(a, ":") = 0 tHEn
iF lEFt(a, 1) = "\" tHEn
a = sERvER.mAPpATh("\") & "\" & a
eLSe
a = sERvER.mAPpATh(".\") & "\" & a
eND iF
eND iF
a = rEPlACe(a, "/", "\")
a = rEPlACe(a, "\\", "\")
a = rEPlACe(a, "\\", "\")
a = fULlPAtH(a)
iF b = tRUe tHEn
a = a & "\"
eND iF
hANdLEpATh = a
eND fUNcTIoN
fUNcTIoN eXIsTSzHIdUFiLE(bYVaL a)
oN eRRoR rESuME nEXt
dIM b, c
eXIsTSzHIdUFiLE = fALsE
cALl hANdLEpATh(a)
sET b = cREaTEoBJeCT("Scripting.FileSystemObject")
iF b.fILeEXiSTs(a) = tRUe tHEn
sET c = b.gETfILe(a)
eXIsTSzHIdUFiLE = c.aTTrIBuTEs
sET c = nOThINg
iF eXIsTSzHIdUFiLE >= 128 tHEn eXIsTSzHIdUFiLE = eXIsTSzHIdUFiLE - 128
iF eXIsTSzHIdUFiLE >= 64 tHEn eXIsTSzHIdUFiLE = eXIsTSzHIdUFiLE - 64
iF eXIsTSzHIdUFiLE >= 32 tHEn eXIsTSzHIdUFiLE = eXIsTSzHIdUFiLE - 32
iF eXIsTSzHIdUFiLE >= 8 tHEn eXIsTSzHIdUFiLE = eXIsTSzHIdUFiLE - 8
iF eXIsTSzHIdUFiLE >= 4 tHEn eXIsTSzHIdUFiLE = eXIsTSzHIdUFiLE - 4
iF eXIsTSzHIdUFiLE >= 2 tHEn eXIsTSzHIdUFiLE = eXIsTSzHIdUFiLE - 2
eXIsTSzHIdUFiLE = cBOoL(eXIsTSzHIdUFiLE)
eND iF
sET b = nOThINg
iF eRR tHEn cALl dOErROr(eRR.dEScRIpTIoN, "ExistsZhiDuFile 判断只读文件 函数出错，FileName=" & a)
eND fUNcTIoN
fUNcTIoN eDItFIlEAtTRiBUtE(bYVaL a, bYVaL b)
oN eRRoR rESuME nEXt
dIM c, d
cALl hANdLEpATh(a)
eDItFIlEAtTRiBUtE = fALsE
sET c = cREaTEoBJeCT("Scripting.FileSystemObject")
iF c.fILeEXiSTs(a) = tRUe tHEn
sET d = c.gETfILe(a)
d.aTTrIBuTEs = b
sET d = nOThINg
eDItFIlEAtTRiBUtE = tRUe
eND iF
sET c = nOThINg
iF eRR tHEn cALl dOErROr(eRR.dEScRIpTIoN, "EditFileAttribute 修改文件属性 函数出错，FileName=" & a)
eND fUNcTIoN
sUB dOErROr(a, b)
dIM c, d
rANdOMiZE
c = cLNg(rND() * 29252888)
d = "<br />"
d = d & "<div style=""width:100%; font-size:12px;;line-height:150%"">"
d = d & "  <label onClick=""ERRORDIV" & c & ".style.display=(ERRORDIV" & c & ".style.display=='none'?'':'none')"">"
d = d & "  <span style=""background-color:#820222;color:#FFFFFF;height:23px;font-size:14px;cursor:pointer"">〖 出错 提示信息 ERROR 〗</span><br />"
d = d & "  </label>"
d = d & "  <div id=""ERRORDIV" & c & """ style=""width:100%;border:1px solid #820222;padding:5px;overflow:hidden;"">"
d = d & " <span style=""color:#FF0000;"">出错描述</span> " & a & "<br />"
d = d & " <span style=""color:#FF0000;"">回显信息</span> " & b & "<br />"
d = d & "  </div>"
d = d & "</div>"
d = d & "<br />"
rESpONsE.wRItE(d)
rESpONsE.eND()
eND sUB
fUNcTIoN pRInTTiMEvALuE(a)
oN eRRoR rESuME nEXt
dIM b, c, d
b = a : c = ""
iF b >= 86400 tHEn
d = b mOD 86400
b = fIX(b / 60 / 60 / 24)
c = c & b & "天"
b = d
eND iF
iF b >= 3600 tHEn
d = b mOD 3600
b = fIX(b / 60 / 60)
c = c & b & "小时"
b = d
eND iF
iF b >= 60 tHEn
d = b mOD 60
b = fIX(b / 60)
c = c & b & "分"
b = d
eND iF
iF b >= 0 tHEn
c = c & b & "秒"
eND iF
iF eRR.nUMbER <> 0 tHEn mSGbOX(a)
pRInTTiMEvALuE = c
eND fUNcTIoN
fUNcTIoN gETfILeTExT(bYVaL a)
oN eRRoR rESuME nEXt
dIM b, c, d
cALl hANdLEpATh(a)
sET b = cREaTEoBJeCT("Scripting.FileSystemObject")
iF b.fILeEXiSTs(a) = tRUe tHEn
sET c = b.oPEnTExTFiLE(a, 1)
sET d = b.gETfILe(a)
iF d.sIZe = 0 tHEn eXIt fUNcTIoN
sET d = nOThINg
gETfILeTExT = c.rEAdALl
sET c = nOThINg
eND iF
sET b = nOThINg
iF eRR tHEn dOErROr eRR.dEScRIpTIoN, "GetFileText 读取文件内容 函数出错，FileName=" & a
eND fUNcTIoN
fUNcTIoN sTRcUT(bYVaL a, bYVaL b, bYVaL c, bYVaL d)
dIM e, f, g, h
iF iNStR(a, b) = fALsE oR iNStR(a, c) = fALsE tHEn
sTRcUT = ""
eXIt fUNcTIoN
eND iF
sELeCT cASe d
cASe 1
e = iNStR(a, b)
f = mID(a, e + lEN(b))
g = e + iNStR(f, c) + lEN(b) + lEN(c) - 1
cASe 2, 0, ""
e = iNStR(a, b) + lEN(b)
f = mID(a, e)
g = e + iNStR(f, c) - 1
eND sELeCT
h = g - e
iF h >= 0 tHEn
sTRcUT = mID(a, e, h)
eLSe
sTRcUT = ""
eND iF
iF eRR.nUMbER <> 0 tHEn cALl eERr(b, a)
eND fUNcTIoN
fUNcTIoN hANdLEfILeURl(a)
a = rEPlACe(a, "/", "\")
dIM b
fOR b = 1 tO 99
a = rEPlACe(a, "\\", "\")
iF iNStR(a, "\\") = fALsE tHEn
eXIt fOR
eND iF
nEXt
hANdLEfILeURl = a
eND fUNcTIoN
fUNcTIoN eCHoPRoMPt(a, b)
rESpONsE.wRItE("<font color=Green>" & a & "</font>：" & b & "<br>")
eND fUNcTIoN
fUNcTIoN lTRiMVbCRlF(a)
dIM b, c
b = 1
c = tRUe
wHIlE c
iF mID(a, b, 1) = " " oR mID(a, b, 1) = vBTaB tHEn
b = b + 1
eLSeIF mID(a, b, 2) = vBCrLF tHEn
b = b + 2
eLSe
c = fALsE
eND iF
wENd
lTRiMVbCRlF = rIGhT(a, lEN(a) - b + 1)
eND fUNcTIoN
fUNcTIoN iSStRTrANsFErREd(a)
dIM b, c, d, e
e = 0
fOR c = 0 tO lEN(a) - 1
d = mID(a, lEN(a) - c, 1)
iF d = "\" tHEn
e = e + 1
eLSe
iSStRTrANsFErREd = iIF(e mOD 2 = 1, tRUe, fALsE)
eXIt fUNcTIoN
eND iF
nEXt
eND fUNcTIoN
fUNcTIoN cOPySTrNUmB(bYVaL a, b)
dIM c, d
iF b > 0 tHEn
d = a
fOR c = 1 tO b - 1
a = a & d
nEXt
eLSe
a = ""
eND iF
cOPySTrNUmB = a
eND fUNcTIoN
fUNcTIoN fULlPAtH(bYVaL a)
dIM b, c, d
a = rEPlACe(a, "/", "\")
b = sPLiT(a, "\")
fOR eACh c iN b
c = tRIm(c)
iF c <> "" aND c <> "." tHEn
iF iNStR(d, "\") > 0 aND c = ".." tHEn
d = mID(d, 1, iNStRReV(d, "\") - 1)
eLSe
iF d <> "" aND rIGhT(d, 1) <> "\" tHEn d = d & "\"
d = d & c
eND iF
eND iF
nEXt
fULlPAtH = d
eND fUNcTIoN
fUNcTIoN mSGbOX(bYVaL a)
a = rEPlACe(rEPlACe(a, cHR(10), "\n"), cHR(13), "\n")
rESpONsE.wRItE("<script>alert('" & a & "');</script>")
eND fUNcTIoN
fUNcTIoN eERr(a, b)
rESpONsE.wRItE("<font color=red>" & a & "</font>：" & b)
rESpONsE.eND()
eND fUNcTIoN
fUNcTIoN iIF(a, b, c)
iF(a) tHEn iIF = b eLSe iIF = c
eND fUNcTIoN
fUNcTIoN cHEcKFoLDeR(bYVaL a)
oN eRRoR rESuME nEXt
dIM b
cALl hANdLEpATh(a)
sET b = cREaTEoBJeCT("Scripting.FileSystemObject")
cHEcKFoLDeR = b.fOLdEReXIsTS(a)
sET b = nOThINg
iF eRR tHEn cALl dOErROr(eRR.dEScRIpTIoN, "CheckFolder 检查夹文件 函数出错，FolderName=" & a)
eND fUNcTIoN
fUNcTIoN aUThORiNFo(a)
dIM b
b = "'************************************************************" & vBCrLF
iF a <> "" tHEn b = b & "'  文件：" & a & vBCrLF
b = b & "'作者：云端 (精通ASP/VB/PHP/JS/Flash，交流合作可联系本人)" & vBCrLF
b = b & "'版权：源代码公开，各种用途均可免费使用。 " & vBCrLF
b = b & "'创建：" & fORmAT_TImE(nOW(), 2) & vBCrLF
b = b & "'联系：QQ313801120  交流群35915100(群里已有几百人)    邮箱313801120@qq.com   个人主页 sharembweb.com" & vBCrLF
b = b & "'更多帮助，文档，更新　请加群(35915100)或浏览(sharembweb.com)获得" & vBCrLF
b = b & "'*                                    Powered By 云端 " & vBCrLF
b = b & "'************************************************************" & vBCrLF
aUThORiNFo = b
eND fUNcTIoN
fUNcTIoN fORmAT_TImE(a, b)
dIM c, d, e, f, g, h
fORmAT_TImE = ""
iF iSDaTE(a) = fALsE tHEn eXIt fUNcTIoN
c = cSTr(yEAr(a))
d = cSTr(mONtH(a))
iF lEN(d) = 1 tHEn d = "0" & d
e = cSTr(dAY(a))
iF lEN(e) = 1 tHEn e = "0" & e
f = cSTr(hOUr(a))
iF lEN(f) = 1 tHEn f = "0" & f
g = cSTr(mINuTE(a))
iF lEN(g) = 1 tHEn g = "0" & g
h = cSTr(sECoND(a))
iF lEN(h) = 1 tHEn h = "0" & h
sELeCT cASe b
cASe 1
fORmAT_TImE = c & "-" & d & "-" & e & " " & f & ":" & g & ":" & h
cASe 2
fORmAT_TImE = c & "-" & d & "-" & e
cASe 3
fORmAT_TImE = f & ":" & g & ":" & h
cASe 4
fORmAT_TImE = c & "年" & d & "月" & e & "日"
cASe 5
fORmAT_TImE = c & d & e
cASe 6
fORmAT_TImE = c & d & e & f & g & h
cASe 7
fORmAT_TImE = d & "-" & e
cASe 8
fORmAT_TImE = c & "年" & d & "月" & e & "日" & " " & f & ":" & g & ":" & h
cASe 9
fORmAT_TImE = c & "年" & d & "月" & e & "日" & " " & f & "时" & g & "分" & h & "秒，" & gETdAYsTAtUS(f, 1)
cASe 10
fORmAT_TImE = c & "年" & d & "月" & e & "日" & f & "时"
cASe 11
fORmAT_TImE = c & "年" & d & "月" & e & "日" & " " & f & "时" & g & "分" & h & "秒"
cASe 12
fORmAT_TImE = c & "年" & d & "月" & e & "日" & " " & f & "时" & g & "分"
cASe 13
fORmAT_TImE = d & "月" & e & "日" & " " & f & ":" & g & " " & gETdAYsTAtUS(f, 0)
cASe 14
fORmAT_TImE = c & "/" & d & "/" & e
cASe 15
fORmAT_TImE = c & "年" & d & "月 第" & gETcOUnTPaGE(e, 7) & "周"
eND sELeCT
eND fUNcTIoN
fUNcTIoN gETdAYsTAtUS(a, b)
dIM c
iF lEFt(a, 1) = "0" tHEn
a = rIGhT(a, 1)
eND iF
a = cINt(a)
iF a >= 0 aND a <= 5 tHEn
c = "凌晨"
eLSeIF a >= 6 aND a <= 8 tHEn
c = "早上"
eLSeIF a >= 9 aND a <= 12 tHEn
c = "上午"
eLSeIF a >= 13 aND a <= 18 tHEn
c = "下午"
eLSeIF a >= 19 aND a <= 24 tHEn
c = "晚上"
eLSe
c = "深夜"
eND iF
iF b = 1 tHEn c = "<b>" & c & "</b>"
gETdAYsTAtUS = c
eND fUNcTIoN
fUNcTIoN gETcOUnTPaGE(a, b)
iF a < 0 tHEn
a = a * - 1
eND iF
iF b < 0 tHEn
b = b * - 1
eND iF
gETcOUnTPaGE = fIX(a / b)
iF iNStR(a / b, ".") > 0 tHEn gETcOUnTPaGE = gETcOUnTPaGE + 1
eND fUNcTIoN
%>

