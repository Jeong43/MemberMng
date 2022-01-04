<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	request.setCharacterEncoding("UTF-8");
String cp = request.getContextPath();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>MemberUpdateForm.jsp</title>

<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">

<!-- jQuery -->
<script type="text/javascript" src="http://code.jquery.com/jquery.min.js"></script>

<!-- 합쳐지고 최소화된 최신 자바스크립트 -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<!-- 부가적인 테마 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">


<script type="text/javascript">
	$(document).ready(function()
	{
		// 직원 수정 버튼이 클릭되었을 때
		$("#submitBtn").click(function()
		{
			if($("#mid").val() == "" || $("#position").val() == "" || $("#name").val() == "" || $("#tel").val() == "" || $("#email").val() == "")
			{
				$("#err").html("필수 입력 사항이 누락되었습니다.");
				$("#err").css("display", "inline");
				return;
			}

			$("#memberForm").submit();
		});
	});
	
</script>

</head>
<body>

<!-----------------------------
  MemberUpdateForm.jsp
  - 직원 데이터 수정 페이지
------------------------------>

	<div>
		<div id="content">
			<h1>[ 직원 정보 수정 ]</h1>
			<hr />
			<form action="update.action" method="post" id="memberForm">
				<input type="hidden" name="beforeMid" value="${member.mid }">
				<table>
					<tr>
						<th>직원번호</th>
						<td><input type="text" id="mid" name="mid" value="${member.mid }" /></td>
					</tr>
					<tr>
						<th>직급</th>
						<td><input type="text" id="position" name="position" value="${member.position }" /></td>
					</tr>
					<tr>
						<th>이름</th>
						<td><input type="text" id="name" name="name" value="${member.name }" /></td>
					</tr>
					<tr>
						<th>전화번호</th>
						<td><input type="tel" id="tel" name="tel" value="${member.tel }"></td>
					</tr>
					<tr>
						<th>이메일</th>
						<td><input type="email" id="email" name="email" value="${member.email }"></td>
					</tr>
					<tr>
						<td colspan="2" align="center"><br /> <br />
							<button type="button" id="submitBtn" class="btn" style="width: 40%">직원 수정</button>
							<button type="button" id="listBtn" class="btn" style="width: 40%" onclick="location.href='list.action'">직원 리스트</button> 
							<br> <br> 
							<span id="err" style="color: red; font-weight: bold; display: none;"></span></td>
					</tr>
				</table>
			</form>
		</div>
	</div>

</body>
</html>