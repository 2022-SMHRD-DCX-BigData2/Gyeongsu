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
	ActivityMemberDAO dao = new ActivityMemberDAO();
	List<ActivityMember> actmemberList = dao.selectAllact();
	ReviewMemberDAO dao2 = new ReviewMemberDAO();
	List<ReviewMember> revMemberList = dao2.selectAllRev();
	Date nowTime = new Date();
	SimpleDateFormat df = new SimpleDateFormat("yy.MM.dd");
%>


<html lang="en">

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
<form action="JoinCon" method="post">
    <div class="modal fade" id="exampleModalToggle" data-bs-backdrop="static" aria-hidden="true"
        aria-labelledby="exampleModalToggleLabel" tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalToggleLabel">회원가입</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                	<input type="hidden" name="user_no" value="0">
                    <p>아이디</p>
                    <input type="text" placeholder="아이디" name="id" />
                    <p>비밀번호</p>
                    <input type="password" placeholder="비밀번호" name="pw"  class="password"/>
                    <p>이름</p>
                    <input type="text" placeholder="이름" name="name" />
                    <div class="row">
                	<div class="col MBTI">
                	
                			<p>성별</p>
                				<input type="radio" name="gender" value="남" class="box-radio-input" id="age-y"><label
                            	for="age-y">남</label>
                            	<input type="radio" name="gender" value="여" class="box-radio-input" id="age-x"><label
                            	for="age-x">여</label>
                        </div>
                        <div class="col MBTI">
                            <p>나이</p>
                            <select name="age">
                                <option value="" >선택</option>
                                <option value="age10">10대</option>
                                <option value="age20">20대</option>
                                <option value="age30">30대</option>
                                <option value="age40">40대</option>
                                <option value="age50">50대</option>
                                <option value="age60">60대</option>
                                <option value="age70">70대이상</option>
                            </select>
                        </div>
                	</div>
                </div> 
                <div class="modal-footer">
                	<button class="btn btn-primary" data-bs-target="#exampleModalToggle2"
                        data-bs-toggle="modal" type="button">다음</button>
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
                    
                                <h5>MBTI</h5>
                                <div class=" row row-cols-4 ">
                                    <!-- <h4>MBTI</h4> -->
                                    <div class="box-radio-input MBTI">
                                        <input type="radio" name="mbti_1" value="E" class="box-radio-input"
                                            id="mbti-e"><label for="mbti-e">E</label>
                                        <input type="radio" name="mbti_1" value="I" class="box-radio-input"
                                            id="mbti-i"><label for="mbti-i">I</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="radio" name="mbti_2" value="S" class="box-radio-input"
                                            id="mbti-s"><label for="mbti-s">S</label>
                                        <input type="radio" name="mbti_2" value="N" class="box-radio-input"
                                            id="mbti-n"><label for="mbti-n">N</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="radio" name="mbti_3" value="T" class="box-radio-input"
                                            id="mbti-t"><label for="mbti-t">T</label>
                                        <input type="radio" name="mbti_3" value="F" class="box-radio-input"
                                            id="mbti-f"><label for="mbti-f">F</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="radio" name="mbti_4" value="P" class="box-radio-input"
                                            id="mbti-p"><label for="mbti-p">P</label>
                                        <input type="radio" name="mbti_4" value="J" class="box-radio-input"
                                            id="mbti-j"><label for="mbti-j">J</label>
                                    </div>
                                </div>
                                <h5>#키워드분석</h5>
                                <!-- 1번째줄 -->
                                <div class=" row row-cols-3 ">
                                    <!-- <h4>MBTI</h4> -->
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="실내" class="box-radio-input"
                                            id="keyword-1"><label for="keyword-1">#실내</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="실외" class="box-radio-input"
                                            id="keyword-2"><label for="keyword-2">#실외</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="잔잔" class="box-radio-input"
                                            id="keyword-3"><label for="keyword-3">#잔잔</label>
                                    </div>
                                </div>
                                <!-- 2번째줄 -->
                                <div class=" row row-cols-4 keyword-box">
                                    <!-- <h4>MBTI</h4> -->
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="활발" class="box-radio-input"
                                            id="keyword-4"><label for="keyword-4">#활발</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="개인" class="box-radio-input"
                                            id="keyword-5"><label for="keyword-5">#개인</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="집단" class="box-radio-input"
                                            id="keyword-6"><label for="keyword-6">#집단</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="관람" class="box-radio-input"
                                            id="keyword-7"><label for="keyword-7">#관람</label>
                                    </div>
                                </div>
                                <!-- 3번째줄 -->
                                <div class=" row row-cols-3 ">
                                    <!-- <h4>MBTI</h4> -->
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="참여" class="box-radio-input"
                                            id="keyword-8"><label for="keyword-8">#참여</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="로맨틱" class="box-radio-input"
                                            id="keyword-9"><label for="keyword-9">#로맨틱</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="데이트" class="box-radio-input"
                                            id="keyword-10"><label for="keyword-10">#데이트</label>
                                    </div>
                                </div>
                                <!-- 4번째줄 -->
                                <div class=" row row-cols-4 keyword-box">
                                    <!-- <h4>MBTI</h4> -->
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="어린이" class="box-radio-input"
                                            id="keyword-11"><label for="keyword-11">#어린이</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="가족" class="box-radio-input"
                                            id="keyword-12"><label for="keyword-12">#가족</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="감동" class="box-radio-input"
                                            id="keyword-13"><label for="keyword-13">#감동</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="코믹" class="box-radio-input"
                                            id="keyword-14"><label for="keyword-14">#코믹</label>
                                    </div>
                                </div>
                                <!-- 5번째줄 -->
                                <div class=" row row-cols-3 ">
                                    <!-- <h4>MBTI</h4> -->
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="포토존" class="box-radio-input"
                                            id="keyword-15"><label for="keyword-15">#포토존</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="연말" class="box-radio-input"
                                            id="keyword-16"><label for="keyword-16">#연말</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="화려" class="box-radio-input"
                                            id="keyword-17"><label for="keyword-17">#화려</label>
                                    </div>
                                </div>
                                <!-- 6번째줄 -->
                                <div class=" row row-cols-4 keyword-box">
                                    <!-- <h4>MBTI</h4> -->
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="동화" class="box-radio-input"
                                            id="keyword-18"><label for="keyword-18">#동화</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="소규모" class="box-radio-input"
                                            id="keyword-19"><label for="keyword-19">#소규모</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="대규모" class="box-radio-input"
                                            id="keyword-20"><label for="keyword-20">#대규모</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="음악" class="box-radio-input"
                                            id="keyword-21"><label for="keyword-21">#음악</label>
                                    </div>
                                </div>
                                <!-- 7번째 -->
                                <div class=" row row-cols-3 ">
                                    <!-- <h4>MBTI</h4> -->
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="친구" class="box-radio-input"
                                            id="keyword-22"><label for="keyword-22">#친구</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="감성" class="box-radio-input"
                                            id="keyword-23"><label for="keyword-23">#감성</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="힐링" class="box-radio-input"
                                            id="keyword-24"><label for="keyword-24">#힐링</label>
                                    </div>
                                </div>
                                <!-- 6번째줄 -->
                                <div class=" row row-cols-4 keyword-box">
                                    <!-- <h4>MBTI</h4> -->
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="웅장" class="box-radio-input"
                                            id="keyword-25"><label for="keyword-25">#웅장</label>
                                    </div>
                                    <div class="box-radio-input MBTI">
                                        <input type="checkbox" name="keyword" value="소통" class="box-radio-input"
                                            id="keyword-26"><label for="keyword-26">#소통</label>
                                    </div>
                                </div>
                           
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    <input class="btn btn-primary" data-bs-toggle="modal" type="submit" value="가입">
                </div>
            </div>
        </div>
    </div>
