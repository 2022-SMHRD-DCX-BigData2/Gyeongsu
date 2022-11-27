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
    <div class="modal fade" id="exampleModalToggle" data-bs-backdrop="static" aria-hidden="true" aria-labelledby="exampleModalToggleLabel"
        tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalToggleLabel">회원가입</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <form action="JoinCon" method="post">
                <div class="modal-body">
                	<input type="hidden" name="user_no" value="0">
                	<input type="hidden" name="mbti" placeholder="MBTI를 입력하세요" value="1234">
					<input type="hidden" name="key_no1" placeholder="키워드1를 입력하세요" value="1">
					<input type="hidden" name="key_no2" placeholder="키워드2를 입력하세요" value="2">
					<input type="hidden" name="key_no3" placeholder="키워드3를 입력하세요" value="3">
					<input type="hidden" name="key_no4" placeholder="키워드4를 입력하세요" value="4">
                    <p>아이디</p>
                    <input type="text" placeholder="아이디" name="id" />
                    <p>비밀번호</p>
                    <input type="password" placeholder="비밀번호" name="pw"  class="password"/>
                    <p>닉네임</p>
                    <input type="text" placeholder="닉네임" name="name" />
                </div>
                <div class="modal-footer">
                    <input class="btn btn-primary" data-bs-target="#exampleModalToggle2" data-bs-toggle="modal" type="submit" value="다음">
                </div>
                </form>
            </div>
        </div>
    </div>
    <div class="modal fade" id="exampleModalToggle2" data-bs-backdrop="static" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2"
        tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalToggleLabel2">MBTI</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    Hide this modal and show the first with the button below.
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
            </div>
        </div>
    </div>
    
