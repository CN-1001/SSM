<%--
  Created by IntelliJ IDEA.
  User: 26785
  Date: 2020/4/24
  Time: 10:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" isELIgnored="false" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>员工信息</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="${pageContext.servletContext.contextPath }/css/index_work.css"/>
    <script type="text/javascript" src="${pageContext.servletContext.contextPath }/js/jquery-1.8.2.min.js"></script>
    <script>
        $(function () {
            $(".del").click(function () {
                if (confirm("确定要删除吗！")){
                    // $("from").attr("action",this.href).submit();
                    $("#form1").attr("action",$(this).attr("href")).submit();
                    return  false;
                }
                return  false;
            });
            $("#selectAll").click(function () {
                $(".check1").attr("checked",this.checked);
            });
            $("#deleteMorre").click(function () {
                $("#form2").attr("action",$(this).attr("href")).submit();
                return false;
            });
            return false;


        });

    </script>
</head>
<body>

<form id="form2" action="emps" method="post">
    <table>
        <tr>
            <th>
                <INPUT TYPE="checkbox" ID="selectAll">
                <input type="hidden" name="_method" value="DELETE">
            </th>
            <th>EID</th>
            <th>ENAME</th>
            <th>AGE</th>
            <th>SEX</th>
            <th>DEPENAME</th>
            <th colspan="2">OPTION(<a  href="emp">ADD</a>)</th>
        </tr>
        <c:forEach items="${empList}" var="emp">
            <tr>
                <td>
                    <INPUT class="check1" name="eidss" TYPE="checkbox" checked="checked"  ID="${emp.eid}" value="${emp.eid}">
                </td>
                <td>${emp.eid}</td>
                <td>${emp.ename}</td>
                <td>${emp.age}</td>
                <td>${emp.sex==0?'女':'男'}</td>
                <td>${emp.dept.dname}</td>
                <td><a class="del" href="${pageContext.servletContext.contextPath }/emp/${emp.eid}">删除</a></td>
                <td><a href="emp/${emp.eid}">修改</a></td>
            </tr>
        </c:forEach>
        <tr>
            <td colspan="2"><a id="deleteMorre" href="${pageContext.servletContext.contextPath }/emps">批量删除</a></td>
            <td colspan="6">${page}</td>
        </tr>

    </table>

</form>
<form id="form1" method="post">
    <input type="hidden" name="_method" value="DELETE">
</form>

</body>
</html>
