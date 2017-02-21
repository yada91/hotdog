<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7"> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8"> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9"> <![endif]-->
<!--[if gt IE 8]><!-->

<html class="no-js">
<!--<![endif]-->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, maximum-scale=1" />
<link rel="shortcut icon" href="${pageContext.request.contextPath}/assets/img/favicon.png">
<title>Hot dog</title>

<head>

<style>

.toggle {
  position: relative;
  display: block;
  margin: 0 auto;
  width: 150px;
  height: 60px;
  color: white;
  outline: 0;
  text-decoration: none;
  border-radius: 100px;
  border: 2px solid #546E7A;
  background-color: #263238;
  transition: all 500ms;
}
.toggle:active {
  background-color: #1c2429;
}
.toggle:hover:not(.toggle--moving):after {
  background-color: #455A64;
}
.toggle:after {
  display: block;
  position: absolute;
  top: 4px;
  bottom: 4px;
  left: 4px;
  width: calc(50% - 4px);
  line-height: 45px;
  text-align: center;
  text-transform: uppercase;
  font-size: 20px;
  color: white;
  background-color: #37474F;
  border: 2px solid;
  transition: all 500ms;
}

.toggle--on:after {
  content: 'On';
  border-radius: 50px 5px 5px 50px;
  color: #66BB6A;
}

.toggle--off:after {
  content: 'Off';
  border-radius: 5px 50px 50px 5px;
  transform: translate(100%, 0);
  color: #f44336;
}

.toggle--moving {
  background-color: #1c2429;
}
.toggle--moving:after {
  color: transparent;
  border-color: #435862;
  background-color: #222c31;
  transition: color 0s, transform 500ms, border-radius 500ms,           background-color 500ms;
}

h1 {
  font-size: 64px;
  margin-top: 0;
  margin-bottom: 50px;
}
</style>
<!-- Bootstrap Core CSS -->
<link
	href="${pageContext.request.contextPath}/assets/template/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/assets/template/vendor/fontawesome/css/font-awesome.min.css"
	type="text/css" rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/assets/template/vendor/animateit/animate.min.css"
	rel="stylesheet">

<!-- Vendor css -->
<link
	href="${pageContext.request.contextPath}/assets/template/vendor/owlcarousel/owl.carousel.css"
	rel="stylesheet">
<link
	href="${pageContext.request.contextPath}/assets/template/vendor/magnific-popup/magnific-popup.css"
	rel="stylesheet">

<!-- Template base -->
<link
	href="${pageContext.request.contextPath}/assets/template/css/theme-base.css"
	rel="stylesheet">

<!-- Template elements -->
<link
	href="${pageContext.request.contextPath}/assets/template/css/theme-elements.css"
	rel="stylesheet">

<!-- Responsive classes -->
<link
	href="${pageContext.request.contextPath}/assets/template/css/responsive.css"
	rel="stylesheet">

<!--[if lt IE 9]>
		<script src="http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js"></script>
	<![endif]-->

<!-- Template color -->
<link
	href="${pageContext.request.contextPath}/assets/template/css/color-variations/blue.css"
	rel="stylesheet" type="text/css" media="screen" title="blue">

<!-- LOAD GOOGLE FONTS -->
<link
	href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,800,700,600%7CRaleway:100,300,600,700,800"
	rel="stylesheet" type="text/css" />

<!-- CSS CUSTOM STYLE -->
<link rel="${pageContext.request.contextPath}/assets/template/stylesheet" type="text/css" href="${pageContext.request.contextPath}/assets/template/css/custom.css" media="screen" />

<!-- CKEDITOR SCRIPT -->
<%-- <script src="${pageContext.request.contextPath}/assets/ckeditor/ckeditor.js"></script> --%>
<script src="//cdn.ckeditor.com/4.6.2/standard/ckeditor.js"></script>

<!-- ALERTIFY SCRIPT -->
<script src="${pageContext.request.contextPath}/assets/alertify/alertify.js"></script>

<!--VENDOR SCRIPT-->
<script
	src="${pageContext.request.contextPath}/assets/template/vendor/jquery/jquery-1.11.2.min.js"></script>
<script
	src="${pageContext.request.contextPath}/assets/template/vendor/plugins-compressed.js"></script>

<!-- User Profile -->
<script
	src="${pageContext.request.contextPath}/assets/js/userProfile.js"></script>
	
<!-- DASH-AVC/265 reference implementation SCRIPT-->
	<script src="http://cdn.dashjs.org/latest/dash.all.min.js"></script>	
	
<link
	href="${pageContext.request.contextPath}/assets/css/userProfile.css"
	rel="stylesheet">
