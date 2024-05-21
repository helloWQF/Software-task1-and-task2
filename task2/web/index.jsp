<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>西北师大计工学院</title>
</head>
<body>
<form style="padding-bottom: 10px;">
    <fieldset>
        <legend>搜索</legend>
        名称：<input type="text" name="name" id="">
        <input type="submit" value="搜索">
    </fieldset>
</form>
<form action="add-students" method="post" enctype="multipart/form-data">
    <label for="fileInput" class="btn btn-secondary mb-

2" data-bs-toggle="modal" style="display: inline-block; margin-left: 20px;">
        选择文件上传
        <input id="fileInput" name="file" type="file" style="display: none;" accept=".xls,.xlsx">
    </label>
    <button type="submit" class="btn btn-primary">提交</button>
</form>

<table border="1" style="width: 100%;">
    <tr style="text-align: center; background-color:#ffaa00;">
        <th>编号</th>
        <th>名称</th>
        <th>类型</th>
        <th>上传时间</th>
        <th>操作</th>
    </tr>
    <c:forEach items="${list}" var="Source">
        <tr>
            <td>${Source.id }</td>
            <td>${Source.name }</td>
            <td>${Source.type }</td>
            <td>${Source.uploadDate }</td>
            <td>
                <a href="<c:url value="/SourceServlet?action=del&id=${Source.id}"/>"
                   onclick="return confirm('您确定删除该人员信息')">删除</a>
                <a href="<c:url value="/SourceServlet?action=Modifysel&id=${Source.id}"/>">修改</a>
            </td>
        </tr>
    </c:forEach>
</table>
<div style="float: right;">
    <a href="add.jsp">新增</a>
    <span>共
			<c:out value="${list.size()}"/>
			条数据</span>
</div>
</body>
</html>