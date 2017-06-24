<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<link href="css/layout.css" rel="stylesheet" type="text/css">
<script type="text/javascript" charset="utf-8" src="join.js">
/* 
	function confirmJoin() {
		if (documet.join.email.value == "") {
			alert("email 입력해주세요");
			document.join.email.focus();
			return false;
		}
		if (document.join.password.value == "") {
			alert("passwd");
			document.join.password.focus();
			return false;
		}
		if (document.join.password2.value == "") {
			alert("passwd2");
			document.join.password2.focus();
			return false;
		}
		if (document.join.password.value != document.join.password2.value) {
			alert("password != password2");
			document.join.passwd2.focus();
			return false;
		}
		if (document.join.nickname.value == "") {
			alert("nickname");
			document.join.nickname.focus();
			return false;
		}

		document.join.submit();
	} */
</script>
<title>회원가입 페이지</title>
</head>
<body>
<body>
	<div class="frame">
		<div class="header">
			<div class="logo"><a href=""><img class="logo_img" src="dotFiveImg.png"></a>dotfive</div>
		</div>
		<div class="tab">
			<div class="tab_table">
				<table>
					<tr>
						<td class="table_task">Task</td>
						<td class="table_card">Card</td>
						<td class="table_join">join</td>
						<td class="table_setting">setting</td>
					</tr>
				</table>
			</div>
		</div>
		<div class="container">
			<div class="menu">
				<ul class="list">
					<li class="list_item"><a href="">기본폴더</a></li>
					<li class="list_item"><a href="">폴더1</a></li>
				</ul>
			</div>
			<div class="content">
				<div class="table">
					<form action="join_action.jsp" method="post" name="join">

						<table class="join_table">
							<tr>
								<td>아이디(email)</td>
								<td><input type="text" id="email" name="email"></td>
							</tr>
							<tr>
								<td>패스워드</td>
								<td><input type="password" id="password" name="password"></td>
							</tr>
							<tr>
								<td>패스워드확인</td>
								<td><input type="password" id="password2" name="password2"></td>
							</tr>

							<tr>
								<td>닉네임</td>
								<td><input type="text" id="nickname" name="nickname"></td>
							</tr>
							<tr>
								<td colspan="2"><input type="button"
									onclick="confirmJoin();" value="가입하기"></td>
							</tr>
						</table>
					</form>
				</div>
			</div>
		</div>
		<div class="footer">copyright</div>
	</div>

</body>
</body>
</html>