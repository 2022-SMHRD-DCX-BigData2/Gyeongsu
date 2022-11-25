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
    <jsp:include page="/include/header.jsp"></jsp:include>




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
        <h1>경상도/부산</h1>
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
                                        <h3 class="tabname">경상도행사2</h3>
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
                                        <h3 class="tabname">경상도행사2</h3>
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
                                        <h3 class="tabname">경상도행사2</h3>
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
                                        <h3 class="tabname">경상도행사2</h3>
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
                                        <h3 class="tabname">경상도행사2</h3>
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
                                        <h3 class="tabname">경상도행사3</h3>
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
                                        <h3 class="tabname">경상도행사3</h3>
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
                                        <h3 class="tabname">경상도행사3</h3>
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
                                        <h3 class="tabname">경상도행사3</h3>
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
                                        <h3 class="tabname">경상도행사3</h3>
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

                <section id="tab14">
                    <ul>
                        <li>
                            <a href="#a">

                                <figure>
                                    <div><img
                                            src="http://ticketimage.interpark.com/rz/image/play/goods/poster/22/22015097_p_s.jpg"
                                            alt=""></div>
                                    <figcaption>
                                        <h3 class="tabname">경상도행사4</h3>
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
                                        <h3 class="tabname">경상도행사4</h3>
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
                                        <h3 class="tabname">경상도행사4</h3>
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
                                        <h3 class="tabname">경상도행사4</h3>
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
                                        <h3 class="tabname">경상도행사4</h3>
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
                <section id="tab15">
                    <ul>
                        <li>
                            <a href="#a">

                                <figure>
                                    <div><img
                                            src="http://ticketimage.interpark.com/rz/image/play/goods/poster/22/22015097_p_s.jpg"
                                            alt=""></div>
                                    <figcaption>
                                        <h3 class="tabname">경상도행사5</h3>
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
                                        <h3 class="tabname">경상도행사5</h3>
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
                                        <h3 class="tabname">경상도행사5</h3>
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
                                        <h3 class="tabname">경상도행사5</h3>
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
                                        <h3 class="tabname">경상도행사5</h3>
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
                <section id="tab16">
                    <ul>
                        <li>
                            <a href="#a">

                                <figure>
                                    <div><img
                                            src="http://ticketimage.interpark.com/rz/image/play/goods/poster/22/22015097_p_s.jpg"
                                            alt=""></div>
                                    <figcaption>
                                        <h3 class="tabname">경상도행사6</h3>
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
                                        <h3 class="tabname">경상도행사6</h3>
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
                                        <h3 class="tabname">경상도행사6</h3>
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
                                        <h3 class="tabname">경상도행사6</h3>
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
                                        <h3 class="tabname">경상도행사6</h3>
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

        <h1>전라도/광주</h1>
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
                                        <h3 class="tabname">전라도행사2</h3>
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
                                        <h3 class="tabname">전라도행사2</h3>
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
                                        <h3 class="tabname">전라도행사2</h3>
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
                                        <h3 class="tabname">전라도행사2</h3>
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
                                        <h3 class="tabname">전라도행사2</h3>
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
                                        <h3 class="tabname">전라도행사3</h3>
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
                                        <h3 class="tabname">전라도행사3</h3>
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
                                        <h3 class="tabname">전라도행사3</h3>
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
                                        <h3 class="tabname">전라도행사3</h3>
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
                                        <h3 class="tabname">전라도행사3</h3>
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

                <section id="tab24">
                    <ul>
                        <li>
                            <a href="#a">

                                <figure>
                                    <div><img
                                            src="http://ticketimage.interpark.com/rz/image/play/goods/poster/22/22015097_p_s.jpg"
                                            alt=""></div>
                                    <figcaption>
                                        <h3 class="tabname">전라도행사4</h3>
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
                                        <h3 class="tabname">전라도행사4</h3>
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
                                        <h3 class="tabname">전라도행사4</h3>
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
                                        <h3 class="tabname">전라도행사4</h3>
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
                                        <h3 class="tabname">전라도행사4</h3>
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
                <section id="tab25">
                    <ul>
                        <li>
                            <a href="#a">

                                <figure>
                                    <div><img
                                            src="http://ticketimage.interpark.com/rz/image/play/goods/poster/22/22015097_p_s.jpg"
                                            alt=""></div>
                                    <figcaption>
                                        <h3 class="tabname">전라도행사5</h3>
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
                                        <h3 class="tabname">전라도행사5</h3>
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
                                        <h3 class="tabname">전라도행사5</h3>
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
                                        <h3 class="tabname">전라도행사5</h3>
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
                                        <h3 class="tabname">전라도행사5</h3>
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
                <section id="tab26">
                    <ul>
                        <li>
                            <a href="#a">

                                <figure>
                                    <div><img
                                            src="http://ticketimage.interpark.com/rz/image/play/goods/poster/22/22015097_p_s.jpg"
                                            alt=""></div>
                                    <figcaption>
                                        <h3 class="tabname">전라도행사6</h3>
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
                                        <h3 class="tabname">전라도행사6</h3>
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
                                        <h3 class="tabname">전라도행사6</h3>
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
                                        <h3 class="tabname">전라도행사6</h3>
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
                                        <h3 class="tabname">전라도행사6</h3>
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
  <jsp:include page="/include/footer.jsp"></jsp:include>
  <jsp:include page="/include/script.jsp"></jsp:include>
   
</body>

</html>