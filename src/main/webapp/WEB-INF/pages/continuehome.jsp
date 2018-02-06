<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tabs</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link href="../../css/demo.css" rel="stylesheet" type="text/css" />


    <script src="../../scripts/boot.js" type="text/javascript"></script>


</head>
<body>

<div id="tabs1" class="mini-tabs" activeIndex="0" style="width:100%;height:100%;"
     url="/tabs/chengjie.txt" ontabload="onTabLoad" onactivechanged="onActiveChanged">
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
        tabs.activeTab(tab);
    }


    function onItemSelect(e) {
        var item = e.item;
        iframe.src = item.url;

    }
</script>
</body>
</html>