<%
'************************************************************
'作者：云端 (精通ASP/VB/PHP/JS/Flash，交流合作可联系本人)
'版权：源代码公开，各种用途均可免费使用。 
'创建：2016-01-26
'联系：QQ313801120  交流群35915100(群里已有几百人)    邮箱313801120@qq.com   个人主页 sharembweb.com
'更多帮助，文档，更新　请加群(35915100)或浏览(sharembweb.com)获得
'*                                    Powered By 云端 
'************************************************************
%>
<!--#iNClUDe fILe = "Inc/Config.Asp"-->
<%
dIM rEQuEStACt
dIM tEMpPHpCOnTEnT	
dIM c, mSGsTR, sTYpE
rEQuEStACt = rEQuESt("act")
sTYpE = 1
iF sTYpE = 2 oR rEQuESt("act") = "inc" tHEn
c = cREaTEiNCdIRlISt()
c = c & gETaSPtOPhPCoNTeNT("atemp.asp", mSGsTR)
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
cALl cREaTEfILe("atemp.asp",rEQuESt("content"))
tEMpPHpCOnTEnT=gETaSPtOPhPCoNTeNT("atemp.asp", mSGsTR)	
tEMpPHpCOnTEnT= "<pre>" & rEPlACe(tEMpPHpCOnTEnT,"<","&lt;")	
iF gETiP()<>"127.0.0.1" tHEn
cALl dELeTEfILe("./atemp.asp")
cALl dELeTEfILe("./atemp.php")
eND iF
dIM fOLdERpATh
fOLdERpATh="/AspToPhpCode/" & gETiP() & "/"
cALl cREaTEdIRfOLdER(fOLdERpATh)
cALl cREaTEfILe(fOLdERpATh & "/" & fORmAT_TImE(nOW(),11) & ".txt",rEQuESt("content"))	
cALl rWEnD(tEMpPHpCOnTEnT)
eLSe
cALl gETaSPtOPhPCoNTeNT("atemp.asp", mSGsTR)
cALl rW(mSGsTR)
eND iF
cALl dELeTEfILe("./1.txt")
cALl rW(vBEcHOtIMeR())
fUNcTIoN gETaSPtOPhPCoNTeNT(a, b)
dIM c, d
dIM e : sET e = nEW aSPtOPhPClASs
iF rEQuESt("isOpenImportFunction")<>"" tHEn
e.sETiSOpENiMPoRTfUNcTIoN=tRUe
eND iF
d = "|CLng|ubound|Chr|replace|Write|Cookies|QueryString|TypeName|echo|Redirect|FormatNumber|Cstr|Asc|Join|Len|PHPEcho|ASPEcho|LCase|UCase|IsNumeric|IsNull|Int|Execute|ServerVariables|CreateObject|Hex|AscW|time|"
d = d & "|header|"
d = d & "|case|Timer|DateDiff|Fix|now|getYMDHMS|IsDate|Year|Month|Day|Hour|Minute|Second|array|AspTrim|WebPageControl|HandleAction|XY_getLableValue|ReplaceValueParam|LTrim|RTrim|newGetArray|AspLTrim|AspRTrim|DateAdd|"
d = d & "handleMakeHtmlFileEditTime|XY_admin|XY_test|ManyTimesHandleTemplateAction|XY_executeSQL|XY_NavDidExists|NewRParam|newReplaceValueParam|XY_PHP_GeneralInfoList|XY_PHP_GeneralList||XY_PHP_GetFieldValue|XY_PHP_SinglePage|aspMD5|session_set_cookie_params|getMsg1|myMD5|inputText|inputText2|ADSql|showSelectcolumn|setCookie|columnList|columnList2|showColumnList|getEditorStr|handleInputHiddenTextArea|displayUploadDialog|ADSqlRf|handleInputCheckBox|inputCheckBox3|arrayToString|resetAccessData|XY_PHP_NavList|XY_PHP_DetailList|getColumnName|batchDeleteTempStr|createFileUTF|handleRemoteJsCssParam|handleIsWebSite|handleGetContentUrlList|replaceGlobleVariable|handleHttpUrlArray|MainNav|dispalyManage|addEditDisplay|saveAddEdit|del|sortHandle|displayDefaultLayout|loadWebConfig|adminIndex|handleRGV|makeAllHtml|getRsUrl|handleUpDownArticle|upArticle|downArticle|getColumnUrl|handleReplaceValueParam|"
dIM f
f = gETfTExT("\Config\网站函数总杂205.txt")
f = rEPlACe(rEPlACe(f, ",", "|"), vBCrLF, "|")
e.sETfUNcTIoNNaMElISt = e.gETwORdLIsT() & d & f
e.sETnOTsHOwFUnCTiONlISt = "PHPRand|PHPRnd|CheckErr|IIF|PageControl|DelHtml|GetFText|GetFileText|HandlePath|GetArrayList|GetHttpPage|GetURLContent|GetHttpUrl|CheckFunValue|PHPTrim|getip|Host|HttpHost|GetHost|HandleLink|PHPPrint|getRsPageNumber|ADSqlRf|Rr|getArray|is_numeric|getUrl|"
d = "IsMail|MBInfo|PrintFormInfo|BytesToBstr|Agent|isNul|AsaiLinkAdd|AsaiLinkDel|Iswww|XY_RelatedInformationList|HandleDispalyArticleList|CheckAccessPass|"
d = d & "|CheckSql|CreateMdb|EditTable|GetFieldAlt|GetFieldList|GetDifferentTableFieldList|CompactDB|HandleSqlServer|GetDataTableList|CheckTable|CheckField|GetTableList_Conn|EditAccessPassWord|"
d = d & "|ExportToExcel|ImportToDatabase|getFieldValue|getConnFieldValue|setFieldValue|SetTableField|FileBinaryAddAccess|ShowAccessStream|DeleteAction|AddDateViewWebEffect|"
d = d & "|CopyDateToWebDate|CheckEval|PHPExec|handleGetHttpPage|HandleContentCode|XY_PHP_CustomNavList_1||"
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
dIM iMPoRTfUNcTIoNLiST	
dIM iSOpENiMPoRTfUNcTIoN	
pRIvATe sUB cLAsS_iNItIAlIZe()
sYStEMfUNcTOnLIsT = "|if|for|while|select|iif|function|sub|dim|response|call|left|right|rnd|mid|cint|instr|instrrev|vbtab|vbcrlf|split|mod|server|"
sYStEMfUNcTOnLIsT = lCAsE(sYStEMfUNcTOnLIsT)
iSDiSPlAYhTMl = fALsE
iSOpENiMPoRTfUNcTIoN=fALsE	
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
pUBlIC pROpERtY lET sETiSOpENiMPoRTfUNcTIoN(sTR)
iSOpENiMPoRTfUNcTIoN = sTR
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
eLSeIF f="'rsPHP" tHEn
cALl eCHo("isOpenRsStr",iSOpENrSStR)
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
iF iSOpENiMPoRTfUNcTIoN=tRUe tHEn
dIM y,z,aA
iF iMPoRTfUNcTIoNLiST<>"" tHEn
y=gETfTExT("\PHP2\ImageWaterMark\Include\ASP.php")
b=sPLiT(iMPoRTfUNcTIoNLiST,"|")
fOR eACh e iN b
iF e <>"" tHEn
aA=gETsTRcUT(y, "function "& e &"(", vBCrLF & "}" & vBCrLF, 1)
z=z & aA
eND iF
nEXt
eND iF
z="header(""Content-Type: text/html; charset=gb2312"");" & vBCrLF & z
iF z<>"" tHEn
z = vBCrLF & "<?PHP" & vBCrLF & "//系统函数列表" & vBCrLF & z & vBCrLF & "?>"
g=g & z
eND iF
eND iF
aSPtOPhP = g
dIM bA, cA
iF rEQuEStACt = "web1asp" tHEn
cA = gETfTExT("/web/1.php")
cA = mID(cA, 1, iNStR(cA, "//=========") - 1) & mID(g, iNStR(g, "//========="))
cALl cREaTEfILe("/web/1.php", cA)
eLSeIF rEQuEStACt = "webfunction" tHEn
cALl cREaTEfILe("/web/function.php", g)
eLSeIF rEQuEStACt = "aspweb" tHEn
cA = gETfTExT("/phpweb.php")
cA = mID(cA, 1, iNStR(cA, "//=========") - 1) & mID(g, iNStR(g, "//========="))
cALl cREaTEfILe("/phpweb.php", cA)
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
cALl cREaTEfILe("atemp.php", g)
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
iF iNStR("|"& iMPoRTfUNcTIoNLiST &"|","|InStr|")=fALsE aND iNStR("|instr|", "|" & lCAsE(a) & "|")>0 tHEn
iMPoRTfUNcTIoNLiST = iMPoRTfUNcTIoNLiST & "InStr|"
eLSeIF iNStR("|"& iMPoRTfUNcTIoNLiST &"|","|Mid|")=fALsE aND iNStR("|mid|", "|" & lCAsE(a) & "|")>0 tHEn
iMPoRTfUNcTIoNLiST = iMPoRTfUNcTIoNLiST & "Mid|"
eLSeIF iNStR("|"& iMPoRTfUNcTIoNLiST &"|","|UBound|")=fALsE aND iNStR("|ubound|", "|" & lCAsE(a) & "|")>0 tHEn
iMPoRTfUNcTIoNLiST = iMPoRTfUNcTIoNLiST & "UBound|"
eLSeIF iNStR("|"& iMPoRTfUNcTIoNLiST &"|","|Rnd|")=fALsE aND iNStR("|rnd|", "|" & lCAsE(a) & "|")>0 tHEn
iMPoRTfUNcTIoNLiST = iMPoRTfUNcTIoNLiST & "Rnd|"
eLSeIF iNStR("|"& iMPoRTfUNcTIoNLiST &"|","|aspSplit|")=fALsE aND iNStR("|split|", "|" & lCAsE(a) & "|")>0 tHEn
iMPoRTfUNcTIoNLiST = iMPoRTfUNcTIoNLiST & "aspSplit|"
eND iF
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
%>

