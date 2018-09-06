<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>


<section class="section section_1">
    <article class="header">
        <header>
            <!-- 상단 링크들 -->
            <div class="link">
                <div class="container">
                    <div class="row justify-content-end">
                        <ul class="col-lg-5 col-md-12 py-2">
                            <c:choose>
                                <c:when test="${empty sessionScope.loginInfo}">
                                    <li class="col-3">
                                        <a href="${pageContext.request.contextPath}/login">로그인</a>
                                    </li>
                                    <li class="col-3">
                                        <a href="<%=application.getContextPath()%>/joinform.member">회원가입</a>
                                    </li>
                                </c:when>
                                <c:otherwise>
                                    <li class="col-3">
                                        <a href="<%=application.getContextPath()%>/mymenu.jsp">${sessionScope.loginInfo}님<i class="fa fa-caret-down"></i></a>
                                        <div class="log-in col-12 py-2">
                                            <ul class="sub-menu">
                                                <li><a href="<%=application.getContextPath()%>/myinfo_form.member"> 나의 정보보기</a></li>
                                                <li><a href="<%=application.getContextPath()%>/cartview.cart"> 장바구니</a> </li>
                                                <li><a href="<%=application.getContextPath()%>/orderview.order"> 주문내역</a></li>
                                            </ul>
                                        </div>
                                    </li>
                                    <li class="col-3"><a href="<%=application.getContextPath()%>/logoutAction.login">로그아웃</a></li>
                                </c:otherwise>
                            </c:choose>
                            <li class="col-3"><a href="<%=application.getContextPath()%>/boardlist.board">게시판</a></li>
                            <li class="col-3"><a href="<%=application.getContextPath()%>/booklist.book">상품 목록</a></li>
                        </ul>
                    </div>
                </div>
            </div>
            <!--//  상단 링크들  -->

            <!--    검색  -->
            <div class="container search">
                <div class="row">
                    <div class="navbar col-12">
                        <a class="navbar-brand col-md-3 col-12" href="#">
                            <img src="resources/image/junkilogo.png" class="mx-auto d-block"/>
                        </a>
                        <form class="form-inline mx-auto col-md-8 col-12" role="search">
                            <input class="form-control mr-sm-2 col-9 rounded-0" type="search" placeholder="Search"
                                   aria-label="Search">
                            <button class="btn btn-outline-success ml-2" type="submit"><i class="fa fa-search"></i>
                            </button>
                        </form>
                    </div>
                </div>
            </div>
            <!--    gnb     -->
            <nav class="navbar navbar-expand-lg navbar-dark mt-3 mb-3">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar"
                        aria-controls="navbar" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <div class="collapse navbar-collapse justify-content-md-center" id="navbar">
                    <ul class="navbar-nav">
                        <li class="nav-item mx-2">
                            <a class="nav-link" href="#">Link</a>
                        </li>
                        <li class="nav-item mx-2">
                            <a class="nav-link" href="#">Link</a>
                        </li>
                        <li class="nav-item mx-2">
                            <a class="nav-link" href="#">Link</a>
                        </li>

                        <li class="nav-item mx-2 dropdown">
                            <a class="nav-link dropdown-toggle" href="https://example.com" id="dropdown01"
                               data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Dropdown</a>
                            <div class="dropdown-menu rounded-0" aria-labelledby="dropdown01">
                                <a class="dropdown-item" href="#">Action</a>
                                <a class="dropdown-item" href="#">Another action</a>
                                <a class="dropdown-item" href="#">Something else here</a>
                            </div>
                        </li>
                    </ul>
                </div>
            </nav>
        </header>
    </article>
</section>