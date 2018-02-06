<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="UTF-8">
    <title>基本信息界面</title>
    <link href="../../css/demo.css" rel="stylesheet" type="text/css"/>
    <link href="../../scripts/miniui/themes/blue/skin.css" rel="stylesheet" type="text/css"/>
    <script src="../../scripts/boot.js" type="text/javascript"></script>
    <script src="../../js/fixheight.js" type="text/javascript"></script>
    <title>Title</title>
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

        .d {
            text-align: right;
            width: 180px;
        }
        div{
            background: linear-gradient(#E0F1FA, #D5EDFA, #C5E7FA, #D5EDFA,#E0F1FA );
        }

    </style>
</head>
<body>
<table>
    <tr>
        <td colspan="4">当前位置: 科研项目 >> 项目其他信息</td>
    </tr>
</table>
<div id="panel1" class="mini-panel" title="技术第一负责人信息" iconCls="icon-add"
     style="width:100%;height:auto; "
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="false"
     collapseOnTitleClick="true">
    <table>
        <tr>
            <td class="d">姓名、专业经历和能力简述</td>
            <td>
                <input class="mini-textarea" style="width:100%;height:60px;"/>
            </td>
        </tr>
    </table>
</div>
<div id="panel2" class="mini-panel" title="产品信息" iconCls="icon-add"
     style="width:100%;height:auto; background-color: #cbe1fa"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="false"
     collapseOnTitleClick="true">
    <table>
        <tr>
            <td class="d">产品形式</td>
            <td>
                <div id="cbl1" class="mini-checkboxlist"
                     textField="text" valueField="id"
                     data="[{'id':'1001','text':'专题报告'},
                 {'id':'1002','text':'技术方案'},
                 {'id':'1003','text':'技术标准'},
                 {'id':'1004','text':'硬件产品'},
                 {'id':'1005','text':'生产性文件'},
                 {'id':'1006','text':'设计文件'},
                 {'id':'1007','text':'计算机软件'},
                 {'id':'1008','text':'其他'}]">
                </div>
            </td>
        </tr>
        <tr>
            <td class="d">预计产权说明</td>
            <td>
                <input class="mini-textarea" style="width:100%;height:60px;"/>
            </td>
        </tr>
        <tr>
            <td class="d">经济效益</td>
            <td>
                <input class="mini-textarea" style="width:100%;height:60px;"/>
            </td>
        </tr>
        <tr>
            <td class="d">固定资产</td>
            <td>
                <input class="mini-textarea" style="width:100%;height:60px;"/>
            </td>
        </tr>
        <tr>
            <td class="d">验收标准</td>
            <td>
                <input class="mini-textarea" style="width:100%;height:60px;"/>
            </td>
        </tr>
    </table>
</div>
<div id="panel3" class="mini-panel" title="附件信息" iconCls="icon-add"
     style="width:100%;height:auto; background-color: #cbe1fa"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="false"
     collapseOnTitleClick="true">
    <table>
        <tr>
            <td class="d">立项报告书<span style="color:red">※</span></td>
            <td colspan="3">
                <input class="mini-htmlfile" style="width: 100%"/>
            </td>
        </tr>
    </table>
</div>
<div id="panel4" class="mini-panel" title="流程信息" iconCls="icon-add"
     style="width:100%;height:auto; background-color: #cbe1fa"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="false"
     collapseOnTitleClick="true">
    <table>
        <tr>
            <td class="d">审批(部门经理)<span style="color:red">※</span></td>
            <td>
                <input allowInput="false" id="btnEdit1" class="mini-buttonedit"
                       onbuttonclick="onButtonEdit" name="a" textName="b" style="width: 100%"/>
            </td>
        </tr>
    </table>
</div>

<table>
    <tr>
        <td class="d" colspan="4" style="background-color: white"><input type="button" value="提交"></td>
    </tr>
</table>


<script>

    // 加载mini组件,后面的get方法才好用
    mini.parse();

    function onButtonEdit(e) {

        var btnEdit = this;
        mini.open({
            url: "../../html/SelectGridWindow.html",
            title: "选择部门经理",
            width: 650,
            height: 380,
            ondestroy: function (action) {
                //if (action == "close") return false;
                if (action == "ok") {
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    data = mini.clone(data);    //必须克隆
                    if (data) {
                        btnEdit.setValue(data.id);
                        btnEdit.setText(data.name);
                    }
                }

            }
        });

    }

    //提交数据
    var data = form.getData();
    var json = mini.encode(data);
    $.ajax({
        url: "../data/FormService.aspx?method=SaveData",
        type: "post",
        data: {submitData: json},
        success: function (text) {
            alert("提交成功，返回结果:" + text);
        }
    });

</script>
</body>
</html>
