<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>系统界面 OutlookMenu</title>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="/css/demo.css" rel="stylesheet" type="text/css">
    <script src="/scripts/boot.js" type="text/javascript"></script>

    <script src="/js/UserSelectWindow.js" type="text/javascript"></script>
    <script type="text/javascript" src="/js/jquery.cookie.js"></script>

    <style type="text/css">
        body {
            margin: 0;
            padding: 0;
            border: 0;
            width: 100%;
            height: 100%;
            overflow: hidden;
        }
    </style>
</head>
<body>
<div id="layout1" class="mini-layout" style="width:100%;height:100%;">
    <div class="header" region="north" height="70" showSplit="false"
         showHeader="false">
        <h1 style="margin:0;padding:15px;cursor:default;
        font-family:'Trebuchet MS',Arial,sans-serif;">采购监管平台系统</h1>
    </div>
    <div title="center" region="center" bodyStyle="overflow:hidden;">
        <div class="mini-splitter" style="width:100%;height:100%;">
            <div size="10%" showCollapseButton="true" showHeader="false"
                 region="west" width="180" maxWidth="250"
                 minWidth="100"
                 style="border:0;">
                <!--OutlookMenu-->
                <div class="mini-outlookmenu" url="/tabs/outlookmenu.txt"
                     onitemselect="onItemSelect"
                     idField="id" parentField="pid" textField="text"
                >
                </div>
            </div>
            <!--Tabs-->
            <div>
                <iframe id="mainframe" frameborder="0" name="main" style="width:100%;
                height:100%;" border="0"></iframe>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    mini.parse();
    function showTab(node) {
        var tabs = mini.get("mainTabs");
        var id = "tab$" + node.id;
        var tab = tabs.getTab(id);
        if (!tab) {
            tab = {};
            tab.name = id;
            tab.title = node.text;
            tab.showCloseButton = true;
            tab.url = node.url;

            tabs.addTab(tab);

        }
//        var tabs = mini.get("home.jsp");
//        var tab = tabs.getActiveTab();
//        if (tab) {
//            tabs.removeTab(tab);
//        }
        tabs.activeTab(tab);

    }

    //        function onItemSelect(e) {
    //            var item = e.item;
    //            showTab(item);
    //        }

    //init iframe src
    var iframe = document.getElementById("mainframe");
    iframe.src = "/hello";

    function onItemSelect(e) {
        var item = e.item;
        iframe.src = item.url;
    }

</script>

</body>
</html>