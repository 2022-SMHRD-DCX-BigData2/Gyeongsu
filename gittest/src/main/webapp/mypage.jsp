<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
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
	SimpleDateFormat df = new SimpleDateFormat("YYYY.MM.dd");
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
        <script src="./assets/js/test.js"></script>
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
                      <li><a href="bulletinBoard.jsp#tab11" class="submenuLink longLink">공지사항</a></li>
                      <li><a href="bulletinBoard.jsp#tab12" class="submenuLink longLink">건의 게시판</a></li>
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
                        <a href="#tab11">내정보</a>
                    </li>
                    <li>
                        <a href="#tab12">작성댓글</a>
                    </li>
                    <li>
                        <a href="#tab13">건의 게시판</a>
                    </li>
                </ul>

                <div class="tabselements">
                    <section id="tab11" class="active">
                                <form action="UpdateCon" method="post">
                        <div>
                            <h3>기본정보</h3>
                            <div>
                                <dl class="my-box">
                                    <dt>아이디</dt>
                                    <dd><input type="text" name="id" placeholder="아이디를 입력하세요" value="<%=loginMember.getId()%>"></dd>
                                </dl>
                    
                                <dl class="my-box">
                                    <dt>비밀번호</dt>
                                    <dd><input type="password" name="pw" placeholder="비밀번호를 입력하세요" value="<%=loginMember.getPw()%>"></dd>
                                </dl>
                                <dl class="my-box">
                                    <dt>이름</dt>
                                    <dd><input type="text" name="name" placeholder="이름을 입력하세요" value="<%=loginMember.getName()%>"></dd>
                                </dl>
                                <dl class="my-box">
                                <% String saveage = loginMember.getAge(); %>
                                    <dt>나이</dt>
                                    <dd><select name="age">
                                            <option value="">선택</option>
                                            <option value="age10" <%if(saveage.equals("age10")){%> selected <%} %>>10대</option>
                                            <option value="age20" <%if(saveage.equals("age20")){%> selected <%} %>>20대</option>
                                            <option value="age30" <%if(saveage.equals("age30")){%> selected <%} %>>30대</option>
                                            <option value="age40" <%if(saveage.equals("age40")){%> selected <%} %>>40대</option>
                                            <option value="age50" <%if(saveage.equals("age50")){%> selected <%} %>>50대</option>
                                            <option value="age60" <%if(saveage.equals("age60")){%> selected <%} %>>60대</option>
                                            <option value="age70" <%if(saveage.equals("age70")){%> selected <%} %>>70대이상</option>
                                        </select></dd>
                                </dl>
                                <dl class="my-box">
                                <%
                                	String savembti = loginMember.getMbti();
                  					String first = savembti.substring(0,1);
                  					String second = savembti.substring(1,2);
                  					String third = savembti.substring(2,3);
                  					String forth = savembti.substring(3);
                  				
                  				%>
                                    <dt>MBTI</dt>
                                    <dd>
                                        <div class=" row row-cols-4 ">
                                            <!-- <h4>MBTI</h4> -->
                                            <div class="box-radio-input MBTI">
                                                <input type="radio" name="mbti-1" value="E" class="box-radio-input" 
                                                	id="mbti-e-change" <%if(first.equals("E")){%> checked="checked" <%} %>><label for="mbti-e-change">E</label>
                                                <input type="radio" name="mbti-1" value="I" class="box-radio-input"
                                                    id="mbti-i-change" <%if(first.equals("I")){%> checked="checked" <%} %>><label for="mbti-i-change">I</label>
                                            </div>
                                            <div class="box-radio-input MBTI">
                                                <input type="radio" name="mbti-2" value="S" class="box-radio-input"
                                                    id="mbti-s-change" <%if(second.equals("S")){%> checked="checked" <%} %>><label for="mbti-s-change">S</label>
                                                <input type="radio" name="mbti-2" value="N" class="box-radio-input"
                                                    id="mbti-n-change" <%if(second.equals("N")){%> checked="checked" <%} %>><label for="mbti-n-change">N</label>
                                            </div>
                                            <div class="box-radio-input MBTI">
                                                <input type="radio" name="mbti-3" value="T" class="box-radio-input"
                                                    id="mbti-t-change" <%if(third.equals("T")){%> checked="checked" <%} %>><label for="mbti-t-change">T</label>
                                                <input type="radio" name="mbti-3" value="F" class="box-radio-input"
                                                    id="mbti-f-change" <%if(third.equals("F")){%> checked="checked" <%} %>><label for="mbti-f-change">F</label>
                                            </div>
                                            <div class="box-radio-input MBTI">
                                                <input type="radio" name="mbti-4" value="P" class="box-radio-input"
                                                     id="mbti-p-change" <%if(forth.equals("P")){%> checked="checked" <%} %>><label for="mbti-p-change">P</label>
                                                <input type="radio" name="mbti-4" value="J" class="box-radio-input"
                                                     id="mbti-j-change" <%if(forth.equals("J")){%> checked="checked" <%} %>><label for="mbti-j-change">J</label>
                                            </div>
                                        </div>
                                    </dd>
                                </dl>
                                <dl class="my-box">
                                <% 
                                	String savekeyword = loginMember.getKey_no1() + " " + loginMember.getKey_no2() + " " + loginMember.getKey_no3() + " " + loginMember.getKey_no4();
                                	
                                %>
                                    <dt>키워드</dt>
                                    <dd>
                                        <div class=" row row-cols-3 ">
                                            <!-- <h4>MBTI</h4> -->
                                            <div class="box-radio-input MBTI">
                                                <input type="checkbox" name="keyword" value="실내" class="box-radio-input"
                                                    id="keyword-1-change" <% if(savekeyword.contains("실내")){%> checked <%} %>><label for="keyword-1-change">#실내</label>
                                            </div>
                                            <div class="box-radio-input MBTI">
                                                <input type="checkbox" name="keyword" value="실외" class="box-radio-input"
                                                    id="keyword-2-change" <% if(savekeyword.contains("실외")){%> checked <%} %>><label for="keyword-2-change">#실외</label>
                                            </div>
                                            <div class="box-radio-input MBTI">
                                                <input type="checkbox" name="keyword" value="잔잔" class="box-radio-input"
                                                    id="keyword-3-change" <% if(savekeyword.contains("잔잔")){%> checked <%} %>><label for="keyword-3-change">#잔잔</label>
                                            </div>
                                        </div>
                                        <!-- 2번째줄 -->
                                        <div class=" row row-cols-4 keyword-box">
                                            <!-- <h4>MBTI</h4> -->
                                            <div class="box-radio-input MBTI">
                                                <input type="checkbox" name="keyword" value="활발" class="box-radio-input"
                                                    id="keyword-4-change" <% if(savekeyword.contains("활발")){%> checked <%} %>><label for="keyword-4-change">#활발</label>
                                            </div>
                                            <div class="box-radio-input MBTI">
                                                <input type="checkbox" name="keyword" value="개인" class="box-radio-input"
                                                    id="keyword-5-change" <% if(savekeyword.contains("개인")){%> checked <%} %>><label for="keyword-5-change">#개인</label>
                                            </div>
                                            <div class="box-radio-input MBTI">
                                                <input type="checkbox" name="keyword" value="집단" class="box-radio-input"
                                                    id="keyword-6-change" <% if(savekeyword.contains("집단")){%> checked <%} %>><label for="keyword-6-change">#집단</label>
                                            </div>
                                            <div class="box-radio-input MBTI">
                                                <input type="checkbox" name="keyword" value="관람" class="box-radio-input"
                                                    id="keyword-7-change" <% if(savekeyword.contains("관람")){%> checked <%} %>><label for="keyword-7-change">#관람</label>
                                            </div>
                                        </div>
                                        <!-- 3번째줄 -->
                                        <div class=" row row-cols-3 ">
                                            <!-- <h4>MBTI</h4> -->
                                            <div class="box-radio-input MBTI">
                                                <input type="checkbox" name="keyword" value="참여" class="box-radio-input"
                                                    id="keyword-8-change" <% if(savekeyword.contains("참여")){%> checked <%} %>><label for="keyword-8-change">#참여</label>
                                            </div>
                                            <div class="box-radio-input MBTI">
                                                <input type="checkbox" name="keyword" value="로맨틱" class="box-radio-input"
                                                    id="keyword-9-change" <% if(savekeyword.contains("로맨틱")){%> checked <%} %>><label for="keyword-9-change">#로맨틱</label>
                                            </div>
                                            <div class="box-radio-input MBTI">
                                                <input type="checkbox" name="keyword" value="데이트" class="box-radio-input"
                                                    id="keyword-10-change" <% if(savekeyword.contains("데이트")){%> checked <%} %>><label for="keyword-10-change">#데이트</label>
                                            </div>
                                        </div>
                                        <!-- 4번째줄 -->
                                        <div class=" row row-cols-4 keyword-box">
                                            <!-- <h4>MBTI</h4> -->
                                            <div class="box-radio-input MBTI">
                                                <input type="checkbox" name="keyword" value="어린이" class="box-radio-input"
                                                    id="keyword-11-change" <% if(savekeyword.contains("어린이")){%> checked <%} %>><label for="keyword-11-change">#어린이</label>
                                            </div>
                                            <div class="box-radio-input MBTI">
                                                <input type="checkbox" name="keyword" value="가족" class="box-radio-input"
                                                    id="keyword-12-change" <% if(savekeyword.contains("가족")){%> checked <%} %>><label for="keyword-12-change">#가족</label>
                                            </div>
                                            <div class="box-radio-input MBTI">
                                                <input type="checkbox" name="keyword" value="감동" class="box-radio-input"
                                                    id="keyword-13-change" <% if(savekeyword.contains("감동")){%> checked <%} %>><label for="keyword-13-change">#감동</label>
                                            </div>
                                            <div class="box-radio-input MBTI">
                                                <input type="checkbox" name="keyword" value="코믹" class="box-radio-input"
                                                    id="keyword-14-change" <% if(savekeyword.contains("코믹")){%> checked <%} %>><label for="keyword-14-change">#코믹</label>
                                            </div>
                                        </div>
                                        <!-- 5번째줄 -->
                                        <div class=" row row-cols-3 ">
                                            <!-- <h4>MBTI</h4> -->
                                            <div class="box-radio-input MBTI">
                                                <input type="checkbox" name="keyword" value="포토존" class="box-radio-input"
                                                    id="keyword-15-change" <% if(savekeyword.contains("포토존")){%> checked <%} %>><label for="keyword-15-change">#포토존</label>
                                            </div>
                                            <div class="box-radio-input MBTI">
                                                <input type="checkbox" name="keyword" value="연말" class="box-radio-input"
                                                    id="keyword-16-change" <% if(savekeyword.contains("연말")){%> checked <%} %>><label for="keyword-16-change">#연말</label>
                                            </div>
                                            <div class="box-radio-input MBTI">
                                                <input type="checkbox" name="keyword" value="화려" class="box-radio-input"
                                                    id="keyword-17-change" <% if(savekeyword.contains("화려")){%> checked <%} %>><label for="keyword-17-change">#화려</label>
                                            </div>
                                        </div>
                                        <!-- 6번째줄 -->
                                        <div class=" row row-cols-4 keyword-box">
                                            <!-- <h4>MBTI</h4> -->
                                            <div class="box-radio-input MBTI">
                                                <input type="checkbox" name="keyword" value="동화" class="box-radio-input"
                                                    id="keyword-18-change" <% if(savekeyword.contains("동화")){%> checked <%} %>><label for="keyword-18-change">#동화</label>
                                            </div>
                                            <div class="box-radio-input MBTI">
                                                <input type="checkbox" name="keyword" value="소규모" class="box-radio-input"
                                                    id="keyword-19-change" <% if(savekeyword.contains("소규모")){%> checked <%} %>><label for="keyword-19-change">#소규모</label>
                                            </div>
                                            <div class="box-radio-input MBTI">
                                                <input type="checkbox" name="keyword" value="대규모" class="box-radio-input"
                                                    id="keyword-20-change" <% if(savekeyword.contains("대규모")){%> checked <%} %>><label for="keyword-20-change">#대규모</label>
                                            </div>
                                            <div class="box-radio-input MBTI">
                                                <input type="checkbox" name="keyword" value="음악" class="box-radio-input"
                                                    id="keyword-21-change" <% if(savekeyword.contains("음악")){%> checked <%} %>><label for="keyword-21-change">#음악</label>
                                            </div>
                                        </div>
                                        <!-- 7번째 -->
                                        <div class=" row row-cols-3 ">
                                            <!-- <h4>MBTI</h4> -->
                                            <div class="box-radio-input MBTI">
                                                <input type="checkbox" name="keyword" value="친구" class="box-radio-input"
                                                    id="keyword-22-change" <% if(savekeyword.contains("친구")){%> checked <%} %>><label for="keyword-22-change">#친구</label>
                                            </div>
                                            <div class="box-radio-input MBTI">
                                                <input type="checkbox" name="keyword" value="감성" class="box-radio-input"
                                                    id="keyword-23-change" <% if(savekeyword.contains("감성")){%> checked <%} %>><label for="keyword-23-change">#감성</label>
                                            </div>
                                            <div class="box-radio-input MBTI">
                                                <input type="checkbox" name="keyword" value="힐링" class="box-radio-input"
                                                    id="keyword-24-change" <% if(savekeyword.contains("힐링")){%> checked <%} %>><label for="keyword-24-change">#힐링</label>
                                            </div>
                                        </div>
                                        <!-- 6번째줄 -->
                                        <div class=" row row-cols-4 keyword-box">
                                            <!-- <h4>MBTI</h4> -->
                                            <div class="box-radio-input MBTI">
                                                <input type="checkbox" name="keyword" value="웅장" class="box-radio-input"
                                                    id="keyword-25-change" <% if(savekeyword.contains("웅장")){%> checked <%} %>><label for="keyword-25-change">#웅장</label>
                                            </div>
                                            <div class="box-radio-input MBTI">
                                                <input type="checkbox" name="keyword" value="소통" class="box-radio-input"
                                                    id="keyword-26-change" <% if(savekeyword.contains("소통")){%> checked <%} %>><label for="keyword-26-change">#소통</label>
                                            </div>
                                        </div>
                                    </dd>
                                    
                                </dl>
                            </div>
                        </div>
                        <div class="row">
                        <div class="mypage-crystal">
                    		<button type="submit">수정</button>
                    	</div>
                    	
                        </div>
                        </form>
                        <div class="row">
                    	<form action="DeleteCon" method="post">
                    		<div class="mypage-crystal-right">
                    			<button type="submit"  >회원탈퇴</button>
                    		</div>
                    	</form>
                    	</div>
                    </section>


                    <section id="tab12">
                        <div>
                            <h3>작성댓글</h3>
                            <table class="board">
                                <tr>
                                    <td>번호</td>
                                    <td>작성자</td>
                                    <td>댓글 작성한 페이지</td>
                                    <td>작성일</td>
                                </tr>
                                <%int cnt1 = 0;%>
                                <%for(ReviewMember m:revMemberList){ %>
				              	<% if(m.getUser_no()==loginMember.getUser_no() && m.getReview_type()==1){ %>
				              	<% SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm");%>
								<% String temp = formatter.format(m.getReview_time());%>
				              	<%cnt1++; %>
				                	<tr>
										<td><a href="SelectReview2?review_no=<%=m.getReview_no() %>"><p><%=cnt1%></p></a></td>
					                    <td><a href="SelectReview2?review_no=<%=m.getReview_no() %>"><p><%=m.getId() %></p></a></td>
					                    <td><a href="SelectReview2?review_no=<%=m.getReview_no() %>"><P><%=m.getActivity_title()%></P></a></td>
					                    <td><a href="SelectReview2?review_no=<%=m.getReview_no() %>"><P><%=temp%></P></a></td>
									</tr>
				                <%} %>
				                <%} %>

                                                   <tr class="button-tr">
                                    <td colspan="7" id="board-button">
                                        <!-- 버튼을 클릭하면 post.jsp로 이동 -->
                                        <input type="button" value="글작성" onclick="location.href='post.html'">
                                    </td>
                                </tr> 
                            </table>
                        </div>
                    </section>
                    <section id="tab13">
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
				              	<% if(m.getUser_no()==loginMember.getUser_no() && m.getReview_type()==2){ %>
				              	<% SimpleDateFormat formatter = new SimpleDateFormat("yyyy-MM-dd HH:mm");%>
								<% String temp = formatter.format(m.getReview_time());%>
				              	<%cnt2++; %>
				                	<tr>
										<td><a href="SelectReview2?review_no=<%=m.getReview_no() %>"><p><%=cnt2%></p></a></td>
					                    <td><a href="SelectReview2?review_no=<%=m.getReview_no() %>"><p><%=m.getId() %></p></a></td>
					                    <td><a href="SelectReview2?review_no=<%=m.getReview_no() %>"><P><%=m.getTitle()%></P></a></td>
					                    <td><a href="SelectReview2?review_no=<%=m.getReview_no() %>"><P><%=temp%></P></a></td>
									</tr>
				                <%} %>
				                <%} %>
                                <tr class="button-tr">
                                    <td colspan="7" id="board-button">
                                        <!-- <%-- 버튼을 클릭하면 post.jsp로 이동 --%> -->
                                        <input type="button" value="글작성" onclick="location.href='post.jsp'">
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </section>
                </div>
            </div>

        </main>
  <jsp:include page="/include/footer.jsp"></jsp:include>
  <jsp:include page="/include/script.jsp"></jsp:include>
</body>

</html>