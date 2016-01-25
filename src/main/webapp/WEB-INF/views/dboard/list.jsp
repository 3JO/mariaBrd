<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%@include file="../include/header.jsp"%>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			DOWNLOAD BOARD <small>List</small>
		</h1>

	</section>

	<!-- Main content -->
	<section class="content">
		<div class="row">
			<!-- left column -->
			<div class="col-md-12">
				<!-- general form elements -->

				<div class="box box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title">LIST ALL PAGE</h3>
						<button type="submit" class="btn btn-primary pull-right">New
							Board</button>
							<form action="/user/logout" method="post"><button>logout</button></form>
					</div>

					<table class="table table-bordered">
						<tr>
							<th style="width: 10px">BNO</th>
							<th>TITLE</th>
							<th>WRITER</th>
							<th>REGDATE</th>
							<th style="width: 40px">VIEWCNT</th>
						</tr>

						<c:forEach items="${list}" var="dboardVO">

							<tr>
								<td>${dboardVO.bno}</td>
								<td><a
									href='/dboard/readPage${pageMaker.makeSearch(pageMaker.cri.page)}&bno=${dboardVO.bno}'>${dboardVO.title}
										<strong>[ ${dboardVO.replycnt} ]</strong>
								</a></td>
								<td>${dboardVO.writer}</td>
								<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
										value="${dboardVO.regdate}" /></td>
								<td><span class="badge bg-red">${dboardVO.viewcnt}</span></td>
							</tr>

						</c:forEach>

					</table>

					<div class='box-body'>

						<select name="searchType">
							<option value="n"
								<c:out value="${cri.searchType == null?'selected':''}"/>>
								---</option>
							<option value="t"
								<c:out value="${cri.searchType eq 't'?'selected':''}"/>>
								Title</option>
							<option value="c"
								<c:out value="${cri.searchType eq 'c'?'selected':''}"/>>
								Content</option>
							<option value="w"
								<c:out value="${cri.searchType eq 'w'?'selected':''}"/>>
								Writer</option>
							<option value="tc"
								<c:out value="${cri.searchType eq 'tc'?'selected':''}"/>>
								Title OR Content</option>
							<option value="cw"
								<c:out value="${cri.searchType eq 'cw'?'selected':''}"/>>
								Content OR Writer</option>
							<option value="tcw"
								<c:out value="${cri.searchType eq 'tcw'?'selected':''}"/>>
								Title OR Content OR Writer</option>
						</select> <input type="text" name='keyword' id="keywordInput"
							value='${cri.keyword }'>
						<button class="btn bg-olive">Search</button>


					</div>

				</div>
				<!-- /.box-body -->
				<div class="box-footer">
					<div class="text-center">
						<ul class="pagination">

							<c:if test="${pageMaker.prev}">
								<li><a
									href="list${pageMaker.makeSearch(pageMaker.startPage - 1) }">&laquo;</a></li>
							</c:if>

							<c:forEach begin="${pageMaker.startPage }"
								end="${pageMaker.endPage }" var="idx">
								<li
									<c:out value="${pageMaker.cri.page == idx?'class =active':''}"/>>
									<a href="list${pageMaker.makeSearch(idx)}">${idx}</a>
								</li>
							</c:forEach>

							<c:if test="${pageMaker.next && pageMaker.endPage > 0}">
								<li><a
									href="list${pageMaker.makeSearch(pageMaker.endPage +1) }">&raquo;</a></li>
							</c:if>

						</ul>
					</div>
				</div>
				<!-- /.box-footer-->

			</div>
			<!--/.col (left) -->
		</div>
		<!-- /.row -->
	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<!-- <form id="jobForm">
	<input type='hidden' name="page" value=&{pageMaker.cri.perPageNum}>
	<input type='hidden' name="perPageNum" value=&{pageMaker.cri.perPageNum}>
</form>
 -->

<script>
	var result = '${msg}';

	if (result == 'SUCCESS') {
		alert("처리가 완료되었습니다.");
	}

	/* 	$(".pagination li a").on("click", function(event){
	 event.preventDefault();
	 var targetPage = $(this).attr("href");
	 var jobForm = $("#jobForm");
	
	 jobForm.find("[name='page']").val(targetPage);
	 jobForm.attr("action","/dboard/listPage").attr("method", "get");
	 jobForm.submit();
	 })

	 */
	$(document).ready(
			function() {

				var formObj = $("form[role='form']");

				console.log(formObj);

				$(".bg-olive").on(
						"click",
						function() {
							self.location = "list"
									+ '${pageMaker.makeQuery(1)}'
									+ "&searchType="
									+ $("select option:selected").val()
									+ "&keyword=" + $('#keywordInput').val();

							/* 			self.location = "list"
							 *              +'${pageMaker.makeSearch(1)}'
							 + "&searchType="
							 + $("select option:selected").val()
							 + "&keyword=" + $('#keywordInput').val(); */
						});

				$(".btn-primary").on("click", function() {
					self.location = "registPage";
				});

			});
</script>

<%@include file="../include/footer.jsp"%>

