<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<fmt:requestEncoding value="UTF-8" />
<style>
.mp-menu-title {
    color: #666666;
    font-size: 24px;
    line-height: 27px;
}

.mp-menu {
    vertical-align: top;
    display: inline-block;
    width: 144px;
    margin-bottom: 36px;
}

.content-container {
    width: 200px;
    margin-left: 110px;
    padding-top: 48px;
    display: inline-block;
    position: absolute;
}

.mp-menu-items {
    margin-top: 20px;
    border: 1px solid #ececec;
}
</style>
<div class="content-container">
	<div class="mp-menu">
		<div class="mp-menu-title">
			마이 페이지
		</div>
		<div class="mp-menu-items">
			<div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
				<a class="nav-link active" id="v-pills-home-tab" data-toggle="pill" href="#" role="tab" aria-controls="v-pills-home" aria-selected="true">판매내역</a>
				<a class="nav-link" id="v-pills-profile-tab" data-toggle="pill" href="#" role="tab" aria-controls="v-pills-profile" aria-selected="false">구매내역</a>
				<a class="nav-link" id="v-pills-messages-tab" data-toggle="pill" href="#" role="tab" aria-controls="v-pills-messages" aria-selected="false">찜한 상품</a>
				<a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#" role="tab" aria-controls="v-pills-settings" aria-selected="false">내 쿠폰</a>
				<a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#" role="tab" aria-controls="v-pills-settings" aria-selected="false">프로모션</a>
				<a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#" role="tab" aria-controls="v-pills-settings" aria-selected="false">내 정보</a>
				<a class="nav-link" id="v-pills-settings-tab" data-toggle="pill" href="#" role="tab" aria-controls="v-pills-settings" aria-selected="false">알림 설정</a>
			</div>
		</div>
	</div>
</div>
