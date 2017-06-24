<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR" import="java.util.*"%>
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

	// TEXTAREA 최대값 체크
	function fn_TextAreaInputLimit() {
		var tempText = $("textarea[name='add_task']");
		var tempChar = ""; // TextArea의 문자를 한글자씩 담는다
		var tempChar2 = ""; // 절삭된 문자들을 담기 위한 변수
		var countChar = 0; // 한글자씩 담긴 문자를 카운트 한다
		var tempHangul = 0; // 한글을 카운트 한다
		var maxSize = 30; // 최대값

		// 글자수 바이트 체크를 위한 반복
		for (var i = 0; i < tempText.val().length; i++) {
			tempChar = tempText.val().charAt(i);

			// 한글일 경우 2 추가, 영문일 경우 1 추가
			if (escape(tempChar).length > 4) {
				countChar += 2;
				tempHangul++;
			} else {
				countChar++;
			}
		}

		// 카운트된 문자수가 MAX 값을 초과하게 되면 절삭 수치까지만 출력을 한다.(한글 입력 체크)
		// 내용에 한글이 입력되어 있는 경우 한글에 해당하는 카운트 만큼을 전체 카운트에서 뺀 숫자가 maxSize보다 크면 수행
		if ((countChar - tempHangul) > maxSize) {
			alert("최대 글자수를 초과하였습니다.");

			tempChar2 = tempText.val().substr(0, maxSize - 1);
			tempText.val(tempChar2);
		}
	}
	
	$(function(){
		  $(".list li").hover(function(){
		    $('ul:first',this).show();
		  }, function(){
		    $('ul:first',this).hide();
		  });
		  $(".list>li:has(ul)>a").each( function() {
		    $(this).html( $(this).html());
		  });
		  $(".list ul li:has(ul)")
		    .find("a:first")
		    .append("<p style='float:right;margin:-3px'>&#9656;</p>");
		});
		
		function listcheck(){
		
		}
	
</script>
<title>Insert title here</title>
<%
	Calendar cal = new GregorianCalendar();
	int year = cal.get(Calendar.YEAR);
	int month = cal.get(Calendar.MONTH) + 1;
	int day = cal.get(Calendar.DATE);
%>

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
			</div>
		</div>
		<div class="container">
			<div class="menu">
				<ul class="list">
					<li class="list_item"><a href="#">기본폴더</a>
						<ul>
      				  		<li><a href="#">포함되지않은 그룹1</a></li>
       					 	<li><a href="#">포함되지않은 그룹2</a></li>
       					</ul>
					<li class="list_item"><a href="#">폴더1</a>
						<ul>
      				 		<li><a href="#">폴더1 의 그룹1</a></li>
       						<li><a href="#">폴더1의  그룹2</a></li>
       					</ul>
       				</li>
				</ul>
			</div>
			<div class="content">
				<center>
					<%=year%>/<%=month%>/<%=day%></center>
				<p>
				<table>
					<tr class="input_task">
						<td><input class="add_task_date" id="add_task_date"
							type="date" /></td>
						<td><textarea cols="1" rows="1" class="add_task"
								name="add_task" id="add_task" onkeyup="javascript:fn_TextAreaInputLimit();" placeholder="추가할 내용을 입력하세요"></textarea></td>
						<td><input type="button" class="add_task_btn"
							name="add_task_btn" id="add_task_btn" value="등록" onclick="" /></td>
					</tr>
				</table>
					<p><p>
				<table class="task_list">
					<tr>
						<td><img id="check"class="check" src="css/image/check.png" width="20px" height="20px" onclick="javascript:listcheck();"></td>
						<td><center>일정 체크하자 체크해보자 </center></td>
					</tr>
				</table>
				
			</div>
		</div>
		<div class="footer">copyright</div>
	</div>

</body>
</html>