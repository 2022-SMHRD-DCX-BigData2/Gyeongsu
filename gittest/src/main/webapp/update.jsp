<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="UTF-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="assets/css/main.css" />		
	</head>
	<body style="text-align: center;">

		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Menu -->
					<nav id="Update">	
						<ul class="actions vertical">
							<li><h5>회원정보수정</h5></li>
								<form action="UpdateCon" method="post">
									<li>접속한 ID : ${loginMember.id}</li>
									<li>비밀번호 변경 : <input type="password" name="pw" placeholder="PW를 입력하세요" style="width: 500px; margin: 0 auto;"></li>
									<li>이름 변경 : <input type="text" name="name" value="${loginMember.name}" style="width: 500px; margin: 0 auto;"></li>
									<li>MBTI 변경 : <input type="text" name="mbti" value="${loginMember.mbti}" style="width: 500px; margin: 0 auto;"></li>
									<li>키워드1 변경 : <input type="text" name="key_no1" value="${loginMember.key_no1}" style="width: 500px; margin: 0 auto;"></li>
									<li>키워드2 변경 : <input type="text" name="key_no2" value="${loginMember.key_no2}" style="width: 500px; margin: 0 auto;"></li>
									<li>키워드3 변경 : <input type="text" name="key_no3" value="${loginMember.key_no3}" style="width: 500px; margin: 0 auto;"></li>
									<li><input type="submit" value="회원정보수정" class="button fit" style="width: 500px; margin: 0 auto;"></li>
								</form>
								<!-- submit에서 value는 보여줄 값 
								다른 input태그에서 value는 초기 값
								form태그에 같이 값을 넘기고 싶은 경우에는 hidden으로 해서 보내기
								-->
						</ul>
					</nav>			
			</div>
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
	</body>
</html>

