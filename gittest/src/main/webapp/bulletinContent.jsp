<%@page import="project.domain.UserMember"%>
<%@page import="project.domain.ActivityMember"%>
<%@page import="project.domain.ReviewMember"%>
<%@page import="java.util.List"%>
<%@page import="project.domain.ActivityMemberDAO"%>
<%@page import="project.domain.ReviewMemberDAO"%>
<%@ page import="java.util.Date" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	UserMember loginMember = (UserMember)session.getAttribute("loginMember");
	ActivityMember activityMember = (ActivityMember)session.getAttribute("activityMember");
	ActivityMember loginActivity = (ActivityMember)session.getAttribute("loginActivity");
	ReviewMember loginReview = (ReviewMember)session.getAttribute("loginReview");
	ActivityMemberDAO dao = new ActivityMemberDAO();
	List<ActivityMember> actmemberList = dao.selectAllact();
	ReviewMemberDAO dao2 = new ReviewMemberDAO();
	List<ReviewMember> revMemberList = dao2.selectAllRev();
	Date nowTime = new Date();
	SimpleDateFormat df = new SimpleDateFormat("yy.MM.dd");
%>


<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- css파일 -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
    <!-- 모달창 -->
    <script>
        $(document).ready(function () {
            $('.menu').menuBar();
        });
    </script>
    <!-- 아이콘 -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.9.1/font/bootstrap-icons.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2"
        crossorigin="anonymous"></script>
    <script src="https://code.jquery.com/jquery-3.6.1.min.js"></script>
    <link rel="stylesheet" href="./assets/css/main.css">
    <link rel="stylesheet" href="./assets/css/mypage.css">
    <link rel="stylesheet" href="./assets/css/bulletinBoard.css">
    <title>Document</title>
</head>

