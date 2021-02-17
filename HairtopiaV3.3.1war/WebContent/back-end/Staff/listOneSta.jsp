<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.staff.model.*"%>
<%@ page import="java.util.*"%>
<%-- 此頁暫練習採用 Script 的寫法取值 --%>

<%
	StaffVO staVO = (StaffVO) request.getAttribute("staVO"); //EmpServlet.java(Concroller), 存入req的empVO物件
%>
<html>
<head>
<style>
img {
	width: 150px;
}
</style>

<title>講師資料 - listOneSta.jsp</title>
</head>
<body bgcolor='white'>

	
	<table id="table-1">
		<tr>
			<td>
				<h3>員工資料 - ListOneSta.jsp</h3>
				<h4>
					<a href="<%=request.getContextPath()%>/back-end/Staff/select_sta_page.jsp">
					<img src="<%=request.getContextPath()%>/resource/images//back1.gif"
						width="100" height="32" border="0">回首頁</a>
				</h4>
			</td>
		</tr>
	</table>

	<table>
		<tr>
			<th>員工編號</th>
			<th>員工姓名</th>
			<th>員工帳號</th>
			<th>員工密碼</th>
			
				
		</tr>
		<tr> 
			<td>${staVO.staNo}</td>
			<td>${staVO.staName}</td>
			<td>${staVO.staAcct}</td>
			<td>${staVO.staPswd}</td>
		</tr>


	</table>

</body>
</html>