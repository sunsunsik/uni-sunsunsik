<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" pageEncoding="UTF-8" %>
<script type="text/javascript" src="${pageContext.request.contextPath}/js/m/moment/moment.js"></script>
	
<header class="header primary_bg">
	<hgroup>
		<a href="/main/index.do" >
			<h1 class="logo">THE Seller's</h1>
		</a>	
	</hgroup>

	<a href="#" class="btn_sideMenu">
		<span></span>
		<span></span>
		<span></span>
	</a>
	
	<span class="alarm_count pos_h r10" style="display:none;">0</span> <!-- 확인하지 않은 알림 개수 -->
	
	<!-- <a href="#" class="btn_search">
		<span class="icon_search"></span>
	</a> -->
	<!-- 사이드메뉴 시작 -->
	<div class="sidemenu off">
		<!-- 사용자 확인 -->
		<div class="top">
			<div class="user_photo r60 mg_b10">
				<img src="${pageContext.request.contextPath}/images/m/icon_character.svg" />
			</div>
			<p class="fc_white user_info">
				<span>${userInfo.HAN_NAME}님</span><br/>좋은하루 되세요.
			</p>

			<a href="#" class="btn_sidemenu_close">
				<img src="${pageContext.request.contextPath}/images/m/icon_sidemenu_close.svg" alt="사이드 메뉴 닫기"/>
			</a>
		</div>
		<div class="side_gnb">
			<span class="alarm_count pos_side r10" style="display:none;">0</span> <!-- 확인하지 않은 알림 개수 -->
		
			<a href="#" class="sideTab tab1 active">메뉴</a>
			<div class="side_cont">
				<ul class="gnb">
					<li>
						<a href="#" class="btn_one">
                            <span class="icon md icon_custominfo va_m"></span> 고객사 및 고객개인정보 
                            <img src="${pageContext.request.contextPath}/images/m/icon_gnb_arrow_left.svg"/> 
                            <img src="${pageContext.request.contextPath}/images/m/icon_gnb_arrow_down.svg" class="off"/>
                        </a>
						<div class="sub off">
                            <!-- 
                            <a href="/clientManagement/listClientCompanyInfoView.do">고객사정보</a>
                            <a href="/clientManagement/listClientIndividualInfoList.do">고객개인정보</a>
                             -->
                            <a href="/clientManagement/viewClientCompanyInfoGate.do">고객사정보</a>
							<a href="/clientManagement/viewClientIndividualInfoGate.do">고객개인정보</a>
						</div>
					</li>
					<li>
						<a href="#" class="btn_one">
                            <span class="icon md icon_salesAct va_m"></span> 고객영업활동
                            <img src="${pageContext.request.contextPath}/images/m/icon_gnb_arrow_left.svg"/> 
                            <img src="${pageContext.request.contextPath}/images/m/icon_gnb_arrow_down.svg" class="off"/>
                        </a>
						<div class="sub off">
                            <!-- 
                            <a href="/salesActive/listClientContact.do">고객컨텍내용</a>
                            <a href="/salesActive/listOpportunity.do">영업기회</a>
                            <a href="/salesActive/listHiddenOpportunity.do">잠재영업기회</a>
                             -->
                            <a href="/clientSalesActive/viewClientContactList.do">고객컨택내용</a>
                            <a href="/clientSalesActive/viewOpportunityList.do">영업기회</a>
                            <a href="/clientSalesActive/viewHiddenOpportunityList.do">잠재영업기회</a>
						</div>
					</li>
					<li>
						<a href="#" class="btn_one">
                            <span class="icon md icon_cutomgood va_m"></span> 고객만족
                            <img src="${pageContext.request.contextPath}/images/m/icon_gnb_arrow_left.svg"/>
                            <img src="${pageContext.request.contextPath}/images/m/icon_gnb_arrow_down.svg" class="off"/>
                        </a>
						<div class="sub off">
                            <!-- 
                            <a href="/salesActive/listClientIssue.do">고객이슈</a>
                            <a href="/salesActive/listClientSatisfaction.do">고객만족도</a>
                             -->
                            <a href="/clientSatisfaction/viewClientIssueList.do">고객이슈</a>
                            <!-- <a href="/clientSatisfaction/viewClientSatisfactionList.do">고객만족도</a> -->
						</div>
					</li>
					<%-- <li>
						<a href="#" class="btn_one">
                            <span class="icon md icon_partner va_m"></span> 파트너사 협업관리 
                            <img src="${pageContext.request.contextPath}/images/m/icon_gnb_arrow_left.svg"/> 
                            <img src="${pageContext.request.contextPath}/images/m/icon_gnb_arrow_down.svg" class="off"/>
                        </a>
						<div class="sub off">
							<!-- <a href="/partnerManagement/viewPartnerSalesLinkage.do">파트너사 협업</a> -->
							<!-- 
							<a href="/partnerManagement/listPartnerCompanyInfo.do">파트너사정보</a>
							<a href="/partnerManagement/listPartnerIndividualInfo.do">파트너사개인정보</a>
							 -->
							<a href="/partnerManagement/viewPartnerCompanyInfoGate.do">파트너사정보</a>
							<a href="/partnerManagement/viewPartnerIndividualInfoGate.do">파트너사개인정보</a>
						</div>
					</li> --%>
					<%-- <li>
						<a href="#" class="btn_one"><span class="icon md icon_paper va_m"></span> 사업전략 
                            <img src="${pageContext.request.contextPath}/images/m/icon_gnb_arrow_left.svg"/> 
                            <img src="${pageContext.request.contextPath}/images/m/icon_gnb_arrow_down.svg" class="off"/>
                        </a>
						<div class="sub off">
						<!-- 
							<a href="/bizStrategy/listBizStrategy.do?strategy=biz">회사/부문별전략</a>
							<a href="/bizStrategy/listBizStrategy.do?strategy=cs">고객별전략</a>
							<a href="/bizStrategy/listProjectPlan.do">전략프로젝트</a>
						 -->
							<a href="/bizStrategy/viewBizStrategyCompany.do">회사/부문별전략</a>
							<a href="/bizStrategy/viewBizStrategyClient.do">고객별전략</a>
							<a href="/bizStrategy/viewBizStrategyProjectPlan.do">전략프로젝트</a>
						</div>
					</li> --%>
					<li>
						<!-- 
						<a href="/calendar/calendar.do" class=""><span class="icon md icon_calendar va_m"></span> 일정관리</a>
						 -->
						<a href="/calendar/viewCalendar.do" class=""><span class="icon md icon_calendar va_m"></span> 일정관리</a>
						<!-- <div class="sub off">
							<a href="/calendar/calendar.do">캘린더</a>
							<a href="#">나의 할 일</a>
						</div>
						 -->
					</li>
					<li>
							<a href="/main/myActivePage.do"><i class="icon md icon_mypage va_m"></i>  마이페이지</a>
					</li>
					<li class="func_menu">
						<!-- 김동용 -->
                  		<a href="/logout" id="logout_butn" onclick="logout();"><span class="icon md icon_key va_m"></span> 로그아웃</a>
					</li>
					<li class="func_menu">
						<a href="/common/changePW.do" class=""><span class="icon md icon_setting va_m"></span> 비밀번호변경</a>
					</li>
				<!-- 	<li class="func_menu">
						<a href="http://211.41.100.80:30000/" class=""><span class="icon md icon_desktop va_m"></span> PC화면보기</a>
					</li> -->
				</ul>					
			</div>

			<a href="#" class="sideTab tab2">알림</a>
			<div class="side_cont off">
				<ul class="news">
				</ul>					
			</div>
		</div>
	</div>

	<!-- 사이드메뉴 종료 -->
	
	<div class="search off">
		<div class="inputarea">
			<input type="text" />
			<a href="#"><span class="icon_search"></span></a>
		</div>
		<a href="#" class="btn_search_close"><img src="${pageContext.request.contextPath}/images/m/icon_close.svg" alt="검색 닫기"/></a>
	</div>
