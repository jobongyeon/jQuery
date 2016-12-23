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
	<!-- 체크된 대상을 배열로 담아보세요 -->
	<!-- var array = new Array(); <<-배열선언 -->
	<!-- array.push(값); 배열에 값 담기-->
	<input type="checkbox" name="checkNumber" value="checkbox1"/>checkbox1
	<input type="checkbox" name="checkNumber" value="checkbox2"/>checkbox2
	<input type="checkbox" name="checkNumber" value="checkbox3"/>checkbox3
	<!-- 체크박스의 체크된 대상은 해제, 해제된 대상은 체크를 해보세요 -->
	<button type="button" id="reCheck">반전</button>
	<br/>
	<!-- 선택된 값을 출력시키고 선택된 대상의 값과 optionType속성 값을 출력시키세요 -->
	<select name="selectCheck">
		<option value="">::선택해 주세요::</option>
		<option value="select1" optionType="select1">select1</option>
		<option value="select2" optionType="select2">select2</option>
		<option value="select3" optionType="select3">select3</option>
	</select>
	<button type="button" id="submitbutton">확인</button>
</body>
</html>