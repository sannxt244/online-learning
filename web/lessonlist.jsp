<%-- 
    Document   : postlist
    Created on : Jun 11, 2022, 11:38:30 PM
    Author     : dell
--%>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <meta name="description" content="WebUni Education Template">
        <meta name="keywords" content="webuni, education, creative, html">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Favicon -->   
        <link href="img/favicon.ico" rel="shortcut icon"/>

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Raleway:400,400i,500,500i,600,600i,700,700i,800,800i" rel="stylesheet">

        <!-- Stylesheets -->
        <link href="css/all.min.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="css/bootstrap.min.css"/>
        <link rel="stylesheet" href="css/font-awesome.min.css"/>
        <link rel="stylesheet" href="css/owl.carousel.css"/>
        <link rel="stylesheet" href="css/style.css"/>
        <link href="css/main.css" rel="stylesheet" type="text/css"/>
        <!-- Slider -->
        <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css"/>
        <style>
            .mySlides {display:none}
            .w3-left, .w3-right, .w3-badge {cursor:pointer}
            .w3-badge {height:13px;width:13px;padding:0}
            .w3-content img {
                width: 100%;
                height: 100%;
                border-radius: 1%;
            }
        </style>
        <!-- end Slider -->

    </head>
    <body>
        <!-- Page Preloder -->
        <div id="preloder">
            <div class="loader"></div>
        </div>

        <!-- Header section -->
        <%@include file="header.jsp" %>
        <!-- Header section -->

        <div class="main-panel">
            <div class="content">
                <div class="container-fluid  mb-2">
                    <div class="row">

                        <div class="col-md-10 ">
                            <h3>Subject lesson</h3>
                            <table class="table">
                                <thead class="thead-dark">
                                    <tr>
                                        <th scope="col">ID</th>
                                        <th scope="col">Lesson</th>                     
                                        <th scope="col">Order</th>
                                        <th scope="col">Type</th>
                                        <th scope="col" class="bg-info">
                                            <a>
                                                <select class="bg-info" onchange="location = this.value;">
                                                  
                                                        <option >Choose Option</option>
                                                        <option value="subjectTopicAdd.jsp?sid=${sid}" >
                                                           Add Subject topic
<!--                                                            <a href="subjectTopicAdd.jsp?sid=${sid}">Add Subject topic</a>-->
                                                        </option>
                                                        <option value="lessonAdd.jsp" >
                                                           Add Lesson
<!--                                                            <a href="subjectTopicAdd.jsp?sid=${sid}">Add Subject topic</a>-->
                                                        </option>
                                                        <option value="AddQuizFormatServlet" >
                                                          Add quiz
<!--                                                            <a href="AddQuizFormatServlet">Add Subject topic</a>-->
                                                        </option>
                                                </select>
                                            </a>
                                        </th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <c:forEach items="${requestScope.listSubjectTopic}" var="subjectTopic">
                                        <tr>
                                            <td scope="row">${subjectTopic.id}</td>
                                            <td>${subjectTopic.name}</td>
                                            <td>${subjectTopic.order}</td>
                                            <td>${subjectTopic.type}</td>
                                            <td>
                                                    <a href="subjectTopicdetail.jsp?id=${subjectTopic.id}&name=${subjectTopic.name}&order=${subjectTopic.order}&type=${subjectTopic.type}">edit </a> ||
                                                     <a href="#" onclick="Mess(${subjectTopic.id})">delete</a> 
                                            </td>
                                        </tr>
                                        <c:forEach items="${subjectTopic.l}" var="lesson">
                                            <tr>
                                                <td>${lesson.id}</td>
                                                <td>${lesson.name}</td>
                                                <td>${lesson.order}</td>
                                                <td>${lesson.type}</td>
                                                <td>
                                                    <a href="updateLessonServlet?id=${lesson.id}">edit </a> ||
                                                    <a href="#" onclick="Mess1(${lesson.id})">delete</a> 
                                                </td>
                                            </tr>
                                            
                                            <script>
                                                    function Mess1(id){
                                                    var option = confirm('Are you sure to delete');
                                                        if(option === true){
                                                            window.location.href = 'deleteLessonServlet?Lid='+id;
                                                        }
                                                    }
                                          </script>
                                        </c:forEach>
                                        
                                        <c:forEach items="${subjectTopic.q}" var="quiz">
                                            <tr>
                                                <td>${quiz.id}</td>
                                                <td>${quiz.name}</td>
                                                <td></td>
                                                <td>${quiz.type}</td>
                                                <td>
                                                    <a href="AdminQuizDetailServlet?quizId=${quiz.id}">edit </a> ||
                                                     <a href="#" onclick="Mess2(${quiz.id})">delete</a> 
                                                </td>
                                            </tr>
                                            
                                            <script>
                                                    function Mess2(id){
                                                    var option = confirm('Are you sure to delete');
                                                        if(option === true){
                                                            window.location.href = 'deleteQuizServlet?Qid='+id;
                                                        }
                                                    }
                                          </script>
                                        </c:forEach>
                                        
                                         <script>
                                                    function Mess(id){
                                                    var option = confirm('Are you sure to delete');
                                                        if(option === true){
                                                            window.location.href = 'deleteSubjectTopicServlet?sTid='+id;
                                                        }
                                                    }
                                          </script>
                                                
                                    </c:forEach>
                       
                                </tbody>
                            </table>
                            </form>

                            <div class="d-flex justify-content-center">
                                <nav aria-label="Page navigation example">
                                    <ul class="pagination">
                                        <c:if test="${page>1}">
                                            <li class="page-item"><a class="page-link" href="postlist?page=${page - 1}&categoryId=${categoryId}&search=${search}">Previous</a></li>
                                            </c:if>
                                            <c:if test="${totalPage<10}">
                                                <c:forEach begin="${start}" end="${totalPage}" var="p">
                                                <li class="page-item ${(page eq p)? " active":""} " ><a class="page-link" href="postlist?page=${p}&categoryId=${categoryId}&search=${search}">${p}</a></li>
                                                </c:forEach>
                                            </c:if>
                                            <c:if test="${totalPage>=10 && page < 10}">
                                                <c:forEach begin="${1}" end="${10}" var="p">
                                                <li class="page-item ${(page eq p)? " active":""} " ><a class="page-link" href="postlist?page=${p}&categoryId=${categoryId}&search=${search}">${p}</a></li>
                                                </c:forEach>
                                            </c:if>
                                            <c:if test="${totalPage>=10 && page >= 10}">
                                                <c:forEach begin="${start}" end="${end}" var="p">
                                                <li class="page-item ${(page eq p)? " active":""} " ><a class="page-link" href="postlist?page=${p}&categoryId=${categoryId}&search=${search}">${p}</a></li>
                                                </c:forEach>
                                            </c:if>



                                        <c:if test="${page < totalPage}">
                                            <li class="page-item"><a class="page-link" href="postlist?page=${page + 1}&search=${search}">Next</a></li>
                                            </c:if>

                                    </ul>
                                </nav>
                            </div>
                        </div>
                    </div>


                </div>
            </div>
        </div>


                        <script>
                            function submitForm(formId){
                             document.getElementById(formId).submit();
                            }
                        </script>

        <!--====== Javascripts & Jquery ======-->
        <script src="js/jquery-3.2.1.min.js"></script>
        <script src="js/bootstrap.min.js"></script>
        <script src="js/mixitup.min.js"></script>
        <script src="js/circle-progress.min.js"></script>
        <script src="js/owl.carousel.min.js"></script>
        <script src="js/main.js"></script>

    </body>
</html>
