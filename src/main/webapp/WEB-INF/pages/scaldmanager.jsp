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
            border: 1px solid white;
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

        div {
            background: linear-gradient(#E0F1FA, #D5EDFA, #C5E7FA, #D5EDFA, #E0F1FA);
        }

        tr {
            border: 1px solid white;
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
            <td colspan="4">当前位置:综合管理 >> 射线探伤人员管理</td>
        </tr>
    </table>
    <div id="panel1" class="mini-panel" title="查询条件" iconCls="icon-add"
         style="width:100%;height:100%; background: linear-gradient(#E0F1FA, #D5EDFA, #C5E7FA, #D5EDFA,#E0F1FA );"
         showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="false"
         collapseOnTitleClick="true">
        <table>
            <tr>
                <td class="t">姓名</td>
                <td>
                    <input  id="staffName" class="mini-textbox" style="width:400px;" onenter="onKeyEnter"/>
                </td>
                <td class="t">通行卡号</td>
                <td>
                    <input  id="passcardNo" class="mini-textbox" style="width:400px;" onenter="onKeyEnter"/>
                </td>
            </tr>
            <tr>
                <td class="t">单位</td>
                <td>
                    <input  id="orgName" class="mini-textbox" style="width:400px;" onenter="onKeyEnter"/>
                </td>
                <td class="t">员工号</td>
                <td>
                    <input  id="staffNo" class="mini-textbox" style="width:400px;" onenter="onKeyEnter"/>
                </td>
            </tr>
            <tr>
                <td class="t">关键字</td>
                <td>
                    <input  id="key" class="mini-textbox" style="width:400px;" onenter="onKeyEnter"/>
                </td>
            </tr>
        </table>
    </div>
    <div>
        <div style="width: 100%;border-bottom: 0px">
            <table>
                <tr>
                    <td colspan="4" class="content" style="text-align: right">
                        <a class="mini-button " plain="true" iconCls="icon-add" onclick="onClickadd">增加</a>
                        <a class="mini-button" plain="true" iconCls="icon-remove" onclick="onClickdelete">删除</a>
                        <a class="mini-button" style="width:60px;" onclick="search()"><img src="/imgs/query.png"
                                                                                           style="width: 16px;height: 16px">查询</a>
                    </td>
                </tr>
            </table>
        </div>
        <div id="datagrid1" class="mini-datagrid" style="width: 100%;" url="/selectRayUser">
            <div property="columns">
                <div type="checkcolumn"></div>
                <div field="staffName" width="120">姓名</div>
                <div field="passcardNo" width="120">通行卡号</div>
                <div field="orgName" width="120">单位</div>
                <div field="staffNo" width="120">员工号</div>
                <div field="rtRank" width="120">RT级别</div>
                <div field="rtNo" width="120">RT编号</div>
                <div field="effectBegDate" width="120">开始日期</div>
                <div field="effectEndDate" width="120">结束日期</div>
            </div>
        </div>
    </div>
</div>
<script>
    /*加载mini组件 后面get方法才好用*/
    mini.parse();

    //        mini.formatDate ( Date, "yyyy-MM-dd HH:mm:ss" );
    var grid = mini.get("datagrid1");
    grid.load();
    //动态设置URL
    // grid.setUrl("../data/AjaxService.jsp?method=SearchEmployees");
    //也可以动态设置列 grid.setColumns([]);

    //得到元素值,传给前端,值得回调
    function GetData() {
        var row = grid.getSelected();
        return row;
    }

    /*将中国标准时间更改为年-月-日*/
    function formatTen(num) {
        return num > 9 ? (num + "") : ("0" + num);
    }
    function formatDate(date) {
        var year = date.getFullYear();
        var month = date.getMonth() + 1;
        var day = date.getDate();
        var hour = date.getHours();
        var minute = date.getMinutes();
        var second = date.getSeconds();
        return year + "-" + formatTen(month) + "-" + formatTen(day);
    }
    function search() {
        var staffName = mini.get("staffName").getValue();
        var passcardNo = mini.get("passcardNo").getValue();
        var orgName = mini.get("orgName").getValue();
        var staffNo = mini.get("staffNo").getValue();
        var key = mini.get("key").getValue();
        grid.load({staffName:staffName,passcardNo:passcardNo,orgName:orgName,staffNo:staffNo,key:key});
    }
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
                        btnEdit.setText(data.rayStaffId);
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