</header>

<div class="modal_screen"></div>



<form id="formNoticeDetail" name="formNoticeDetail" method="post">
	<input type="hidden" id="notice_event_id" name="notice_event_id">
</form>  
<script src="${pageContext.request.contextPath}/js/m/jquery-1.11.0.min.js"></script>
<script type="text/javascript">

$(document).ready(function(){
	fncNoticeCount();
	fncNoticeDetail();
});

//김동용
function logout(logout){
   var logout = document.getElementById('logout_butn').value = 'logout';
   Android.logout(logout);
}

function fncNoticeCount(){

	//알림 count
	$.ajax({
		url : "/common/selectNoticeCount.do",
		type : "get",
		data : {
			member_id_num : "${userInfo.MEMBER_ID_NUM}"
		},
		beforeSend : function() {
		},
		success : function(data) {
			var notice_cnt = data.noticeCount;
			//notice_cnt = 5;
			if (notice_cnt > 0){
				$('span.alarm_count').html(notice_cnt);
				$('span.alarm_count').show();
			}
		},
		complete : function() {
		},
		error : function() {
			console.log("Notice Error!");
		}
	});
}


function fncNoticeDetail(){

	$.ajax({
		url : "/common/selectNoticeDetail.do",
		type : "get",
		data : {
			member_id_num : "${userInfo.MEMBER_ID_NUM}"
		},
		beforeSend : function() {
		},
		success : function(data) {
			
			var newsList = data.selectNoticeDetail;
			var news_html = '';
			
			var redirectUrl = "";
			var mobileUrl_1 = null;
			var mobileUrl_2 = null;
			var calendarStartDate_1 = null;
			var calendarStartDate_2 = null;
			
			
			for (var n = 0; n < newsList.length; n ++){
				if (newsList[n].NOTICE_CONFIRM_YN == 'N') news_html += '<li>';
				else news_html += '<li class="visited">';
				if (newsList[n].NOTICE_CATEGORY == '캘린더공유'){
					news_html += '<a href="#" onClick="linkBlockingButton(); return false;">';//(\''+newsList[n].NOTICE_REDIRECT_URL+'\', \''+ newsList[n].NOTICE_ID +'\'); return false;
				} else if(newsList[n].NOTICE_CATEGORY == '캘린더 일정 초대') {
					news_html += '<a href="#" onClick="fncConvite(\''+ newsList[n].NOTICE_ID +'\'); return false;">';
				} else if(newsList[n].NOTICE_CATEGORY == '일정초대수락여부') {
					news_html += '<a href="#" onClick="return false;">';
				} else if(newsList[n].NOTICE_CATEGORY == '일정알림') {
					calendarStartDate_1 = (newsList[n].NOTICE_DETAIL);
					calendarStartDate_2 = calendarStartDate_1.split(" ",1);
					
					news_html += '<a href="#" onClick="meetingNotice(\''+newsList[n].EVENT_ID+'\', \''+ newsList[n].NOTICE_ID +'\', \''+ calendarStartDate_2 +'\'); countUpdate(\''+ newsList[n].NOTICE_ID +'\'); return false;">';
				} else {
					if(!isEmpty(newsList[n].NOTICE_REDIRECT_URL)){
						redirectUrl = newsList[n].NOTICE_REDIRECT_URL;
						mobileUrl_1 = redirectUrl.replace("viewClientIssueList","selectClientIssueDetail");
						mobileUrl_2 = mobileUrl_1.replace("issueId","pkNo");
						news_html += '<a href="'+ mobileUrl_2  +'" onClick="fncUpdateNotice(\''+ newsList[n].NOTICE_ID +'\');">';
					}
					//news_html += '<a href="'+newsList[n].NOTICE_REDIRECT_URL+'" onClick="fncUpdateNotice(\''+ newsList[n].NOTICE_ID +'\');">';
				}
				
				if (newsList[n].NOTICE_CONFIRM_YN == 'N') news_html += '<span class="icon_new">new</span>';
				if(newsList[n].NOTICE_CATEGORY == '일정알림' || '캘린더 일정 초대'){
					if(newsList[n].NOTICE_CATEGORY == '캘린더 일정 초대'){
					}else{
						news_html += '<span class="icon lg icon_sch_'+newsList[n].NOTICE_CODE+'"></span>';	
					}
					news_html += '<span class="cata sch">'+newsList[n].NOTICE_CATEGORY+'</span>';
				
				}else if(newsList[n].NOTICE_CATEGORY == '고객이슈' || '고객만족' || '서비스프로젝트'){
					alert(newsList[n].NOTICE_CATEGORY);
					//news_html += '<span class="icon lg icon_issue_'+newsList[n].NOTICE_CODE+'"></span>';
					news_html += '<span class="cata issue">'+newsList[n].NOTICE_CATEGORY+'</span>';
				}else if(newsList[n].NOTICE_CATEGORY == '고객컨텍내용' || '영업기회' || '잠재영업기획'){
					alert(newsList[n].NOTICE_CATEGORY);
					//news_html += '<span class="icon lg icon_action_'+newsList[n].NOTICE_CODE+'"></span>';
					news_html += '<span class="cata action">'+newsList[n].NOTICE_CATEGORY+'</span>';
				}else if(newsList[n].NOTICE_CATEGORY == '회사부문별전략' || '고객별전략' || '전략프로젝트'){
					alert(newsList[n].NOTICE_CATEGORY);
					//news_html += '<span class="icon lg icon_stra_'+newsList[n].NOTICE_CODE+'"></span>';
					news_html += '<span class="cata stra">'+newsList[n].NOTICE_CATEGORY+'</span>';
				}else if(newsList[n].NOTICE_CATEGORY == '고객사/고객개인' || '파트너사/파트너사개인' || '성과관리'){
					alert(newsList[n].NOTICE_CATEGORY);
					//news_html += '<span class="icon lg icon_alarm_'+newsList[n].NOTICE_CODE+'"></span>';
					news_html += '<span class="cata alarm">'+newsList[n].NOTICE_CATEGORY+'</span>';
				}
				//alert(newsList[n].NOTICE_CATEGORY);
				news_html += '<span class="ment">'+newsList[n].NOTICE_DETAIL+'</span>';
				
				var v_notice_send_date = moment(newsList[n].NOTICE_SEND_DATE);
				v_notice_send_date = v_notice_send_date.format("YYYY-MM-DD");
				//console.log("v_notice_send_date : " + v_notice_send_date);
				
				news_html += '<br/><span class="date">'+v_notice_send_date+'</span></a>';
				news_html += '<a href="#" class="btn_list_delete"><img src="${pageContext.request.contextPath}/images/m/btn_delete.svg"></a></li>';
				//news_html += '<span class="ment">'+newsList[n].NOTICE_DETAIL+'</span>';
				//news_html += '<br/><span class="date">'+newsList[n].NOTICE_SEND_DATE_TXT+'</span></a>';
				//news_html += '<a href="#" class="btn_list_delete"><img src="${pageContext.request.contextPath}/images/m/btn_delete.svg"></a></li>';
				
				
			}
			$('ul.news').html(news_html);
		},
		complete : function() {
		},
		error : function() {
			console.log("Notice Error!");
		}		
	});
}




