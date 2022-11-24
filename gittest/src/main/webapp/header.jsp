<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="modal fade" id="exampleModalToggle" data-bs-backdrop="static" aria-hidden="true" aria-labelledby="exampleModalToggleLabel"
        tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalToggleLabel">회원가입</h1>
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <p>아이디</p>
                    <input type="text" placeholder="아이디" name="id" />
                    <p>비밀번호</p>
                    <input type="password" placeholder="비밀번호" name="pw"  class="password"/>
                    <p>닉네임</p>
                    <input type="text" placeholder="닉네임" name="name" />
                </div>
                <div class="modal-footer">
                    <button class="btn btn-primary" data-bs-target="#exampleModalToggle2" data-bs-toggle="modal">다음</button>
                </div>
            </div>
        </div>
    </div>
    <div class="modal fade" id="exampleModalToggle2" data-bs-backdrop="static" aria-hidden="true" aria-labelledby="exampleModalToggleLabel2"
        tabindex="-1">
        <div class="modal-dialog modal-dialog-centered">
            <div class="modal-content">
                <div class="modal-header">
                    <h1 class="modal-title fs-5" id="exampleModalToggleLabel2">취향분석</h1>
                    
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
                <div class="modal-body">
                    <form action="" method="post">
                        <h5>MBTI</h5>
                        <div class=" row row-cols-4 ">
                            <!-- <h4>MBTI</h4> -->
                            <div class="box-radio-input MBTI">
                                <input type="radio" name="mbti-1" value="E" class="box-radio-input" id="mbti-e"><label for="mbti-e">E</label>
                                <input type="radio" name="mbti-1" value="I" class="box-radio-input" id="mbti-i"><label for="mbti-i">I</label>
                            </div>
                            <div class="box-radio-input MBTI">
                                <input type="radio" name="mbti-2" value="S" class="box-radio-input" id="mbti-s"><label for="mbti-s">S</label>
                                <input type="radio" name="mbti-2" value="N" class="box-radio-input" id="mbti-n"><label for="mbti-n">N</label>
                            </div>
                            <div class="box-radio-input MBTI">
                                <input type="radio" name="mbti-3" value="T" class="box-radio-input" id="mbti-t"><label for="mbti-t">T</label>
                                <input type="radio" name="mbti-3" value="F" class="box-radio-input" id="mbti-f"><label for="mbti-f">F</label>
                            </div>
                            <div class="box-radio-input MBTI">
                                <input type="radio" name="mbti-4" value="P" class="box-radio-input" id="mbti-p"><label for="mbti-p">P</label>
                                <input type="radio" name="mbti-4" value="J" class="box-radio-input" id="mbti-j"><label for="mbti-j">J</label>
                            </div>
                        </div>
                        <h5>#키워드분석</h5>
                        <!-- 1번째줄 -->
                        <div class=" row row-cols-3 ">
                            <!-- <h4>MBTI</h4> -->
                            <div class="box-radio-input MBTI">
                                <input type="checkbox" name="keyword" value="실외" class="box-radio-input" id="keyword-1"><label for="keyword-1">#실외</label>
                            </div>
                            <div class="box-radio-input MBTI">
                                <input type="checkbox" name="keyword" value="실내" class="box-radio-input" id="keyword-2"><label for="keyword-2">#실내</label>
                            </div>
                            <div class="box-radio-input MBTI">
                                <input type="checkbox" name="keyword" value="활동적인" class="box-radio-input" id="keyword-3"><label for="keyword-3">#활동적인</label>
                            </div>
                        </div>
                        <!-- 2번째줄 -->
                        <div class=" row row-cols-4 keyword-box">
                            <!-- <h4>MBTI</h4> -->
                            <div class="box-radio-input MBTI">
                                <input type="checkbox" name="keyword" value="자연적인" class="box-radio-input" id="keyword-4"><label for="keyword-4">#자연적인</label>
                            </div>
                            <div class="box-radio-input MBTI">
                                <input type="checkbox" name="keyword" value="신나는" class="box-radio-input" id="keyword-5"><label for="keyword-5">#신나는</label>
                            </div>
                            <div class="box-radio-input MBTI">
                                <input type="checkbox" name="keyword" value="활발한" class="box-radio-input" id="keyword-6"><label for="keyword-6">#활발한</label>
                            </div>
                            <div class="box-radio-input MBTI">
                                <input type="checkbox" name="keyword" value="조용한" class="box-radio-input" id="keyword-7"><label for="keyword-7">#조용한</label>
                            </div>
                        </div>
                        <!-- 3번째줄 -->
                        <div class=" row row-cols-3 ">
                            <!-- <h4>MBTI</h4> -->
                            <div class="box-radio-input MBTI">
                                <input type="checkbox" name="keyword" value="실외" class="box-radio-input" id="keyword-8"><label for="keyword-8">#실외</label>
                            </div>
                            <div class="box-radio-input MBTI">
                                <input type="checkbox" name="keyword" value="실내" class="box-radio-input" id="keyword-9"><label for="keyword-9">#실내</label>
                            </div>
                            <div class="box-radio-input MBTI">
                                <input type="checkbox" name="keyword" value="활동적인" class="box-radio-input" id="keyword-10"><label for="keyword-10">#활동적인</label>
                            </div>
                        </div>
                        <!-- 4번째줄 -->
                        <div class=" row row-cols-4 keyword-box">
                            <!-- <h4>MBTI</h4> -->
                            <div class="box-radio-input MBTI">
                                <input type="checkbox" name="keyword" value="자연적인" class="box-radio-input" id="keyword-11"><label for="keyword-11">#자연적인</label>
                            </div>
                            <div class="box-radio-input MBTI">
                                <input type="checkbox" name="keyword" value="신나는" class="box-radio-input" id="keyword-12"><label for="keyword-12">#신나는</label>
                            </div>
                            <div class="box-radio-input MBTI">
                                <input type="checkbox" name="keyword" value="활발한" class="box-radio-input" id="keyword-13"><label for="keyword-13">#활발한</label>
                            </div>
                            <div class="box-radio-input MBTI">
                                <input type="checkbox" name="keyword" value="조용한" class="box-radio-input" id="keyword-7"><label for="keyword-7">#조용한</label>
                            </div>
                        </div>
                        <!-- 5번째줄 -->
                        <div class=" row row-cols-3 ">
                            <!-- <h4>MBTI</h4> -->
                            <div class="box-radio-input MBTI">
                                <input type="checkbox" name="keyword" value="실외" class="box-radio-input" id="keyword-14"><label for="keyword-14">#실외</label>
                            </div>
                            <div class="box-radio-input MBTI">
                                <input type="checkbox" name="keyword" value="실내" class="box-radio-input" id="keyword-15"><label for="keyword-15">#실내</label>
                            </div>
                            <div class="box-radio-input MBTI">
                                <input type="checkbox" name="keyword" value="활동적인" class="box-radio-input" id="keyword-16"><label for="keyword-16">#활동적인</label>
                            </div>
                        </div>
                        <!-- 6번째줄 -->
                        <div class=" row row-cols-4 keyword-box">
                            <!-- <h4>MBTI</h4> -->
                            <div class="box-radio-input MBTI">
                                <input type="checkbox" name="keyword" value="자연적인" class="box-radio-input" id="keyword-17"><label for="keyword-17">#자연적인</label>
                            </div>
                            <div class="box-radio-input MBTI">
                                <input type="checkbox" name="keyword" value="신나는" class="box-radio-input" id="keyword-18"><label for="keyword-18">#신나는</label>
                            </div>
                            <div class="box-radio-input MBTI">
                                <input type="checkbox" name="keyword" value="활발한" class="box-radio-input" id="keyword-19"><label for="keyword-19">#활발한</label>
                            </div>
                            <div class="box-radio-input MBTI">
                                <input type="checkbox" name="keyword" value="조용한" class="box-radio-input" id="keyword-20"><label for="keyword-20">#조용한</label>
                            </div>
                        </div>
                    </form>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                </div>
            </div>
        </div>
    </div>
    
<!-- 회원가입모달끝 -->
<!-- 로그인모달 -->

  
  <!-- Modal -->
  <div class="modal fade" id="staticBackdrop" data-bs-backdrop="static" data-bs-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
    <div class="modal-dialog">
      <div class="modal-content">
        <div class="modal-header">
          <h1 class="modal-title fs-5" id="staticBackdropLabel">로그인</h1>
          <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
        </div>
        <div class="modal-body">
            <p>아이디</p>
            <input type="text" placeholder="아이디" name="id" />
            <p>비밀번호</p>
            <input type="password" placeholder="비밀번호" name="pw" />
        </div>
        <div class="modal-footer">
          <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
          <button type="button" class="btn btn-primary">로그인</button>
        </div>
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
                    <div class="col"><a id="topleftmenu" data-bs-toggle="modal" data-bs-target="#staticBackdrop" role="button"><i class="bi bi-box-arrow-in-right"></i><span class="d-none d-md-none d-lg-block">로그인</span></a></div>
                    <div class="col"><a id="topleftmenu" data-bs-toggle="modal" href="#exampleModalToggle" role="button"><i class="bi bi-person-plus"></i><span class="d-none d-md-none d-lg-block">회원가입</span></a></div>
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
  </header>