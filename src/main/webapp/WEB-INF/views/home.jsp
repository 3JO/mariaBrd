<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<%@include file="include/header.jsp"%>
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			General Form Elements <small>Preview</small>
		</h1>

	</section>

	<!-- Main content -->
	<section class="content">
		<div class="row">
			<!-- left column -->
			<div class="col-md-12">
				<!-- general form elements -->

				<div class="box">
					<div class="box-header with-border">
						<h3 class="box-title">HOME PAGE</h3>
					</div>
				</div>
	


					<!--공지게시판  -->
					<!-- left column -->
					<div class="col-md-12">
						<!-- general form elements -->

						<div class="box box box-primary">
						<div class="box-header with-border">
						<h3 class="box-title">공지 게시판</h3>
						</div>

							<table class="table table-bordered">
								<tr>
									<th style="width: 10px">BNO</th>
									<th>TITLE</th>
									<th>WRITER</th>
									<th>REGDATE</th>

								</tr>

								<c:forEach items="${list}" var="boardVO">

									<tr>
										<td>${boardVO.bno}</td>
										<td><a
											href='/snboard/read${pageMaker.makeQuery(pageMaker.cri.page) }&bno=${boardVO.bno}'>
												${boardVO.title}</a></td>
										<td>${boardVO.writer}</td>
										<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
												value="${boardVO.regdate}" /></td>

									</tr>

								</c:forEach>

							</table>

						</div>

					</div>
					<!--공지게시판 끝 -->



					<!--QnA 시작 -->
					<!-- left column -->
					<div class="col-md-12">
						<!-- general form elements -->

					<div class="box box box-primary">
						<div class="box-header with-border">
						<h3 class="box-title">QnA 게시판</h3>
					</div>

							<table class="table table-bordered">
								<tr>
									<th style="width: 10px">BNO</th>
									<th>TITLE</th>
									<th>WRITER</th>
									<th>REGDATE</th>
								</tr>

								<c:forEach items="${list1}" var="qboardVO">

									<tr>
										<td>${qboardVO.bno}</td>
										<td><a
											href='/qboard/read${pageMaker.makeSearch(pageMaker.cri.page) }&bno=${qboardVO.bno}'>
												${qboardVO.title} <strong>[ ${qboardVO.replycnt} ]</strong>
										</a></td>
										<td>${qboardVO.writer}</td>
										<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
												value="${qboardVO.regdate}" /></td>
									</tr>

								</c:forEach>

							</table>

						</div>

					</div>
					<!--QnA 끝 -->
					
					
					
					<!--자료실  시작 -->
					<!-- left column -->
			<div class="col-md-12">
				<!-- general form elements -->

				<div class="box box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title">자료실</h3>
					</div>

					<table class="table table-bordered">
						<tr>
							<th style="width: 10px">BNO</th>
							<th>TITLE</th>
							<th>WRITER</th>
							<th>REGDATE</th>
						</tr>

						<c:forEach items="${list2}" var="dboardVO">

							<tr>
								<td>${dboardVO.bno}</td>
								<td><a
									href='/dboard/readPage${pageMaker.makeSearch(pageMaker.cri.page)}&bno=${dboardVO.bno}'>${dboardVO.title}
										<strong>[ ${dboardVO.replycnt} ]</strong>
								</a></td>
								<td>${dboardVO.writer}</td>
								<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
										value="${dboardVO.regdate}" /></td>
								
							</tr>

						</c:forEach>

					</table>
				</div>

			</div>
			<!--자료실  끝 -->


				
			</div>
			<!--/.col (left) -->
		</div>
		<!-- /.row -->
	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->


<%@include file="include/footer.jsp"%>