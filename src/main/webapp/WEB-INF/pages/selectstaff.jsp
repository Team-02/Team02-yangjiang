<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title></title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link href="/css/demo.css" rel="stylesheet" type="text/css" />


    <script src="/scripts/boot.js" type="text/javascript"></script>


    <style type="text/css">
        body{
            margin:0;padding:0;border:0;width:100%;height:100%;overflow:hidden;
        }
    </style>
</head>
<body>
<div class="mini-toolbar" style="text-align:center;line-height:30px;" borderStyle="border:0;">
    <label >名称：</label>
    <input id="key" class="mini-textbox" style="width:150px;" onenter="onKeyEnter"/>
    <a class="mini-button" style="width:60px;" onclick="search()">查询</a>
</div>
<div class="mini-fit">

    <div id="datagrid1" class="mini-datagrid" style="width:100%;height:100%;"
        url="/select" idField="id" allowResize="true"
         borderStyle="border-left:0;border-right:0;" onrowdblclick="onRowDblClick"
    >
        <div property="columns">
            <div type="indexcolumn" ></div>
            <div field="id" width="120" headerAlign="center" allowSort="true">员工编号</div>
            <div field="name" width="100%" headerAlign="center" allowSort="true">员工姓名</div>
            <div field="password" width="100" headerAlign="center" allowSort="true">员工密码</div>
            <div field="email" width="100" headerAlign="center" allowSort="true">员工邮箱</div>
        </div>
    </div>

</div>
<div class="mini-toolbar" style="text-align:center;padding-top:8px;padding-bottom:8px;" borderStyle="border:0;">
    <a class="mini-button" style="width:60px;" onclick="onOk()">确定</a>
    <span style="display:inline-block;width:25px;"></span>
    <a class="mini-button" style="width:60px;" onclick="onCancel()">取消</a>
</div>

</body>
</html>
<script type="text/javascript">
    mini.parse();

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
        grid.load({ name: key });
    }
    function onKeyEnter(e) {
        search();
    }
    function onRowDblClick(e) {
        onOk();
    }
    //////////////////////////////////
    function CloseWindow(action) {
        if (window.CloseOwnerWindow) return window.CloseOwnerWindow(action);
        else window.close();
    }

    function onOk() {
        CloseWindow("ok");
    }
    function onCancel() {
        CloseWindow("cancel");
    }


</script>