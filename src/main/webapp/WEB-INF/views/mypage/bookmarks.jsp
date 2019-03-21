<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="UTF-8" />
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="Get It :: 마이페이지" name="pageTitle" />
</jsp:include>
<jsp:include page="/WEB-INF/views/common/mypageSide.jsp"></jsp:include>
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/mypage.css" />
<div class="mypage-container">
	<div class="real-content-container">
		<div class="mp-container">
			<div class="mp"  style="font-size:19px; font-weight:bold;">
			찜한 상품
			</div>
			<hr style="border-bottom:1px solid gray; width:143%;">
			<div class="mypage" style="width:130%;">
				<c:if test="${empty list }">
					<div class="mypage-content">${msg }</div>
				</c:if>
				<c:if test="${not empty list }">
					<c:forEach items="${list }" var="o">
						
					</c:forEach>
				</c:if>
			</div>
		</div>	
	</div>
</div>
<script>
$(function(){
	$(".bookmarks").css("color" , "#7151FC");
	$(".bookmarks").css("font-weight" , "bold");
	$(".bookmarks").css("background" , "#f2f2f2");
});
</script>
<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>