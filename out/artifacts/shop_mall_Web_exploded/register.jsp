<%--
  Created by IntelliJ IDEA.
  User: ymwm9
  Date: 2024/4/5
  Time: 22:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <title>贵美商城</title>
  <link rel="stylesheet" type="text/css" href="css/global.css"/>
  <link rel="stylesheet" type="text/css" href="css/error.css"/>
  <link rel="stylesheet" type="text/css" href="css/layout.css"/>
  <script type="text/JavaScript" src="js/func.js"></script>
  <script type="text/javascript" src="script/jquery-1.7.2.js"></script>
  <script type="text/javascript">
    $(function () {
      $("#sub_resp").click(function () {
        var usernameText = $("#username").val();
        var usernameReg = /^(?=.*[a-zA-Z])(?=.*[0-9])[a-zA-Z0-9_-]{4,16}$/
        if(!usernameReg.test(usernameText)) {
          $("span.errorMsg").text("用户名不合法")
          return false;
        }

        var passwordText = $("#password").val();
        var passwordReg = /^.{6,16}$/
        if(!passwordReg.test(passwordText)) {
          $("span.errorMsg").text("密码不合法")
          return false;
        }

        var rpassText = $("#rpass").val();
        if(!rpassText.test(passwordText)) {
          $("span.errorMsg").text("密码不相同")
          return false;
        }

        var emailText = $("#email").val();
        var emailReg = /.*@.*/
        if(!emailReg.test(emailText)) {
          $("span.errorMsg").text("邮箱不合法")
          return false;
        }

        // 获取所有爱好checkbox
        var checkboxes = document.querySelectorAll('input[type="checkbox"][name^="hobby"]');
        // 假设爱好为空
        var hasHobby = false;
        // 遍历checkbox，检查是否有被选中的
        checkboxes.forEach(function(checkbox) {
          if (checkbox.checked) {
            hasHobby = true; // 如果有被选中的，将hasHobby设为true
            return; // 跳出循环，不需要检查其他checkbox了
          }
        });
        if (hasHobby==false){
          $("span.errorMsg").text("爱好不能为空")
          return false;
        }


      })
    })

  </script>
</head>
<body>
<div id="container">
  <iframe id="header" src="header.jsp" width="980" height="136" frameborder="0" scrolling="no"></iframe>
  <form id="form1" method="post" action="http://localhost:8080/mall/usercontroller?action=register">
    <table class="reg" cellspacing="0px" cellpadding="0px">
      <tbody>
      <tr>
        <td>
          <!--错误信息显示地方 -->
          <span class="errorMsg"></span>
        </td>
      </tr>
      <tr>
        <td class="a_r"><label for="username">登录名：</label></td>
        <td><input name="username" id="username" type="text"/>（用户名只包含字母、数字、下划线或连字符，并且长度在4到16个字符之间）
        </td>
      </tr>
      <tr>
        <td class="a_r"><label for="password">密码：</label></td>
        <td><input name="password" id="password" type="password"/>（要求密码的长度在6到16个字符之间）</td>
      </tr>
      <tr>
        <td class="a_r"><label for="rpass">再次输入密码：</label></td>
        <td><input name="rpass" id="rpass" type="password"/></td>
      </tr>
      <tr>
        <td class="a_r"><label for="email">电子邮箱：</label></td>
        <td><input name="email" id="email" type="text"/>（必须包含 @ 字符）</td>
      </tr>
      <tr>
        <td class="a_r"><label for="gender">性别：</label></td>
        <td>
          <input name="gender" id="gender" class="b0" type="radio" value="男" checked="checked"/>
          <img src="images/male.gif" alt="alt"/>男&nbsp;
          <input name="gender" class="b0" type="radio" value="女"/>
          <img src="images/female.gif" alt="alt"/>女

        </td>
      </tr>
      <tr>
        <td class="a_r"><label for="hobby">爱好：</label></td>
        <td>
          <input class="b0" type="checkbox" name="hobby" id="hobby" value="checkbox"/>&nbsp;运动&nbsp;&nbsp;
          <input class="b0" type="checkbox" name="hobby2" value="checkbox"/>&nbsp;聊天&nbsp;&nbsp;
          <input class="b0" type="checkbox" name="hobby3" value="checkbox"/>&nbsp;玩游戏

        </td>
      </tr>
      <tr>
        <td colspan="2" class="pl150"><input id="sub_resp" type="image" name="submit" class="b0"
                                             src="images/submit.gif"/></td>
      </tr>
      </tbody>
    </table>
  </form>
  <iframe id="footer" src="footer.jsp" width="980" height="150" frameborder="0" scrolling="no"></iframe>
</div><!--container	end-->
</body>
</html>
