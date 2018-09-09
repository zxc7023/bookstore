<%@page import="com.bookstore.vo.BookVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>

<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>상품페이지</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/css/dafult.css">
<link rel="stylesheet" href="resources/css/style.css">
<script src="resources/js/common.js"></script>
</head>
<script>
	function PageMove(pageNum) {
		location.href = "booklist.book?pageNum=" + pageNum;
	}

	$(document).ready(function() {

		$("button").on("click", function() {
			var formObj = $(this).parents("form");
			if ($(this).attr("id") == "cart") {
				/* formObj.attr("action","${pageContext.request.contextPath}/addcart.cart");
				formObj.submit(); */
				$.ajax({
					url : "${pageContext.request.contextPath}/addcart.cart",
					type : "post",
					data : formObj.serialize(),
					success : function(server_result) {
						//alert(server_result);
						var server_json = JSON.parse(server_result);
						if (server_json.result == 1) {
							var moving = confirm("장바구니로 이동하시겠습니까?");
							if (moving == true) {
								location.replace("${pageContext.request.contextPath}/cartview.cart");
							}
						} else {
							location.replace("${pageContext.request.contextPath}/loginform.login");
						}
					},
					error : function(e) {
						alert("오류 : " + e);
					},
					complete : function() {

					}
				});

			} else if ($(this).attr("id") == "buy") {
				alert("구매");
			}
		});

		/* 		$("a#detail").on("click",function(){
		 event.preventDefault();
		 alert("디테일");
		 var formObj = $(this).parents("form");
		 formObj.attr("action","${pageContext.request.contextPath}/bookdetail.book");
		 formObj.submit();
		
		 }); */

	});
</script>
<jsp:include page="../header.jsp"></jsp:include>
<body>

	<section class="section section_2">
		<article class="container body">
			<div class="row">
				<!--depth-->
				<ol class="breadcrumb">
					<!-- 카테고리 구현예정 -->
					<%--
                <li>
                    <div class="dropdown">
                        <button class="btn dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
                            <c:forEach items="${requestScope.categoryList}" varStatus="st" begin="0" end="0">
                                ${st.current.book_type_name}
                            </c:forEach>
                        </button>
                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <c:forEach items="${requestScope.categoryList}" varStatus="st">
                                 <a class="dropdown-item">${st.current.book_type_name}</a>
                             </c:forEach>
                        </div>
                    </div>
                </li>
                --%>

					<%--
                <c:set var="type_depth" value="${fn:length(requestScope.book_type) == 4 ? 3 : fn:length(requestScope.book_type)}"></c:set>
                <c:forEach begin="1" end="${type_depth}" varStatus="de_st">
                    <li>
                        <c:forEach varStatus="list_st" items="${requestScope.categoryList}">
                            <c:if test="${list_st.current.book_type eq fn:substring(requestScope.book_type,0,de_st.current)}">
                                <button class="btn dropdown-toggle" type="button" data-toggle="dropdown" aria-expanded="false">
                                    ${list_st.current.book_type_name}<span class="caret"></span>
                                </button>
                            </c:if>
                        </c:forEach>

                        <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
                            <c:forEach varStatus="list_st2" items="${requestScope.categoryList}">
                                <c:if test="${fn:contains(list_st2.current.book_type_name) }"></c:if>
                                <a class="dropdown-item">${list_st2.current.book_type_name}</a>
                            </c:forEach>
                        </div>
                    </li>
                    </ul></li>
                </c:forEach>
                --%>

					<%--
                <c:forEach varStatus="type_st" begin="1" end="${fn:length(requestScope.book_type)}">
                    <li>${type_st.current}</li>
                </c:forEach>
                --%>
				</ol>

				<div class="book-list-wrap col-12">
					<ul>
						<c:forEach items="${requestScope.bookList}" varStatus="st" begin="0">
							<li>
								<div class="thumbnail">
									<img src="${st.current.book_image}" alt="book1" class="col-4 col-sm-3 col-md-2 float-left">
									<form class="col-8 col-sm-9 col-md-10 float-left">
										<h5 class="caption my-2">
											<input type="hidden" name="book_no" value="${st.current.book_no }">
											<input type="hidden" name="book_no" value="${st.current.book_no }">
											<a href="${pageContext.request.contextPath}/bookdetail.book?book_no=${st.current.book_no}" id="detail">${st.current.book_name }</a>
										</h5>

										<!-- pc -->
										<p class="info-wrap-pc my-2 d-none d-sm-block">
											<span class="info info_1 col-4 pl-0">${st.current.book_author}</span> <span class="info info_2 col-4">${st.current.book_publication}</span>
											<span class="info info_3 col-4">${st.current.book_pub_date}</span>
										</p>

										<!-- mo -->
										<p class="info-wrap-mo my-2 d-block d-sm-none">
											<span class="info info_1 col-12 pl-0 d-block">${st.current.book_author}</span> <span class="info info_2 col-12 pl-0 d-block">${st.current.book_publication}</span>
											<span class="info info_3 col-12 pl-0 d-block">${st.current.book_pub_date}</span>
										</p>

										<p class="detail d-none d-sm-block">${st.current.book_info}…</p>
										<p class="price my-2 text-danger font-weight-bold">
											3,2000원
											<fmt:formatNumber value="${st.current.book_price}" pattern="#,###원" />
										</p>
										<div class="float-right" role="group">
											<button type="button" class="btn btn-primary btn-sm my-1" id="cart">
												장바구니 <i class="fa fa-shopping-cart ml-1"></i>
											</button>
											<button type="button" class="btn btn-primary btn-sm my-1" id="buy">
												바로구매 <i class="fa fa-credit-card ml-1"></i>
											</button>
										</div>
									</form>
								</div>
							</li>
						</c:forEach>
					</ul>
				</div>

				<div class="toolbar col-12">
					<nav aria-label="Page navigation">
						<ul class="pagination justify-content-center">
							<li class="page-item"><a href="javascript:PageMove(${paging.firstPageNo})" class="page-link">맨앞으로</a></li>
							<li class="page-item"><a href="javascript:PageMove(${paging.prevPageNo})" class="page-link">앞으로</a></li>
							<c:forEach var="i" begin="${paging.startPageNo}" end="${paging.endPageNo}" step="1">
								<c:choose>
									<c:when test="${i eq paging.pageNo}">
										<li class="page-item active"><a href="javascript:PageMove(${i})" class="page-link">${i}</a></li>
									</c:when>
									<c:otherwise>
										<li class="page-item"><a href="javascript:PageMove(${i})" class="page-link">${i}</a></li>
									</c:otherwise>
								</c:choose>
							</c:forEach>
							<li class="page-item"><a href="javascript:PageMove(${paging.nextPageNo})" class="page-link">뒤로</a></li>
							<li class="page-item"><a href="javascript:PageMove(${paging.finalPageNo})" class="page-link">맨뒤로</a></li>
						</ul>
					</nav>
				</div>
			</div>
		</article>
	</section>
</body>
</html>