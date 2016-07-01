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

	<!--<link rel="stylesheet" href="./bootstrap.min.css">	-->
	<link rel="stylesheet" href="./main.css">
	<!-- 可选的Bootstrap主题文件（一般不用引入） 
	<link rel="stylesheet" href="http://cdn.bootcss.com/bootstrap/3.3.5/css/bootstrap-theme.min.css">-->
	<title>奇迹的</title>
	
	<style>
	
		.media-left img{
			width: 50px;
		}

		.col-md-6 img:hover{
			transform:scale(1.1);
		}
		.col-md-6 a{
			overflow: hidden;
		}

		/*body{
			background-image: url(http://img.vogue.co.kr/vogue/2015/08/style_5715f47218e77.jpg?id=35099) !important;
		    background-position: center !important;
		    background-repeat: no-repeat !important;
		    background-size: cover !important;
		    background-attachment: fixed;
		}*/
	</style>
	
	<body>
	
	
		<div class="navbar-wrapper">
			<div class="container">
				<nav class="navbar navbar-default">
				  <div class="container-fluid">
				    <!-- Brand and toggle get grouped for better mobile display -->
				    <div class="navbar-header">
				      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
				        <span class="sr-only">Toggle navigation</span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				        <span class="icon-bar"></span>
				      </button>
				      <a class="navbar-brand" href="#">Brand</a>
				    </div>
				
				    <!-- Collect the nav links, forms, and other content for toggling -->
				    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
				      <ul class="nav navbar-nav">
				        <li class="active"><a href="#">Link <span class="sr-only">(current)</span></a></li>
				        <li><a href="#">Link</a></li>
				        <li class="dropdown">
				          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
				          <ul class="dropdown-menu">
				            <li><a href="#">Action</a></li>
				            <li><a href="#">Another action</a></li>
				            <li><a href="#">Something else here</a></li>
				            <li role="separator" class="divider"></li>
				            <li><a href="#">Separated link</a></li>
				            <li role="separator" class="divider"></li>
				            <li><a href="#">One more separated link</a></li>
				          </ul>
				        </li>
				      </ul>
				      <form class="navbar-form navbar-left" role="search">
				        <div class="form-group">
				          <input type="text" class="form-control" placeholder="Search">
				        </div>
				        <button type="submit" class="btn btn-default">Submit</button>
				      </form>
				      <ul class="nav navbar-nav navbar-right">
				        <li><a href="#">Link</a></li>
				        <li class="dropdown">
				          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Dropdown <span class="caret"></span></a>
				          <ul class="dropdown-menu">
				            <li><a href="#">Action</a></li>
				            <li><a href="#">Another action</a></li>
				            <li><a href="#">Something else here</a></li>
				            <li role="separator" class="divider"></li>
				            <li><a href="#">Separated link</a></li>
				          </ul>
				        </li>
				      </ul>
				    </div><!-- /.navbar-collapse -->
				  </div><!-- /.container-fluid -->
				</nav>
			</div>
		</div>

	
	
		<div class="container">
			<div class="row">
				<div class="col-md-6">
				
					<a href="#" class="thumbnail">
						<img class="img-rounded img-responsive" src="http://news.sohu.com/upload/yursile/mykrystal/img/09.jpeg" alt="">
					</a>
				</div>
				<div class="col-md-6">
					<a href="#" class="thumbnail">
						<img src="http://news.sohu.com/upload/yursile/mykrystal/img/09.jpeg" alt="">
					</a>
				</div>
				<div class="col-md-6">
					<a href="#" class="thumbnail">
						<img class="img-rounded img-responsive" src="http://news.sohu.com/upload/yursile/mykrystal/img/09.jpeg" alt="">
					</a>
				</div>
				<div class="col-md-6">
					<a href="#" class="thumbnail">
						<img src="http://news.sohu.com/upload/yursile/mykrystal/img/09.jpeg" alt="">
					</a>
				</div>
				<div class="col-md-6">
					<a href="#" class="thumbnail">
						<img class="img-rounded" src="http://news.sohu.com/upload/yursile/mykrystal/img/09.jpeg" alt="">
					</a>
				</div>
				<div class="col-md-6">
					<a href="#" class="thumbnail">
						<img src="http://news.sohu.com/upload/yursile/mykrystal/img/09.jpeg" alt="">
					</a>
				</div>
				<div class="col-md-6">
					<a href="#" class="thumbnail">
						<img class="img-rounded" src="http://news.sohu.com/upload/yursile/mykrystal/img/09.jpeg" alt="">
					</a>
				</div>
				<div class="col-md-6">
					<a href="#" class="thumbnail">
						<img src="http://news.sohu.com/upload/yursile/mykrystal/img/09.jpeg" alt="">
					</a>
				</div>
				<div class="col-md-6">
					<a href="#" class="thumbnail">
						<img class="img-rounded" src="http://news.sohu.com/upload/yursile/mykrystal/img/09.jpeg" alt="">
					</a>
				</div>
				<div class="col-md-6">
					<a href="#" class="thumbnail">
						<img src="http://news.sohu.com/upload/yursile/mykrystal/img/09.jpeg" alt="">
					</a>
				</div>
			</div>

		<div class="list-group">
		  <button class="list-group-item">
		    <span class="badge">14</span>
		    Cras justo odio
		  </button>

		  <button class="list-group-item">
		    <span class="badge">14</span>
		    Cras justo odio
		  </button>
		</div>
			
		<nav class="text-center">
		  <ul class="pagination">
		    <li>
		      <a href="#" aria-label="Previous">
		        <span aria-hidden="true">&laquo;</span>
		      </a>
		    </li>
		    <li><a href="#">1</a></li>
		    <li><a href="#">2</a></li>
		    <li><a href="#">3</a></li>
		    <li><a href="#">4</a></li>
		    <li><a href="#">5</a></li>
		    <li>
		      <a href="#" aria-label="Next">
		        <span aria-hidden="true">&raquo;</span>
		      </a>
		    </li>
		  </ul>
		</nav>
		</div>
		
		<div class="container">
			<div class="row">
		  <div class="col-xs-2">
		    <input type="text" class="form-control" placeholder=".col-xs-2">
		  </div>
		  <div class="col-xs-3">
		    <input type="text" class="form-control" placeholder=".col-xs-3">
		  </div>
		  <div class="col-xs-4">
		    <input type="text" class="form-control" placeholder=".col-xs-4">
		  </div>
		</div>
		
		</div>

	 	<div class="input-group has-success">
	   	 	<span class="input-group-addon">@</span>
	 		<input type="text" class="form-control" id="inputSuccess1">
	   		<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
	   </div>
		
	<div class="form-group has-success  has-feedback">
 		 <label class="control-label" for="inputSuccess1">Input with success</label>
 		 
 		 <div class="input-group">
   	 	<span class="input-group-addon">@</span>
 		<input type="text" class="form-control" id="inputSuccess1">
   		<span class="glyphicon glyphicon-ok form-control-feedback" aria-hidden="true"></span>
   </div>
