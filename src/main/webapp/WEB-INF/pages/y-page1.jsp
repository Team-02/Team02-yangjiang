<%--
  Created by IntelliJ IDEA.
  User: YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY
  Date: 18/1/19哈哈
  Time: 10:37哈哈
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link href="../../css/demo.css" rel="stylesheet" type="text/css" />
    <link href="../../scripts/miniui/themes/blue/skin.css" rel="stylesheet" type="text/css" />
    <script src="../../scripts/boot.js" type="text/javascript"></script>
    <script src="../../js/fixheight.js" type="text/javascript"></script>
    <style type="text/css">
        table,td{
            font-size: small;
            font-family:"Heiti TC";
            background: linear-gradient(#c0e7ff, #cfe4ff, #86b0eb, #b2caff,#c0e7ff );
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
    </style>


</head>
<body>
<table border="0" cellpadding="1" cellspacing="2">
    <tr>
        <td colspan="4">当前位置:科研项目申报 >> 项目基本信息</td>
    </tr>
    <tr>
        <td colspan="4">项目名称</td>
    </tr>
    <tr>
        <td class="d">项目名称<span style="color:red">※</span></td>
        <td colspan="3"><input type="text"></td>
    </tr>
    <tr>
        <td class="d">项目申报单位<span style="color:red">※</span></td>
        <td>
            <input allowInput="false" id="btnEdit1" class="mini-buttonedit"
                   onbuttonclick="onButtonEdit1" name="a" textName="b" style="width: 100%"/>
        </td>
        <td class="d">联合申报单位<span style="color:red">※</span></td>
        <td>
            <input allowInput="false" id="btnEdit2" class="mini-buttonedit"
                   onbuttonclick="onButtonEdit2" name="a" textName="b" style="width: 100%"/>
        </td>
    </tr>
    <tr class="high">
        <td class="d" >目的<span style="color:red">※</span></td>
        <td colspan="3">
            <input class="mini-textarea" style="width:100%;height:60px;"/>
        </td>
    </tr>
    <tr>
        <td colspan="4">与核电生产运营安全性、可靠性、经济的适应分析</td>
    </tr>
    <tr>
        <td class="d">安全性</td>
        <td><input type="text"></td>
        <td class="d">可靠性</td>
        <td><input type="text"></td>
    </tr>
    <tr>
        <td class="d">经济性</td>
        <td><input type="text"></td>
        <td class="d">其他</td>
        <td><input type="text"></td>
    </tr>
    <tr>
        <td colspan="4">其他信息</td>
    </tr>
    <tr class="high">
        <td class="d">成果应用</td>
        <td colspan="3"><input type="text"></td>
    </tr>
    <tr class="high">
        <td class="d">实际用户</td>
        <td colspan="3">
            <input class="mini-textarea" style="width:100%;height:60px;"/>
        </td>
    </tr>
    <tr class="high">
        <td class="d">潜在用户</td>
        <td colspan="3">
            <input class="mini-textarea" style="width:100%;height:60px;"/>
        </td>
    </tr>
    <tr class="high">
        <td class="d">项目完成周期</td>
        <td colspan="3">
            <input class="mini-textarea" style="width:100%;height:60px;"/>
        </td>
    </tr>
    <tr class="high">
        <td class="d">项目内容路径简介</td>
        <td colspan="3">
            <input class="mini-textarea" style="width:100%;height:60px;"/>
        </td>
    </tr>
    <tr>
        <td colspan="4">预算信息</td>
    </tr>
    <tr>
        <td class="d">总预算*</td>
        <td>
            <input style="width: 100%" class="mini-textbox" vtype="float" required="true"/>
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


<script>
    /*加载mini组件 后面get方法才好用*/
    mini.parse();
    /*审批(部门经理)弹出框的点击事件*/
    function onButtonEdit1(e) {

        var btnEdit = this;
        mini.open({
            url:"../../html/SelectGridWindow.html",
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
            url:"../../html/SelectGridWindow.html",
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
                        btnEdit.setValue(data.id);
                        btnEdit.setText(data.name);
                    }
                }

            }
        });

    }




        mini.parse();

    function submitForm() {
        var form = new mini.Form("#form1");

        form.validate();
        if (form.isValid() == false) return;

        //提交数据
        var data = form.getData();
        var json = mini.encode(data);
        $.ajax({
            url: "../data/FormService.aspx?method=SaveData",
            type: "post",
            data: { submitData: json },
            success: function (text) {
                alert("提交成功，返回结果:" + text);
            }
        });
    }
    ////////////////////////////////////////
    function onEnglishValidation(e) {
        if (e.isValid) {
            if (isEnglish(e.value) == false) {
                e.errorText = "必须输入英文";
                e.isValid = false;
            }
        }
    }
    function onEnglishAndNumberValidation(e) {
        if (e.isValid) {
            if (isEnglishAndNumber(e.value) == false) {
                e.errorText = "必须输入英文+数字";
                e.isValid = false;
            }
        }
    }
    function onChineseValidation(e) {
        if (e.isValid) {
            if (isChinese(e.value) == false) {
                e.errorText = "必须输入中文";
                e.isValid = false;
            }
        }
    }
    function onIDCardsValidation(e) {
        if (e.isValid) {
            var pattern = /\d*/;
            if (e.value.length < 15 || e.value.length > 18 || pattern.test(e.value) == false) {
                e.errorText = "必须输入15~18位数字";
                e.isValid = false;
            }
        }
    }

    ////////////////////////////////////
    /* 是否英文 */
    function isEnglish(v) {
        var re = new RegExp("^[a-zA-Z\_]+$");
        if (re.test(v)) return true;
        return false;
    }

    /* 是否英文+数字 */
    function isEnglishAndNumber(v) {

        var re = new RegExp("^[0-9a-zA-Z\_]+$");
        if (re.test(v)) return true;
        return false;
    }

    /* 是否汉字 */
    function isChinese(v) {
        var re = new RegExp("^[\u4e00-\u9fa5]+$");
        if (re.test(v)) return true;
        return false;
    }

    /*自定义vtype*/
    mini.VTypes["englishErrorText"] = "请输入英文";
    mini.VTypes["english"] = function (v) {
        var re = new RegExp("^[a-zA-Z\_]+$");
        if (re.test(v)) return true;
        return false;
    }

</script>

</body>
</html>
