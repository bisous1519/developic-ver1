<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.util.ArrayList, com.dia.cs.model.vo.Notices"
	import="com.dia.cs.model.vo.Faqs" %>
<% 
	ArrayList<Notices> noticesList = (ArrayList<Notices>)request.getAttribute("noticesList");
	ArrayList<Faqs> faqsList = (ArrayList<Faqs>)request.getAttribute("faqsList");
%>
<!DOCTYPE html>
<html lang="ko">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>DeveloPic | About</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/index.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/common.css" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/about.css" />
    <script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
  </head>
  <body>
  
	<%@ include file="../common/menubar.jsp" %>
	
        <section class="about--container">
          <div class="title">
            <h5>ABOUT</h5>
          </div>
          <div class="about--horizental-box">
            <div class="left-section">
              <div class="gapper" id="about-service"></div>
              <div class="label">SERVICE<em></em></div>
              <div class="apply-container">
                <div class="inner-box">
                  <div class="summary">
                    <h5>작가신청</h5>
                    <span>will you with me?</span>
                  </div>
                  <butun class="btn btn-yellow" @click="setApplyModal"
                    >작가신청</butun
                  >
                </div>
              </div>
              <div class="gapper" id="about-service"></div>
              <div class="label">NOTICE<em></em></div>
              <% for(Notices n : noticesList){ %>
              <!-- 공지글시작 -->
              <div class="about-list-title">
                <h1><%= n.getNoticeTitle() %></h1>
                ▼
              </div>
              <div class="about-list-detail">
                <p>
                  <%= n.getNoticeContent() %>
                </p>
                
              </div>
              <% } %>
              <!-- 끝 -->
              <div class="gapper"></div>
              <div class="gapper" id="about-faq"></div>
              <div class="faq-and-qna">
                <div class="faq-box">
                  <div class="label">FAQ<em></em></div>
                  <% for(Faqs f : faqsList){ %>
	                  <div class="about-list-title">
	                    <h1><%=f.getFaqTitle() %></h1>
	                    ▼
	                  </div>
	                  <div class="about-list-detail">
	                    <p>
	                      <%= f.getFaqContent() %>
	                    </p>
	                  </div>
                  <% } %>
                </div>
                <div class="qna-box">
                  <div class="label">1:1문의<em></em></div>
                  <span>
                    원하는 답이 없다면
                    <br />
                    1:1문의를 이용하세요.
                    <p>
                      Open at AM 10:00 ~ PM 17:00
                      <br />
                      Lunch at PM 12:00 ~ 13:00
                    </p>
                    <div>
                      <button class="btn" @click="setQnaModal">
                        1:1문의 작성
                      </button>
                      <button class="btn btn-yellow" onclick="location.href='<%= contextPath %>/qnaList.us?userId=<%= loginUser.getUserNo()%>'">작성 목록</button>
                    </div>
                  </span>
                </div>
              </div>
            </div>
            <div class="right-section">
              <div class="about-right-nav">
                <a href="#about-service">
                  <li>
                    <GoTriangleRight />
                    작가신청
                  </li>
                </a>
                <a href="#about-notice">
                  <li>
                    <GoTriangleRight />
                    공지사항
                  </li>
                </a>
                <a href="#about-faq">
                  <li>
                    <GoTriangleRight />
                    1:1문의
                  </li>
                </a>
                <a href="#about-faq">
       <!--     <li>
                    <GoTriangleRight />
                    자주하는질문
                </li> -->  
                </a>
              </div>
            </div>
          </div>
        </section>
        <!-- 여기에 컨텐츠 작성 -->
      </main>

      <!-- 작가신청모달 -->
      <div class="modal--container" :class="{modalActive:applyModalOpen}">
        <div class="modal--box">
          <div class="label">
            PICSTORY
            <em></em>
          </div>
          <h1><strong>🕺🏼</strong> 잠깐!</h1>
          <div class="modal--notice">
            <i> O </i>
            <span>10개 이상의 게시글을 등록하셨나요?</span>
            <p>10/10</p>
          </div>
          <div class="modal--notice notice-done">
            <i> X </i>
            <span>10개 이상의 게시글을 등록하셨나요?</span>
            <p>10/10</p>
          </div>
          <div class="gap"></div>
          <h1>이용약관</h1>
          <div class="modal--term">
            Lorem Ipsum is simply dummy text of the printing and typesetting
            industry. Lorem Ipsum has been the industry's standard dummy text
            ever since the 1500s, when an unknown printer took a galley of type
            and scrambled it to make a type specimen book. It has survived not
            only five centuries, but also the leap into electronic typesetting,
            remaining essentially unchanged. It was popularised in the 1960s
            with the release of Letraset sheets containing Lorem Ipsum passages,
            and more recently with desktop publishing software like Aldus
            PageMaker including versions of Lorem Ipsum.
          </div>
          <div class="gap"></div>
          <div class="modal--btn-box">
            <button class="btn" @click="setApplyModal">닫기</button>
            <button class="btn btn-yellow">신청</button>
          </div>
        </div>
      </div>

      <!-- Q&A모달 -->
      <div class="modal--container" :class="{modalActive:qnaModalOpen}">
        <div class="modal--box">
          <div class="label">
            1:1 Q&A
            <em></em>
          </div>
          <div class="gap"></div>
       <% if(loginUser!=null){ %>
          <h1>제목</h1>
          <form action="<%= contextPath %>/insert.qn" method="post">
          <input type="hidden" name="userNo" value="<%= loginUser.getUserNo() %>">
          <input type="text" name="queTitle" class="modal--input" />
          <div class="gap"></div>
          <h1>내용</h1>
          <textarea name="queContent"></textarea>
          <div class="modal--info">
            운영시간: AM 10:00 ~ PM 12:00 / PM 1:00 ~ PM 5:00
          </div>
          <div class="gap"></div>
          <div class="modal--btn-box">
            <button type="button" class="btn" @click="setQnaModal">취소</button>
            <button type="submit" class="btn btn-yellow">등록</button>
          </div>
          </form>  
         <% }else{ %>
         <h1>로그인이 필요한 서비스입니다.</h1>
         <% } %>
        </div>
      </div>
  
        <script src="${pageContext.request.contextPath}/assets/js/mypage/index.js"></script> 
  </body>
</html>