function countUpdate (noticeId){
	$.ajax({
		url : "/common/updateNoticeDetail.do",
		async : false,
		type : "get",
		data : {
			member_id_num  : "${userInfo.MEMBER_ID_NUM}",
			noticeId : noticeId
		},
		beforeSend : function(){
		},
		success : function(data){
			
		},
		complete: function(){
			fncNoticeCount();
		},
		error : function(){
			console.log("Notice Error!");
		}
	});
	
}


function meetingNotice(eventId, noticeId, calendarStartDate_2 ){
	$.ajax({
		url : "/calendar/modalCalendarForm.do",
		type : "post",
		data : {
			member_id_num : "${userInfo.MEMBER_ID_NUM}"
		},
		beforeSend: function(){
		},
		success : function(data){
			var newsList = data.selectNoticeDetail;
			window.location.href = "/calendar/modalCalendarForm.do?mode=M&eventId="+eventId +"&pos=viewCalendar&start_date="+calendarStartDate_2;
			/* <a href="/calendar/modalCalendarForm.do?mode=M&eventId='+_item.EVENT_ID+'&pos=viewCalendar&start_date='+start_date+'"><span class="time">'+_item.START_TIME+'</span>';
			item_html += '<span class="icon lg icon_sch_'+_item.EVENT_CODE+'"></span><span class="subject">'+_item.title+'</span></a> */
		},
		complete : function(){
			
		},
		error : function(){
			console.log("meetingNotice Error!")
		}
	})
}

function linkBlockingButton(){
	alert("캘린더공유 확인은 PC에서 확인해주세요.");
	return false;
}
 /*function fncVisitLink(linkURL, noticeId){
	$.ajax({
		url : "/common/updateNoticeDetail.do",
		async : false,
		type : "get",
		data : {
			member_id_num  : "${userInfo.MEMBER_ID_NUM}",
			noticeId : noticeId
		},
		beforeSend : function(){
		},
		success : function(data){
			location.href = "http://" + location.host + linkURL;
		},
		complete: function(){
			fncNoticeCount();
		},
		error : function(){
			console.log("Notice Error!");
		}
	});
} */

function fncConvite(noticeId){
	alert("메일에서 확인하세요");
	fncUpdateNotice(noticeId);
}

function fncUpdateNotice(noticeId){
	$.ajax({
		url : "/common/updateNoticeDetail.do",
		async : false,
		type : "get",
		data : {
			member_id_num  : "${userInfo.MEMBER_ID_NUM}",
			noticeId : noticeId
		},
		beforeSend : function(){
		},
		success : function(data){
			
		},
		complete: function(){
			fncNoticeCount();
		},
		error : function(){
			//console.log("Notice Error!");
		}
	});
}
</script>