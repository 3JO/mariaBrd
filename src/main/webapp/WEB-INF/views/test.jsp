<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<style>
#modDiv{
	width:300px;
	height:100px;
	background-color: gray;
	position:absolute;
	top:50%;
	left:50%;
}
</style>
<body>
	<h2>test</h2>
	
	<div>
		<div>
			replyer <input type = 'text' name='replyer' id='newReplyWriter'>
		</div>
		<div>
			reply text <input type = 'text' name='replytext' id='newReplyText'>
		</div>
		<button id="replyAddBtn">add reply</button>
	</div>
	<div id = 'modDiv' style="display: none;">
		<div class = 'modal-title'></div>
		<div>
			<input type = 'text' id='replytext'>
		</div>
		<div>
			<button type="button" id="replyModBtn">modi</button>
			<button type="button" id="replyDelBtn">delt</button>
			<button type="button" id="closeBtn">close</button>
		</div>
	</div>

	<ul id="replies"></ul>
	
	<ul class='pagination'>
	</ul>

	<script src="/resources/plugins/jQuery/jQuery-2.1.4.min.js"></script>


</body>
<script>
	var bno = 5;
	var str = "";
	getPageList(1);
	function getAllList() {
		$.getJSON("/replies/all/" + bno, function(data) {
			console.log(data.length);

			$(data).each(
					function() {
						str += "<li data-rno='"+this.rno+"' class='replyLi'>"
								+ this.rno + ":" + this.replytext + "<button>MOD</button></li>";
					});
			$("#replies").html(str);
		});
	}
	
	$("#replyAddBtn").on("click", function(){
		var replyer = $("#newReplyWriter").val();
		var replytext = $("#newReplyText").val();
		$.ajax({
			type:'post',
			url:'/replies',
			headers:{
				"Content-Type" : "application/json",
				"X-HTTP-Method-Override" : "POST"
			},
			dataType : 'text',
			data : JSON.stringify({
				bno:bno,
				replyer:replyer,
				replytext:replytext
			}),
			success : function(result){
				if(result == 'SUCCESS'){
					alert("reply add");
					getAllList();
				}
			}
		});
	});
	
	$("#replies").on("click", ".replyLi button", function(){
		var reply = $(this).parent();
		var rno = reply.attr("data-rno");
		var replytext = reply.text();
		
		$(".modal-title").html(rno);
		$("#replytext").val(replytext);
		$("#modDiv").show("slow");
	});
	
	$("#replyDelBtn").on("click", function(){
		var rno = $(".modal-title").html();
		var replytext = $("#replytext").val();
		
		$.ajax({
			type:'delete',
			url : '/replies/'+rno,
			headers : {
				"Content-Type": "application/json",
				"X-HTTP-Method-Override" : "DELETE"
			},
			dataType:'text',
			success:function(result){
				console.log("result: "+result);
				if(result == 'SUCCESS'){
					alert("success");
					$("#modDiv").hide("slow");
					getAllList();
				}
			}
		});
	});
	
	$("#replyModBtn").on("click", function(){
		var rno = $(".modal-title").html();
		var replytext = $("#replytext").val();
		
		$.ajax({
			type:'put',
			url : '/replies/'+rno,
			headers : {
				"Content-Type": "application/json",
				"X-HTTP-Method-Override" : "PUT"
			},
			data:JSON.stringify({replytext:replytext}),
			dataType:'text',
			success:function(result){
				console.log("result: "+result);
				if(result == 'SUCCESS'){
					alert("success");
					$("#modDiv").hide("slow");
					getPageList(replyPage);
				}
			}
		});
	});
	
	function getPageList(page){
		$.getJSON("/replies/"+bno+"/"+page, function(data){
			console.log(data.list.length);
			var str = "";
			
			$(data.list).each(function(){
				str += "<li data-rno='"+this.rno+"' class='replyLi'>"
				+this.rno+":"+this.replytext+
				"<button>MOD</button></li>";
			});
			$("#replies").html(str);
			
			printPaging(data.pagemaker);
		});
	}
	function printPaging(pagemaker){
		var str = "";
		
		if(pagemaker.prev){
			str+= "<li><a href='"+(pagemaker.startPage-1)+"'> << </a></li>";
		}
		for (var i = pagemaker.startPage, len= pagemaker.endPage; i <= len; i++) {
			var strClass = pagemaker.cri.page == i? 'class=active':'';
			str += "<li "+strClass+"><a href='"+i+"'>"+i+"</a></li>";
		}
		if(pagemaker.next){
			str += "<li><a href='"+(pagemaker.endPage+1)+"'> >> </a></li>";
		}
		$('.pagination').html(str);
	}

	var replyPage = 1;
	$(".pagination").on("click","li a", function(event){
		event.preventDefault();
		replyPage = $(this).attr("href");
		getPageList(replyPage);
	});c
</script>
</html>