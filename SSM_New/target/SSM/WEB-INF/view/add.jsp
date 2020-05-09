<%--
  Created by IntelliJ IDEA.
  User: 26785
  Date: 2020/4/24
  Time: 20:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>添加</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/css/index_work.css"/>
    <script type="text/javascript" src="${pageContext.servletContext.contextPath }/js/jquery-1.8.2.min.js"></script>

</head>
<body>
<form method="post" action="emp">
    <table>
        <tr>
            <th colspan="2">添加员工信息</th>
        </tr>
        <tr>
            <th>ENAME</th>
            <td>
                <input type="text" name="ename">
            </td>
        </tr>
        <tr>
            <th>AGE</th>
            <td>
                <input name="age">
            </td>
        </tr>
        <tr>

            <th>SEX</th>
            <td>
                男:<input type="radio" checked name="sex" value="1">
                女:<input type="radio" name="sex" value="0">
            </td>
        </tr>
        <tr>
            <th>选择部门</th>
            <td>
                 <select name="dept.did">
                     <option>-请选择部门-</option>
                     <c:forEach items="${depts}" var="d">
                         <option value="${d.did }">${d.dname }</option>
                     </c:forEach>
                 </select>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="提交">
            </td>
        </tr>


    </table>
</form>

</body>
</html>
