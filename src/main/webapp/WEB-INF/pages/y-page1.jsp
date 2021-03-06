<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link href="../../css/demo.css" rel="stylesheet" type="text/css" />
    <link href="../../scripts/miniui/themes/blue/skin.css" rel="stylesheet" type="text/css" />
    <script src="../../scripts/boot.js" type="text/javascript"></script>
    <script src="../../js/fixheight.js" type="text/javascript"></script>
    <script src="../../js/jquery.cookie.js" type="text/javascript"></script>
    <script src="../../js/jquery-3.2.1.js" type="text/javascript"></script>
    <style type="text/css">
        table,td{
            font-size: small;
            font-family:"Heiti TC";
            background: #E0F1FA;
            border: 2px solid white;
            border-collapse: collapse;
            padding: 5px;
            width: 100%;

        }
        td{
            width: auto;
        }
        input{
            width: 100%;
            height:100%;
        }
        .d{
            text-align: right;
            width: 150px;
        }
        div{
            background: linear-gradient(#E0F1FA, #D5EDFA, #C5E7FA, #D5EDFA,#E0F1FA );
        }
        html body .user_add .mini-buttonedit-icon {
            background: url(/scripts/miniui/res/images/user_add.png) no-repeat 50% 50%;
        }
        html body .group_add .mini-buttonedit-icon {
            background: url(/scripts/miniui/res/images/group_add.png) no-repeat 50% 50%;
        }
    </style>


</head>
<body>
<table border="0" cellpadding="1" cellspacing="2">
    <tr>
        <td colspan="4">当前位置:科研项目申报 >> 项目基本信息</td>
    </tr>
</table>
<div id="form1">
<div id="panel1" class="mini-panel" title="项目名称" iconCls="icon-add" style="width:100%;height:auto; "
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="false"
     collapseOnTitleClick="true">
    <table border="0" cellpadding="1" cellspacing="2">
        <tr>
            <td class="d">项目名称<span style="color:red">※</span></td>
            <td colspan="3">
                <input class="mini-textbox" style="width:100%;" name="progName" value=""></td>
        </tr>
        <tr>
            <td class="d">项目申报单位<span style="color:red">※</span></td>
            <td>
                <input allowInput="false" id="btnEdit1" class="mini-buttonedit user_add"
                       onbuttonclick="onButtonEdit1" name="appOrgNo" textName="appOrgName" style="width: 100%"/>
            </td>
            <td class="d">联合申报单位<span style="color:red">※</span></td>
            <td>
                <input allowInput="false" id="btnEdit2" class="mini-buttonedit group_add"
                       onbuttonclick="onButtonEdit2" name=" UnteAppOrgNo" textName="UnteAppOrgName" style="width: 100%"/>
            </td>
        </tr>
        <tr class="high">
            <td class="d" >目的<span style="color:red">※</span></td>
            <td colspan="3">
                <input name="purpose"  class="mini-textarea" style="width:100%;height:60px;"/>
            </td>
        </tr>
    </table>
</div>
<div id="panel2" class="mini-panel" title="与核电生产运营安全性、可靠性、经济的适应分析" iconCls="icon-add" style="width:100%;height:auto; background: linear-gradient(#E0F1FA, #D5EDFA, #C5E7FA, #D5EDFA,#E0F1FA );"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="false"
     collapseOnTitleClick="true">
    <table border="0" cellpadding="1" cellspacing="2">

        <tr>
            <td class="d">安全性</td>
            <td><input class="mini-textbox" name="safeDesc"></td>
            <td class="d">可靠性</td>
            <td><input class="mini-textbox" name="peliableDesc"></td>
        </tr>
        <tr>
            <td class="d">经济性</td>
            <td><input class="mini-textbox" name="econDesc"></td>
            <td class="d">其他</td>
            <td><input class="mini-textbox" name="otherDesc"></td>
        </tr>
    </table>
</div>
<div id="panel3" class="mini-panel" title="其他信息" iconCls="icon-add" style="width:100%;height:auto; background: linear-gradient(#E0F1FA, #D5EDFA, #C5E7FA, #D5EDFA,#E0F1FA );"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="false"
     collapseOnTitleClick="true">
    <table border="0" cellpadding="1" cellspacing="2">
        <tr class="high">
            <td class="d">成果应用</td>
            <td colspan="3"><input class="mini-textbox" style="width:100%;" name="achievementDesc" value=""></td>
        </tr>
        <tr class="high">
            <td class="d">实际用户</td>
            <td colspan="3">
                <input name="realUser"  class="mini-textarea" style="width:100%;height:60px;"/>
            </td>
        </tr>
        <tr class="high">
            <td class="d">潜在用户</td>
            <td colspan="3">
                <input name="potentialUser"  class="mini-textarea" style="width:100%;height:60px;"/>
            </td>
        </tr>
        <tr class="high">
            <td class="d">项目完成周期</td>
            <td colspan="3">
                <input name="cycle"  class="mini-textarea" style="width:100%;height:60px;"/>
            </td>
        </tr>
        <tr class="high">
            <td class="d">项目内容路径简介</td>
            <td colspan="3">
                <input name="content"  class="mini-textarea" style="width:100%;height:60px;"/>
            </td>
        </tr>
    </table>
</div>
<div id="panel4" class="mini-panel" title="预算信息" iconCls="icon-add" style="width:100%;height:auto; background: linear-gradient(#E0F1FA, #D5EDFA, #C5E7FA, #D5EDFA,#E0F1FA );"
     showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="false"
     collapseOnTitleClick="true">
    <table border="0" cellpadding="1" cellspacing="2">
        <tr>
            <td class="d">总预算*</td>
            <td>
                <input style="width: 100%" name="totalBudget" class="mini-textbox" vtype="float" required="true"/>
            </td>
            <td class="d">公司经费</td>
            <td>
                <input style="width: 100%" class="mini-textbox" vtype="float" required="true"/>
            </td>
        </tr>
        <tr>
            <td class="d">外部支持经费</td>
            <td>
                <input style="width: 100%" class="mini-textbox" vtype="float" required="true"/>
            </td>
            <td class="d">国家经费</td>
            <td>
                <input style="width: 100%" class="mini-textbox" vtype="float" required="true"/>
            </td>
        </tr>
    </table>
</div>
</div>



<script>
    /*加载mini组件 后面get方法才好用*/
    mini.parse();
    /*审批(部门经理)弹出框的点击事件*/
    function onButtonEdit1(e) {

        var btnEdit = this;
        mini.open({
            url:"y-page1-1",
            title: "选择申报单位",
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
                        btnEdit.setText(data.appOrgName);
                    }
                }

            }
        });

    }
    function onButtonEdit2(e) {

        var btnEdit = this;
        mini.open({
            url:"y-page1-2",
            title: "选择联合单位",
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
                        btnEdit.setText(data.uniteAppOrgName);
                    }
                }
            }
        });
    }

    function getForm() {
        var form = new mini.Form("#form1");
        var data = form.getData();      //获取表单多个控件的数据
        var json = mini.encode(data);   //序列化成JSON
        return json;
    }

    ////////////////////////////////////////
