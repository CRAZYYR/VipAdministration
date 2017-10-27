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
    <title>Title</title>
</head>
<body>
<center><strong>你好! ${sessionScope.currentUser.name}</strong></center>

<p><a href="/loginOut.do">退出</a></p>
<br/>
<ul>
    <hr/>
    <ol><a href="/vip/vipselect.do" target="mainfirm">VIP客户管理</a></ol>
    <hr/>
    <ol><a href="/vip/addvip.do" target="mainfirm">录入VIP客户</a></ol> <hr/>
    <ol><a href="">VIP客户管理</a></ol> <hr/>
    <ol><a href="">查看VIP消费记录</a></ol> <hr/>
    <ol><a href="">录入VIP消费记录</a></ol> <hr/>
    <ol><a href="">VIP消费记录管理</a></ol> <hr/>
    <ol><a href="updatepassword.do" target="mainfirm" >修改密码</a></ol> <hr/>

</ul>

<div style="width: 100%;height: auto;">
    <iframe width="100%" height="500px"  name="mainfirm"  src="/Welcome.do"></iframe>


</div>
</body>
</html>