<body class="boxed background-white">

	<div class="wrapper">

		<!-- START: HEADER PAGE TITLE -->
		<c:import url="/WEB-INF/views/includes/header.jsp" />
		<!-- END: PAGE TITLE -->
		<c:import url="/WEB-INF/views/includes/navigation-blog.jsp" />
		

		<!-- CONTENT -->
		<section class="content">
			<div class="container list_container">
				<div class="streaming_browser text-center">
				<button class="toggle toggle--off"></button>
						<span class="re"><i class="fa fa-exclamation-circle"></i></span>
						<br>
						
						<%--
						<div class="container" style="width:720px;">
						 	<button class='button grey-dark button-3d rounded icon-left' id="recoding"><i class="fa fa-video-camera">  녹화</i></button>  
						 	 <span class="pull-right" >27 C</span>
						 </div> 
						
						  <button class='button red-dark button-3d rounded icon-left' data-id="${raspberrypiVo.device_num }"><i class="fa fa-video-camera"> Recoding</i></button> --%>
						 
						 <div>
				            <video id="videoPlayer" width="720" height="360" controls="controls"></video>
				       	 </div>
					
						<div class="streaming_control">
							<button class='button black-light button-3d rounded icon-left' id='left'><i class="material-icons">Left</i></button>
				    		<button class='button black-light button-3d rounded icon-left' id='center'><i class="material-icons">Center</i></button>
				    		<button class='button black-light button-3d rounded icon-left' id='right'><i class="material-icons">Right</i></button>
						</div>
						
				</div>
			</div>

		</section>
		<!-- END: SECTION -->

		<!-- FOOTER -->
		<c:import url="/WEB-INF/views/includes/footer.jsp" />
		<!-- END: FOOTER -->

	</div>
	<!-- END: WRAPPER -->
	
	<!-- Theme Base, Components and Settings -->
	<script
		src="${pageContext.request.contextPath}/assets/template/js/theme-functions.js"></script>

	<!-- Custom js file -->
	<script
		src="${pageContext.request.contextPath}/assets/template/js/custom.js"></script>



	<!-- user profile modal -->
	<script>
	$(document).on('ready', function(){
	    $modal = $('.modal-frame');
	    $overlay = $('.modal-overlay');

	    /* Need this to clear out the keyframe classes so they dont clash with each other between ener/leave. Cheers. */
	    $modal.bind('webkitAnimationEnd oanimationend msAnimationEnd animationend', function(e){
	      if($modal.hasClass('state-leave')) {
	        $modal.removeClass('state-leave');
	      }
	    });

	    $('.closeProfile').on('click', function(){
	      $overlay.removeClass('state-show');
	      $modal.removeClass('state-appear').addClass('state-leave');
	    });

	    $('.openProfile').on('click', function(){
	      $overlay.addClass('state-show');
	      $modal.removeClass('state-leave').addClass('state-appear');
	    });

	  });
	</script>
	
	<!-- VIDEO Controller -->
	<script>
	$(function(){
		
				$('.toggle').click(function(e) {
					  var toggle = this;
					  e.preventDefault();

 					  $(toggle).toggleClass('toggle--on').toggleClass('toggle--off').toggleClass('toggle--moving');
 					  
 					  var sw = $(toggle).attr('class');
 					  var temp = sw.split(' ');
 					 
  					  if(temp[1]=='toggle--on'){
 						  console.log("on")
 					  }
 					  else if(temp[1]=='toggle--off'){
 						  console.log("off")
 					  }
 					  
					  setTimeout(function() {
					    $(toggle).removeClass('toggle--moving');
					  }, 200)
					});

            	
                var url = "http://150.95.141.66:1935/live/${authUser.nickname}/stream/manifest.mpd";
                
                var interval = null;

                var player = dashjs.MediaPlayer().create();
                player.initialize(document.querySelector("#videoPlayer"), url, true);
                
                
                $("#recoding").click(function(){
                	
    				var deviceNum = "${raspberrypiVo.device_num }";
                    var nickname = "${map.userVo.nickname}";
                    var userNo = ${map.userVo.users_no};

                    $(this).attr('class', 'button red-dark button-3d rounded icon-left');
                    $(this).attr('id', 'stop');
                    $(this).html('STOP');
					
                    interval = setInterval(function(){
                    				$(".re").toggle();
                    				}, 500);
                    
                    $("#stop").click(function(){
                        $(this).attr('class', 'button grey-dark button-3d rounded icon-left');
                        $(this).attr('id', 'recoding');
                        $(this).html('녹 화');
                        clearInterval(interval);

                    })
                    });
                
/*     				$.ajax({
                        url:"http://150.95.141.66:8086/livestreamrecord?app=live/" + nickname + "&streamname=stream&action=startRecording&outputPath=/upload/" + userNo,
                        type:"get",
                        success: function(){
                            console.log("success");
                        },
                        error : function(jqXHR, status, e) {
                        console.log(status + ":" + e);
                        }            
                    });
 */
 
 /*     				$.ajax({
							 url:"http://150.95.141.66:8086/livestreamrecord?app=live/" +nickname+ "&streamname=stream&action=stopRecording",
							 type:"get",
							 success: function(){
							     console.log("success");
							 },
							 error : function(jqXHR, status, e) {
							 console.log(status + ":" + e);
							 }            
						});
*/
       
                $("#left").click(function(){
                    $.ajax({
                        url:"http://150.95.141.66/test/cgi-bin/send.py",
                        type:"post",
                        data: { msg:"left", ip:ip1 },
                        success: function(){
                            console.log("success");
                        },
                        error : function(jqXHR, status, e) {
                        console.log(status + ":" + e);
                        }            
                    });
                });
                
                $("#center").click(function(){
                    $.ajax({
                        url:"http://150.95.141.66/test/cgi-bin/send.py",
                        type:"post",
                        data: { msg:"center", ip:ip1 },
                        success: function(){
                            console.log("success");
                        },
                        error : function(jqXHR, status, e) {
                        console.log(status + ":" + e);
                        }            
                    });
                });
                
                $("#right").click(function(){
                    $.ajax({
                        url:"http://150.95.141.66/test/cgi-bin/send.py",
                        type:"post",
                        data: { msg:"right", ip:ip1 },
                        success: function(){
                            console.log("success");
                        },
                        error : function(jqXHR, status, e) {
                        console.log(status + ":" + e);
                        }            
                    });
                });
            
	})
    </script>


</body>
</html>