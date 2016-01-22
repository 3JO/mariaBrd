<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page session="false"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<%@include file="include/header.jsp"%>

	<style type="text/css">
	#tablestyle{
	/* text-align: center; */
	
	
	
	}
	
	</style>
	
<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	
	<!-- Content Header (Page header) -->
	
	
	<!-- <section class="content-header"> 이거 살리면 gif파일사이에 공간이 생김-->
	
		<img src= "/resources/main_weather.gif" width="100%" height="390">

	<!-- </section> --> 



			<!-- Main content -->
		<section class="content">
		
			
				<!-- general form elements -->

				<!-- <div class="box">
					<div class="box-header with-border"> 동영상
					
						   <video src = "/resources/weatherLIVE.mp4" controls autoplay loop="-3"></video>
					</div>
				</div> -->
				
	 <!-- 베너와 공지사항 묶는 div 시작 -->	
	<div class="row">
	
	 <!-- 베너 시작 -->
      <div class="col-md-6">
        <div class="box box-solid">
          <div class="box-header with-border">
            <h3 class="box-title">Carousel</h3>
          </div><!-- /.box-header -->
          <div class="box-body" style="height: 410px">
            <div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
              <ol class="carousel-indicators">
                <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
                <li data-target="#carousel-example-generic" data-slide-to="1" class=""></li>
                <li data-target="#carousel-example-generic" data-slide-to="2" class=""></li>
              </ol>
              <div class="carousel-inner">
                <div class="item active">
                  <img src="http://placehold.it/900x500/39CCCC/ffffff&text=홀로그램 제품 사진" alt="First slide">
                  <div class="carousel-caption">
                    First Slide
                  </div>
                </div>
                <div class="item">
                  <img src="http://placehold.it/900x500/3c8dbc/ffffff&text=홀로그램 제품 사진" alt="Second slide">
                  <div class="carousel-caption">
                    Second Slide
                  </div>
                </div>
                <div class="item">
                  <img src="http://placehold.it/900x500/f39c12/ffffff&text=홀로그램 제품 사진" alt="Third slide">
                  <div class="carousel-caption">
                    Third Slide
                  </div>
                </div>
              </div>
              <a class="left carousel-control" href="#carousel-example-generic" data-slide="prev">
                <span class="fa fa-angle-left"></span>
              </a>
              <a class="right carousel-control" href="#carousel-example-generic" data-slide="next">
                <span class="fa fa-angle-right"></span>
              </a>
            </div>
          </div><!-- /.box-body -->
        </div><!-- /.box -->
      </div><!-- /.col -->
	<!-- 베너 끝 -->	
	



					<!--공지게시판  -->
					<!-- left column -->
					<div class="col-md-6">
						<!-- general form elements -->

						<div class="box box box-primary">
						<div class="box-header with-border">
						<h3 class="box-title">공지 게시판</h3>
						</div>

							<table class="table table-bordered" >
								<tr>
									<th style="width: 10px; text-align: center;">BNO</th>
									<th style="text-align: center;">TITLE</th>
									<th style="text-align: center;">WRITER</th>
									<th style="text-align: center;">REGDATE</th>

								</tr>

								<c:forEach items="${list}" var="boardVO">

									<tr>
										 <td>${boardVO.bno}</td>
										<td><a
											href='/snboard/read${pageMaker.makeQuery(pageMaker.cri.page) }&bno=${boardVO.bno}'>
												${boardVO.title}<strong>[ ${boardVO.replycnt} ]</strong>
												</a></td>
										<td>${boardVO.writer}</td>
										<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
												value="${boardVO.regdate}" /></td>

									</tr>

								</c:forEach>

							</table>

						</div>

					</div>
					<!--공지게시판 끝 -->
					
					</div>
					<!-- 베너와 공지사항 묶는 div 끝 -->	


				<!-- QnA 자료실 묶는 div 시작 -->	
				<div class="row">
				
					<!--QnA 시작 -->
					<!-- left column -->
					<div class="col-md-6">
						<!-- general form elements -->

					<div class="box box box-primary">
						<div class="box-header with-border">
						<h3 class="box-title">QnA 게시판</h3>
					</div>

							<table class="table table-bordered">
								<tr id="tablestyle">
									<th>BNO</th>
									<th>TITLE</th>
									<th>WRITER</th>
									<th>REGDATE</th>
								</tr>

								<c:forEach items="${list1}" var="qboardVO">

									<tr>
										<td>${qboardVO.bno}</td>
										<td ><a
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
			<div class="col-md-6">
				<!-- general form elements -->

				<div class="box box box-primary">
					<div class="box-header with-border">
						<h3 class="box-title">자료실</h3>
					</div>

					<table class="table table-bordered" >
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
		<!-- QnA 자료실 묶는 div 끝 -->	
		
		
	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->


<%@include file="include/footer.jsp"%>