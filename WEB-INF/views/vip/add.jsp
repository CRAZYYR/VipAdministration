<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 17/10/25
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page pageEncoding="UTF-8" language="java" %>

<html>
<head>
    <title>录入VIP客户</title>
</head>
<body>
<strong>${message}</strong>
<form action="/vip/addvip.do" method="post">
    <label>name:</label><input name="name" type="text"/><hr/>
    <label>sex:</label><input name="sex" type="radio" value="1">男 <input name="sex" type="radio" value="0">女<hr/>
    <label>iphone:</label><input name="code" type="text"/><hr/>
    <label>email:</label><input name="email" type="text"/><hr/>
    <label>qq:</label><input name="qq" type="text"/><hr/>
    <label>address:</label><input name="address" type="text"/><hr/>
    <label>age:</label><input name="age" type="text"/><hr/>
    <label>zip:</label><input name="zip" type="text"/><hr/>
    <label>remark:</label><input name="remark" type="text"/><hr/>
    <button type="submit"  value="confirm">confirm</button>
</form>
</body>
</html>
