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

	// TEXTAREA �ִ밪 üũ
	function fn_TextAreaInputLimit() {
		var tempText = $("textarea[name='add_task']");
		var tempChar = ""; // TextArea�� ���ڸ� �ѱ��ھ� ��´�
		var tempChar2 = ""; // ����� ���ڵ��� ��� ���� ����
		var countChar = 0; // �ѱ��ھ� ��� ���ڸ� ī��Ʈ �Ѵ�
		var tempHangul = 0; // �ѱ��� ī��Ʈ �Ѵ�
		var maxSize = 30; // �ִ밪

		// ���ڼ� ����Ʈ üũ�� ���� �ݺ�
		for (var i = 0; i < tempText.val().length; i++) {
			tempChar = tempText.val().charAt(i);

			// �ѱ��� ��� 2 �߰�, ������ ��� 1 �߰�
			if (escape(tempChar).length > 4) {
				countChar += 2;
				tempHangul++;
			} else {
				countChar++;
			}
		}

		// ī��Ʈ�� ���ڼ��� MAX ���� �ʰ��ϰ� �Ǹ� ���� ��ġ������ ����� �Ѵ�.(�ѱ� �Է� üũ)
		// ���뿡 �ѱ��� �ԷµǾ� �ִ� ��� �ѱۿ� �ش��ϴ� ī��Ʈ ��ŭ�� ��ü ī��Ʈ���� �� ���ڰ� maxSize���� ũ�� ����
		if ((countChar - tempHangul) > maxSize) {
			alert("�ִ� ���ڼ��� �ʰ��Ͽ����ϴ�.");

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
						<img class="table_img_task" src="css/image/task.png" title="task ����"></a></td>
						<td class="table_card"><a><img class="table_img_card"
								src="css/image/card.png" title="card ����"></a></td>
						<td class="table_join"><a><img class="table_img_join"
								src="css/image/task.png" title="�����ϱ�"></a></td>
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
					<li class="list_item"><a href="#">�⺻����</a>
						<ul>
      				  		<li><a href="#">���Ե������� �׷�1</a></li>
       					 	<li><a href="#">���Ե������� �׷�2</a></li>
       					</ul>
					<li class="list_item"><a href="#">����1</a>
						<ul>
      				 		<li><a href="#">����1 �� �׷�1</a></li>
       						<li><a href="#">����1��  �׷�2</a></li>
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
								name="add_task" id="add_task" onkeyup="javascript:fn_TextAreaInputLimit();" placeholder="�߰��� ������ �Է��ϼ���"></textarea></td>
						<td><input type="button" class="add_task_btn"
							name="add_task_btn" id="add_task_btn" value="���" onclick="" /></td>
					</tr>
				</table>
					<p><p>
				<table class="task_list">
					<tr>
						<td><img id="check"class="check" src="css/image/check.png" width="20px" height="20px" onclick="javascript:listcheck();"></td>
						<td><center>���� üũ���� üũ�غ��� </center></td>
					</tr>
				</table>
				
			</div>
		</div>
		<div class="footer">copyright</div>
	</div>

</body>
</html>