<body>
    <!-- 회원가입모달 -->
    <div class="modal fade" id="exampleModalToggle" data-bs-backdrop="static" aria-hidden="true"
        aria-labelledby="exampleModalToggleLabel" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalToggleLabel">회원가입</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="JoinCon" method="post">
                	<input type="hidden" name="user_no" value="0">
                	<input type="hidden" name="mbti" placeholder="MBTI를 입력하세요" value="1234">
					<input type="hidden" name="key_no1" placeholder="키워드1를 입력하세요" value="1">
					<input type="hidden" name="key_no2" placeholder="키워드2를 입력하세요" value="2">
					<input type="hidden" name="key_no3" placeholder="키워드3를 입력하세요" value="3">
					<input type="hidden" name="key_no4" placeholder="키워드4를 입력하세요" value="4">
					<input type="hidden" name="gender" value="0">
					<input type="hidden" name="age" value="0">
                    <p>아이디</p>
                    <input type="text" placeholder="아이디" name="id" />
                    <p>비밀번호</p>
                    <input type="password" placeholder="비밀번호" name="pw"  class="password"/>
                    <p>닉네임</p>
                    <input type="text" placeholder="닉네임" name="name" />
				</form>
                </div>
                <div class="modal-footer">
                    <button class="btn btn-primary" data-bs-target="#exampleModalToggle2"
                        data-bs-toggle="modal">다음</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="exampleModalToggle2" data-bs-backdrop="static" aria-hidden="true"
        aria-labelledby="exampleModalToggleLabel2" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalToggleLabel2">취향분석</h1>

                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="" method="post">
                        <fieldset>
                            <legend>
                                <h5>MBTI</h5>
                                <div class=" row row-cols-4 ">
                                    <!-- <h4>MBTI</h4> -->
                                    <div class="box-radio-input MBTI">
                                        <input type="radio" name="mbti-1" value="E" class="box-radio-input"
                                            id="mbti-e"><label for="mbti-e">E</label>
                                        <input type="radio" name="mbti-1" value="I" class="box-radio-input"
                                            id="mbti-i"><label for="mbti-i">I</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="radio" name="mbti-2" value="S" class="box-radio-input"
                                            id="mbti-s"><label for="mbti-s">S</label>
                                        <input type="radio" name="mbti-2" value="N" class="box-radio-input"
                                            id="mbti-n"><label for="mbti-n">N</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="radio" name="mbti-3" value="T" class="box-radio-input"
                                            id="mbti-t"><label for="mbti-t">T</label>
                                        <input type="radio" name="mbti-3" value="F" class="box-radio-input"
                                            id="mbti-f"><label for="mbti-f">F</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="radio" name="mbti-4" value="P" class="box-radio-input"
                                            id="mbti-p"><label for="mbti-p">P</label>
                                        <input type="radio" name="mbti-4" value="J" class="box-radio-input"
                                            id="mbti-j"><label for="mbti-j">J</label>
                                    </div>
                                </div>
                                <h5>#키워드분석</h5>
                                <!-- 1번째줄 -->
                                <div class=" row row-cols-3 ">
                                    <!-- <h4>MBTI</h4> -->
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="실외" class="box-radio-input"
                                            id="keyword-1"><label for="keyword-1">#실외</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="실내" class="box-radio-input"
                                            id="keyword-2"><label for="keyword-2">#실내</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="활동적인" class="box-radio-input"
                                            id="keyword-3"><label for="keyword-3">#활동적인</label>
                                    </div>
                                </div>
                                <!-- 2번째줄 -->
                                <div class=" row row-cols-4 keyword-box">
                                    <!-- <h4>MBTI</h4> -->
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="자연적인" class="box-radio-input"
                                            id="keyword-4"><label for="keyword-4">#자연적인</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="신나는" class="box-radio-input"
                                            id="keyword-5"><label for="keyword-5">#신나는</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="활발한" class="box-radio-input"
                                            id="keyword-6"><label for="keyword-6">#활발한</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="조용한" class="box-radio-input"
                                            id="keyword-7"><label for="keyword-7">#조용한</label>
                                    </div>
                                </div>
                                <!-- 3번째줄 -->
                                <div class=" row row-cols-3 ">
                                    <!-- <h4>MBTI</h4> -->
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="실외" class="box-radio-input"
                                            id="keyword-8"><label for="keyword-8">#실외</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="실내" class="box-radio-input"
                                            id="keyword-9"><label for="keyword-9">#실내</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="활동적인" class="box-radio-input"
                                            id="keyword-10"><label for="keyword-10">#활동적인</label>
                                    </div>
                                </div>
                                <!-- 4번째줄 -->
                                <div class=" row row-cols-4 keyword-box">
                                    <!-- <h4>MBTI</h4> -->
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="자연적인" class="box-radio-input"
                                            id="keyword-11"><label for="keyword-11">#자연적인</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="신나는" class="box-radio-input"
                                            id="keyword-12"><label for="keyword-12">#신나는</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="활발한" class="box-radio-input"
                                            id="keyword-13"><label for="keyword-13">#활발한</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="조용한" class="box-radio-input"
                                            id="keyword-7"><label for="keyword-7">#조용한</label>
                                    </div>
                                </div>
                                <!-- 5번째줄 -->
                                <div class=" row row-cols-3 ">
                                    <!-- <h4>MBTI</h4> -->
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="실외" class="box-radio-input"
                                            id="keyword-14"><label for="keyword-14">#실외</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="실내" class="box-radio-input"
                                            id="keyword-15"><label for="keyword-15">#실내</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="활동적인" class="box-radio-input"
                                            id="keyword-16"><label for="keyword-16">#활동적인</label>
                                    </div>
                                </div>
                                <!-- 6번째줄 -->
                                <div class=" row row-cols-4 keyword-box">
                                    <!-- <h4>MBTI</h4> -->
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="자연적인" class="box-radio-input"
                                            id="keyword-17"><label for="keyword-17">#자연적인</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="신나는" class="box-radio-input"
                                            id="keyword-18"><label for="keyword-18">#신나는</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="활발한" class="box-radio-input"
                                            id="keyword-19"><label for="keyword-19">#활발한</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="조용한" class="box-radio-input"
                                            id="keyword-20"><label for="keyword-20">#조용한</label>
                                    </div>
                                </div>
                            </legend>
                        </fieldset>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    <input class="btn btn-primary" data-bs-toggle="modal" type="submit" value="가입">
                </div>
            </div>
        </div>
    </div>

    <!-- 회원가입모달끝 -->
    <!-- 로그인모달 -->


    <!-- Modal -->
    <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1"
        aria-labelledby="staticBackdropLabel" aria-hidden="true">
        <div class="modal-dialog">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="staticBackdropLabel">로그인</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="LoginCon" method="post">
        <div class="modal-body">
            <p>아이디</p>
            <input type="text" placeholder="아이디" name="id" />
            <p>비밀번호</p>
            <input type="password" placeholder="비밀번호" name="pw" />
        </div>
        <div class="modal-footer">
          <input type="button" class="btn btn-secondary" data-bs-dismiss="modal" value="CLose">
          <input type="submit" class="btn btn-primary" value="다음">
        </div>
        </form>
            </div>
        </div>
    </div>
    <!-- 로그인모달끝 -->
    <div class="">
        <header class="">
            <div class="container text-center ">
                <div class="row">
                    <div class="col align-self-center">
                        <a href="main2.jsp"><img src="./images/common/logo.png"></a>
                    </div>
                    <div class="col-6 align-self-center">
                        <form action="" method="post">
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" placeholder="Recipient's username"
                                    aria-label="Recipient's username" aria-describedby="button-addon2">
                                <button class="btn btn-outline-secondary" type="submit" id="button-addon2"><i
                                        class="bi bi-search"></i></button>

                            </div>
                        </form>
                    </div>
                    <div class="col align-self-center">
                        <div class="row">
                        <c:choose>
						<c:when test="${empty loginMember}">
                            <div class="col"><a id="topleftmenu" data-bs-toggle="modal" data-bs-target="#staticBackdrop"
                                    role="button"><i class="bi bi-box-arrow-in-right"></i><span
                                        class="d-none d-md-none d-lg-block">로그인</span></a></div>
                            <div class="col"><a id="topleftmenu" data-bs-toggle="modal" href="#exampleModalToggle"
                                    role="button"><i class="bi bi-person-plus"></i><span
                                        class="d-none d-md-none d-lg-block">회원가입</span></a></div>
                        </div>
                        </c:when>
					
					<c:otherwise>
					<header>
						<c:if test="${loginMember.id eq 'admin'}">
						
							<div class="col" align="right"><a href="select.jsp">회원관리</a></div>
						</c:if>
						</header>
						<% if(loginMember != null){ %>
					<div class="col" align="right"><a href="mypage.jsp"><%= loginMember.getId()%>님</a></div>
					<%}%>
					<div class="col" align="right"><a href="LogoutCon">로그아웃</a></div>
					</c:otherwise>
				</c:choose>
                  </div>
                    </div>
                </div>

            </div>
            <nav id="" class="top">
                <!--  상단 메뉴 창  -->
                <!-- <button type="button" class="" aria-owns="" aria-expanded="" aria-label="전체 메뉴"> -->
                <!-- </button> -->
                <ul class="topMenu">
                     <li class="topMenuLi">
                        <a class="menuLink" href="list.jsp">문화체험</a>
                        <ul class="submenu">
                            <!-- 뮤지컬 , 콘서트,연극,클래식&오페라,무용&전통예술,전시&행사 -->
                            <li class=""><a href="list.jsp#tab11" class="submenuLink longLink">뮤지컬</a></li>
                            <li class=""><a href="list.jsp#tab12" class="submenuLink longLink">콘서트</a></li>
                            <li class=""><a href="list.jsp#tab13" class="submenuLink longLink">연극</a></li>
                            <li class=""><a href="list.jsp#tab14" class="submenuLink longLink">클래식&오페라</a></li>
                            <li class=""><a href="list.jsp#tab15" class="submenuLink longLink">무용&전통예술</a></li>
                            <li class=""><a href="list.jsp#tab16" class="submenuLink longLink">전시&행사</a></li>
                        </ul>
                    </li>
                    <li class="topMenuLi">
                 <a class="menuLink" href="bulletinBoard.jsp">게시판</a>
                  <ul class="submenu">
                      <li><a href="bulletinBoard.jsp" class="submenuLink longLink">공지사항</a></li>
                      <li><a href="bulletinBoard2.jsp" class="submenuLink longLink">건의 게시판</a></li>
                      <li></li>
                        </ul>	
                    </li>
                </ul>
            </nav>
        </header>
            <div id="">
                <!-- 전체 메뉴창   -->

            </div>




        <main id="" class="">
            <div class="tabscontainer">
                <ul class="tabsmenu">
                    <li class="active">
                        <a href="bulletinBoard.jsp">문의 게시판</a>
                    </li>
                    <li>
                        <a href="bulletinBoard2.jsp">건의 게시판</a>
                    </li>
                </ul>
                <div class="tabselements">
                    <div class="row post">
                        <div class="col-7">
                            
                            <p class="post-name"><%=loginReview.getTitle() %></p>
                            
                        </div>
                        <div class="col-5">
                            <p class="post-day"><%=loginReview.getReview_time() %></p>
                        </div>
                        <div class="mt-3"></div>
                        <div class="input-group mb-3 comment post-text">
                            
                            <P><%=loginReview.getReview() %></P>
        
                        </div>
                            <div class="crystal-icon">
                        <%if(loginMember.getUser_no() == loginReview.getUser_no()){ %>
                                <button class="btn btn-primary" onclick="location.href='updatepost.jsp';"
                                data-bs-toggle="modal" >수정</button>
                                <button class="btn btn-primary" onclick="location.href='post.jsp';"
                                data-bs-toggle="modal">삭제</button>
                         <%} %>
                                </div>
                        <div class="mt-3"></div>
                </div>
            </div>
            
    </div>
    </div>
    </main>
    <footer class="">
        <div>
            <div class="footer_bottom_holder">
                <div class="container">
                    <div class="container_inner">
                        <div class="footer_bottom">
                            <div class="footer_inner">
                                <div class="left">
                                    <dl>
                                        <dt><strong>올리브</strong></dt>
                                        <dd>대표자 : 신경수<br>
                                            개인정보책임관리자 : 신경수<br>
                                            사업자번호 : 123-45-67890<br>
                                            <span class="wh">순천점 : </span>전라남도 순천시 중앙로 260<br>
                                            <span class="wh">FAX : </span>062-123-4567<br>
                                            <span class="wh">E-Mail : </span>smhrd@smhrd.or.kr<br>
                                        </dd>
                                    </dl>
                                </div>
                                <div class="right">
                                    <ul class="sns">
                                        <li class="kakao"><a href="https://pf.kakao.com/_VYlpM" target="_blank"><img
                                                    src="./images/common/kakao-talk.png"></a></li>
                                        <li class="naver"><a href="https://blog.naver.com/jang0_0yw"
                                                target="_blank"><img
                                                    src="./images/common/naver_icon-icons.com_59879.png"></a></li>
                                        <li class="youtube"><a
                                                href="https://www.youtube.com/channel/UCubIpLB7cA9tWIUZ26WFKPg"
                                                target="_blank"><img src="./images/common/youtube.png"></a></li>
                                        <li class="instagram"><a href="https://www.instagram.com/smhrd0317/"
                                                target="_blank"><img src="./images/common/instagram.png"></a></li>
                                        <li class="facebook"><a href="https://www.facebook.com/smhrd0317"
                                                target="_blank"><img src="./images/common/facebook.png"></a></li>
                                    </ul>
                                    <ul class="">
                                        <li class="">
                                            <h6>팀장 : 신경수(프로젝트 총괄, 일정계획, 서버 구축,기능구현)</h6>
                                        </li>
                                        <li class="">
                                            <p>최서정(추천 알고리즘)</p>
                                        </li>
                                        <li class="">
                                            <p>이지연(데이터 크롤링,키워드 분석)</p>
                                        </li>
                                        <li class="">
                                            <p>권호주(프론트앤드)</p>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

    </footer>
    </div>
    <script src="./assets/js/test.js">
        $('.window .close').click(function (e) {
            //Cancel the link behavior
            e.preventDefault();
        });
    </script>
    <script>
        // 텝매뉴 링크이동
        $(function () {
            if (location.hash == "#tab11") {
                $('.tabsmenu').find('li').eq(0).addClass('active').siblings().removeClass();
                $('.tabselements').find('#tab11').addClass('active').siblings().removeClass('active');
            } else if (location.hash == "#tab12") {
                $('.tabsmenu').find('li').eq(1).addClass('active').siblings().removeClass();
                $('.tabselements').find('#tab12').addClass('active').siblings().removeClass('active');
            } else if (location.hash == "#tab13") {
                $('.tabsmenu').find('li').eq(2).addClass('active').siblings().removeClass();
                $('.tabselements').find('#tab13').addClass('active').siblings().removeClass('active');
            } else if (location.hash == "#tab14") {
                $('.tabsmenu').find('li').eq(3).addClass('active').siblings().removeClass();
                $('.tabselements').find('#tab14').addClass('active').siblings().removeClass('active');
            } else if (location.hash == "#tab15") {
                $('.tabsmenu').find('li').eq(4).addClass('active').siblings().removeClass();
                $('.tabselements').find('#tab15').addClass('active').siblings().removeClass('active');
            } else if (location.hash == "#tab16") {
                $('.tabsmenu').find('li').eq(5).addClass('active').siblings().removeClass();
                $('.tabselements').find('#tab16').addClass('active').siblings().removeClass('active');
            }
        })
    </script>
</body>

</html>