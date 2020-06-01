<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="section/header.jsp" flush="false"/>
<body>
	<jsp:include page="section/nav.jsp" flush="false"/>
	<div style="width:56%">
		<div class="search" style="padding : 1em 0 1em 0;">
			<form>
				<div class="search-part">
					<select id="viewClsfc" style="width:auto">
						<option value="count" selected="selected">호출 횟수</option>
						<option value="error">에러 횟수</option>
					</select>
					<input type="text" id="count" class="num" name="count">
					<span>이상</span>
				</div>
				<div class="search-part">
					<span>실행 시간</span>
					<input type="text" id="runTime" class="num" name="runTime">
				</div>
				<div class="search-part">
					<span>프로그램ID</span> 
					<input type="text" id="text-programId" name="text-programId">
				</div>
				<div class="search-part">
					<span>메인룰</span>
					<input type="text" id="text-mainRlue" name="text-mainRlue">
				</div>
				<input type="button" value="조회">
			</form>
		</div>
		<div>
			<table>
				<tr>
					<th class="standard" rowspan="2">메인룰 별칭</th>
					<th class="standard" rowspan="2">메인룰 명</th>
					<th class="standard" rowspan="2">프로그램 ID</th>
					<th class="total" rowspan="2">룰호출</th>
					<th class="total" colspan="2">룰호출 결과별 횟수</th>
					<th class="total" colspan="2" style="color:#0100FF">실행시간(sec)</th>
				</tr>
				<tr>
					<th class="data">OK</th>
					<th class="data">ERROR</th>
					<th class="data">최대시간</th>
					<th class="data">평균시간</th>
				</tr>
				<tr>
					<td class="p-left">N1AB01_00007</td>		
					<td class="p-left">N1AB01_적정영Ladle관리대수</td>
					<td>N1AB01</td>		
					<td>0</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
					<td>0</td>
				</tr>
			</table>
		</div>
	</div>
</body>

<script>
window.onload = function() {
	navHighlight(document.getElementsByTagName('a')[2]);
	numCheck();
}
</script>


</html>

