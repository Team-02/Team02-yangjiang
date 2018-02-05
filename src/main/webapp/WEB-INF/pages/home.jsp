<%--
  Created by IntelliJ IDEA.
  User: dllo
  Date: 18/1/18
  Time: 下午4:44
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tabs</title>
    <%@ page contentType="text/html;charset=UTF-8" language="java" %>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link href="/css/demo.css" rel="stylesheet" type="text/css">
    <script src="/scripts/boot.js" type="text/javascript"></script>

    <script src="/js/UserSelectWindow.js" type="text/javascript"></script>
    <script type="text/javascript" src="/js/jquery.cookie.js"></script>

</head>
<body>
<%--<h1>首页</h1>--%>

<%--<input type="button" value="loadTabs" onclick="loadTabs()"/>--%>
<%--<input type="button" value="addTab" onclick="addTab()"/>--%>
<%--<input type="button" value="removeTab" onclick="removeTab()"/>--%>
<%--<br />--%>
<div id="tabs1" class="mini-tabs" activeIndex="0" style="width:100%;height: 800px;"
     url="/tabs/tabs.txt" ontabload="onTabLoad" onactivechanged="onActiveChanged"
>
</div>

<script type="text/javascript">
    mini.parse();

    /*先找到tabs组件*/
    var tabs = mini.get("tabs1");
    /*给tab组件加入监听组件 tab切换前的事件回调*/
    tabs.on("beforeactivechanged",function (e) {

        /*控件加入DOM元素呈现*/
        var tabs = e.sender;
        /*取第一个tab页面的iframe对象*/
        var iframe = tabs.getTabIFrameEl(tabs.getTab(0));
        /*要将第一个tab页面中的数据保存到cookie中*/
        var data =iframe.contentWindow.getForm();
        /*将第一个form表达数据保存到cookie中 cookie存储的key 为form1*/
        $.cookie("form1",data);
        console.log("第一个表单数据"+data)

    });

    function loadTabs() {
        var tabs = mini.get("tabs1");
        tabs.load("tabs.txt");
    }

    var index = 1;
    function addTab() {
        var tabs = mini.get("tabs1");

        //add tab
        var i = index++;
        var tab = { title: "tab" + i, url: 'pages/page' + i + '.html', showCloseButton: true };
        tab = tabs.addTab(tab);

        //active tab
        tabs.activeTab(tab);

    }
    function removeTab() {
        var tabs = mini.get("tabs1");
        var tab = tabs.getActiveTab();
        if (tab) {
            tabs.removeTab(tab);
        }
    }


    /////////////////////////////
    function onTabLoad(e) {
        //alert(e.tab.url);
    }
    function onActiveChanged(e) {

        var tabs = e.sender;
        var tab = e.tab;
        if (!tab) return;

        if (tabs.getTabIFrameEl(tab)) return;  //已经存在iframe，则返回
        var url = tab.url + "?id=" + 1; //加工url，传递更多参数
        tabs.loadTab(url, tab);
    }

</script>

</body>
</html>
