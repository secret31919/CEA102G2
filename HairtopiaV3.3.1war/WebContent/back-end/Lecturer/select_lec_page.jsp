<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Lecturer :Home</title>
<style>
table#table-1 {
	width: 450px;
	background-color: #CCCCFF;
	margin-top: 5px;
	margin-bottom: 10px;
	border: 3px ridge Gray;
	height: 80px;
	text-align: center;
}

table#table-1 h4 {
	color: red;
	display: block;
	margin-bottom: 1px;
}

h4 {
	color: blue;
	display: inline;
}
</style>
</head>
<body bgcolor='white'>
	<table id="table-1">
		<tr><td><h3>Hairtopia Lecturer: Home</h3><h4>( MVC )</h4></td></tr>
	</table>
	<%-- 錯誤表列 --%>
	<c:if test="${not empty errorMsgs}">
		<font style="color: red">請修正以下錯誤:</font>
		<ul>
			<c:forEach var="message" items="${errorMsgs}">
				<li style="color: red">${message}</li>
			</c:forEach>
		</ul>
	</c:if>


	<ul>
		<li><a href='listAll_lec.jsp'>List</a> all Lecs. <br> <br></li>
		<li>
			<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/lecturer/lecturer.do">
				<b>輸入講師編號:</b> <input type="text" name="lecNo"> <input
					type="hidden" name="action" value="getOne_For_Display"> <input
					type="submit" value="送出">
			</FORM>
		</li>

		<jsp:useBean id="lecSvc" scope="page"
			class="com.lecturer.model.LecturerService" />


		<li>
			<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/lecturer/lecturer.do">
				<b>選擇講師編號:</b> <select size="1" name="lecNo">
					<c:forEach var="lecVO" items="${lecSvc.all}">
						<option value="${lecVO.lecNo}">${lecVO.lecNo}
					</c:forEach>
				</select> <input type="hidden" name="action" value="getOne_For_Display">
				<input type="submit" value="送出">
			</FORM>
		</li>

		<li>
			<FORM METHOD="post" ACTION="<%=request.getContextPath()%>/lecturer/lecturer.do">
				<b>選擇員工姓名:</b> <select size="1" name="lecNo">
					<c:forEach var="lecVO" items="${lecSvc.all}">
						<option value="${lecVO.lecNo}">${lecVO.lecName}
					</c:forEach>
				</select> <input type="hidden" name="action" value="getOne_For_Display">
				<input type="submit" value="送出">
			</FORM>
		</li>
	</ul>

	<h3>員工管理</h3>

	<ul>
		<li><a href='addLec.jsp'>Add</a> a new Lec.</li>
	</ul>

</body>
</html>