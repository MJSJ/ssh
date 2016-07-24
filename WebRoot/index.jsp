<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE html>
<html lang="en">
  <head>
  	<base href="<%=basePath%>">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

   	 	<!-- 新 Bootstrap 核心 CSS 文件 -->
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap.min.css">
	
	<!-- 可选的Bootstrap主题文件（一般不用引入） -->
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">
		<title>奇迹的</title>
	
		<style type="text/css">
	
		/* GLOBAL STYLES
	-------------------------------------------------- */
	/* Padding below the footer and lighter body text */
	
	body {
	  padding-bottom: 40px;
	  color: #5a5a5a;
	}
	
	
	/* CUSTOMIZE THE NAVBAR
	-------------------------------------------------- */
	
	/* Special class on .container surrounding .navbar, used for positioning it into place. */
	.navbar-wrapper {
	  position: absolute;
	  top: 0;
	  right: 0;
	  left: 0;
	  z-index: 20;
	}
	
	/* Flip around the padding for proper display in narrow viewports */
	.navbar-wrapper > .container {
	  padding-right: 0;
	  padding-left: 0;
	}
	.navbar-wrapper .navbar {
	  padding-right: 15px;
	  padding-left: 15px;
	}
	.navbar-wrapper .navbar .container {
	  width: auto;
	}
	
	
	/* CUSTOMIZE THE CAROUSEL
	-------------------------------------------------- */
	
	/* Carousel base class */
	.carousel {
	  height: 500px;
	  margin-bottom: 60px;
	}
	/* Since positioning the image, we need to help out the caption */
	.carousel-caption {
	  z-index: 10;
	}
	
	/* Declare heights because of positioning of img element */
	.carousel .item {
	  height: 500px;
	  background-color: #777;
	}
	.carousel-inner > .item > img {
	  position: absolute;
	  top: 0;
	  left: 0;
	  min-width: 100%;
	  height: 500px;
	}
	
	
	/* MARKETING CONTENT
	-------------------------------------------------- */
	
	/* Center align the text within the three columns below the carousel */
	.marketing .col-lg-4 {
	  margin-bottom: 20px;
	  text-align: center;
	}
	.marketing h2 {
	  font-weight: normal;
	}
	.marketing .col-lg-4 p {
	  margin-right: 10px;
	  margin-left: 10px;
	}
	
	
	/* Featurettes
	------------------------- */
	
	.featurette-divider {
	  margin: 80px 0; /* Space out the Bootstrap <hr> more */
	}
	
	/* Thin out the marketing headings */
	.featurette-heading {
	  font-weight: 300;
	  line-height: 1;
	  letter-spacing: -1px;
	}
	
	
	/* RESPONSIVE CSS
	-------------------------------------------------- */
	
	@media (min-width: 768px) {
	  /* Navbar positioning foo */
	  .navbar-wrapper {
	    margin-top: 20px;
	  }
	  .navbar-wrapper .container {
	    padding-right: 15px;
	    padding-left: 15px;
	  }
	  .navbar-wrapper .navbar {
	    padding-right: 0;
	    padding-left: 0;
	  }
	
	  /* The navbar becomes detached from the top, so we round the corners */
	  .navbar-wrapper .navbar {
	    border-radius: 4px;
	  }
	
	  /* Bump up size of carousel content */
	  .carousel-caption p {
	    margin-bottom: 20px;
	    font-size: 21px;
	    line-height: 1.4;
	  }
	
	  .featurette-heading {
	    font-size: 50px;
	  }
	}
	
	@media (min-width: 992px) {
	  .featurette-heading {
	    margin-top: 120px;
	  }
	}
	
		</style>
	</head>
	<body>
	
	
		  <div class="navbar-wrapper">
	      <div class="container">
	
	        <nav class="navbar navbar-inverse navbar-static-top">
	          <div class="container">
	            <div class="navbar-header">
	              <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
	                <span class="sr-only">Toggle navigation</span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	                <span class="icon-bar"></span>
	              </button>
	              <a class="navbar-brand" href="summary.jsp">myKrystal</a>
	            </div>
	            <div id="navbar" class="navbar-collapse collapse">
	              <ul class="nav navbar-nav">
	                <li class="active"><a href="#">Home</a></li>
	                <li><a href="#about">About</a></li>
	                <li><a href="#contact">Contact</a></li>
	                <li class="dropdown">
	                  <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
	                  <ul class="dropdown-menu">
	                    <li><a href="#">Action</a></li>
	                    <li><a href="#">Another action</a></li>
	                    <li><a href="#">Something else here</a></li>
	                    <li role="separator" class="divider"></li>
	                    <li class="dropdown-header">Nav header</li>
	                    <li><a href="#">Separated link</a></li>
	                    <li><a href="#">One more separated link</a></li>
	                  </ul>
	                </li>
	              </ul>
	            </div>
	          </div>
	        </nav>
	
	      </div>
	    </div>
	
	
	    <!-- Carousel
	    ================================================== -->
	    <div id="myCarousel" class="carousel slide" data-ride="carousel" data-interval=false>
	      <!-- Indicators -->
	      <ol class="carousel-indicators">
	        <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
	        <li data-target="#myCarousel" data-slide-to="1"></li>
	        <li data-target="#myCarousel" data-slide-to="2"></li>
	      </ol>
	      <div class="carousel-inner" role="listbox">
	        <div class="item active">
	          <img class="first-slide" src="http://news.sohu.com/upload/yursile/mykrystal/img/09.jpeg" alt="First slide">
	          <div class="container">
	            <div class="carousel-caption">
	              <h1>Example headline.</h1>
	              <p>Note: If you're viewing this page via a <code>file://</code> URL, the "next" and "previous" Glyphicon buttons on the left and right might not load/display properly due to web browser security rules.</p>
	              <p><a class="btn btn-lg btn-primary" href="javascript:void(0)"  data-toggle="modal" data-target="#myModal" role="button">Sign up today</a></p>
	            </div>
	          </div>
	        </div>
	        <div class="item">
	          <img class="second-slide" src="http://news.sohu.com/upload/yursile/mykrystal/img/02.jpg" alt="Second slide">
	          <div class="container">
	            <div class="carousel-caption">
	              <h1>Another example headline.</h1>
	              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
	              <p><a class="btn btn-lg btn-primary" href="#" role="button">Learn more</a></p>
	            </div>
	          </div>
	        </div>
	        <div class="item">
	          <img class="third-slide" src="http://news.sohu.com/upload/yursile/mykrystal/img/06.jpg" alt="Third slide">
	          <div class="container">
	            <div class="carousel-caption">
	              <h1>One more for good measure.</h1>
	              <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
	              <p><a class="btn btn-lg btn-primary" href="#" role="button">Browse gallery</a></p>
	            </div>
	          </div>
	        </div>
	      </div>
	 
	    </div><!-- /.carousel -->
	
	
	    <!-- Marketing messaging and featurettes
	    ================================================== -->
	    <!-- Wrap the rest of the page in another container to center all the content. -->
	
	    <div class="container marketing">
	
	      <!-- Three columns of text below the carousel -->
	      <div class="row">
	        <div class="col-lg-4">
	          <img class="img-circle" src="http://news.sohu.com/upload/yursile/mykrystal/img/04.jpg" alt="Generic placeholder image" width="140" height="140">
	          <h2>Heading</h2>
	          <p>Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.</p>
	          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
	        </div><!-- /.col-lg-4 -->
	        <div class="col-lg-4">
	          <img class="img-circle" src="http://news.sohu.com/upload/yursile/mykrystal/img/05.jpg" alt="Generic placeholder image" width="140" height="140">
	          <h2>Heading</h2>
	          <p>Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.</p>
	          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
	        </div><!-- /.col-lg-4 -->
	        <div class="col-lg-4">
	          <img class="img-circle" src="http://news.sohu.com/upload/yursile/mykrystal/img/06.jpg" alt="Generic placeholder image" width="140" height="140">
	          <h2>Heading</h2>
	          <p>Donec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.</p>
	          <p><a class="btn btn-default" href="#" role="button">View details &raquo;</a></p>
	        </div><!-- /.col-lg-4 -->
	      </div><!-- /.row -->
	
	
	      <!-- START THE FEATURETTES -->
	
	      <hr class="featurette-divider">
	
	      <div class="row featurette">
	        <div class="col-md-7">
	          <h2 class="featurette-heading">First featurette heading. <span class="text-muted">It'll blow your mind.</span></h2>
	          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
	        </div>
	        <div class="col-md-5">
	          <img class="featurette-image img-responsive center-block" src="http://news.sohu.com/upload/yursile/mykrystal/img/01.jpg" alt="Generic placeholder image">
	        </div>
	      </div>
	
	      <hr class="featurette-divider">
	
	      <div class="row featurette">
	        <div class="col-md-7 col-md-push-5">
	          <h2 class="featurette-heading">Oh yeah, it's that good. <span class="text-muted">See for yourself.</span></h2>
	          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
	        </div>
	        <div class="col-md-5 col-md-pull-7">
	          <img class="featurette-image img-responsive center-block" src="http://news.sohu.com/upload/yursile/mykrystal/img/03.jpg" alt="Generic placeholder image">
	        </div>
	      </div>
	
	      <hr class="featurette-divider">
	
	      <div class="row featurette">
	        <div class="col-md-7">
	          <h2 class="featurette-heading">And lastly, this one. <span class="text-muted">Checkmate.</span></h2>
	          <p class="lead">Donec ullamcorper nulla non metus auctor fringilla. Vestibulum id ligula porta felis euismod semper. Praesent commodo cursus magna, vel scelerisque nisl consectetur. Fusce dapibus, tellus ac cursus commodo.</p>
	        </div>
	        <div class="col-md-5">
	          <img class="featurette-image img-responsive center-block" src="http://news.sohu.com/upload/yursile/mykrystal/img/05.jpg" alt="Generic placeholder image">
	        </div>
	      </div>
	
	      <hr class="featurette-divider">
	
	      <!-- /END THE FEATURETTES -->
	
	
	      <!-- FOOTER -->
	      <footer>
	        <p class="pull-right"><a href="#">Back to top</a></p>
	        <p>&copy; 2016 Company, Inc. &middot; <a href="#">Privacy</a> &middot; <a href="#">Terms</a></p>
	      </footer>
	
	    </div><!-- /.container -->
	
		<!-- Modal -->
		<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
		  <div class="modal-dialog" role="document">
		    <div class="modal-content">
		      <div class="modal-header">
		        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
		        <h4 class="modal-title" id="myModalLabel">sign up</h4>
		      </div>
		      <div class="modal-body">
		         <form action="/" id="sign_up_form">
		         
			        <div class="input-group input-group-lg" style="margin-bottom:30px">
					  <span class="input-group-addon" id="sizing-addon1">@</span>
					  <input type="text" name="customer.phone" class="form-control" placeholder="Username" aria-describedby="sizing-addon1">
					</div>
					
		         	<div class="input-group input-group-lg">
					  <span class="input-group-addon" id="sizing-addon1">@</span>
					  <input type="password" name="customer.password" class="form-control" placeholder="password" aria-describedby="sizing-addon1">
					</div>
		         </form>
		      </div>
		      <div class="modal-footer">
		        <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
		        <button type="button" class="btn btn-primary" id="sign_up">submit</button>
		      </div>
		    </div>
		  </div>
		</div>
	
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
	
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="http://cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>
	<script src="./hammer.min.js"></script>
	<script src="./hammer.jquery.js"></script>
	<script src="./index.js"></script>
	<h1>yf branch</h1>
	<h2>kf branch</h2>
	</body>
</html>
