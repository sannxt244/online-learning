<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <title>Detail</title>
        <meta charset="UTF-8">
        <meta name="description" content="WebUni Education Template">
        <meta name="keywords" content="webuni, education, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Favicon -->   
        <link href="img/favicon.ico" rel="shortcut icon"/>

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:400,400i,500,500i,600,600i,700,700i,800,800i" rel="stylesheet">

        <!-- Stylesheets -->
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/font-awesome.min.css"/>
        <link rel="stylesheet" href="css/owl.carousel.css"/>
        <link rel="stylesheet" href="css/style.css"/>


        <!--[if lt IE 9]>
          <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
          <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>
    <body>
        <!-- Page Preloder -->
        <div id="preloder">
            <div class="loader"></div>
        </div>


        <!-- Header section -->
        <%@include file="header.jsp"%>
        <!-- Header section end -->



        <!-- Page  -->
        <section class="blog-page spad pb-0">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9">
                        <!-- blog post -->
                        <div class="blog-post">
                            <img src="${blog.image}" alt="">
                            <h3>${blog.title}</h3>
                            <div class="blog-metas">
                                <div class="blog-meta author">
                                    <a href="#">${blog.createdBy}</a>
                                </div>
                                <div class="blog-meta">
                                    <a href="#">${blog.createdDate}</a>
                                </div>
                            </div>
                            <p>${blog.content}</p>
                        </div>
                    </div>
                    <div class="col-lg-3 col-md-5 col-sm-9 sidebar">
                        <div class="sb-widget-item">
                            <form action="blog" method="get" class="search-widget">
                                <input type="text" name="search" placeholder="Search">
                                <button type="submit"><i class="fa fa-search"></i></button>
                            </form>
                        </div>
                        <div class="sb-widget-item">
                            <h4 class="sb-w-title">Categories</h4>
                            <div class="tags">
                                <a href="blog?category=${category.id}">${category.categoryName}</a>
                            </div>
                        </div>
                        <div class="sb-widget-item">
                            <h4 class="sb-w-title">Latest posts</h4>
                            <ul>
                                <c:forEach var="lastestBlog" items="${lastestBlogs}">
                                    <li><a href="#">${lastestBlog.title}</a></li>
                                </c:forEach>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <!-- Page end -->
        
        <!-- footer section -->
        <%@include file="footer.jsp" %>
	<!-- footer section end -->
        <!--====== Javascripts & Jquery ======-->
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/mixitup.min.js"></script>
        <script src="js/circle-progress.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>
    </body>
</html>