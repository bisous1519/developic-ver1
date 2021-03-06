<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.dia.user.model.vo.User"%>
<%@ page import="java.util.ArrayList, com.dia.photo.model.vo.Comment"%>
<%
ArrayList<Comment> list = (ArrayList<Comment>)request.getAttribute("list");
%>

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
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets//css//mypage/comment.css" />
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
  </head>
  <body>
    
    	<%@ include file="../../common/menubar.jsp" %>
    
        <!-- 여기에 컨텐츠 작성 -->
        <div class="mypage-container">
          <div class="mypage-left">
            <div class="title">
              <h5>MYPAGE</h5>
            </div>
            <!-- 마이페이지 컨텐츠 -->
            <div class="label">
              나의 댓글 목록
              <em></em>
            </div>
            <div class="mypage--item-container">
              <!-- 아이템 -->
              
              <%for(Comment c : list){ %>
	              <div class="comment--box">
	              	
	                <div class="comment--img-box">
	                  <img src="${pageContext.request.contextPath}/assets/uploads/<%= c.getPhotoSrc() %>" alt="" />
	                </div>
	                <div class="common--summary comment--summary">
	                  <h2><%= c.getPhotoName() %></h2>
	                  <p><%= c.getCommentContent() %></p>
	                </div>
	                <div class="comment--remove">
	                  <i
	                    class="far fa-trash-alt"
	                    @click="setDeleteCommentModal"
	                  ></i>
	                </div>
	              </div>
                <%} %>
              
              <!-- 
              <div class="comment--box">
                <div class="comment--img-box">
                  <img src="${pageContext.request.contextPath}/assets/images/오로라.jpg" alt="" />
                </div>
                
                <div class="common--summary comment--summary">
                  <h2>STEELHEAD AND SPINES IN ALASKA</h2>
                  <p></p>
                </div>
                
                <div class="comment--remove">
                  <i
                    class="far fa-trash-alt"
                    @click="setDeleteCommentModal"
                  ></i>
                </div>
              </div>
              <div class="comment--box">
                <div class="comment--img-box">
                  <img src="${pageContext.request.contextPath}/assets/images/오로라.jpg" alt="" />
                </div>
                <div class="common--summary comment--summary">
                  <h2>STEELHEAD AND SPINES IN ALASKA</h2>
                  <p>첫번째 댓글입니다.</p>
                </div>
                <div class="comment--remove">
                  <i
                    class="far fa-trash-alt"
                    @click="setDeleteCommentModal"
                  ></i>
                </div>
              </div> -->
            </div>
          </div>
          <div class="mypage-right">
            <!-- 네비게이션바 -->
            <ul class="right-nav">
              <li>
                <a href="myinfo.html">▷개인정보수정</a>
              </li>
              <!--  
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
              -->
              <li>
                <a href="/dia/list.cm?userNo=<%= loginUser.getUserNo() %>" class="nav--active">▷나의 댓글 목록</a>
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
      <div class="modal--container" :class="{modalActive:deleteCommentModal}">
        <div class="modal--box">
          <h1>삭제하시겠습니까?</h1>
          <div class="gap"></div>
          <div class="gap"></div>
          <div class="modal--btn-box">
            <button class="btn" @click="setDeleteCommentModal">취소</button>
            <button class="btn btn-yellow">삭제</button>
          </div>
        </div>
      </div>

      <script src="${pageContext.request.contextPath}/assets/js/mypage/index.js" defer></script>
    </div>
  </body>
</html>
