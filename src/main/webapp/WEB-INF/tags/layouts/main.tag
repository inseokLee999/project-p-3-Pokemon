<%@ tag body-content="scriptless" %>
<%@ tag pageEncoding="UTF-8" trimDirectiveWhitespaces="true" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="layout" tagdir="/WEB-INF/tags/layouts" %>
<%@ taglib prefix="util" tagdir="/WEB-INF/tags/utils" %>
<%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<%@ attribute name="title" %>
<fmt:setBundle basename="messages.commons"/>
<c:url var="cssUrl" value="/css/"/>
<c:url var="jsUrl" value="/js/"/>
<c:url var="imageUrl" value="/images/"/>
<c:url var="homeUrl" value="/"/>
<c:url var="searchUrl" value="/board/write"/>
<c:url var="logoUrl" value="/images/logo.png"/>
<c:url var="pokemonUrl" value="/pokemon"/>
<c:url var="gameUrl" value="/game"/>
<c:url var="mycardUrl" value="/mycard/privatecard"/>
<c:url var="mainLogoUrl" value="/images/pokemonLogo.png"/>
<c:url var="adminUrl" value="/admin"/>
<c:url var="randomUrl" value="/random"/>
<c:url var="freeUrl" value="/board/list/freetalk"/>
<c:url var="noticeUrl" value="/board/list/notice"/>

<c:url var="pokemonOffUrl" value="https://www.pokemonkorea.co.kr/"/>
<c:url var="instagramUrl" value="/images/sns/instagram.jpeg"/>

<layout:common title="${title}">
    <jsp:attribute name="header">
        <section class="site-top">
            <div class="layout-width inner">
                <div class="left">
                    <a href="${homeUrl}">
                        <i class="xi-home-o"></i>
                        <fmt:message key="메인화면"/>
                    </a>
                </div>
                <div class="right">
                    <util:guestOnly>
                    <a href="<c:url value="/member/join" />">
                        <i class="xi-user-plus-o"></i>
                        <fmt:message key="회원가입"/>
                    </a>
                    <a href="<c:url value="/member/login" />">
                        <i class="xi-log-in"></i>
                        <fmt:message key="로그인"/>
                    </a>
                    </util:guestOnly>
                    <util:memberOnly>
                        <div class="logged-in-right">
                        <c:if test="${myProfile!=null}">
                            <img src="${myProfile.frontImage}">
                        </c:if>
                            <fmt:message key="LOGIN_MSG">
                            <fmt:param>${loggedMember.userName}</fmt:param>
                            <fmt:param>${loggedMember.email}</fmt:param>
                        </fmt:message>
                            <a href="<c:url value="/mypage" />">
                                <i class="xi-user-o"></i>
                                <fmt:message key="마이페이지"/>
                            </a>
                            <a href="<c:url value="/member/logout" />">
                                <i class="xi-log-out"></i>
                                <fmt:message key="로그아웃"/>
                            </a>
                        </div>

                    </util:memberOnly>
                </div>
            </div>
        </section>
        <section class="logo-search">
            <div class="layout-width inner">
                <div class="center">
                    <a href="${homeUrl}" class="logo">
                        <img src="${logoUrl}" alt="<fmt:message key="로고"/>">
                    </a>
                </div>
                <div class="main-center">
                    <a href="${homeUrl}" class="center-logo">
                        <img src="${mainLogoUrl}" alt="<fmt:message key="메인 로고"/>">
                    </a>
                </div>
                    <%--                <div class="header-bottom-box">
                                        dd
                                    </div>--%>
                <div class="right">
                    <form class="search-box" method="GET" action="${searchUrl}" autocomplete="off">
                        <input type="text" name="keyword" placeholder="<fmt:message key="검색어를_입력하세요."/> ">
                        <button type="submit">
                            <i class="xi-search"></i>
                        </button>
                    </form>
                </div>
            </div>
        </section>
        <nav>
            <div class="inner layout-width">
                <div class="dropdown">
                    <a href="#">
                        <img src="${imageUrl}/boardLogo.png" alt="게시판 아이콘">
                        게시판
                    </a>
                    <div class="dropdown-content">
                        <a href="${freeUrl}">자유게시판</a>
                        <a href="${noticeUrl}">공지사항</a>
                    </div>
                </div>
                <a href="${pokemonUrl}">
                    <img src="${imageUrl}/wikiLogo.png" alt="도감 아이콘">
                    포켓몬 도감
                </a>
                <a href="${randomUrl}">
                    <img src="${imageUrl}/randomLogo.png" alt="뽑기 아이콘">
                    포켓몬 뽑기
                </a>
                <a href="${mycardUrl}">
                    <img src="${imageUrl}/RocketDan.webp" alt="내 카드 아이콘" id="myCard">
                    내 카드함
                </a>
                <a href="${gameUrl}">
                    <img src="${imageUrl}/gameLogo.png" alt="게임 아이콘">
                    게임하기
                </a>
                <util:adminOnly>
                    <a href="${adminUrl}">
                        <img src="${imageUrl}/masterBall.png" alt="게시판 아이콘">게시판 관리</a>
                </util:adminOnly>
            </div>
        </nav>
    </jsp:attribute>
    <jsp:attribute name="footer">
        <section class="layout-width inner">
            <h4> @All copyrights are in TEAM 4 </h4>
            <h5> choongang 502 class </h5>
        </section>
    </jsp:attribute>
    <jsp:attribute name="commonCss">
        <link rel="stylesheet" type="text/css" href="${cssUrl}main.css">
    </jsp:attribute>
    <jsp:attribute name="commonJs">
        <script src="${jsUrl}main.js"></script>
    </jsp:attribute>
    <jsp:body>
        <jsp:doBody/>
    </jsp:body>
</layout:common>