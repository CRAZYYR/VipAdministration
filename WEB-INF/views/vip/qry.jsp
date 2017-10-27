<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 17/10/25
  Time: 10:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>VIP客户查询</title>
</head>
<body>
<strong style="color: #b92c28">${message}</strong>
<form action="/vip/vipselect.do" method="post">
    <label>编号查询(默认手机号码):</label><input name="code" type="text"><button type="submit" value="搜寻">搜寻</button>
<hr/>
</form>
<c:choose>
<c:when test="${v!=null}">
<div>
<span>姓名:</span>${v.name}<hr/>
<span>性别:</span>
        ${v.sex}<hr/>

<span>年龄:</span>${v.age}<hr/>
<span>qq:</span>${v.qq}<hr/>
    <span>等级:</span>${v.rank}<hr/>
</div>
</c:when>
    <c:otherwise>
        请输入查询的条件!
    </c:otherwise>
</c:choose>

</body>
</html>
