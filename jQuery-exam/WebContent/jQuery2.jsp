<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title></title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">
$('#submitbutton').click(function(){
	$('select[name="selectCheck"]').children().each(function(){
		if($(this).prop('selected')){
			console.log($(this).attr('optionType'));
			console.log($(this).attr('value'));
		}
	});
});
$('#reCheck').click(function(){
	$('input[name="checkNumber"]').each(function(){
		if($(this).prop('checked')){
			$(this).prop('checked' ,false);
		} else {
			$(this).prop('checked' ,true);
		}
	});
});
</script>
</head>
<body>
	<!-- üũ�� ����� �迭�� ��ƺ����� -->
	<!-- var array = new Array(); <<-�迭���� -->
	<!-- array.push(��); �迭�� �� ���-->
	<input type="checkbox" name="checkNumber" value="checkbox1"/>checkbox1
	<input type="checkbox" name="checkNumber" value="checkbox2"/>checkbox2
	<input type="checkbox" name="checkNumber" value="checkbox3"/>checkbox3
	<!-- üũ�ڽ��� üũ�� ����� ����, ������ ����� üũ�� �غ����� -->
	<button type="button" id="reCheck">����</button>
	<br/>
	<!-- ���õ� ���� ��½�Ű�� ���õ� ����� ���� optionType�Ӽ� ���� ��½�Ű���� -->
	<select name="selectCheck">
		<option value="">::������ �ּ���::</option>
		<option value="select1" optionType="select1">select1</option>
		<option value="select2" optionType="select2">select2</option>
		<option value="select3" optionType="select3">select3</option>
	</select>
	<button type="button" id="submitbutton">Ȯ��</button>
</body>
</html>