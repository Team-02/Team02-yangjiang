<%--
  Created by IntelliJ IDEA.
  User: YYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYYY
  Date: 18/2/3哈哈
  Time: 11:37哈哈
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Login</title>
    <meta http-equiv="content-type" content="text/html; charset=UTF-8" />
    <link href="../../css/demo.css" rel="stylesheet" type="text/css" />
    <script src="../../scripts/boot.js" type="text/javascript"></script>

    <style type="text/css">
        body{
            font: 12px/1.5 "Microsoft YaHei",tahoma,arial,'Hiragino Sans GB','\5b8b\4f53',sans-serif;
        }
        #loginForm{
            border: solid #217DB9;
            position: absolute;
            top: 45%;
            left: 70%;
            background: lightyellow;
            padding:60px;
            width: 200px;
            height: 150px;;
        }
        #url{
            position: absolute;
            z-index: 9;
            top: 0;
            left: 0;
            background-size: cover;
            background-repeat: no-repeat;
            background-position: center center;
            width: 100%;
        }


    </style>



</head>
<body>

<div id="url" style="background-image: url(../../imgs/home-1.png);height:600px;">
    <div id="loginForm" title="登录" style="background-image: url(../../imgs/login.png);">
        <table>
            <tr>
                <td style="width:60px;"><label for="username$text">帐号：</label></td>
                <td>
                    <input id="username" name="username" onvalidation="onUserNameValidation" class="mini-textbox" required="true" style="width:150px;"/>

                </td>
            </tr>
            <tr>
                <td style="width:60px;"><label for="pwd$text">密码：</label></td>
                <td>
                    <input id="pwd" name="pwd" onvalidation="onPwdValidation" class="mini-password" requiredErrorText="密码不能为空" required="true" style="width:150px;" onenter="onLoginClick"/>
                </td>
            </tr>
            <tr>
                <td></td>
                <td><input type="checkbox" value="记住密码">记住密码</td>
            </tr>
            <tr>

                <td style="padding-top:5px; padding-left: 20px" colspan="2">
                    <a onclick="onLoginClick" class="mini-button" style="width:180px;">登录</a>
                </td>
            </tr>
        </table>
    </div>
</div>

<script type="text/javascript">
    mini.parse();

    var loginWindow = mini.get("loginWindow");
    loginWindow.show();

    function onLoginClick(e) {
        var form = new mini.Form("#loginWindow");

        form.validate();
        if (form.isValid() == false) return;

        loginWindow.hide();
        mini.loading("登录成功，马上转到系统...", "登录成功");
        setTimeout(function () {
            window.location = "../outlooktree/outlooktree.html";
        }, 1500);
    }
    function onResetClick(e) {
        var form = new mini.Form("#loginWindow");
        form.clear();
    }
    /////////////////////////////////////
    function isEmail(s) {
        if (s.search(/^\w+((-\w+)|(\.\w+))*\@[A-Za-z0-9]+((\.|-)[A-Za-z0-9]+)*\.[A-Za-z0-9]+$/) != -1)
            return true;
        else
            return false;
    }
    function onUserNameValidation(e) {
        if (e.isValid) {
            if (isEmail(e.value) == false) {
                e.errorText = "必须输入邮件地址";
                e.isValid = false;
            }
        }
    }
    function onPwdValidation(e) {
        if (e.isValid) {
            if (e.value.length < 5) {
                e.errorText = "密码不能少于5个字符";
                e.isValid = false;
            }
        }
    }
</script>


</body>
</html>