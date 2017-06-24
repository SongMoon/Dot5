<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link href="css/layout.css" rel="stylesheet" type="text/css">
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<script type="text/JavaScript" src="css/js/jquery-3.2.1.min.js"></script>

<script type="text/javascript">

	// Tooltip only Text
	$('.table_img_task').mouseover(function() {
	    $(this).children(".description").show();
	}).mouseout(function() {
	    $(this).children(".description").hide();
	});
</script>
<title>Insert title here</title>
</head>
<body>
	<div class="frame">
		<div class="header">
			<div class="logo"><a href="layout1.jsp">dotfive</a></div>
		</div>
		<div class="tab">
			<div class="tab_table">
				<table>
					<tr>
						<td class="table_task"><a href="Task.jsp">
						<img class="table_img_task" src="css/image/task.png" title="task 보기"></a></td>
						<td class="table_card"><a><img class="table_img_card"
								src="css/image/card.png" title="card 보기"></a></td>
						<td class="table_join"><a><img class="table_img_join"
								src="css/image/task.png" title="가입하기"></a></td>
						<td class="table_setting"><a><img
								class="table_img_setting" src="css/image/setting.png"
								title="setting"></a></td>
					</tr>
				</table>
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
			<div class="content"><center>contents</center></div>
		</div>
		<div class="footer">copyright</div>
	</div>
	
</body>
</html>