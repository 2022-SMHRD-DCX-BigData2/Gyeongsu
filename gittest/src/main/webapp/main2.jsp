<%@page import="project.domain.UserMember"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false" %>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
	UserMember loginMember = (UserMember)session.getAttribute("loginMember");

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
    <!-- 해더 -->
    <jsp:include page="header.jsp"></jsp:include>




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
      <h1>문화체험</h1>
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
</body>

</html>