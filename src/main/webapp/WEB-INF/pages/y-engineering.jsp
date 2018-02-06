<%--
  Created by IntelliJ IDEA.
  User: YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY
  Date: 18/2/6哈哈
  Time: 17:36哈哈
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>工程师组织审批</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link href="../../css/demo.css" rel="stylesheet" type="text/css" />
    <link href="../../scripts/miniui/themes/blue/skin.css" rel="stylesheet" type="text/css" />
    <script src="../../scripts/boot.js" type="text/javascript"></script>
    <script src="../../js/fixheight.js" type="text/javascript"></script>
    <style type="text/css">
        table,td{
            font-size: small;
            font-family:"Heiti TC";
            background: #E0F1FA;
            border: 2px solid white;
            border-collapse: collapse;
            padding: 5px;
            width: 100%;

        }
        td{
            width: auto;
        }
        input{
            width: 100%;
            height:100%;
        }
        .d{
            text-align: center;
            width: 150px;
        }
        div{
            background: linear-gradient(#E0F1FA, #D5EDFA, #C5E7FA, #D5EDFA,#E0F1FA );
        }
        html body .user_add .mini-buttonedit-icon {
            background: url(/scripts/miniui/res/images/user_add.png) no-repeat 50% 50%;
        }



    </style>
</head>
<body>
<div id="panel1" class="mini-panel" title="项目基本信息" iconCls="icon-add" style="width:100%;height:auto; "
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="false"
     collapseOnTitleClick="true">
    <table border="0" cellpadding="1" cellspacing="2">
        <tr>
            <td colspan="1" class="d">项目名称</td>
            <td colspan="3" class="d"><a href="www.baidu.com">点击项目</a></td>
        </tr>
        <tr>
            <td class="d">项目名称</td>
            <td><input type="text" readonly="readonly"></td>
            <td  class="d">联合申报单位</td>
            <td><input type="text" readonly="readonly"></td>
        </tr>
        <tr>
            <td class="d">目的</td>
            <td><input type="text" readonly="readonly"></td>
            <td></td>
            <td></td>
        </tr>
    </table>
</div>

<div id="panel2" class="mini-panel" title="与核电生产运营安全性、可靠性、经济的适应分析" iconCls="icon-add" style="width:100%;height:auto;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="false"
     collapseOnTitleClick="true">
    <table border="0" cellpadding="1" cellspacing="2">

        <tr>
            <td class="d">安全性</td>
            <td><input type="text" readonly="readonly"></td>
            <td class="d">可靠性</td>
            <td><input type="text" readonly="readonly"></td>
        </tr>
        <tr>
            <td class="d">经济性</td>
            <td><input type="text" readonly="readonly"></td>
            <td class="d">其他</td>
            <td><input type="text" readonly="readonly"></td>
        </tr>
    </table>
</div>
<div id="panel3" class="mini-panel" title="审批信息" iconCls="icon-add" style="width:100%;height:auto;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="false"
     collapseOnTitleClick="true">
    <table border="0" cellpadding="1" cellspacing="2">
        <tr>
            <td>审批结果</td>
            <td><input type="text" required="true" style="width:100%;height:60px;"/></td>
        </tr>
        <tr>
            <td class="d">立项报告书<span style="color:red">※</span></td>
            <td colspan="3">
                <input class="mini-htmlfile" style="width: 100%"/>
            </td>
        </tr>
    </table>
</div>
<div id="panel4" class="mini-panel" title="审批信息" iconCls="icon-add" style="width:100%;height:auto;"
showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="false"
collapseOnTitleClick="true">
<table border="0" cellpadding="1" cellspacing="2">
    <tr>
        <td class="d">审批组长</td>
        <td>
            <input allowInput="false" id="btnEdit1" class="mini-buttonedit user_add"
                   onbuttonclick="onButtonEdit" name="a" textName="b" style="width: 100%"/>
        </td>
    </tr>
</table>
</div>
</body>
</html>
