<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script type="text/javascript">
	$(document).on('click','.add',function(){
		var getHtml = $('#formgorupcopy').html();
		$('#addhtml').append(getHtml);
	});
	
	$(document).on('click','.del',function(){
		$(this).parents().remove(); 
	});
</script>
</head>
<body>
	<div id="addhtml">
		<div class="formgroup">
			<input type="text" name="memberName" />
			<input type="text" name="age" />
			<button type="button" class="add"> 추가 </button>
			<button type="button" class="del"> 삭제 </button>
		</div>
	</div>
	
	<div id="formgorupcopy" style="display:none">
		<div class="formgorup">
			<input type="text" name="memberName" />
			<input type="text" name="age" />
			<button type="button" class="add"> 추가 </button>
			<button type="button" class="del"> 삭제 </button>
		</div>
	</div>
</body>
</html>