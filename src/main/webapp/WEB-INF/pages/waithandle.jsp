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
            padding: 5px;
            width: 100%;

        }

        td {
            width: auto;
            border: 1px solid white;
        }

        tr {
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

        /*.high{*/
        /*height: 80px;*/
        /*vertical-align: middle;*/
        /*}*/
        div {
            background: linear-gradient(#E0F1FA, #D5EDFA, #C5E7FA, #D5EDFA, #E0F1FA);
        }
        body{
            position: relative;
        }
    </style>
</head>
<body>
<div id="form1">

    <table id="table1">
        <tr>
            <td colspan="4">当前位置:个人工作台 >> 待办任务</td>
        </tr>
    </table>
    <div id="panel1" class="mini-panel" title="查询条件" iconCls="icon-add"
         style="width:100%;height:100%; background-color: #cbe1fa"
         showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="false"
         collapseOnTitleClick="true">
        <table>
            <tr>
                <td class="t">申请时间</td>
                <td><input id="shentime" class="mini-datepicker" name="birthday" style="width: 400px"/></td>
                <td class="t">关键字</td>
                <td>
                    <input id="key" class="mini-textbox" style="width:400px;" onenter="onKeyEnter"/>
                </td>
            </tr>
            <tr>
                <td class="t">申请人</td>
                <td>
                    <input value="" allowInput="false" id="btnEdit1" class="mini-buttonedit user_add"
                           onbuttonclick="onButtonEdit1" name="a" textName="b" style="width: 400px"/>
                </td>
                <td class="t">所属部门</td>
                <td>
                    <input value="" allowInput="false" id="btnEdit2" class="mini-buttonedit group_add"
                           onbuttonclick="onButtonEdit2" name="id" textName="name" style="width: 400px"/>
                </td>
            </tr>
        </table>
    </div>
    <div>
        <div style="width: 100%;border-bottom: 0px">
            <table>
                <tr>
                    <td colspan="4" class="content" style="text-align: right">
                        <a class="mini-button" style="width:60px;" onclick="search()"><img src="/imgs/query.png"
                                                                                           style="width: 16px;height: 16px">查询</a>
                    </td>
                </tr>
            </table>
        </div>
        <div id="datagrid1" class="mini-datagrid" style="width: 100%;" url="/selectprocess">
            <div property="columns">
                <div type="checkcolumn"></div>
                <div field="processNumber" id="number" width="120">流程编号</div>
                <div field="processName" width="120">流程名称</div>
                <div field="deptName" width="120">所属部门</div>
                <div field="currentLink" width="120">当前环节</div>
                <div field="applicantPerson" width="120">提报人</div>
<<<<<<< HEAD
                <div field="applyTime" width="120">提报时间</div>
                <div name="ctrl" width="120" headerAlign="center" onclick="govalue()">办理</div>
=======
                <div field="applyTime" width="120" >提报时间</div>
                <div name="ctrl" width="120" headerAlign="center">办理</div>
>>>>>>> remotes/origin/dabala
            </div>
        </div>
    </div>
</div>
<script>
    /*加载mini组件 后面get方法才好用*/
    mini.parse();

    //    mini.formatDate ( Date, "yyyy-MM-dd HH:mm:ss" );
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

    function search() {
        var key = mini.get("key").getValue();
        var key1 = mini.get("shentime").getValue();
        var time = null;
        if (key1 != null && key1 != '') {
            time = formatDate(key1);
        }
        var person = mini.get("btnEdit1").getText();
        var dept = mini.get("btnEdit2").getText();
        grid.load({processNumber: key, applyTime: time, applicantPerson: person, deptName: dept});
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
    function getForm() {
        var form = new mini.Form("#form1");
        var data = form.getData();      //获取表单多个控件的数据
        var json = mini.encode(data);   //序列化成JSON
        return json;
    }


    function onClick() {
//        /*1.获得基本信息tab表单中的数据 cookies取*/
//        var baseData = $.cookie("form1");

        /*2.获得当前其他信息tab表单中的数据*/
        var otherData = getForm();
        console.log(baseData + "--" + otherData);
        alert("提交成功");
        /*3.将数据传递个后台*/
//        $("#base").val(baseData);
        $("#other").val(otherData);
        /*通过ajax上传文件 数据*/
        $.ajaxFileUpload({
            url: "select",
//            fileElementId:$("#upload"),/*文件上传的id域*/
            success: function (data) {

                console.log(data);

            }

        })
    }
    function onButtonEdit1(e) {
        var btnEdit = this;
        mini.open({
            url: "selectstaff",
            title: "申请人",
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
    function onButtonEdit2(e) {

        var btnEdit = this;
        mini.open({
            url: "selectdepartment",
            title: "所属部门",
            width: 650,
            height: 380,
            ondestroy: function (action) {
                //if (action == "close") return false;
                if (action == "ok") {
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    data = mini.clone(data);    //必须克隆
                    if (data) {
                        btnEdit.setValue(data.processNumber);
                        btnEdit.setText(data.deptName);
                    }
                }

            }
        });

    }

    /*小页面编辑*/
    function edit() {

        var row = grid.getSelected();
        if (row) {
            mini.open({
                url: "approve",
                title: "办理",
                width: 1462,
                height: 775,
                allowResize: false,//允许尺寸调节
                allowDrag: false,//允许拖拽位置
                screenX: 210,
                screenY: 20,

                onload: function () {
                    var iframe = this.getIFrameEl();
                    var data = { action: "edit",
                        processNumber: row.processNumber,
                        processName:row.processName,
                        deptName:row.deptName,
                        currentLink:row.currentLink,
                        applicantPerson:row.applicantPerson,
                        applyTime:row.applyTime,

                    };
                    alert(data.processNumber);
                    alert(data.processName);
                    alert(data.deptName);
                    alert(data.currentLink);
                    alert(data.applicantPerson);
                    alert(data.applyTime);
                    iframe.contentWindow.SetData(data);

                },
                ondestroy: function (action) {
                    //var iframe = this.getIFrameEl();

                    grid.reload();

                }
            });

        } else {
            alert("请选中一条记录");
        }

    }
    grid.on("drawcell", function (e) {
        var record = e.record,
            column = e.column,
            field = e.field,
            value = e.value;

        //ctrl列，超连接操作按钮
        if (column.name == "ctrl") {
            e.cellStyle = "text-align:center";
            e.cellHtml = '<a href="javascript:edit(\'' + record.processNumber + '\')">办理</a>'
//            e.cellHtml = "<a href='approve'>查看</a>";
            <%--<a href='approve?id=${id}'>办理</a>--%>
        }
    })
</script>
</body>
</html>
