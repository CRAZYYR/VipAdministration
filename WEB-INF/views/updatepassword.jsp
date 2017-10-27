<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 17/10/19
  Time: 16:45
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <meta charset="utf-8">
    <title>修改密码</title>
    <script>


    </script>
</head>
<body>
<strong>${message}</strong>
<form action="/updatepassword.do" method="post">
    <label>旧密码:</label><input name="oldPassword" type="password" placeholder="请输入旧密码!"><br/>
    <label>新密码:</label><input name="newPassword" type="password" placeholder="请输入新密码!"><br/>
    <label>确认密码:</label><input name="newPasswordConfirm" type="password" placeholder="请确认密码!"><br/>
    <button type="submit">确认修改</button>

</form>
</body>
</html>
