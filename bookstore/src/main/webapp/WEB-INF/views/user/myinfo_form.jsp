<%@page import="com.bookstore.vo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>


<meta name="google-signin-scope" content="profile email">
<meta name="google-signin-client_id"
	content="
322981684170-9dnf1s7160q944irarrfvk7812a0urni.apps.googleusercontent.com">
<script src="https://apis.google.com/js/platform.js" async defer></script>



<script type="text/javascript"
	src="https://static.nid.naver.com/js/naveridlogin_js_sdk_2.0.0.js"
	charset="utf-8"></script>

<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
	//본 예제에서는 도로명 주소 표기 방식에 대한 법령에 따라, 내려오는 데이터를 조합하여 올바른 주소를 구성하는 방법을 설명합니다.
	function sample4_execDaumPostcode() {
		new daum.Postcode(
				{
					oncomplete : function(data) {
						// 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

						// 도로명 주소의 노출 규칙에 따라 주소를 조합한다.
						// 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
						var fullRoadAddr = data.roadAddress; // 도로명 주소 변수
						var extraRoadAddr = ''; // 도로명 조합형 주소 변수

						// 법정동명이 있을 경우 추가한다. (법정리는 제외)
						// 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
						if (data.bname !== '' && /[동|로|가]$/g.test(data.bname)) {
							extraRoadAddr += data.bname;
						}
						// 건물명이 있고, 공동주택일 경우 추가한다.
						if (data.buildingName !== '' && data.apartment === 'Y') {
							extraRoadAddr += (extraRoadAddr !== '' ? ', '
									+ data.buildingName : data.buildingName);
						}
						// 도로명, 지번 조합형 주소가 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
						if (extraRoadAddr !== '') {
							extraRoadAddr = ' (' + extraRoadAddr + ')';
						}
						// 도로명, 지번 주소의 유무에 따라 해당 조합형 주소를 추가한다.
						if (fullRoadAddr !== '') {
							fullRoadAddr += extraRoadAddr;
						}

						// 우편번호와 주소 정보를 해당 필드에 넣는다.
						document.getElementById('member_postcode').value = data.zonecode; //5자리 새우편번호 사용
						document.getElementById('member_address').value = fullRoadAddr;
						//document.getElementById('sample4_jibunAddress').value = data.jibunAddress;

						// 사용자가 '선택 안함'을 클릭한 경우, 예상 주소라는 표시를 해준다.
						if (data.autoRoadAddress) {
							//예상되는 도로명 주소에 조합형 주소를 추가한다.
							var expRoadAddr = data.autoRoadAddress
									+ extraRoadAddr;
							document.getElementById('guide').innerHTML = '(예상 도로명 주소 : '
									+ expRoadAddr + ')';

						}
						/*  else if(data.autoJibunAddress) {
						     var expJibunAddr = data.autoJibunAddress;
						     document.getElementById('guide').innerHTML = '(예상 지번 주소 : ' + expJibunAddr + ')';

						 } else {
						     document.getElementById('guide').innerHTML = '';
						 } */
					}
				}).open();
	}
</script>

<style type="text/css">
body {
	padding-top: 4.2rem;
	padding-bottom: 4.2rem;
	background: rgba(0, 0, 0, 0.76);
}

a {
	text-decoration: none !important;
}

h1, h2, h3 {
	font-family: 'Kaushan Script', cursive;
}

.myform {
	position: relative;
	display: -ms-flexbox;
	display: flex;
	padding: 1rem;
	-ms-flex-direction: column;
	flex-direction: column;
	width: 100%;
	pointer-events: auto;
	background-color: #fff;
	background-clip: padding-box;
	border: 1px solid rgba(0, 0, 0, .2);
	border-radius: 1.1rem;
	outline: 0;
	max-width: 500px;
}

.tx-tfm {
	text-transform: uppercase;
}

.mybtn {
	border-radius: 50px;
}

.login-or {
	position: relative;
	color: #aaa;
	margin-top: 10px;
	margin-bottom: 10px;
	padding-top: 10px;
	padding-bottom: 10px;
}

.span-or {
	display: block;
	position: absolute;
	left: 50%;
	top: -2px;
	margin-left: -25px;
	background-color: #fff;
	width: 50px;
	text-align: center;
}

.hr-or {
	height: 1px;
	margin-top: 0px !important;
	margin-bottom: 0px !important;
}

.google {
	color: #666;
	width: 100%;
	height: 40px;
	text-align: center;
	outline: none;
	border: 1px solid lightgrey;
}

form .error {
	color: #ff0000;
}

#second {
	display: none;
}
</style>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->

<script
	src="https://cdn.jsdelivr.net/jquery.validation/1.15.1/jquery.validate.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Kaushan+Script"
	rel="stylesheet">
<link
	href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
	rel="stylesheet"
	integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN"
	crossorigin="anonymous">

</head>



<style>/* Base CSS */
.alignleft {
	float: left;
	margin-right: 15px;
}

.alignright {
	float: right;
	margin-left: 15px;
}

.aligncenter {
	display: block;
	margin: 0 auto 15px;
}

a:focus {
	outline: 0 solid
}

img {
	max-width: 100%;
	height: auto;
}

.fix {
	overflow: hidden
}

h1, h2, h3, h4, h5, h6 {
	margin: 0 0 15px;
	font-weight: 700;
}

a {
	-moz-transition: 0.3s;
	-o-transition: 0.3s;
	-webkit-transition: 0.3s;
	transition: 0.3s;
	color: #333;
}

