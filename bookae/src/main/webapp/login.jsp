<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<c:set var="contextPath" value="${pageContext.request.contextPath }"/>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="shortcut icon" href="images/그림2.ico">
    <link rel="stylesheet" href="css/common.css">
    <link rel="stylesheet" href="css/normalize.css">
    <link rel="stylesheet" href="css/login.css">
    <script src="js/jquery-3.6.0.min.js"></script>
    <script src="js/join.js"></script>
    <title>북애 | 회원가입</title>
</head>
<body>
    <!--건너뛰기 링크 시작-->
    <a id="skipNav" href="mainContents">본문 바로가기</a>
    <!--건너뛰기 링크 종료-->

    <!--#wrapper 시작-->
    <div id="wrapper">
        <!--헤더 시작-->
        <header>
            <div class="head">
                <h1 class="logo">
                    <a href="index.html">
                        <img src="images/logo.png" alt="BookAe">
                    </a>
                </h1>
                <ul class="infoLink">
                    <li><a href="login.jsp">로그인</a></li>
                    <li><a href="join.jsp">회원가입</a></li>
                </ul>
                <div class="test">
                    <div class="search">
                        <h2 class="hidden">도서 검색</h2>
                        <form action="search.jsp" method="get" id="searchForm">
                            <input type="text" id="bookSearch" name="bookSearch" placeholder="도서 검색" required>
                            <button type="submit">검색</button>
                        </form>
                    </div>
                </div>
            </div>
            <nav>
                <h2 class="hidden">메인 메뉴</h2>
                <ul class="mainMenu">
                    <li><a href="#">베스트 셀러</a>
                        <ul class="bestSeller">
                            <li><a href="#">전체 베스트셀러</a></li>
                            <li><a href="#">교보 베스트셀러</a></li>
                            <li><a href="#">Yes24 베스트셀러</a></li>
                            <li><a href="#">알라딘 베스트셀러</a></li>
                        </ul>
                    </li>
                    <li><a href="#">소식 구경</a>
                        <ul class="infomation">
                            <li><a href="#">공지사항</a></li>
                            <li><a href="#">매거진</a></li>
                            <li><a href="#">이벤트</a></li>
                            <li class="white">.</li>
                        </ul>
                    </li>
                    <li><a href="#">북애의 서재</a>
                        <ul class="recommend">
                            <li><a href="#">북애 추천</a></li>
                            <li><a href="#">셀럽 추천</a></li>
                            <li class="white">.</li>
                            <li class="white">.</li>
                        </ul>
                    </li>
                    <li><a href="#">커뮤니티</a>
                        <ul class="community">
                            <li><a href="community.html">감상평</a></li>
                            <li><a href="#">자유게시판</a></li>
                            <li><a href="#">추천게시판</a></li>
                            <li class="white">.</li>
                        </ul>
                    </li>
                </ul>
            </nav>
        </header>
        <!--헤더 종료-->

        <!--메인컨텐츠 시작-->
        <section class="memberLogin">
            <h2>로그인</h2>
            <form action="${contextPath }/login.do" method="post" id="loginForm" name="frmLogin">
                <fieldset>
                    <legend>로그인 폼</legend>
                    <p class="idForm">
                        <label for="userID">아이디</label>
                        <input type="text" id="userID" name="user_id" required>
                    </p>
                    <p class="pwForm">
                        <label for="userPw">비밀번호</label>
                        <input type="password" id="userPw" name="user_pw" required>
                    </p>
                    <label class="autoLogin"><input type="checkbox" name="autoLoginCheck" value="autoLoginCheck"><i class="circle"></i>자동 로그인</label>
                    <button type="submit"><p>로그인</p></button>
                    <p>
                        <a href="#" class="lg_Fid">아이디찾기</a>/<a href="#" class="lg_Fpw">비밀번호찾기</a><a href="join.html" class="lg_join">회원가입하러가기</a>
                    </p>
                </fieldset>
            </form>
        </section>
        <!--메인컨텐츠 종료-->

        <!--footer 시작-->
        <footer id="footer">
            <div id="footerInner">
                <section class="guide">
                    <h2 class="hidden">사이트 이용안내</h2>
                    <ul>
                        <li><a href="#">회사 소개</a></li>
                        <li><a href="#">이용 약관</a></li>
                        <li><a href="#">개인정보취급방침</a></li>
                        <li><a href="#">공지사항</a></li>
                    </ul>
                </section>
                <address>
                    <span>㈜북애</span>
                    <span>대표이사: 조수진</span>
                    <span>서울특별시 종로구 미려빌딩6층</span>
                    <span>전화: 02-666-1717</span>
                    <span>E-MAIL: <a href="mailto:bookAe@bookAe.com">bookAe@bookAe.com</a></span>
                </address>
                <p class="copyright">Copyright since &copy; 2022 by BookAe CORPORATION ALL RIGHTS RESERVED.</p>
                <p class="relCite">
                    <select id='cite' name="relatedCite" onchange="citeIdong();">
                        <option value="no">관련 사이트</option>
                        <option value="kyobo">교보문고</option>
                        <option value="yes24">yes24</option>
                        <option value="aladin">알라딘</option>
                    </select>
                    <a class="btncite">이동</a>
                </p>
            </div>
        </footer>
        <!--footer 종료-->
    </div>
    <!--#wrapper 종료-->
</body>
</html>
