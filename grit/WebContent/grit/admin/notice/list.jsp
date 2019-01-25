<%@page import="com.grit.notice.model.NoticeVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>list.jsp</title>
<style>
tbody td{
	border:1px solid gray;
}
</style>
</head>
<body>
<div style="width:50%; margin-left:25%;">
	<table style="width:100%; border:1px solid gray;">
		<colgroup>
			<col style="width:5%;">
			<col style="width:55%;">
			<col style="width:15%;">
			<col style="width:15%;">
			<col style="width:10%;">
		</colgroup>
		<thead>
			<tr style="text-align:center; background-color:gray;">
				<th>번호</th>
				<th>공지사항</th>
				<th>등록일</th>
				<th>등록자</th>
				<th>상태</th>
			</tr>
		</thead>
		<tbody>
			
			<c:forEach var="vo" items="${list }" >
				<tr style="text-align:center;">
					<td><a href="<c:url value='/grit/admin/notice/detail.do?notiNo=${vo.notiNo }'/>">${vo.notiNo}</a></td>
					<td><a href="<c:url value='/grit/admin/notice/detail.do?notiNo=${vo.notiNo }'/>">${vo.notiTitle }</a></td>
					<td>
						<fmt:formatDate value="${vo.notiRegdate }" pattern="yyyy-MM-dd E요일"/>
					</td>
					<td>${vo.adminId }</td>
					<td><label>상태</label></td>
				</tr>
			</c:forEach>
		</tbody>
	</table>
</div>
</body>
</html>