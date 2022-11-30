<%@page import="project.domain.UserMember"%>
<%@page import="project.domain.ActivityMember"%>
<%@page import="project.domain.ReviewMember"%>
<%@page import="java.util.List"%>
<%@page import="project.domain.ActivityMemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	UserMember loginMember = (UserMember)session.getAttribute("loginMember");
	ActivityMember activityMember = (ActivityMember)session.getAttribute("activityMember");
	ActivityMemberDAO dao = new ActivityMemberDAO();
	List<ActivityMember> actmemberList = dao.selectAllact();
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
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.0-beta1/dist/js/bootstrap.bundle.min.js" integrity="sha384-pprn3073KE6tl6bjs2QrFaJGz5/SUsLqktiwsUTF55Jfv3qYSDhgCecCxMW52nD2" crossorigin="anonymous"></script>
    
    <link rel="stylesheet" href="./assets/css/main.css">
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
                    <div class="row">
                	<div class="col MBTI"><p>성별</p>
                            <input type="radio" name="age" value="남" class="box-radio-input" id="age-y"><label
                            for="age-y">남</label>
                            <input type="radio" name="age" value="여" class="box-radio-input" id="age-x"><label
                            for="age-x">여</label>
                        </div>
                        <div class="col MBTI">
                            <p>나이</p>
                            <select>
                                <option value="">선택</option>
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
				</form>
                <div class="modal-footer">
                    <button class="btn btn-primary" data-bs-target="#exampleModalToggle2"
                        data-bs-toggle="modal">완료</button>
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
                        <a href="main2.jsp" class="main-img"><img src="./images/common/logo.png"></a>
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


      <div id="carouselExampleDark" class="carousel carousel-dark slide" data-bs-ride="carousel">
          <div class="carousel-indicators">
              <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="0" class="active"
                  aria-current="true" aria-label="Slide 1"></button>
              <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="1"
                  aria-label="Slide 2"></button>
              <button type="button" data-bs-target="#carouselExampleDark" data-bs-slide-to="2"
                  aria-label="Slide 3"></button>
          </div>
          <div class="carousel-inner">
              <div class="carousel-item active" data-bs-interval="10000">
                  <img src="https://via.placeholder.com/800x400" class="d-block w-100" alt="...">
                  <div class="carousel-caption d-none d-md-block">
                      <h5>First slide label</h5>
                      <p>Some representative placeholder content for the first slide.</p>
                  </div>
              </div>
              <div class="carousel-item" data-bs-interval="2000">
                  <img src="https://via.placeholder.com/800x400" class="d-block w-100" alt="...">
                  <div class="carousel-caption d-none d-md-block">
                      <h5>Second slide label</h5>
                      <p>Some representative placeholder content for the second slide.</p>
                  </div>
              </div>
              <div class="carousel-item">
                  <img src="https://via.placeholder.com/800x400" class="d-block w-100" alt="...">
                  <div class="carousel-caption d-none d-md-block">
                      <h5>Third slide label</h5>
                      <p>Some representative placeholder content for the third slide.</p>
                  </div>
              </div>
          </div>
          <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleDark"
              data-bs-slide="prev">
              <span class="carousel-control-prev-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Previous</span>
          </button>
          <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleDark"
              data-bs-slide="next">
              <span class="carousel-control-next-icon" aria-hidden="true"></span>
              <span class="visually-hidden">Next</span>
          </button>
      </div>
      <h1>경남/부산</h1>
            <div class="tabscontainer">
                <ul class="tabsmenu">
                    <li class="active">
                    <a href="#tab11">뮤지컬</a>
                </li>
                <li>
                    <a href="#tab12">콘서트</a>
                </li>
                <li>
                    <a href="#tab13">연극</a>
                </li>
                <li>
                    <a href="#tab14">클래식&오페라</a>
                </li>
                <li>
                    <a href="#tab15">무용&전통예술</a>
                </li>
                <li>
                    <a href="#tab16">전시&행사</a>
                </li>
                </ul>

          <div class="tabselements">
                    <section id="tab11" class="active">
                        <ul class="grid">
                        <%for(ActivityMember m:actmemberList){ %>
                  		<%if(m.getRegion_type()==200 && m.getActivity_type()==1){ %>
                            <li class="g-col-lg-4">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                              <figure>
                                  <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname"><%=m.getActivity_title() %></h3>
                                      <p><%=m.getStart_date() %>~<%=m.getFinish_date() %></p>
                                      <div class="tabtext">
                                          <!-- <p>서울</p> -->
                                          <p><%=m.getActivity_place() %></p>
                                      </div>
                                  </figcaption>
                              </figure>
                              </a>
                      </li>
                      <%} %>
                      <%} %>
                  </ul>
              </section>


              <section id="tab12">
                        <ul class="grid">
                        <%for(ActivityMember m:actmemberList){ %>
                  		<%if(m.getRegion_type()==200 && m.getActivity_type()==2){ %>
                            <li class="g-col-lg-4">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                              <figure>
                                  <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname"><%=m.getActivity_title() %></h3>
                                      <p><%=m.getStart_date() %>~<%=m.getFinish_date() %></p>
                                      <div class="tabtext">
                                          <!-- <p>서울</p> -->
                                          <p><%=m.getActivity_place() %></p>
                                      </div>
                                  </figcaption>
                              </figure>
                              </a>
                      </li>
                      <%} %>
                      <%} %>
                  </ul>
              </section>
              <section id="tab13">
                        <ul class="grid">
                        <%for(ActivityMember m:actmemberList){ %>
                  		<%if(m.getRegion_type()==200 && m.getActivity_type()==3){ %>
                            <li class="g-col-lg-4">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                              <figure>
                                  <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname"><%=m.getActivity_title() %></h3>
                                      <p><%=m.getStart_date() %>~<%=m.getFinish_date() %></p>
                                      <div class="tabtext">
                                          <!-- <p>서울</p> -->
                                          <p><%=m.getActivity_place() %></p>
                                      </div>
                                  </figcaption>
                              </figure>
                              </a>
                      </li>
                      <%} %>
                      <%} %>
                  </ul>
              </section>
              <section id="tab14">
                        <ul class="grid">
                        <%for(ActivityMember m:actmemberList){ %>
                  		<%if(m.getRegion_type()==200 && m.getActivity_type()==4){ %>
                            <li class="g-col-lg-4">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                              <figure>
                                  <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname"><%=m.getActivity_title() %></h3>
                                      <p><%=m.getStart_date() %>~<%=m.getFinish_date() %></p>
                                      <div class="tabtext">
                                          <!-- <p>서울</p> -->
                                          <p><%=m.getActivity_place() %></p>
                                      </div>
                                  </figcaption>
                              </figure>
                              </a>
                      </li>
                      <%} %>
                      <%} %>
                  </ul>
              </section>
              <section id="tab15">
                        <ul class="grid">
                        <%for(ActivityMember m:actmemberList){ %>
                  		<%if(m.getRegion_type()==200 && m.getActivity_type()==5){ %>
                            <li class="g-col-lg-4">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                              <figure>
                                  <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname"><%=m.getActivity_title() %></h3>
                                      <p><%=m.getStart_date() %>~<%=m.getFinish_date() %></p>
                                      <div class="tabtext">
                                          <!-- <p>서울</p> -->
                                          <p><%=m.getActivity_place() %></p>
                                      </div>
                                  </figcaption>
                              </figure>
                              </a>
                      </li>
                      <%} %>
                      <%} %>
                  </ul>
              </section>
              <section id="tab16">
                        <ul class="grid">
                        <%for(ActivityMember m:actmemberList){ %>
                  		<%if(m.getRegion_type()==200 && m.getActivity_type()==6){ %>
                            <li class="g-col-lg-4">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                              <figure>
                                  <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname"><%=m.getActivity_title() %></h3>
                                      <p><%=m.getStart_date() %>~<%=m.getFinish_date() %></p>
                                      <div class="tabtext">
                                          <!-- <p>서울</p> -->
                                          <p><%=m.getActivity_place() %></p>
                                      </div>
                                  </figcaption>
                              </figure>
                              </a>
                      </li>
                      <%} %>
                      <%} %>
                  </ul>
              </section>
          </div>
      </div>
		
      <h1>전남/광주</h1>
            <div class="tabscontainer">
                <ul class="tabsmenu">
                    <li class="active">
                    <a href="#tab21">뮤지컬</a>
                </li>
                <li>
                    <a href="#tab22">콘서트</a>
                </li>
                <li>
                    <a href="#tab23">연극</a>
                </li>
                <li>
                    <a href="#tab24">클래식&오페라</a>
                </li>
                <li>
                    <a href="#tab25">무용&전통예술</a>
                </li>
                <li>
                    <a href="#tab26">전시&행사</a>
                </li>
                </ul>

          <div class="tabselements">
              <section id="tab21" class="active">
                        <ul class="grid">
                        <%for(ActivityMember m:actmemberList){ %>
                  		<%if(m.getRegion_type()==100 && m.getActivity_type()==1){ %>
                            <li class="g-col-lg-4">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                              <figure>
                                  <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname"><%=m.getActivity_title() %></h3>
                                      <p><%=m.getStart_date() %>~<%=m.getFinish_date() %></p>
                                      <div class="tabtext">
                                          <!-- <p>서울</p> -->
                                          <p><%=m.getActivity_place() %></p>
                                      </div>
                                  </figcaption>
                              </figure>
                              </a>
                      </li>
                      <%} %>
                      <%} %>
                  </ul>
              </section>


              <section id="tab22">
                        <ul class="grid">
                        <%for(ActivityMember m:actmemberList){ %>
                  		<%if(m.getRegion_type()==100 && m.getActivity_type()==2){ %>
                            <li class="g-col-lg-4">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                              <figure>
                                  <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname"><%=m.getActivity_title() %></h3>
                                      <p><%=m.getStart_date() %>~<%=m.getFinish_date() %></p>
                                      <div class="tabtext">
                                          <!-- <p>서울</p> -->
                                          <p><%=m.getActivity_place() %></p>
                                      </div>
                                  </figcaption>
                              </figure>
                              </a>
                      </li>
                      <%} %>
                      <%} %>
                  </ul>
              </section>
              <section id="tab23">
                        <ul class="grid">
                        <%for(ActivityMember m:actmemberList){ %>
                  		<%if(m.getRegion_type()==100 && m.getActivity_type()==3){ %>
                            <li class="g-col-lg-4">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                              <figure>
                                  <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname"><%=m.getActivity_title() %></h3>
                                      <p><%=m.getStart_date() %>~<%=m.getFinish_date() %></p>
                                      <div class="tabtext">
                                          <!-- <p>서울</p> -->
                                          <p><%=m.getActivity_place() %></p>
                                      </div>
                                  </figcaption>
                              </figure>
                              </a>
                      </li>
                      <%} %>
                      <%} %>
                  </ul>
              </section>
              <section id="tab24">
                        <ul class="grid">
                        <%for(ActivityMember m:actmemberList){ %>
                  		<%if(m.getRegion_type()==100 && m.getActivity_type()==4){ %>
                            <li class="g-col-lg-4">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                              <figure>
                                  <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname"><%=m.getActivity_title() %></h3>
                                      <p><%=m.getStart_date() %>~<%=m.getFinish_date() %></p>
                                      <div class="tabtext">
                                          <!-- <p>서울</p> -->
                                          <p><%=m.getActivity_place() %></p>
                                      </div>
                                  </figcaption>
                              </figure>
                              </a>
                      </li>
                      <%} %>
                      <%} %>
                  </ul>
              </section>
              <section id="tab25">
                        <ul class="grid">
                        <%for(ActivityMember m:actmemberList){ %>
                  		<%if(m.getRegion_type()==100 && m.getActivity_type()==5){ %>
                            <li class="g-col-lg-4">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                              <figure>
                                  <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname"><%=m.getActivity_title() %></h3>
                                      <p><%=m.getStart_date() %>~<%=m.getFinish_date() %></p>
                                      <div class="tabtext">
                                          <!-- <p>서울</p> -->
                                          <p><%=m.getActivity_place() %></p>
                                      </div>
                                  </figcaption>
                              </figure>
                              </a>
                      </li>
                      <%} %>
                      <%} %>
                  </ul>
              </section>
              <section id="tab26">
                        <ul class="grid">
                        <%for(ActivityMember m:actmemberList){ %>
                  		<%if(m.getRegion_type()==100 && m.getActivity_type()==6){ %>
                            <li class="g-col-lg-4">
                                <a href="SelectOneCon?activity_no=<%=m.getActivity_no() %>">
                              <figure>
                                  <div><img
                                          src="<%=m.getActivity_pic() %>"
                                          alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname"><%=m.getActivity_title() %></h3>
                                      <p><%=m.getStart_date() %>~<%=m.getFinish_date() %></p>
                                      <div class="tabtext">
                                          <!-- <p>서울</p> -->
                                          <p><%=m.getActivity_place() %></p>
                                      </div>
                                  </figcaption>
                              </figure>
                              </a>
                      </li>
                      <%} %>
                      <%} %>
                  </ul>
              </section>
          </div>
      </div>
  </main>
  <jsp:include page="/include/footer.jsp"></jsp:include>
  <jsp:include page="/include/script.jsp"></jsp:include>
</body>

</html>