<!-- 회원가입모달끝 -->
<!-- 로그인모달 -->
<!-- Button trigger modal -->
<!-- <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#staticBackdrop">
    Launch static backdrop modal
  </button> -->
  
  <!-- Modal -->
  <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
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
                  <a>Main img</a>
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
						<div class="col"><a id="topleftmenu" data-bs-toggle="modal" data-bs-target="#staticBackdrop" role="button"><i class="bi bi-box-arrow-in-right"></i>로그인</a></div>
                    	<div class="col"><a id="topleftmenu" data-bs-toggle="modal" href="#exampleModalToggle" role="button"><i class="bi bi-person-plus"></i>회원가입</a></div>
					</c:when>
					
					<c:otherwise>
						<header>
						<c:if test="${loginMember.id eq 'admin'}">
						
							<div class="col" align="right"><a href="select.jsp">회원관리</a></div>
						</c:if>
						</header>
						<% if(loginMember != null){ %>
					<div class="col" align="right"><a href="#"><%= loginMember.getId()%>님</a></div>
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
                  <a class="menuLink" href="#">문화체험</a>
                  <ul class="submenu">
                      <!-- 뮤지컬 , 콘서트,연극,클래식&오페라,무용&전통예술,전시&행사 -->
                      <li class=""><a href="#" class="submenuLink longLink">뮤지컬</a></li>
                      <li class=""><a href="#" class="submenuLink longLink">콘서트</a></li>
                      <li class=""><a href="#" class="submenuLink longLink">연극</a></li>
                      <li class=""><a href="#" class="submenuLink longLink">클래식&오페라</a></li>
                      <li class=""><a href="#" class="submenuLink longLink">무용&전통예술</a></li>
                      <li class=""><a href="#" class="submenuLink longLink">전시&행사</a></li>
                  </ul>
              </li>
              <li class="topMenuLi">
                  <a class="menuLink" href="#">게시판</a>
                  <ul class="submenu">
                      <li><a href="#" class="submenuLink longLink">문의 게시판</a></li>
                      <li><a href="#" class="submenuLink longLink">건의 게시판</a></li>
                      <li></li>
                  </ul>
              </li>
          </ul>
      </nav>
      <div id="">
          <!-- 전체 메뉴창   -->

      </div>
  </header>




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
      <h1>전라남도</h1>
      <div class="tabscontainer">
      		
          <ul class="tabsmenu">
              <li class="active">
                  <a href="#tab11">공연</a>
              </li>
              <li>
                  <a href="#tab12">축제</a>
              </li>
              <li>
                  <a href="#tab13">전시회</a>
              </li>
          </ul>

          <div class="tabselements">
              <section id="tab11" class="active">
                  <ul>
                  <%for(ActivityMember m:actmemberList){ %>
                      <li>
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
                      <!-- <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">가보자고</h3>
                                      <p>20221125~20221127</p>
                                      <div class="tabtext">
                                          <p>서울</p>
                                          <p>세종문화회관</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">싫은데</h3>
                                      <p>20221125~20221127</p>
                                      <div class="tabtext">
                                          <p>서울</p>
                                          <p>세종문화회관</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">가서놀자</h3>
                                      <p>20221125~20221127</p>
                                      <div class="tabtext">
                                          <p>서울</p>
                                          <p>세종문화회관</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">쉬고싶다</h3>
                                      <p>20221125~20221127</p>
                                      <div class="tabtext">
                                          <p>서울</p>
                                          <p>세종문화회관</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li> -->
                  </ul>
              </section>


              <section id="tab12">
                  <ul>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img
                                          src="http://ticketimage.interpark.com/rz/image/play/goods/poster/22/22015097_p_s.jpg"
                                          alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">더토핑2</h3>
                                      <p>20221125~20221127</p>
                                      <div class="tabtext">
                                          <p>서울</p>
                                          <p>세종문화회관</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름2</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름2</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름2</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름2</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                  </ul>
              </section>
              <section id="tab13">
                  <ul>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img
                                          src="http://ticketimage.interpark.com/rz/image/play/goods/poster/22/22015097_p_s.jpg"
                                          alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">더토핑3</h3>
                                      <p>20221125~20221127</p>
                                      <div class="tabtext">
                                          <p>서울</p>
                                          <p>세종문화회관</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름3</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름3</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름3</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름3</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                  </ul>
              </section>
          </div>
      </div>
		
      <h1>야놀자</h1>
      <div class="tabscontainer">
          <ul class="tabsmenu">
              <li class="active">
                  <a href="#tab21">공연</a>
              </li>
              <li>
                  <a href="#tab22">축제</a>
              </li>
              <li>
                  <a href="#tab23">전시회</a>
              </li>
          </ul>

          <div class="tabselements">
              <section id="tab21" class="active">
                  <ul>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img
                                          src="http://ticketimage.interpark.com/rz/image/play/goods/poster/22/22015097_p_s.jpg"
                                          alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">더토핑</h3>
                                      <p>20221125~20221127</p>
                                      <div class="tabtext">
                                          <p>서울</p>
                                          <p>세종문화회관</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">가보자고</h3>
                                      <p>20221125~20221127</p>
                                      <div class="tabtext">
                                          <p>서울</p>
                                          <p>세종문화회관</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">싫은데</h3>
                                      <p>20221125~20221127</p>
                                      <div class="tabtext">
                                          <p>서울</p>
                                          <p>세종문화회관</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">가서놀자</h3>
                                      <p>20221125~20221127</p>
                                      <div class="tabtext">
                                          <p>서울</p>
                                          <p>세종문화회관</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">쉬고싶다</h3>
                                      <p>20221125~20221127</p>
                                      <div class="tabtext">
                                          <p>서울</p>
                                          <p>세종문화회관</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                  </ul>
              </section>


              <section id="tab22">
                  <ul>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img
                                          src="http://ticketimage.interpark.com/rz/image/play/goods/poster/22/22015097_p_s.jpg"
                                          alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">더토핑2</h3>
                                      <p>20221125~20221127</p>
                                      <div class="tabtext">
                                          <p>서울</p>
                                          <p>세종문화회관</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름2</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름2</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름2</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름2</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                  </ul>
              </section>
              <section id="tab23">
                  <ul>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img
                                          src="http://ticketimage.interpark.com/rz/image/play/goods/poster/22/22015097_p_s.jpg"
                                          alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">더토핑3</h3>
                                      <p>20221125~20221127</p>
                                      <div class="tabtext">
                                          <p>서울</p>
                                          <p>세종문화회관</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름3</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름3</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름3</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름3</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                  </ul>
              </section>
          </div>
      </div>
      <h1>문화공연</h1>
      <div class="tabscontainer">
          <ul class="tabsmenu">
              <li class="active">
                  <a href="#tab31">Tab 1</a>
              </li>
              <li>
                  <a href="#tab32">Tab 2</a>
              </li>
              <li>
                  <a href="#tab33">Tab 3</a>
              </li>
          </ul>

          <div class="tabselements">
              <section id="tab31" class="active">
                  <ul>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img
                                          src="http://ticketimage.interpark.com/rz/image/play/goods/poster/22/22015097_p_s.jpg"
                                          alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">더토핑1</h3>
                                      <p>20221125~20221127</p>
                                      <div class="tabtext">
                                          <p>서울</p>
                                          <p>세종문화회관</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름1</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름1</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름1</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름1</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                  </ul>
              </section>
              <section id="tab32">
                  <ul>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img
                                          src="http://ticketimage.interpark.com/rz/image/play/goods/poster/22/22015097_p_s.jpg"
                                          alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">더토핑2</h3>
                                      <p>20221125~20221127</p>
                                      <div class="tabtext">
                                          <p>서울</p>
                                          <p>세종문화회관</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름2</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름2</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름2</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름2</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                  </ul>
              </section>
              <section id="tab33">
                  <ul>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img
                                          src="http://ticketimage.interpark.com/rz/image/play/goods/poster/22/22015097_p_s.jpg"
                                          alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">더토핑3</h3>
                                      <p>20221125~20221127</p>
                                      <div class="tabtext">
                                          <p>서울</p>
                                          <p>세종문화회관</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름3</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름3</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름3</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름3</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                  </ul>
              </section>
          </div>
      </div>
      <h1>초특가</h1>
      <div class="tabscontainer">
          <ul class="tabsmenu">
              <li class="active">
                  <a href="#tab41">공연</a>
              </li>
              <li>
                  <a href="#tab42">축제</a>
              </li>
              <li>
                  <a href="#tab43">전시회</a>
              </li>
          </ul>

          <div class="tabselements">
              <section id="tab41" class="active">
                  <ul>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img
                                          src="http://ticketimage.interpark.com/rz/image/play/goods/poster/22/22015097_p_s.jpg"
                                          alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">더토핑</h3>
                                      <p>20221125~20221127</p>
                                      <div class="tabtext">
                                          <p>서울</p>
                                          <p>세종문화회관</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">가보자고</h3>
                                      <p>20221125~20221127</p>
                                      <div class="tabtext">
                                          <p>서울</p>
                                          <p>세종문화회관</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">싫은데</h3>
                                      <p>20221125~20221127</p>
                                      <div class="tabtext">
                                          <p>서울</p>
                                          <p>세종문화회관</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">가서놀자</h3>
                                      <p>20221125~20221127</p>
                                      <div class="tabtext">
                                          <p>서울</p>
                                          <p>세종문화회관</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">쉬고싶다</h3>
                                      <p>20221125~20221127</p>
                                      <div class="tabtext">
                                          <p>서울</p>
                                          <p>세종문화회관</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                  </ul>
              </section>


              <section id="tab42">
                  <ul>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img
                                          src="http://ticketimage.interpark.com/rz/image/play/goods/poster/22/22015097_p_s.jpg"
                                          alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">더토핑2</h3>
                                      <p>20221125~20221127</p>
                                      <div class="tabtext">
                                          <p>서울</p>
                                          <p>세종문화회관</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름2</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름2</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름2</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름2</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                  </ul>
              </section>
              <section id="tab43">
                  <ul>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img
                                          src="http://ticketimage.interpark.com/rz/image/play/goods/poster/22/22015097_p_s.jpg"
                                          alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">더토핑3</h3>
                                      <p>20221125~20221127</p>
                                      <div class="tabtext">
                                          <p>서울</p>
                                          <p>세종문화회관</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름3</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름3</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름3</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                      <li>
                          <a href="#a">

                              <figure>
                                  <div><img src="https://via.placeholder.com/200x275" alt=""></div>
                                  <figcaption>
                                      <h3 class="tabname">행사이름3</h3>
                                      <p>0000.00.00~0000.00.00</p>
                                      <div class="tabtext">
                                          <p>지역</p>
                                          <p>장소이름</p>
                                      </div>
                                  </figcaption>
                              </figure>
                          </a>
                      </li>
                  </ul>
              </section>
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
                                          <h6>팀장 : 신경수(프로젝트 총괄, 일정계획, 데이터 크롤링, 추천 알고리즘, 서버 구축)</h6>
                                      </li>
                                      <li class="">
                                          <p>최서정(DB 구축, 데이터 전처리, 키워드 분석)</p>
                                      </li>
                                      <li class="">
                                          <p>이지연(데이터 크롤링, 데이터 전처리, 키워드 분석)</p>
                                      </li>
                                      <li class="">
                                          <p>권호주(웹 기능 구현, 웹 디자인, 데이터 크롤링)</p>
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
    // content, cate, index를 인수로 받아 form 태그로 전송하는 함수
    function savePage(activity_title,activity_no = 0) {
      // name이 paging인 태그
      var f = document.saving;

      // form 태그의 하위 태그 값 매개 변수로 대입
      f.activity_no.value = activity_no;
      f.activity_title.value = activity_title;

      // input태그의 값들을 전송하는 주소
      f.action = "SelectOneCon"

      // 전송 방식 : post
      f.method = "post"
      f.submit();
    };
    </script>
</body>

</html>