</form>
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
                    <div class="col align-self-center main-img">
                        <a href="main2.jsp"><img src="./images/common/logo.png"></a>
                    </div>
                    <div class="col-6 align-self-center">
                        <form action="SearchCon" method="post">
                            <div class="input-group mb-3">
                                <input type="text" class="form-control" placeholder="검색"
                                    aria-label="Recipient's username" aria-describedby="button-addon2" name="searchcontent">
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
                        <a href="#tab11">공지사항</a>
                    </li>
                    <li>
                        <a href="#tab12">건의 게시판</a>
                    </li>

                </ul>

                <div class="tabselements">
                   <section id="tab11" class="active">
                        <div>
                            <h3>공지사항</h3>
                            <table class="board">
                                 <tr>
                                    <td>번호</td>
                                    <td>작성자</td>
                                    <td>제목</td>
                                    <td>작성일</td>
                                </tr>
                                <%int cnt1 = 0;%>
                                <%for(ReviewMember m:revMemberList){ %>
					            <% if(m.getReview_type()==3){ %>
                                <%cnt1++; %>
								<tr>
										<td><a href="SelectReview?review_no=<%=m.getReview_no() %>"><p><%=cnt1%></p></a></td>
					                    <td><a href="SelectReview?review_no=<%=m.getReview_no() %>"><p><%=m.getId() %></p></a></td>
					                    <td><a href="SelectReview?review_no=<%=m.getReview_no() %>"><P><%=m.getTitle() %></P></a></td>
					                    <td><a href="SelectReview?review_no=<%=m.getReview_no() %>"><P><%=m.getReview_time()%></P></a></td>
								</tr>
					                <%} %>
					                <%} %>                       
                                <!-- 데이터가 없으면 -->
                                <!-- <tr>
                                    <td>데이터가 없습니다</td>
                                </tr> -->
                                <c:if test="${loginMember.id eq 'admin'}">
								<tr class="button-tr">
                                    <td colspan="6" id="board-button">
                                        <!-- <%-- 버튼을 클릭하면 post.jsp로 이동 --%> -->
                                        <input type="button" value="글작성" onclick="location.href='post.jsp'">
                                    </td>
                                </tr>
								</c:if>
								</table>
                        </div>

                    </section>


                    <section id="tab12">
                        <div>
                            <h3>건의 게시판</h3>
                            <table class="board">
                                <tr>
                                    <td>번호</td>
                                    <td>작성자</td>
                                    <td>제목</td>
                                    <td>작성일</td>
                                </tr>
                                <%int cnt2 = 0;%>
                                <%for(ReviewMember m:revMemberList){ %>
					            <% if(m.getReview_type()==2){ %>
                                <%cnt2++; %>
									<tr>
										<td><a href="SelectReview?review_no=<%=m.getReview_no() %>"><p><%=cnt2%></p></a></td>
					                    <td><a href="SelectReview?review_no=<%=m.getReview_no() %>"><p><%=m.getId() %></p></a></td>
					                    <td><a href="SelectReview?review_no=<%=m.getReview_no() %>"><P><%=m.getTitle() %></P></a></td>
					                    <td><a href="SelectReview?review_no=<%=m.getReview_no() %>"><P><%=m.getReview_time()%></P></a></td>
									</tr>
					                <%} %>
					                <%} %>                          
                                
                                <c:if test="${loginMember == null}">
                                	<tr class="button-tr">
		                                <td colspan="6" id="board-button">
		                                	<input type="button" value="글작성" onclick="alert('로그인후 이용가능합니다!')">
		                                </td>
	                                </tr>
								</c:if>
								<c:if test="${loginMember != null}">
									<tr class="button-tr">
	                                    <td colspan="6" id="board-button">
	                                        <!-- <%-- 버튼을 클릭하면 post.jsp로 이동 --%> -->
	                                        <input type="button" value="글작성" onclick="location.href='post.jsp'">
	                                    </td>
			                        </tr>
								</c:if>                          
                                <tr>
                                    <td colspan="6" class="button-tr">
                                        
                                    </td>
                                </tr>
                            </table>
                        </div>
                </div>
            </div>
            </section>
    </div>
    </div>
    </main>
     	<jsp:include page="/include/footer.jsp"></jsp:include>
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
                $('.tabsmenu').find('li').eq(2).addClass('active').siblings().removeClass();
                $('.tabselements').find('#tab14').addClass('active').siblings().removeClass('active');
            } else if (location.hash == "#tab15") {
                $('.tabsmenu').find('li').eq(2).addClass('active').siblings().removeClass();
                $('.tabselements').find('#tab15').addClass('active').siblings().removeClass('active');
            } else if (location.hash == "#tab16") {
                $('.tabsmenu').find('li').eq(2).addClass('active').siblings().removeClass();
                $('.tabselements').find('#tab16').addClass('active').siblings().removeClass('active');
            }
        })
    </script>
</body>

</html>