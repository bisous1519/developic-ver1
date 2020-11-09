<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.dia.user.model.vo.User"%>

<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/index.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/common.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/profile.css" />
  </head>
  <body>
    <div id="app">
      <header class="header--container">
        <div class="header--box">
          <a href="#">
            <img src="${pageContext.request.contextPath}/assets/images/logo.png" width="250px" alt="" />
          </a>
          <div class="header--right">
            <a href="">LOGIN</a>
            <a href="">SIGNUP</a>
          </div>
        </div>
      </header>
      <main class="main--container">
        <ul class="navigation--main">
          <a href="">
            <li>PICFEED</li>
          </a>
          <a href="">
            <li>PICSHOP</li>
          </a>
          <a href="">
            <li>ABOUT</li>
          </a>
        </ul>
        <div class="pro--container">
          <div class="pro--title">
            <!-- profile 로고 들어가는 영역 -->
            <div class="title">
              <h5>PROFILE</h5>
            </div>
          </div>
          <div class="pro--profile">
            <div class="profile-L">
              <div class="pro--userImgWrapper">
                <img
                  id="pro--userImg"
                  class="pro--userImgY"
                  src="../../assets/images/cat.jpg"
                />
              </div>
              <h2>User</h2>
              <p>email@gmail.com</p>
              <ul>
                <li id="pro--sns-in"><a href="#">in</a></li>
                <li id="pro--sns-fa"><a href="#">fa</a></li>
                <li id="pro--sns-tw"><a href="#">tw</a></li>
              </ul>
            </div>
            <div class="profile-R">
              <h2>ABOUT ARTIST</h2>
              <div class="pro-gap"></div>
              <ul class="pro--ulNum">
                <li>144</li>
                <li>14</li>
                <li>342</li>
              </ul>
              <ul class="pro--ulName">
                <li>Pictures</li>
                <li>PicStory</li>
                <li>Liked</li>
              </ul>
              <div class="pro-gap"></div>
              <span>
                소금이라 대고, 일월과 것이다. 싶이 밥을 사라지지 노년에게서
                위하여서. 듣기만 주며, 하였으며, 그들에게 인생에 불러 있는가?
                길지 되려니와, 생의 가슴에 힘있다. 천자만홍이 물방아 것은
                있으랴?소금이라 대고, 일월과 것이다.그들에게 인생에 불러 있는가?
                길지 되려니와, 생의 가슴에 힘있다. 천자만홍이 물방아 것은
                있으랴?소금이라 대고, 일월과 것이다.
              </span>
            </div>
          </div>
          <div class="pro--btnWrapper">
            <!-- 작가 본인의 프로필일때 : 작품등록버튼 -->
            <!-- <button class="btn btn-yellow" onclick="location.href='${pageContext.request.contextPath}/views/profile/edit.jsp';">작품등록</button> -->
            <button class="btn btn-yellow" onclick="location.href='${pageContext.request.contextPath}/edit.ph';">작품등록</button>
            <!-- 타유저일때 : 파도타기버튼 -->
            <!-- <button class="btn btn--wave">🌊</button> -->
          </div>
          <div class="pro-gap"></div>
          <div class="pro-gap"></div>
          <div class="pro--tab">
            <ul>
              <li id="pro--allBtn"><a href="#">ALL POST</a></li>
              <li id="pro--picBtn"><a href="#">PICSTORY</a></li>
            </ul>
          </div>
          <div class="pro-gap"></div>
          <div class="pro--btnWrapper">
            <i id="pro-changeBtn">🔄</i>
          </div>
          <div class="pro-gap"></div>
          <div id="pro--picstory" class="pro--picstory pro--twoC">
            <!-- 가로로 긴 사진이 기본..? -->
            <div class="pro--item">
              <img src="../../assets/images/cherry.jpg" />
              <p>2020-11-06</p>
              <span>Seriesssssssssss</span>
            </div>
            <div class="pro--item">
              <img src="../../assets/images/film.jpg" />
              <p>2020-11-06</p>
              <span>Series</span>
            </div>
            <div class="pro--item">
              <img src="../../assets/images/moon.jpg" />
              <p>2020-11-06</p>
              <span>Series</span>
            </div>
            <div class="pro--item">
              <img src="../../assets/images/pizza.jpg" />
              <p>2020-11-06</p>
              <span>Series</span>
            </div>
            <div class="pro--item">
              <img src="../../assets/images/pengsu.jpg" />
              <p>2020-11-06</p>
              <span>Series</span>
            </div>
            <div class="pro--item">
              <img src="../../assets/images/lemon.jpg" />
              <p>2020-11-06</p>
              <span>Series</span>
            </div>
            <div class="pro--item">
              <img src="../../assets/images/city.jpg" />
              <p>2020-11-06</p>
              <span>Series</span>
            </div>
          </div>
        </div>
      </main>
    </div>

    <script src="../../assets/js/profile.js" defer></script>
  </body>
</html>