<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<%@include file="../templateHeader.jsp" %>
<%@include file="../navbar.jsp" %>
<%@include file="../menubar.jsp" %>


<!-- Start -->

<div class="main-content" style="font-family:phetsarath OT;" >

				<div class="main-content-inner" >
				<!-- Start Tap header & search  -->
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">ເເກ້ໄຂ ປະເພດລາຍຈາຍ</a>
							</li>
							<li>
								<a href="#">ລາຍລະອຽດ</a>
							</li>
						</ul>
						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
							</form>
						</div>
					</div>
						<!-- END -->
					<div class="page-content"  style="font-family:phetsarath OT;">
											<div class="widget-box">
											
												<div class="widget-body">
													<div class="widget-main">
												<!--  -->

<form:form class="form-horizontal"  attribute="document" autocomplete="off" method="POST" 
 action ="${pageContext.request.contextPath}/Expenses/update/${data.id}" enctype="multipart/form-data">
<div class="modal-body" >
<div class="container" >
<div class="panel panel-default" style="width:80%;">
<div class="panel-body">
<div class="row"  style="font-family:phetsarath OT;">    
<div class="col-xs-6 col-sm-12" style="color:red;">
 <label  style="color:red;">ປະເພດລາຍຈ່າຍ : </label>
  <input type="text" class="form-control " name="name" value="${data.name}"  required autocomplete="off">
</div>
</div>
</div>
</div>

</div>

			<div class="container" >
				<div class="panel panel-default" style="width:80%;">
					<div class="panel-body">
          				<div class="modal-footer" >  
          	     		<button type="submit" class="btn btn-primary btn-flat" name="update"><i class="fa fa-save"></i> ບັນທຶກ</button>	
            			</div>
          			</div>
          	 	</div>
          	</div>
   	</div>
	</form:form>
	</div>
	</div>
	</div>
	</div>
	</div>
	</div>	

		<%@include file="../templateFooter.jsp" %> 
	