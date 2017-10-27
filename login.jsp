<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head><meta charset="utf-8"></head>
<body>
<h2>登陆界面</h2>
<strong>${message}</strong>
<form action="login.do" method="post">
    <p>

        <label>帐号:<input name="account" type="text"/></label>
    </p>
    <p>

        <label>密码:<input name="password" type="password"/></label>
    </p>

<p>

    <button type="submit">Login</button>
</p>
</form>
</body>
</html>