</div>
<div class="form-group has-warning">
  <label class="control-label" for="inputWarning1">Input with warning</label>
  <input type="text" class="form-control" id="inputWarning1">
</div>
<div class="form-group has-error">
  <label class="control-label" for="inputError1">Input with error</label>
  <input type="text" class="form-control" id="inputError1">
</div>
<div class="has-success ">
  <div class="checkbox">
    <label>
      <input type="checkbox" id="checkboxSuccess" value="option1">
      Checkbox with success
    </label>
  </div>
</div>
<div class="has-warning">
  <div class="checkbox">
    <label>
      <input type="checkbox" id="checkboxWarning" value="option1">
      Checkbox with warning
    </label>
  </div>
</div>
<div class="has-error">
  <div class="checkbox">
    <label>
      <input type="checkbox" id="checkboxError" value="option1">
      Checkbox with error
    </label>
  </div>
</div>
	
	
		
		<div class="container" id="sm">
	
		<form class="form-horizontal">
  <div class="form-group">
    <label for="inputEmail3" class="col-sm-2 control-label">Email</label>
    <div class="col-sm-10">
      <input type="email" class="form-control" id="inputEmail3" placeholder="Email">
    </div>
  </div>
  <div class="form-group">
    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
    <div class="col-sm-10">
      <input type="password" class="form-control" id="inputPassword3" placeholder="Password">
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <div class="checkbox">
        <label>
          <input type="checkbox"> Remember me
        </label>
      </div>
    </div>
  </div>
  <div class="form-group">
    <div class="col-sm-offset-2 col-sm-10">
      <button type="submit" class="btn btn-default">Sign in</button>
    </div>
  </div>
</form>

</div>

<button type="button" class="btn btn-default" aria-label="Left Align">
  <span class="glyphicon glyphicon-align-left" aria-hidden="true"></span>
