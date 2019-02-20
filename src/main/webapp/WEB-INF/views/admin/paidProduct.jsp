<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="UTF-8" />
<jsp:include page="/WEB-INF/views/common/header.jsp">
	<jsp:param value="allMember" name="pageTitle"/>
</jsp:include>

<jsp:include page="/WEB-INF/views/common/adminSide.jsp"></jsp:include>

<style>
.paidProduct-container{
	position:relative;
	margin-left:180px;
}
</style>
<br />
<section id="paidProduct-container" class="paidProduct-container">
<nav class="navbar navbar-light bg-light">
	<p>결제된 상품 리스트</p>
	  <form class="form-inline" id="form-inline">
		<select class="form-control" id="type" name="type">
  			<option value="product_name" selected="selected">상품명</option>
  			<option value="product_buyer">구매자아이디</option>
  			<option value="product_category">상품카테고리</option>
		</select>
		&nbsp;&nbsp;
	    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search" name="search" id="search" ">
	    <input type="button" class="btn btn-block btn-outline-success btn-send" value="전송" >
	  </form>
	</nav>
<hr />
	<table id="tbl-paidProduct" class="table table-striped table-hover">
		<tr>
			<th>제품코드</th>
			<th>상품명</th>
			<th>상품가격</th>
			<th>판매량</th>
			<th>구매자아이디</th>
			<th>상품카테고리</th>
			<th>주문번호</th>
		</tr>
		<c:if test="${empty list }">
		<tr>
			<td colspan="7">결제된 상품이 존재하지 않습니다..</td>
		</tr>
		</c:if>
		
		<c:if test="${not empty list }">
			<c:forEach items="${list }" var="p">
			<tr>				
				<th>${p.SEQ_PRODUCT_NO }</th>
				<th>${p.PRODUCT_NAME }</th>
				<th>${p.PRODUCT_IO_PRICE }</th>
				<th>${p.PRODUCT_IO_AMOUNT }</th>
				<th>${p.PRODUCT_BUYER }</th>
				<th>${p.PRODUCT_CATEGORY }</th>
				<th>${p.PRODUCT_ORDER_NO }</th>
			</tr>			
			</c:forEach>
		</c:if>
	</table>
	<div class="result" id="paidProductSearch-result"></div>
	<%
		int totalContent = (int)request.getAttribute("totalContents");
		int numPerPage = (int)request.getAttribute("numPerPage");
		int cPage = (int)request.getAttribute("cPage");
	%>
	<%= com.kh.spring.common.util.Utils.getPageBar(totalContent , cPage , numPerPage , "paidProduct.do") %>
</section>
<script>
$("#form-inline .btn-send").on("click",function(){
	$("#tbl-paidProduct").css("display","none");
	
	$.ajax({
		url:"${pageContext.request.contextPath}/admin/paidProductSearch.do",
		data:$("#form-inline").serialize(),
		dataType:"json",
		type:"get",
		success : function(data){
			 console.log(data);
             var html = "<table class=table>";
             html+="<tr><th>제품코드</th><th>상품명</th><th>매출액</th><th>판매량</th><th>구매자아이디</th><th>상품카테고리</th><th>주문번호</th></tr>";
             for(var i in data){
                 html += "<tr><td>"+data[i].productNo+"</td>";
                 html += "<td>"+data[i].productName+"</td>";
                 html += "<td>"+data[i].productIoPrice+"</td>";
                 html += "<td>"+data[i].productIoAmount+"</td>";
                 html += "<td>"+data[i].productBuyer+"</td>";
                 html += "<td>"+data[i].productCategory+"</td>";
                 html += "<td>"+data[i].productOrderNo+"</td></tr>";
             }
             html+="</table>";
             $("#paidProductSearch-result").html(html);
		},error:function(){
			console.log("ajax요청 오류!!");
		}
		
	});
	
});
</script> 

<jsp:include page="/WEB-INF/views/common/footer.jsp"></jsp:include>