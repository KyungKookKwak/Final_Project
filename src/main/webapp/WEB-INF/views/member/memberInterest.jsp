<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Get It :: 관심상품 선택</title>
<script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
	integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
	crossorigin="anonymous"></script>
<script src="<%=request.getContextPath()%>/resources/js/jquery-3.3.1.js"></script>
<!-- 부트스트랩관련 라이브러리 -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css"
	integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4"
	crossorigin="anonymous">
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/js/bootstrap.min.js"
	integrity="sha384-uefMccjFJAIv6A+rW+L4AHf99KvxDjWSu1z9VI8SKNVmz4sk7buKt/6v9KI65qnm"
	crossorigin="anonymous"></script>
<!-- 사용자작성 css -->
<link rel="stylesheet" href="${pageContext.request.contextPath }/resources/css/style.css" />
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.interest-text{
	border: 1px solid black;
	text-align: center;
}
.interest-content{
	text-align: center;
	border: 1px solid black;
}
</style>
<body>
<div class="interest-container">
	<div class="interest-text">
		<span>관심 카테고리를 선택해주세요.</span>
	</div>
	<div class="interest-content">
		<form action="javascript:interestEnd();" name="interestFrm">
		<c:forEach items="${category }" var="c" varStatus="vs">
		<c:if test="${vs.count%3==0 }">
		<input type="checkbox" name="categoryMacro" id="${c.CATEGORY_NAME }" value="${c.CATEGORY_MACRO }" />
		<label for="${c.CATEGORY_NAME }">${c.CATEGORY_NAME }</label><br />
		</c:if>
		<c:if test="${vs.count%3!=0 }">
		<input type="checkbox" name="categoryMacro" id="${c.CATEGORY_NAME }" value="${c.CATEGORY_MACRO }" />
		<label for="${c.CATEGORY_NAME }">${c.CATEGORY_NAME }</label>
		</c:if>
		</c:forEach>
		<br />
		<input type="submit" value="선택 완료" />
		<button onclick="skip();">건너뛰기</button>
		</form>
	</div>
</div>
<script>
function interestEnd(){
	var category = $("[name='categoryMacro']");
	var interest = "";
	category.each(function(idx, item){
		if($(item).prop("checked") == true){
			interest += $(item).val();
		}
	});
	console.log(interest);
	
	opener.memberEnrollFrm.memberInterest.value = interest;
	opener.memberEnrollFrm.submit();
	self.close();
}
function skip(){
	opener.memberEnrollFrm.submit();
	self.close();
}
</script>
</body>
</html>



















