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
            background: #E0F1FA;

            border-collapse: collapse;

            width: 100%;

        }

        td {
            width: auto;
            border:1px solid white;
        }
        tr{
            border:1px solid white;
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
        div{
            background: linear-gradient(#E0F1FA, #D5EDFA, #C5E7FA, #D5EDFA,#E0F1FA );
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
            <td colspan="4">当前位置:综合管理 >> 卫星库管理人管理</td>
        </tr>
    </table>
    <div id="panel1" class="mini-panel" title="查询条件" iconCls="icon-add" style="width:100%;height:100%; background: linear-gradient(#E0F1FA, #D5EDFA, #C5E7FA, #D5EDFA,#E0F1FA );"
         showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="false"
         collapseOnTitleClick="true">
        <table>
            <tr>
                <td class="t">卫星库名称</td>
                <td><input type="text" id="pointName"></td>
                <td class="t">管理人员</td>
                <td>
                    <input value="" allowInput="false" id="btnEdit1" class="mini-buttonedit user_add"
                           onbuttonclick="onButtonEdit1" name="a" textName="b" style="width: 400px"/>
                </td>
            </tr>
        </table>
    </div>
    <div>
        <div  style="width: 100%;border-bottom: 0px">
            <table>
                <tr>
                    <td colspan="4" class="content" style="text-align: right">

                        <button class="btn1" type="button" name="search"><img src="/imgs/query.png" style="width: 16px;height: 16px">查询</button>
                        <a class="mini-button " plain="true" iconCls="icon-add" onclick="add()">增加</a>
                        <a class="mini-button" plain="true" iconCls="icon-remove" onclick="onClickdelete">删除</a>
                    </td>
                </tr>
            </table>
        </div>
        <div id="datagrid1" class="mini-datagrid" style="width: 100%;">
            <div property="columns">
                <div type="checkcolumn"></div>
                <div field="id" width="120">卫星库</div>
                <div field="departmentname" width="120">管理人员</div>
                <div field="department" width="120">创建日期</div>
                <div field="address" width="120">是否有效</div>
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
            url: "selectstaff",
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
    function add() {

        mini.open({
            targetWindow: window,

            url:"y-EmployeeWindow",
            title: "新增员工", width: 600, height: 400,
            onload: function () {
                var iframe = this.getIFrameEl();
                var data = { action: "new" };
                iframe.contentWindow.SetData(data);
            },
            ondestroy: function (action) {

                grid.reload();
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
