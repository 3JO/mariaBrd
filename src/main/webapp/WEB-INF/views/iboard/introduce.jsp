<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>

<%@include file="../include/header.jsp"%>

      <!-- Content Wrapper. Contains page content -->
      <div class="content-wrapper">
        <!-- Content Header (Page header) -->
        <section class="content-header">
          <h1>
            INTRODUCE PAGE
            <small>Current version 1.0.0</small>
          </h1>

        </section>

        <!-- Main content -->
        <section class="content">
          <!-- Small board boxes (Stat box) -->

          <div>

            <span style=color=plum;filter:shadow;height:10px> <font size=5 face=굴림 color="#0099FF"><h1>
            "Special One"</h1></font></span>

            <h4>시간과 알람, 오늘의 날씨, 실시간 뉴스 등을 홀로그램으로 한 눈에!</h4>
            </br>
          </div>
          <!--<img src="weatherLIVE2.gif"  width="100%" height="700px">-->
        <!--  <img src="weather%20lamp.jpg"  width="100%" height="400">-->
          <video src = "/resources/weatherLIVE.mp4" controls autoplay loop="-3"></video>


          <div>&nbsp;</div>



          <div class="callout callout-info">
            <h4>Leap Motion 기능</h4>

            <p>모든 컨트롤을 Leal Motion 으로 제어 할 수 있어, 먼 곳에 있어도 보다 편리하게 제어 할 수 있습니다.</p>
          </div>

          <div class="callout callout-warning">
            <h4>Time / alram 기능</h4>
            <p>한밤중에도 현재 시간을 홀로그램으로 한 눈에 볼 수 있으며, 시계 기능 뿐 아니라 알람기능이 내장되어 있습니다.</p>
          </div>

          <div class="callout callout-info">
            <h4>Today Weather 기능</h4>
            <p>날씨를 확인 하지 않아도 그날의 오전 / 오후 날씨가 매일 업데이트 되어 홀로그램으로 확인 할 수 있습니다.</p>
          </div>

          <div class="callout callout-warning">
            <h4>Naver Real-time Search 기능</h4>
            <p>인터넷으로 찾아보지 않아도 포탈사이트 네이버의 실시간 인기 검색어를 홀로그램으로 한눈에 확인 할 수 있습니다.</p>
          </div>

          <h4><b>여러분의 실 생활에서 가장 가까이, 가장 많이 쓰이는 기능만을 탑재하여 여러분의 생활이 보다 편리 할 수 있도록 홀로비전은 도울 것입니다.</b></h4>

          <!--<h3>Leap Motion 기능</h3>-->
              <!--<h4>모든 컨트롤을 Leal Motion 으로 제어 할 수 있어, 먼 곳에 있어도 보다 편리하게 제어 할 수 있습니다.</h4>-->
          <!--</br>-->

              <!--<h3>Time / alram 기능</h3>-->
              <!--<h4>한밤중에도 현재 시간을 홀로그램으로 한 눈에 볼 수 있으며, 시계 기능 뿐 아니라 알람기능이 내장되어 있습니다.</h4>-->
          <!--</br>-->

              <!--<h3>Today Weather 기능</h3>-->
              <!--<h4>날씨를 확인 하지 않아도 그날의 오전 / 오후 날씨가 매일 업데이트 되어 홀로그램으로 확인 할 수 있습니다.</h4>-->
          <!--</br>-->

              <!--<h3>Naver Real-time Search 기능</h3>-->
              <!--<h4>인터넷으로 찾아보지 않아도 포탈사이트 네이버의 실시간 인기 검색어를 홀로그램으로 한눈에 확인 할 수 있습니다.</h4>-->
          <!--</br>-->
          <!--</br>-->



        </section><!-- /.content -->
      </div><!-- /.content-wrapper -->
      
     <%@include file="../include/footer.jsp"%>