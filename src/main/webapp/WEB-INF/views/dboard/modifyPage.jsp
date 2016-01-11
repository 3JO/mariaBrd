<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="../include/header.jsp"%>

<style>
.fileDrop {
  width: 80%;
  height: 100px;
  border: 1px dotted gray;
  background-color: lightslategrey;
  margin: auto;
  
}
</style>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
	<!-- Content Header (Page header) -->
	<section class="content-header">
		<h1>
			DOWNLOAD BOARD <small>Modify</small>
		</h1>

	</section>

	<!-- Main content -->
	<section class="content">
		<div class="row">
			<!-- left column -->
			<div class="col-md-12">
				<!-- general form elements -->
				<div class="box box-primary">
					<div class="box-header">
						<h3 class="box-title">MODIFY PAGE</h3>
					</div>
					<!-- /.box-header -->

					<form role="form" action="modifyPage" method="post">
					
						<input type='hidden' name='page' value="${cri.page}">
						<input type='hidden' name='perPageNum' value="${cri.perPageNum}">
						<input type='hidden' name='searchType' value="${cri.searchType}">
						<input type='hidden' name='keyword' value="${cri.keyword}">
						
						<div class="box-body">
							<div class="form-group">
								<label for="exampleInputEmail1">BNO</label> <input type="text"
									name='bno' class="form-control" value="${dboardVO.bno}"
									readonly="readonly">
							</div>

							<div class="form-group">
								<label for="exampleInputEmail1">Title</label> <input type="text"
									name='title' class="form-control" value="${dboardVO.title}">
							</div>
							<div class="form-group">
								<label for="exampleInputPassword1">Content</label>
								<textarea class="form-control" name="content" rows="3">${dboardVO.content}</textarea>
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">Writer</label> <input
									type="text" name="writer" class="form-control"
									value="${dboardVO.writer}" readonly="readonly">
							</div>
							<div class="form-group">
								<label for="exampleInputEmail1">File Drop Here</label>
							<div class="fileDrop"></div>
						</div>	
						</div>
						<!-- /.box-body -->

						<div class="box-footer">
							<div>
								<hr>
							</div>

							<ul class="mailbox-attachments clearfix uploadedList"></ul>
							<button type="submit" class="btn btn-primary">Save</button>
							<!-- <a href=dboard/readPage?bno=${dboardVO.bno}><input type="button" value="Cancle"></a> -->
							<button type="submit" class="btn btn-warning">Cancel</button>
						</div>
					</form>
					
				</div>
				<!-- /.box -->
			</div>
			<!--/.col (left) -->

		</div>
		<!-- /.row -->
	</section>
	<!-- /.content -->
</div>
<!-- /.content-wrapper -->

<script id="template" type="text/x-handlebars-template">
<li>
  <span class="mailbox-attachment-icon has-img"><img src="{{imgsrc}}" alt="Attachment"></span>
  <div class="mailbox-attachment-info">
	<a href="{{getLink}}" class="mailbox-attachment-name">{{fileName}}</a>
	<a href="{{fullName}}" 
     class="btn btn-default btn-xs pull-right delbtn"><i class="fa fa-fw fa-remove"></i></a>
  </div>
</li>                
</script>  

<script>
	$(document).ready(function() {
		
		var formObj = $("form[role='form']");
		console.log(formObj);
		
		formObj.submit(function(event){
			event.preventDefault();
			
			var that = $(this);
			var str="";
			$(".uploadedList .delbtn").each(function(index){
				str += "<input type='hidden' name='fiiles[" + index + "]' value='" + $(this).attr("href") + "'>";
			});
			
			that.append(str);
			console.log(str);
			that.get(0).submit();
		});
		
		$(".btn-warning").on("click", function() {
			
			self.location = "/dboard/list?page=${cri.page}&perPageNum=&{cri.perPageNum}"
					+ "&searchType=${cri.searchType}&keyword=&{cri.keyword}";
					
					
		});
		
/* 		$(".btn-primary").on("click", function() {
			
			formObj.submit();
			
		}); */
	});
	
	var template = Handlebars.compile($("#template").html());

	$(".fileDrop").on("dragenter dragover", function(event){
		event.preventDefault();
	});


	$(".fileDrop").on("drop", function(event){
		event.preventDefault();
		
		var files = event.originalEvent.dataTransfer.files;
		
		var file = files[0];

		var formData = new FormData();
		
		formData.append("file", file);	
		
		
		$.ajax({
			  url: '/uploadAjax',
			  data: formData,
			  dataType:'text',
			  processData: false,
			  contentType: false,
			  type: 'POST',
			  success: function(data){
				  
				  var fileInfo = getFileInfo(data);
				  
				  var html = template(fileInfo);
				  
				  $(".uploadedList").append(html);
			  }
			});	
	});
	
	$(".uploadedList").on("click", ".delbtn", function(event){
		
		event.preventDefault();
		
		var that = $(this);
		 
		$.ajax({
		   url:"/deleteFile",
		   type:"post",
		   data: {fileName:$(this).attr("href")},
		   dataType:"text",
		   success:function(result){
			   if(result == 'deleted'){
				   that.closest("li").remove();
			   }
		   }
	   });
	});


	var bno = ${dboardVO.bno};
	var template = Handlebars.compile($("#template").html());

	$.getJSON("/dboard/getAttach/"+bno,function(list){
		$(list).each(function(){
			
			var fileInfo = getFileInfo(this);
			
			var html = template(fileInfo);
			
			 $(".uploadedList").append(html);
			
		});
	});

	$(".uploadedList").on("click", ".mailbox-attachment-info a", function(event){
		
		var fileLink = $(this).attr("href");
		
		if(checkImageType(fileLink)){
			
			event.preventDefault();
					
			var imgTag = $("#popup_img");
			imgTag.attr("src", fileLink);
			
			console.log(imgTag.attr("src"));
					
			$(".popup").show('slow');
			imgTag.addClass("show");		
		}	
	});

	$("#popup_img").on("click", function(){
		
		$(".popup").hide('slow');
		
	});	
	
</script>

<%@include file="../include/footer.jsp"%>
