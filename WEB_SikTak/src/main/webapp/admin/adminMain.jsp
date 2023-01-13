<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ include file="/admin/admin_header.jsp"%>


<article class="container">
<div class="chart doughnut1">
	<span class="center">${RepRate}%</span>
</div>
<div class="main-top-area">
	<div class="main-page-card-top">
		<h3>등록된 레시피 총 열람수</h3>
		<h2>${viewcnt}</h2>
	</div>
	<div class="main-page-card-top">
		<h3>관리자 추천수</h3>
		<h2>${adminrec}</h2>
	</div>
	<div class="main-page-card" id="main-page-card1">
		<div>
			<h3>전체 게시물 수 : ${countRecipe}</h3>
		</div>
		<div>
			상위 조회수 게시물 3개
			<table>
				<tr><th>레시피</th><th>작성자</th><th>조회수</th><th>작성날짜</th></tr>
				<c:forEach items="${bestViewList}" var="bestViewVO">
				<tr><td><a href="#" onClick="go_view('recipeDetailView','rnum','${bestViewVO.rnum}')">${bestViewVO.subject}</a></td><td>${bestViewVO.id}</td><td>${bestViewVO.views}</td>
				<td><fmt:formatDate value="${bestViewVO.indate}"/></td>
				</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	<div class="main-page-card" id="main-page-card2">
		<h3>전체 회원수</h3>
		<p>${countMember}</p>
		<h3>휴먼 회원수</h3>
		<p>${sleepMember}</p>
	</div>
	
	<div class="main-page-card" id="main-page-card3">
		<div>
			<h3>전체 댓글 수 : ${countReply}</h3>
		</div>
		<div>
			최근 댓글 3개
			<table>
				<tr><td>아이디</td><td>글번호</td><td>댓글내용</td><td>작성날짜</td></tr>
				<c:forEach items="${recentReplyList}" var="recentReplyVO" begin="0" end="2">
				<tr><td>${recentReplyVO.id}</td><td>${recentReplyVO.rnum}</td>
				<td><a href="#" onClick="go_view('recipeDetailView','rnum','${recentReplyVO.rnum}')">${recentReplyVO.content}</a></td>
				<td><fmt:formatDate value="${recentReplyVO.replydate}"/></td>
				</tr>
				</c:forEach>
			</table>
		</div>
	</div>
	<div class="main-page-card" id="main-page-card4">
		<h3>전체 문의수</h3>
		<p>${countQna}</p>
		<h3>전체 답변률</h3>
		<p><fmt:formatNumber value="${RepRate}" pattern=".0" type="percent"/>%</p>
		<!-- <div class="pie-chart1" id="pieChart"></div> -->
		
	</div>
</div>

</article>

<%@ include file="/admin/footer.jsp"%>