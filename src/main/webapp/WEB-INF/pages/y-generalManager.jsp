<%--
  Created by IntelliJ IDEA.
  User: YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY
  Date: 18/2/6哈哈
  Time: 18:11哈哈
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>科技办经理审批</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="../../css/demo.css" rel="stylesheet" type="text/css"/>
    <link href="../../scripts/miniui/themes/blue/skin.css" rel="stylesheet" type="text/css"/>
    <script src="../../scripts/boot.js" type="text/javascript"></script>
    <script src="../../js/fixheight.js" type="text/javascript"></script>
    <style type="text/css">
        table, td {
            font-size: small;
            font-family: "Heiti TC";
            background: #E0F1FA;
            border: 2px solid white;
            border-collapse: collapse;
            padding: 5px;
            width: 100%;

        }

        td {
            width: auto;
        }

        input {
            width: 100%;
            height: 100%;
        }

        .d {
            text-align: center;
            width: 150px;
        }

        div {
            background: linear-gradient(#E0F1FA, #D5EDFA, #C5E7FA, #D5EDFA, #E0F1FA);
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
            <td class="d">联合申报单位</td>
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
<div id="panel3" class="mini-panel" title="工程师审批意见" iconCls="icon-add" style="width:100%;height:auto;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="false"
     collapseOnTitleClick="true">
    <table border="0" cellpadding="1" cellspacing="2">
        <tr>
            <td class="d">审批结果</td>
            <td><input type="text" required="true" readonly="readonly" style="width:100%;height:60px;"/></td>
        </tr>
        <tr>
            <td class="d">立项报告书</td>
            <td colspan="3">
                <a href="">立项报告书</a>
            </td>
        </tr>
    </table>
</div>

<div id="panel4" class="mini-panel" title="技术可行性分析意见" iconCls="icon-add" style="width:100%;height:auto;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="false"
     collapseOnTitleClick="true">
    <table border="0" cellpadding="1" cellspacing="2">
        <tr>
            <td class="d">对阳江公司科技发展规划的符合性审定</td>
            <td colspan="3"><input type="text" required="true" readonly="readonly" style="width:100%;height:60px;"/></td>
        </tr>
        <tr>
            <td class="d">对项目成果的应用领域和价值</td>
            <td colspan="3"><input type="text" required="true" readonly="readonly" style="width:100%;height:60px;"/></td>
        </tr>
        <tr>
            <td class="d">总体评价</td>
            <td colspan="3"><input type="text" required="true" readonly="readonly" style="width:100%;height:60px;"/></td>
        </tr>
    </table>
</div>
<div id="panel5" class="mini-panel" title="科技办经理审批" iconCls="icon-add" style="width:100%;height:auto;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="false"
     collapseOnTitleClick="true">
    <table border="0" cellpadding="1" cellspacing="2">
        <tr>
            <td class="d">要求</td>
            <td colspan="3"><input type="text" required="true" readonly="readonly"  style="width:100%;height:60px;"/></td>
        </tr>
        <tr>
            <td class="d">建议</td>
            <td colspan="3"><input type="text" required="true" readonly="readonly"  style="width:100%;height:60px;"/></td>
        </tr>
    </table>
</div>
<div id="panel6" class="mini-panel" title="审批意见" iconCls="icon-add" style="width:100%;height:auto;"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="false"
     collapseOnTitleClick="true">
    <table border="0" cellpadding="1" cellspacing="2">
        <tr>
            <td class="d">审批意见</td>
            <td>
                <input type="text" required="true" style="width:100%;height:60px;"/>
            </td>
            <td  class="d">常用词条</td>
            <td>
                <select style="width: 100%; height: 60px" size="2">
                    <option value="同意,完成后通知我">同意,完成后通知我</option>
                    <option value="不同意,填写信息有误">不同意,填写信息有误</option>
                </select>
            </td>
        </tr>
    </table>
</div>

<table border="0" cellpadding="1" cellspacing="2">
    <tr>

        <td colspan="4" style="text-align: right;">
            <button value="不推荐">不推荐</button>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <button value="推荐">推荐</button>
        </td>
    </tr>
</table>

</body>
</html>
