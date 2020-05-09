<%--
  Created by IntelliJ IDEA.
  User: 26785
  Date: 2020/4/25
  Time: 11:57
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>修改员工信息</title>
</head>
<link rel="stylesheet" href="${pageContext.servletContext.contextPath }/css/index_work.css" />
<body>
<form action="${pageContext.servletContext.contextPath }/emp" method="post">
    <input type="hidden" name="eid" value="${emp.eid }" />
    <input type="hidden" name="_method" value="PUT" />
    <table>
        <tr>
            <th colspan="2">修改员工信息</th>
        </tr>
        <tr>
            <td>LASTNAME</td>
            <td>
                <input type="text" name="ename" value="${emp.ename }" />
            </td>
        </tr>
        <tr>
            <td>EMAIL</td>
            <td>
                <input type="text" name="age" value="${emp.age }" />
            </td>
        </tr>
        <tr>
            <td>GENDER</td>
            <td>
                <input type="radio" name="sex" value="1" ${emp.sex == 1?'checked':'' } />男
                <input type="radio" name="sex" value="0" ${emp.sex == 0?'checked':'' } />女
                <%-- <input type="radio" name="gender" value="1" <c:if test="${emp.gender == 1 }">checked="checked"</c:if> />男
                <input type="radio" name="gender" value="0" <c:if test="${emp.gender == 0 }">checked="checked"</c:if> />女 --%>
            </td>
        </tr>
        <tr>
            <td>DEPARTMENT</td>
            <td>
                <select name="dept.did">
                    <option>-SELECT DEPARTMENT-</option>
                    <c:forEach items="${depts }" var="dept">
                        <option value="${dept.id }" ${dept.did == emp.dept.id?'selected':'' }>${dept.dname }</option>
                    </c:forEach>
                </select>
            </td>
        </tr>
        <tr>
            <td colspan="2">
                <input type="submit" value="UPDATE" />
            </td>
        </tr>
    </table>
</form>

</body>
</html>
