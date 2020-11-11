<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.dia.user.model.vo.User"%>
	
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link
      rel="stylesheet"
      href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.8.2/css/all.min.css"
    />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/index.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/common.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage/common.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/mypage/userinfo.css" />
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
  </head>
  <body>
  
     
 <%@ include file="../../common/menubar.jsp" %>
    

<%
		String userId = loginUser.getUserId();
		String userName = loginUser.getUserName();
		
		String email = (loginUser.getEmail() == null) ? "" : loginUser.getEmail();
		String userNickname = (loginUser.getUserNickname() == null) ? "" : loginUser.getUserNickname();		
		String phone = (loginUser.getPhone() == null) ? "" : loginUser.getPhone();
		String sns = (loginUser.getSns() == null) ? "" : loginUser.getSns();		
		String address = (loginUser.getAddress() == null) ? "" : loginUser.getAddress();
		String userInfo = (loginUser.getUserInfo() == null) ? "" : loginUser.getUserInfo();
		String userAvatarSrc = (loginUser.getUserAvatarSrc() == null) ? "" : loginUser.getUserAvatarSrc();

%>  	
	
	
        <div class="mypage-container">
          <div class="mypage-left">
            <div class="title">
              <h5>MYPAGE</h5>
            </div>
            <!-- 마이페이지 컨텐츠 -->
            <div class="label">
              개인정보관리
              <em></em>
            </div>
            <div class="gapper"></div>
             <form action="/dia/update.us" method="POST" class="form" id="myPageForm">
              <h2 class="sub--label">아바타</h2>
              <div class="avatar--wrapper">
                <img
                  id="title-img"
                  class="avatar-img"
                  src="${pageContext.request.contextPath}/assets/images/<%= userAvatarSrc %>"
                  alt=""
                />
              </div>
              <div id="image-input-value"></div>
           <!-- <input
                id="image-input"
                type="file"
                hidden
                name="avatar"
                onchange="loadImg(this)"
              />-->
              <button id="img-select" type="button" class="btn">
                사진선택
              </button>
              <div class="gapper"></div>
              <div class="input--box">
                <label>아이디</label>
				<input type="text" name="userId" class="input" maxlength="12" required value="<%= userId %>" readonly/>
              </div>
              <div class="input--box">
                <label>이름</label>
                <input type="text" name="userName" class="input" required value="<%= userName %>"/> 
              </div>
                <div class="input--box">
                <label>이메일</label>
                <input type="email" name="email" required value="<%= email %>"/>
              </div>
              <div class="input--box">
                <label>닉네임</label>
                <input type="text" name="userNickname" value="<%= userNickname %>"/>
              </div>
              <div class="input--box">
                <label>연락처</label>
                <input type="text" name="phone" value="<%= phone %>"/>
              </div>
              <div class="input--box">
                <label>SNS</label>
                <input type="text" name="sns" value="<%= sns %>"/>
              </div>
              <div class="input--box input--long">
                <label>주소</label>
                <input type="text" name="address" value="<%= address %>"/>
              </div>
              <div class="gapper"></div>
              <h2 class="sub--label">작가소개</h2>
              <textarea class="artist-info--inut" name="userInfo"><%= userInfo %></textarea>
              <div class="btn-wrapper">
                <button class="btn" type="button" @click="setLeaveModal">
                  회원탈퇴
                </button>
                <button class="btn btn-yellow" type="submit">수정</button>
              </div>
            </form>
          </div>
          <div class="mypage-right">
            <!-- 네비게이션바 -->
            <ul class="right-nav">
              <li>
                <a href="#" class="nav--active">▷개인정보수정</a>
              </li>
              <li>
                <a href="likelist.html">▷좋아요목록</a>
              </li>
              <li>
                <a href="buylist.html">▷구매내역</a>
              </li>
              <li>
                <a href="cart.html">▷장바구니</a>
              </li>
              <li>
                <a href="applyresult.html">▷작가신청결과 OR</a>
              </li>
              <li>
                <a href="selllist.html">▷판매내역</a>
              </li>
              <li>
                <a href="commentList.html">▷나의 댓글 목록</a>
              </li>
              <li>
                <a href="qnaList.html">▷1:1문의내역</a>
              </li>
            </ul>
          </div>
        </div>
        <!-- 여기까지 -->
      </main>

      <!-- 모달 -->
      <div class="modal--container" :class="{modalActive:leaveModal}">
        <div class="modal--box">
          <h1>탈퇴 하시겠습니까?</h1>
             <div class="gap"></div>      
             <form action="/dia/delete.us" method="get">
                 <input type="hidden" name="useId" value="<%=userId %>">
                 <input type="password" name="userPwd" class="modal--input" placeholder="PASSWORD" required>
		          <div class="gap"></div>
		          <div class="gap"></div>
		          <div class="modal--btn-box">
		          
	            <button class="btn" @click="setLeaveModal">닫기</button>
	            <button type="submit" class="btn btn-yellow">확인</button>
	          </form>  
          </div>
        </div>
      </div>

      <script src="${pageContext.request.contextPath}/assets/js/mypage/index.js" defer></script>

  </body>
</html>