a:hover {
	text-decoration: none
}
#pswd_info {
	background: #dfdfdf none repeat scroll 0 0;
	color: #fff;
	left: 447px;
	position: absolute;
	top: 115px;
}
#pswd_info h4 {
	background: black none repeat scroll 0 0;
	display: block;
	font-size: 14px;
	letter-spacing: 0;
	padding: 17px 0;
	text-align: center;
	text-transform: uppercase;
}
#pswd_info ul {
	list-style: outside none none;
}

#pswd_info ul li {
	padding: 10px 45px;
}

.valid {
	background: rgba(0, 0, 0, 0)
		url("https://s19.postimg.org/vq43s2wib/valid.png") no-repeat scroll
		2px 6px;
	color: green;
	line-height: 21px;
	padding-left: 22px;
}

.invalid {
	background: rgba(0, 0, 0, 0)
		url("https://s19.postimg.org/olmaj1p8z/invalid.png") no-repeat scroll
		2px 6px;
	color: red;
	line-height: 21px;
	padding-left: 22px;
}

#pswd_info::before {
	background: #dfdfdf none repeat scroll 0 0;
	content: "";
	height: 25px;
	left: -13px;
	margin-top: -12.5px;
	position: absolute;
	top: 50%;
	transform: rotate(45deg);
	width: 25px;
}

#pswd_info {
	display: none;
}
</style>


<script>
	function showPopup() {
		window.open("/bookSell/retirement.member", "a",
				"width=850, height=370, left=100, top=50");
	}
</script>


<%
	UserVO vo = (UserVO) request.getAttribute("myInfo");
%>
<body>
	<div class="container">
		<div class="row">
			<div class="col-md-5 mx-auto">
				<div id="first">
					<div class="myform form ">
						<div class="logo mb-3">
							<div class="col-md-12 text-center">
								<h1>나의 정보</h1>
							</div>
						</div>
						<form id="form" name="form"  action="updateAction.member" method="post">
							<div class="form-group">
								<label for="exampleInputEmail1">ID</label>

								<div class="col-md-4">
									<div class="aro-pswd_info">
										<div id="pswd_info">
											<h4>비밀번호 작성시 참조하세요</h4>
											<ul>
												<li id="letter" class="invalid"><strong>1자리
														이상의 문자</strong></li>
												<li id="capital" class="invalid"><strong>1자리
														이상의 대문자</strong></li>
												<li id="number" class="invalid"><strong>1자리
														이상의 숫자</strong></li>
												<li id="length" class="invalid"><strong>합8자리
														글자 이상</strong></li>
												<li id="space" class="invalid"><strong> 사용
														[~,!,@,#,$,%,^,&amp;,*,-,=,.,;,']</strong></li>
											</ul>
										</div>
									</div>
								</div>
								<input type="text" name="member_id" class="form-control "
									id="member_id" aria-describedby="emailHelp" readonly="readonly"
									value="">


							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">이름</label> <input type="text"
									name="member_name" class="form-control" id="member_name"
									aria-describedby="emailHelp" value="">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">휴대폰 번호</label> <input
									type="text" name="member_phone" class="form-control"
									id="member_phone" aria-describedby="emailHelp"
									value="">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Password</label> <input
									type="password" name="member_password" id="member_password"
									class="form-control" aria-describedby="emailHelp"
									value="">
							</div>

							<div class="col-md-12 text-center mb-3">
								<button type="button"
									class=" btn btn-block mybtn btn-primary tx-tfm"
									onclick="sample4_execDaumPostcode()">우편번호 찾기</button>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">우편번호</label> <input type="text"
									name="member_postcode" id="member_postcode"
									class="form-control" aria-describedby="emailHelp"
									value="">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">도로명주소</label> <input type="text"
									name="member_address" id="member_address" class="form-control"
									aria-describedby="emailHelp"
									value="">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">상세주소</label> <input type="text"
									name="member_detailed_address" id="member_detailed_address"
									class="form-control" aria-describedby="emailHelp"
									value="">
							</div>

							<div class="form-group">
							<p class="text-center">
								<a href="<%=application.getContextPath()%>/index.jsp" onclick="self.close();">화면 닫기</a>
								</p>
							</div>

							<div class="col-md-12 text-center mb-3">
							<input type="submit"
								class=" btn btn-block mybtn btn-primary tx-tfm" value="회원수정"></div>
								</form>			
					<div class="col-md-12 text-center mb-3">
						<button type="submit" onclick="location='/bookSell/retirement.member'"
							class=" btn btn-block mybtn btn-primary tx-tfm"
							>회원탈퇴</button>
					</div>


				</div>
			</div>

		</div>
	</div>


</body>

<script type="text/javascript">
	$(document).ready(function() {

		$('input[type=password]').keyup(function() {
			var pswd = $(this).val();

			//validate the length
			if (pswd.length < 8) {
				$('#length').removeClass('valid').addClass('invalid');
			} else {
				$('#length').removeClass('invalid').addClass('valid');
			}

			//validate letter
			if (pswd.match(/[A-z]/)) {
				$('#letter').removeClass('invalid').addClass('valid');
			} else {
				$('#letter').removeClass('valid').addClass('invalid');
			}

			//validate capital letter
			if (pswd.match(/[A-Z]/)) {
				$('#capital').removeClass('invalid').addClass('valid');
			} else {
				$('#capital').removeClass('valid').addClass('invalid');
			}

			//validate number
			if (pswd.match(/\d/)) {
				$('#number').removeClass('invalid').addClass('valid');
			} else {
				$('#number').removeClass('valid').addClass('invalid');
			}

			//validate space
			if (pswd.match(/[^a-zA-Z0-9\-\/]/)) {
				$('#space').removeClass('invalid').addClass('valid');
			} else {
				$('#space').removeClass('valid').addClass('invalid');
			}

		}).focus(function() {
			$('#pswd_info').show();
		}).blur(function() {
			$('#pswd_info').hide();
		});

	});
</script>


</html>