<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@include file="../templateHeader.jsp" %>
<%@include file="../navbar.jsp" %>
<%@include file="../menubar.jsp" %>
<div class="main-content" style="font-family:phetsarath OT;" >
				<div class="main-content-inner" >
				<!-- Start Tap header & search  -->
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
							<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">ສະຖານະເອກະສານ ສັນຍາ</a>
							</li>
							<li>
								<a href="#">ສະຖານະສັນຍາ </a>
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
		<div class="page-content"  style="font-family:phetsarath OT;">
		<div class="widget-box">									
		<div class="widget-body">
			<div class="widget-main">
				<form:form class="form-horizontal"  attribute="merchant" autocomplete="off" method="POST"  action ="${pageContext.request.contextPath}/merchant/update/${data.docStatus}" enctype="multipart/form-data">
					<div class="modal-body" >
						<div class="panel-body">
							<table id="dynamic-table" class="table table-striped table-bordered table-hover">
							<thead>
							<tr>
							<th scope="col" class="text-center">#</th>
							<th scope="col" class="text-center">ລະຫັດ</th>
							<th scope="col" class="text-center">ປະເພດເອກະສານ</th>
							</tr>
							</thead>
								<tbody>
									<c:forEach var="data" items="${docStatus}" varStatus="No">
										<tr>
											<td scope="col"  class="text-center">${No.index +1 }</td>
											<td scope="col"  class="text-center">${data.doctypename}</td>
											<td scope="col"  class="text-center">${data.name}</td>
										</tr>
									</c:forEach>
								</tbody>
												
							</table>
						</div>
						<div class="panel-body">
          					<div class="modal-footer" >  
          	     				<a href="${pageContext.request.contextPath}/home" data-toggle="modal" class="btn btn-grey btn-flat pull-right"><i class="fa fa-arrow-left"></i> ກັບຄືນ</a>
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
	