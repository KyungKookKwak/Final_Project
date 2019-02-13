<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>${param.pageTitle }</title>
<!-- <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script> -->
<script src="${pageContext.request.contextPath }/resources/js/jquery-3.3.1.js"></script>

<!-- 부트스트랩관련 라이브러리 -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js" integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm" crossorigin="anonymous"></script>
<!-- 사용자작성 css -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css" />

</head>
<body>
<div id="container">
	<header>
		<div id="header-container">
			<h2>${param.pageTitle }</h2>
		</div>
		<!-- bootstrap 4.1 navbar -->
		<nav class="navbar navbar-expand-lg navbar-light bg-light">
			<a class="navbar-brand" href="#">
				<img src="${pageContext.request.contextPath }/resources/images/logo-spring.png" alt="스프링로고" width="50px" />
			</a>
			<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
				<span class="navbar-toggler-icon"></span>
		  	</button>
			<div class="collapse navbar-collapse" id="navbarNav">
				<!-- 좌우 정렬을 위해 .mr-auto추가 -->
				<ul class="navbar-nav mr-auto">
			      <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}">Home</a></li>
			      <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/demo/demo.do">데모</a></li>
			      <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/demo/demoList.do">Dev목록</a></li>
			      <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/memo/memo.do">메모</a></li>
			      <li class="nav-item"><a class="nav-link" href="${pageContext.request.contextPath}/board/boardList.do">게시판</a></li>
			    </ul>
			    
			    <c:if test="${memberLoggedIn == null }">
				    <!-- 로그인,회원가입 버튼 -->
			        <!--https://getbootstrap.com/docs/4.1/components/buttons/#outline-buttons-->
			        <a class="nav-link" href="${pageContext.request.contextPath}/thing/thing.do" style="">안쓰는 물건 판매하기</a> 
			        <button class="btn btn-outline-success my-2 my-sm-0" type="button" data-toggle="modal" data-target="#loginModal">로그인</button>
			        &nbsp;
			        <button class="btn btn-outline-success my-2 my-sm-0" type="button" onclick="location.href='${pageContext.request.contextPath}/member/memberEnroll.do'">회원가입</button>
			    </c:if>
			    <c:if test="${memberLoggedIn != null }">
			    	<a class="nav-link" href="${pageContext.request.contextPath}/thing/thing.do" style="">안쓰는 물건 판매하기</a> 
			    	<a href="${pageContext.request.contextPath }/member/memberView.do?memberId=${memberLoggedIn.memberId}">${memberLoggedIn.memberName }님, 안녕하세요 :)</a>
			    	&nbsp;
			    	<button class="btn btn-outline-success" type="button" onclick="location.href='${pageContext.request.contextPath}/member/memberLogout.do'">로그아웃</button>
			    </c:if>
			 </div>
		</nav>
	</header>
	
	<!-- 로그인모달 : https://getbootstrap.com/docs/4.1/components/modal/#live-demo -->
    <div class="modal fade" id="loginModal" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
      <div class="modal-dialog" role="document">
        <div class="modal-content">
          <div class="modal-header">
            <h5 class="modal-title" id="exampleModalLabel">로그인</h5>
            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
              <span aria-hidden="true">&times;</span>
            </button>
          </div>
          <!--로그인폼 : https://getbootstrap.com/docs/4.1/components/forms/#overview -->
         <form action="${pageContext.request.contextPath}/member/memberLogin.do" method="post">
          <div class="modal-body">
                <input type="text" class="form-control" name="memberId" placeholder="아이디" required>
                <br />
                <input type="password" class="form-control" name="password" placeholder="비밀번호" required>
          </div>
          <div class="modal-footer">
            <button type="submit" class="btn btn-outline-success" >로그인</button>
            <button type="button" class="btn btn-outline-success" data-dismiss="modal">취소</button>
          </div>
          </form>
        </div>
      </div>
    </div>
    
	<section id="content">