</button>
	<button type="button" class="close" aria-label="Close"><span aria-hidden="true">&times;</span></button>

<div class="progress">
  <div class="progress-bar" role="progressbar" aria-valuenow="0" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em;">
    0%
  </div>
</div>
<div class="progress">
  <div class="progress-bar" role="progressbar" aria-valuenow="2" aria-valuemin="0" aria-valuemax="100" style="min-width: 2em; width: 2%;">
    2%
  </div>
</div>

<div class="container">
	



	<div class="media">
		<div class="media-left">
		<a href="#">
		  <img class="media-object img-rounded" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iNjQiIGhlaWdodD0iNjQiIHZpZXdCb3g9IjAgMCA2NCA2NCIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+PCEtLQpTb3VyY2UgVVJMOiBob2xkZXIuanMvNjR4NjQKQ3JlYXRlZCB3aXRoIEhvbGRlci5qcyAyLjYuMC4KTGVhcm4gbW9yZSBhdCBodHRwOi8vaG9sZGVyanMuY29tCihjKSAyMDEyLTIwMTUgSXZhbiBNYWxvcGluc2t5IC0gaHR0cDovL2ltc2t5LmNvCi0tPjxkZWZzPjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+PCFbQ0RBVEFbI2hvbGRlcl8xNTVhNDNlMmZmZCB0ZXh0IHsgZmlsbDojQUFBQUFBO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1mYW1pbHk6QXJpYWwsIEhlbHZldGljYSwgT3BlbiBTYW5zLCBzYW5zLXNlcmlmLCBtb25vc3BhY2U7Zm9udC1zaXplOjEwcHQgfSBdXT48L3N0eWxlPjwvZGVmcz48ZyBpZD0iaG9sZGVyXzE1NWE0M2UyZmZkIj48cmVjdCB3aWR0aD0iNjQiIGhlaWdodD0iNjQiIGZpbGw9IiNFRUVFRUUiLz48Zz48dGV4dCB4PSIxNC41IiB5PSIzNi41Ij42NHg2NDwvdGV4dD48L2c+PC9nPjwvc3ZnPg==" alt="...">
		</a>
		</div>
  
		<div class="media-body">
			<h4 class="media-heading">Media heading</h4>
			<p>
			oihngqlkwernfohvnasdfoihngqlkwernfohvnasdfoihngqlkwernfohvnasdfoihngqlkwernfohvnasdf
			oihngqlkwernfohvnasdf</br>
			oihngqlkwernfohvnasdf</br>
			oihngqlkwernfohvnasdf</br>
			</p>

			<div class="media-left">
			<a href="#">
			  <img class="media-object img-rounded" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iNjQiIGhlaWdodD0iNjQiIHZpZXdCb3g9IjAgMCA2NCA2NCIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+PCEtLQpTb3VyY2UgVVJMOiBob2xkZXIuanMvNjR4NjQKQ3JlYXRlZCB3aXRoIEhvbGRlci5qcyAyLjYuMC4KTGVhcm4gbW9yZSBhdCBodHRwOi8vaG9sZGVyanMuY29tCihjKSAyMDEyLTIwMTUgSXZhbiBNYWxvcGluc2t5IC0gaHR0cDovL2ltc2t5LmNvCi0tPjxkZWZzPjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+PCFbQ0RBVEFbI2hvbGRlcl8xNTVhNDNlMmZmZCB0ZXh0IHsgZmlsbDojQUFBQUFBO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1mYW1pbHk6QXJpYWwsIEhlbHZldGljYSwgT3BlbiBTYW5zLCBzYW5zLXNlcmlmLCBtb25vc3BhY2U7Zm9udC1zaXplOjEwcHQgfSBdXT48L3N0eWxlPjwvZGVmcz48ZyBpZD0iaG9sZGVyXzE1NWE0M2UyZmZkIj48cmVjdCB3aWR0aD0iNjQiIGhlaWdodD0iNjQiIGZpbGw9IiNFRUVFRUUiLz48Zz48dGV4dCB4PSIxNC41IiB5PSIzNi41Ij42NHg2NDwvdGV4dD48L2c+PC9nPjwvc3ZnPg==" alt="...">
			</a>
			</div>
	  
			<div class="media-body">
				<h4 class="media-heading">Media heading</h4>
				<p>
				oihngqlkwernfohvnasdfoihngqlkwernfohvnasdfoihngqlkwernfohvnasdfoihngqlkwernfohvnasdf
				oihngqlkwernfohvnasdf</br>
				oihngqlkwernfohvnasdf</br>
				oihngqlkwernfohvnasdf</br>
				</p>

				<div class="media-left">
				<a href="#">
				  <img class="media-object img-rounded" src="data:image/svg+xml;base64,PD94bWwgdmVyc2lvbj0iMS4wIiBlbmNvZGluZz0iVVRGLTgiIHN0YW5kYWxvbmU9InllcyI/PjxzdmcgeG1sbnM9Imh0dHA6Ly93d3cudzMub3JnLzIwMDAvc3ZnIiB3aWR0aD0iNjQiIGhlaWdodD0iNjQiIHZpZXdCb3g9IjAgMCA2NCA2NCIgcHJlc2VydmVBc3BlY3RSYXRpbz0ibm9uZSI+PCEtLQpTb3VyY2UgVVJMOiBob2xkZXIuanMvNjR4NjQKQ3JlYXRlZCB3aXRoIEhvbGRlci5qcyAyLjYuMC4KTGVhcm4gbW9yZSBhdCBodHRwOi8vaG9sZGVyanMuY29tCihjKSAyMDEyLTIwMTUgSXZhbiBNYWxvcGluc2t5IC0gaHR0cDovL2ltc2t5LmNvCi0tPjxkZWZzPjxzdHlsZSB0eXBlPSJ0ZXh0L2NzcyI+PCFbQ0RBVEFbI2hvbGRlcl8xNTVhNDNlMmZmZCB0ZXh0IHsgZmlsbDojQUFBQUFBO2ZvbnQtd2VpZ2h0OmJvbGQ7Zm9udC1mYW1pbHk6QXJpYWwsIEhlbHZldGljYSwgT3BlbiBTYW5zLCBzYW5zLXNlcmlmLCBtb25vc3BhY2U7Zm9udC1zaXplOjEwcHQgfSBdXT48L3N0eWxlPjwvZGVmcz48ZyBpZD0iaG9sZGVyXzE1NWE0M2UyZmZkIj48cmVjdCB3aWR0aD0iNjQiIGhlaWdodD0iNjQiIGZpbGw9IiNFRUVFRUUiLz48Zz48dGV4dCB4PSIxNC41IiB5PSIzNi41Ij42NHg2NDwvdGV4dD48L2c+PC9nPjwvc3ZnPg==" alt="...">
				</a>
				</div>
		  
				<div class="media-body">
					<h4 class="media-heading">Media heading</h4>
					<p>
					oihngqlkwernfohvnasdfoihngqlkwernfohvnasdfoihngqlkwernfohvnasdfoihngqlkwernfohvnasdf
					oihngqlkwernfohvnasdf</br>
					oihngqlkwernfohvnasdf</br>
					oihngqlkwernfohvnasdf</br>
					</p>
					<div class="well">
						<p>oihngqlkwernfohvnasdf</br>
					oihngqlkwernfohvnasdf</br>
					oihngqlkwernfohvnasdf</br></p>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
		

		<div class="input-group">
  <span class="input-group-addon" id="basic-addon1">@</span>
  <input type="text" class="form-control" placeholder="Username" aria-describedby="basic-addon1">
</div>

<div class="input-group">
  <input type="text" class="form-control" placeholder="Recipient's username" aria-describedby="basic-addon2">
  <span class="input-group-addon" id="basic-addon2">@example.com</span>
</div>

<div class="input-group">
  <span class="input-group-addon">$</span>
  <input type="text" class="form-control" aria-label="Amount (to the nearest dollar)">
  <span class="input-group-addon">.00</span>
</div>
		
		<footer id="footer">
			<div class="container">
				<div class="row">
					<div class="col-md-4">
						<h3 class="text-center">hello</h3>
					</div>
					<div class="col-md-4">
						<h3 class="text-center">hello</h3>
					</div>
					<div class="col-md-4">
						<h3 class="text-center">hello</h3>
					</div>
				</div>

			</div>
		</footer>
	
	
	<!-- jQuery文件。务必在bootstrap.min.js 之前引入 -->
	<script src="http://cdn.bootcss.com/jquery/1.11.3/jquery.min.js"></script>
	
	<!-- 最新的 Bootstrap 核心 JavaScript 文件 -->
	<script src="http://cdn.bootcss.com/bootstrap/3.3.5/js/bootstrap.min.js"></script>

	</body>
</html>
