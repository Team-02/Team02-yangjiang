<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Tabs</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link href="../../css/demo.css" rel="stylesheet" type="text/css" />
    <script src="../../scripts/boot.js" type="text/javascript"></script>
    <script src="../../js/jquery.cookie.js" type="text/javascript"></script>
</head>
<body>

<div id="tabs1" class="mini-tabs" activeIndex="0" style="width:100%;height:100%;"
    url="/tabs/keyan.txt" ontabload="onTabLoad" onactivechanged="onActiveChanged">
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

</script>
</body>
</html>