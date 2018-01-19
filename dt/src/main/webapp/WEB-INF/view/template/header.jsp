<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<spring:url var="image" value="/resources/image"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
  <!-- Angular.JS -->
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.0.1/angular.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	 <!-- Bootstrap core CSS -->
    <link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">

    <!-- MaCarouselin CSS -->
    <link href="<c:url value="/resources/css/carousel.css" />" rel="stylesheet">

    <!-- Main CSS -->
    <link href="<c:url value="/resources/css/main.css" />" rel="stylesheet">


    <link href="https://cdn.datatables.net/1.10.10/css/jquery.dataTables.min.css" rel="stylesheet">
<head>

<body>
	<div></div>
	<nav class="navbar navbar-inverse navbar-fixed-top" style="background-color: ; border: 0px; border-radius: 0px; height:60px; font-size: 12pt">
		
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
			<div class="item active">
	
				<a class="navbar-brand" href="/dt/">Dkart</a>
			</div>
                </div>
                <form class="navbar-form navbar-left" action="/productList">
						 <div class="input-group">
                <div class="input-group-btn search-panel">
                    <button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
                        <span id="search_concept">All</span> <span class="caret"></span>
                    </button>
                    <ul class="dropdown-menu" role="menu">
                      <li><a href="${cp}/product/productList/all">Laptops</a></li>
                      <li><a href="${cp}/product/productList/Smart Phones">Smart Phones</a></li>
                      <li><a href="${cp}/product/productList/">Dope Gadgets</a></li>
                      <li><a href="${cp}/product/productList/">Cable & Accessories </a></li>
                      <li class="divider"></li>
                      <li><a href="product/productList/all">All Products</a></li>
                    </ul>
                </div>
                <form action="${cp}/product/productList/all" method="post"> 
                    <input type="hidden" name="search_param" value="all" id="search_param">         
                <input type="text" class="form-control" name="x" style="width:448px" placeholder=" ">
                <span class="input-group-btn">
                    <input style="height: 34px; background-color: #666;"
									class="btn btn-default" type="submit" value="Go"/>
									<i class="glyphicon glyphicon-search"></i>
								
								</form>
                </span>
            </div>
                <div id="navbar" class="navbar-collapse collapse">
                    <ul class="nav navbar-nav">
                       
                        <li><a href="<c:url value="/product/productList/all" />">All Products</a></li>
                        <li><a href="<c:url value="/about" />">About Us</a></li>
                          <li><a href="<c:url value="/contact" />">ContactUs</a></li>
                            <li><a href="<c:url value="/help" />">Help</a></li>
                    </ul>
                    <ul class="nav navbar-nav pull-right">
                        <c:if test="${pageContext.request.userPrincipal.name != null}">
                            <li><a>Welcome: ${pageContext.request.userPrincipal.name}</a></li>
                            <li><a href="<c:url value="/j_spring_security_logout" />">Logout</a></li>

                            <c:if test="${pageContext.request.userPrincipal.name != 'admin'}">
                                <li><a href="<c:url value="/customer/cart" />"><span class="glyphicon glyphicon-Shopping-Cart"></span></a></li>
                            </c:if>

                            <c:if test="${pageContext.request.userPrincipal.name == 'admin'}">
                                <li><a href="<c:url value="/admin" />">Admin</a></li>
                            </c:if>

                        </c:if>

                        <c:if test="${pageContext.request.userPrincipal.name == null}">
                            <li><a href="<c:url value="/login" />"><span class="glyphicon glyphicon-user"></span>Login</a></li>
                            <li><a href="<c:url value="/register" />"><span class="glyphicon glyphicon-log-in"></span>SignUp</a></li>
                        </c:if>
                    </ul>
                </div>
            </div>
        </nav>
</body>

					