//    function onEnglishValidation(e) {
//        if (e.isValid) {
//            if (isEnglish(e.value) == false) {
//                e.errorText = "必须输入英文";
//                e.isValid = false;
//            }
//        }
//    }
//    function onEnglishAndNumberValidation(e) {
//        if (e.isValid) {
//            if (isEnglishAndNumber(e.value) == false) {
//                e.errorText = "必须输入英文+数字";
//                e.isValid = false;
//            }
//        }
//    }
//    function onChineseValidation(e) {
//        if (e.isValid) {
//            if (isChinese(e.value) == false) {
//                e.errorText = "必须输入中文";
//                e.isValid = false;
//            }
//        }
//    }
//    function onIDCardsValidation(e) {
//        if (e.isValid) {
//            var pattern = /\d*/;
//            if (e.value.length < 15 || e.value.length > 18 || pattern.test(e.value) == false) {
//                e.errorText = "必须输入15~18位数字";
//                e.isValid = false;
//            }
//        }
//    }
//
//    ////////////////////////////////////
//    /* 是否英文 */
//    function isEnglish(v) {
//        var re = new RegExp("^[a-zA-Z\_]+$");
//        if (re.test(v)) return true;
//        return false;
//    }
//
//    /* 是否英文+数字 */
//    function isEnglishAndNumber(v) {
//
//        var re = new RegExp("^[0-9a-zA-Z\_]+$");
//        if (re.test(v)) return true;
//        return false;
//    }
//
//    /* 是否汉字 */
//    function isChinese(v) {
//        var re = new RegExp("^[\u4e00-\u9fa5]+$");
//        if (re.test(v)) return true;
//        return false;
//    }
//
//    /*自定义vtype*/
//    mini.VTypes["englishErrorText"] = "请输入英文";
//    mini.VTypes["english"] = function (v) {
//        var re = new RegExp("^[a-zA-Z\_]+$");
//        if (re.test(v)) return true;
//        return false;
//    }

</script>

</body>
</html>
