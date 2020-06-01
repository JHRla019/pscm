<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<jsp:include page="section/header.jsp" flush="false" />
<body>
	<jsp:include page="section/nav.jsp" flush="false" />
	<div class="search" style="padding: 1em 0 1em 0;">
		<form>
			<div class="search-part">
				<input id="searchingDate" name="daySearch" type="text"> 
				<svg aria-hidden="true" focusable="false" data-prefix="far" data-icon="calendar-alt"
					  class="svg-inline--fa fa-calendar-alt fa-w-14" role="img" xmlns="http://www.w3.org/2000/svg" 
					  width="24px"; height="16px"; viewBox="0 0 448 512"
					  style="margin: 6px -22.5px; position: fixed;">
					<path fill="currentColor"
					 	   d="M148 288h-40c-6.6 0-12-5.4-12-12v-40c0-6.6 5.4-12 12-12h40c6.6 0 12 5.4 12 12v40c0 6.6-5.4 12-12 12zm108-12v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm-96 96v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm-96 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm192 0v-40c0-6.6-5.4-12-12-12h-40c-6.6 0-12 5.4-12 12v40c0 6.6 5.4 12 12 12h40c6.6 0 12-5.4 12-12zm96-260v352c0 26.5-21.5 48-48 48H48c-26.5 0-48-21.5-48-48V112c0-26.5 21.5-48 48-48h48V12c0-6.6 5.4-12 12-12h40c6.6 0 12 5.4 12 12v52h128V12c0-6.6 5.4-12 12-12h40c6.6 0 12 5.4 12 12v52h48c26.5 0 48 21.5 48 48zm-48 346V160H48v298c0 3.3 2.7 6 6 6h340c3.3 0 6-2.7 6-6z">
					</path>
				</svg>
			</div>
			<div class="search-part">
				<span>프로그램ID</span> <input type="text" name="text-programId">
			</div>
			<div class="search-part">
				<span>메인룰</span> <input type="text" name="text-mainRlue">
			</div>
			<input type="button" value="조회">
		</form>
	</div>
	<div>
		<table>
			<tr>
				<th class="standard">NO</th>
				<th class="standard">메인룰 별칭</th>
				<th class="standard">메인룰 명</th>
				<th class="standard col-program">프로그램 ID</th>
				<th class="total">Total</th>
				<c:forEach var="i" begin="1" end="30">
					<th class="data"><c:out value="${i}" />일</th>
				</c:forEach>
			</tr>
			<tr>
				<td class="standard">1</td>
				<td class="p-left">M0AB11_00002</td>
				<td class="p-left">M0AB11_수불에러MAIL수신관리기준</td>
				<td class="col-program">MOAB11</td>
				<td class="p-right">49</td>
				<c:forEach var="i" begin="1" end="30">
					<td class="p-right">0</td>
				</c:forEach>
			</tr>
		</table>
	</div>
</body>

<script>
window.onload = function () {
	const calendar = flatpickr("#searchingDate", {dateFormat : "Y-m"});
	document.getElementById("searchingDate").value = calendar.formatDate(new Date(), "Y-m");
	navHighlight(document.getElementsByTagName('a')[0]);
}
</script>
</html>

