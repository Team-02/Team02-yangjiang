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
    <meta http-equiv="content-type" content="text/html; charset=UTF-8"/>
    <link href="../../css/demo.css" rel="stylesheet" type="text/css"/>
    <link href="../../scripts/miniui/themes/blue/skin.css" rel="stylesheet" type="text/css"/>
    <script src="../../scripts/boot.js" type="text/javascript"></script>
    <script src="../../js/fixheight.js" type="text/javascript"></script>
    <style type="text/css">
        table, td {
            font-size: small;
            font-family: "Heiti TC";
            background: linear-gradient(#c0e7ff, #cfe4ff, #86b0eb, #b2caff, #c0e7ff);
            border: 2px solid white;
            border-collapse: collapse;
            padding: 5px;
            width: 100%;

        }

        td {
            width: auto;
        }

        input {
            width: 100%;
            height: 100%;
        }

        .d {
            text-align: right;
            width: 150px;
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
    <table>
    <tr>
        <td colspan="4">当前位置:科研项目管理 >> 承接外部科技项目申报</td>
    </tr>
    </table>
    <div id="panel1" class="mini-panel" title="项目基本信息" iconCls="icon-add"
         style="width:100%;height: auto;; background-color: #cbe1fa"
         showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="false"
         collapseOnTitleClick="true"
    >
        <table>
            <tr>
                <td class="d">项目名称<span style="color:red">※</span></td>
                <td colspan="3"><input type="text"></td>
            </tr>
            <tr>
                <td class="d">项目来源<span style="color:red">※</span></td>
                <td>
                    <div id="cbl1" class="mini-radiobuttonlist"
                         textField="text" valueField="id"
                         data="[{'id':'1001','text':'政府部门____'},
                 {'id':'1002','text':'行业协会____'},
                 {'id':'1003','text':'集团____'},
                 {'id':'1004','text':'其他____'}]">
                    </div>
                </td>
            </tr>
            <tr>
                <td class="d">项目申报单位<span style="color:red">※</span></td>
                <td>
                    <input value="" allowInput="false" id="btnEdit1" class="mini-buttonedit user_add"
                           onbuttonclick="onButtonEdit1" name="a" textName="b" style="width: 400px"/>
                </td>
                <td class="d">联合申报单位<span style="color:red">※</span></td>
                <td>
                    <input value="" allowInput="false" id="btnEdit2" class="mini-buttonedit group_add"
                           onbuttonclick="onButtonEdit1" name="a" textName="b" style="width: 400px"/>
                </td>
            </tr>
            <tr class="high">
                <td class="d">应用方向<span style="color:red">※</span></td>
                <td colspan="3">
                    <input class="mini-textarea" style="width:100%;height:60px;"/>
                </td>
            </tr>
        </table>
    </div>
    <div id="panel2" class="mini-panel" title="项目成果" iconCls="icon-add"
         style="width:100%;height: auto;; background-color: #cbe1fa"
         showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="false"
         collapseOnTitleClick="true"
    >
        <table>
            <tr class="high">
                <td class="d">成果应用<span style="color:red">※</span></td>
                <td colspan="3">
                    <input class="mini-textarea" style="width:100%;height:60px;"/>
                </td>
            </tr>
            <tr>
                <td class="d">产品形式</td>
                <td>
                    <div id="cbl2" class="mini-checkboxlist"
                         textField="text" valueField="id"
                         data="[{'id':'1001','text':'专题报告'},
                 {'id':'1002','text':'技术方案'},
                 {'id':'1003','text':'技术标准'},
                 {'id':'1004','text':'硬件产品'},
                 {'id':'1005','text':'生产性文件'},
                 {'id':'1006','text':'设计文件'},
                 {'id':'1007','text':'计算机软件'},
                 {'id':'1008','text':'其他____'}]">
                    </div>
                </td>
            </tr>
            <tr class="high">
                <td class="d">预计知识产权<span style="color:red">※</span></td>
                <td colspan="3">
                    <input class="mini-textarea" style="width:100%;height:60px;"/>
                </td>
            </tr>
            <tr class="high">
                <td class="d">预计经济效益<span style="color:red">※</span></td>
                <td colspan="3">
                    <input class="mini-textarea" style="width:100%;height:60px;"/>
                </td>
            </tr>
            <tr class="high">
                <td class="d">预计固定资产<span style="color:red">※</span></td>
                <td colspan="3">
                    <input class="mini-textarea" style="width:100%;height:60px;"/>
                </td>
            </tr>
        </table>
    </div>
    <div id="panel3" class="mini-panel" title="预算信息" iconCls="icon-add"
         style="width:100%;height:auto; background-color: #cbe1fa"
         showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="false"
         collapseOnTitleClick="true"
    >
        <table>
            <tr>
                <td class="d">总预算<span style="color:red">※</span></td>
                <td ><input type="text"></td>
                <td class="d">外部经费<span style="color:red">※</span></td>
                <td ><input type="text"></td>
            </tr>
            <tr>
                <td class="d">公司经费<span style="color:red">※</span></td>
                <td colspan="3"><input type="text"></td>
            </tr>
        </table>
    </div>
    <div id="panel4" class="mini-panel" title="流程信息" iconCls="icon-add"
         style="width:100%;height:auto; background-color: #cbe1fa"
         showToolbar="true" showCollapseButton="true" showFooter="true" allowResize="false"
         collapseOnTitleClick="true"
    >
       <table>
           <tr>
           <td class="d">技术部经理<span style="color:red">※</span></td>
           <td>
               <input value="" allowInput="false" id="btnEdit3" class="mini-buttonedit group_add"
                      onbuttonclick="onButtonEdit1" name="a" textName="b" style="width: 400px"/>
           </td>
           </tr>
       </table>
    </div>
    <table>
    <tr>
        <td class="d" style="background-color: white;">
            <input type="button" value="提交" style="width: 50px">
        </td>
    </tr>
    </table>
</table>


<script>
    /*加载mini组件 后面get方法才好用*/
    mini.parse();
    /*审批(部门经理)弹出框的点击事件*/
    function onButtonEdit1(e) {

        var btnEdit = this;
        mini.open({
            url: "selectstaff",
            title: "项目申报单位",
            width: 650,
            height: 380,
            ondestroy: function (action) {
                //if (action == "close") return false;
                if (action == "ok") {
                    var iframe = this.getIFrameEl();
                    var data = iframe.contentWindow.GetData();
                    data = mini.clone(data);    //必须克隆
                    if (data) {
                        btnEdit.setValue(data.staff_Id);
                        btnEdit.setText(data.staff_name);
                    }
                }

            }
        });

    }
    function onButtonEdit2(e) {

        var btnEdit = this;
        mini.open({
            url: "selectstaff",
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
            data: {submitData: json},
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
