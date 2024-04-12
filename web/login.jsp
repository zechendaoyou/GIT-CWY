<%--
  Created by IntelliJ IDEA.
  User: ymwm9
  Date: 2024/4/5
  Time: 22:44
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
  <script type="text/javascript" src="script/jquery-1.7.2.js"></script>
  <script type="text/javascript">
    $(function () {
      $("#sub_btn").click(function () {

        var usernameText = $("#username").val();

        var passwordText = $("#password").val();

        if(usernameText!='admin' || passwordText!='123456') {
          $("span.errorMsg").text("用户名或密码错误")
          return false;
        }
      })
    })
  </script>
</head>
<body>
<div id="container">
  <iframe id="header" src="header.jsp" width="980" height="136" frameborder="0" scrolling="no"></iframe>
  <form action="http://localhost:8080/mall/usercontroller?action=login" method="post">
    <div class="login">
      <ul class="form f_l">
        <h1><img src="images/logintitle.gif" alt="会员登录"/></h1>
        <li class="login_list"><label>会员名：</label><input type="text" name="username" id="username"/>（可包含
          a-z、0-9 和下划线）
        </li>
        <li class="login_list"><label>密&nbsp;&nbsp;&nbsp;码：</label><input type="text" name="password"
                                                                            id="password"/>（至少包含 6
          个字符）
        </li>
        <li class="a_c"><a href="login_success.jsp" target="_parent" id="sub_btn"><img src="images/login.gif"
                                                                                       alt="登录"/></a></li>
        <!--错误信息显示地方 -->
        <li><span class="errorMsg"></span></li>
        <li class="desc">&delta;&nbsp;&nbsp;<a href="#">什么是安全登录</a>。</li>
        <li class="desc">&delta;&nbsp;&nbsp;香港會員（繁體中文用戶）由此<a href="#">登入</a></li>
        <li class="desc">&delta;&nbsp;&nbsp;<a href="#">密码安全贴士</a>。</li>
        <li class="desc">&delta;&nbsp;&nbsp;防止病毒或者木马窃取您的账户信息，<a href="#">在线检查</a>您的电脑是否安全。
        </li>
      </ul>
      <h1><img src="images/register.gif" alt="注册会员"/></h1>
      <ul class="aside f_l">
        <li class="regpic"><span>便宜有好货！</span>超过7000万件商品任您选。</li>
        <li class="regpic regpic2"><span>买卖更安全！</span>交易超安全。</li>
        <li class="regpic regpic3"><span>免费开网店！</span>轻松赚钱交友。</li>
        <li class="regpic regpic4"><span>超人气社区！</span>彩活动每一天</li>
        <li class="a_c"><a href="register.jsp" target="_parent"><img src="images/registernow.gif"
                                                                     alt="现在就注册"/></a></li>
        <ul class="reged">
          <li class="regpic regpic5">您已经是会员？<a href="login.jsp" target="_parent">由此登入</a></li>
          <li class="regpic regpic6">繁体中文用户由此<a href="register.jsp" target="_parent">注册</a></li>
        </ul>
      </ul>
    </div>
  </form>
  <iframe id="footer" src="footer.jsp" width="980" height="136" frameborder="0" scrolling="no"></iframe>
</div> <!--container end-->
</body>
</html>