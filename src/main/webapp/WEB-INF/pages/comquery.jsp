<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/1/18
  Time: 下午4:52
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <link href="/css/demo.css" rel="stylesheet" type="text/css">
    <script src="/scripts/boot.js" type="text/javascript"></script>
    <script src="/js/ajaxfileupload.js" type="text/javascript"></script>
    <script src="/js/jquery.cookie.js" type="text/javascript"></script>
    <style type="text/css">
        table, td {
            font-size: small;
            font-family: "Heiti SC";
            background: linear-gradient(#c0e7ff, #cfe4ff, #86b0eb, #b2caff,#c0e7ff );
            border: 2px solid white;
            border-collapse: collapse;
            padding: 5px;
            width: 100%;

        }

        td {
            width: auto;
        }

        input {
            width: 395px;
            height: 100%;
        }
        /*#toolBar{*/
        /*position: absolute;*/
        /*}*/
        /*#button1{*/
        /*margin-left: 600px;*/
        /*}*/

        .t {
            text-align: right;
            width: 100px;
        }

        html body .user_add .mini-buttonedit-icon {
            background: url(/scripts/miniui/res/images/user_add.png) no-repeat 50% 50%;
        }
        html body .group_add .mini-buttonedit-icon {
            background: url(/scripts/miniui/res/images/group_add.png) no-repeat 50% 50%;
        }
        /*.high{*/
        /*height: 80px;*/
        /*vertical-align: middle;*/
        /*}*/
    </style>
</head>
<body>
<div id="form1">

    <table id="table1">
        <tr>
            <td colspan="4">当前位置:综合管理 >> 流程查询</td>
        </tr>
    </table>
    <div id="panel1" class="mini-panel" title="查询条件" iconCls="icon-add" style="width:100%;height:100%; background-color: #cbe1fa"
         showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="false"
         collapseOnTitleClick="true"
    >
        <table>
            <tr>
                <td class="t">申请时间</td>
                <td><input class="mini-datepicker" name="birthday" style="width: 400px"/></td>
                <td class="t">申请人</td>
                <td>
                    <input value="" allowInput="false" id="btnEdit1" class="mini-buttonedit user_add"
                           onbuttonclick="onButtonEdit1" name="a" textName="b" style="width: 400px"/>
                </td>
                <td class="t">关键字</td>
                <td><input type="text" id="pointName"></td>
            </tr>
            <tr>
                <td class="t">流程类型</td>
                <td>
                    <input class="mini-combobox" style="width:400px;" textField="text" valueField="id"
                           url="/tabs/flowtype.txt" value="" showNullItem="true" allowInput="false"/>
                </td>
                <td class="t">所属部门</td>
                <td>
                    <input value="" allowInput="false" id="btnEdit2" class="mini-buttonedit group_add"
                           onbuttonclick="onButtonEdit1" name="a" textName="b" style="width: 400px"/>
                </td>
                <td class="t">是否可以打印</td>
                <td>
                    <input class="mini-combobox" style="width:400px;" textField="text" valueField="id"
                           url="/tabs/print.txt" value="" showNullItem="true" allowInput="false"/>
                </td>
            </tr>
        </table>
    </div>
    <div>
        <div id="toolBar" class="mini-toolbar" style="width: 100%;border-bottom: 0px">
            <table>
                <tr>
                    <td id="button1">
                        <a class="mini-button" onclick="search()">查询</a>
                    </td>
                </tr>
            </table>
        </div>
        <div id="datagrid1" class="mini-datagrid" style="width: 100%;">
            <div property="columns">
                <div field="id" width="120">流程编号</div>
                <div field="departmentname" width="120">流程名称</div>
                <div field="department" width="120">所属部门</div>
                <div field="address" width="120">当前环节</div>
                <div field="address" width="120">提报人</div>
                <div field="address" width="120">是否可以打印</div>
                <a class="mini-button" img="/imgs/vcard_edit.png">办理</a>
            </div>
        </div>
    </div>
</div>
<script>
    /*加载mini组件 后面get方法才好用*/
    mini.parse();
    /*审批(部门经理)弹出框的点击事件*/

    function getForm() {
        var form = new mini.Form("#form1");
        var data = form.getData();      //获取表单多个控件的数据
        var json = mini.encode(data);   //序列化成JSON
        return json;
    }


    function onButtonEdit1(e) {
        var btnEdit = this;
        mini.open({
            url: "selectstudent.jsp",
            title: "选择学生",
            width: 650,
            height: 380,
            ondestroy: function (action) {
                //if (action == "close") return false;
                if (action == "ok") {
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    data = mini.clone(data);    //必须克隆
                    if (data) {
                        btnEdit.setValue(data.sid);
                        btnEdit.setText(data.sname);
                    }
                }
            }
        });
    }
    function onButtonEdit2(e) {

        var btnEdit = this;
        mini.open({
            url: "selectstudent.jsp",
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
                        btnEdit.setValue(data.sid);
                        btnEdit.setText(data.sname);
                    }
                }

            }
        });

    }
    //下边表格table
    //    mini.parse();
    //
    //
    //    var datagrid=mini.get("datagrid1");
    //    datagrid.setUrl("/find");
    //    datagrid.load();
    //    function onkeyEnter() {
    //        search();
    //    }
    //    function search() {
    //        var key = $("#key").val();
    //        datagrid.load({username:key})
    //    }

</script>
</body>
</html>
