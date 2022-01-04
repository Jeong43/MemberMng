<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberList.jsp</title>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- jQuery -->
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">


<script type="text/javascript">
	$(function()
	{
		// 수정 버튼 클릭 시
		$(".updateBtn").click(function()
		{
			//alert("updateBtn Test");
			$(location).attr("href", "updateform.action?mid=" + $(this).val());

		});

		// 삭제 버튼 클릭 시
		$(".deleteBtn").click(function()
		{
			//alert("deleteBtn Test");
			if(confirm("현재 선택한 데이터를 정말 삭제하시겠습니까?"))
				$(location).attr("href", "delete.action?mid=" + $(this).val());
		});
		
		// 검색 버튼 클릭 시
		$(".searchBtn").click(function()
		{
			//alert("searchBtn Test");
			
			if($("#searchType").val()== "" || $("#searchWord").val() == "")
			{
				$("#err").html("검색 분류와 검색어를 입력해주시기 바랍니다.");
				$("#err").css("display", "inline");
				return;
			}


			$("#searchForm").submit();
			
		});

	});
</script>

</head>
<body>

	<!-----------------------------------------------------------------------
  MemberList.jsp
  - 직원 리스트 출력 페이지
  - 직원 등록, 수정, 삭제 버튼 → 해당 동작에 접근 가능
  - 직원 검색
------------------------------------------------------------------------>

	<div>

		<!-- 콘텐츠 영역 -->
		<div id="content">

			<div>
				<div>
					<h4>직원 등록</h4>
					<input type="button" value="직원 정보 등록" class="btn" onclick="location.href='insertform.action'" />
				</div>
				<br>
				<div>
					<h4>직원 검색</h4>
					<form method="post" action="search.action" id="searchForm">
						<select name="searchType" id="searchType">
							<option value="">--선택--</option>
							<option value="mid">직원번호</option>
							<option value="position">직급</option>
							<option value="name">이름</option>
							<option value="tel">전화번호</option>
							<option value="email">이메일</option>
						</select>
						<input type="text" placeholder="Search" name="searchWord" id="searchWord" />
						<button class="btn searchBtn" type="button">
							<span class="glyphicon glyphicon-search"> </span>
						</button>
					</form>
					<span id="err" style="color: red; font-weight: bold; display: none;"></span>
					<br>
					<br>
				</div>
			</div>

			<div>
				<h4>직원 리스트</h4>
			</div>
			<!-- MID, POSITION, NAME, TEL, EMAIL -->
			<table id="members" class="table">
				<tr>
					<th>직원번호</th>
					<th>직급</th>
					<th>이름</th>
					<th>전화번호</th>
					<th>이메일</th>
					<th>수정</th>
					<th>삭제</th>
				</tr>

				<c:forEach var="member" items="${list }">
					<tr>
						<td><fmt:formatNumber var="no" minIntegerDigits="3" value="${member.mid }" type="number" />${no}</td>
						<td>${member.position }</td>
						<td>${member.name }</td>
						<td>${member.tel }</td>
						<td>${member.email }</td>
						<td><button type="button" class="btn updateBtn" value="${member.mid }">수정</button></td>
						<td><button type="button" class="btn deleteBtn" value="${member.mid }">삭제</button></td>
					</tr>
				</c:forEach>
			</table>
		</div>

	</div>

</body>
</html>