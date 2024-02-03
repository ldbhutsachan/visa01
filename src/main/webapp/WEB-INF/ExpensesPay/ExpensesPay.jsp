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
								<a href="#">ປະເພດລາຍຈ່າຍ</a>
							</li>
							<li>
								<a href="#">ລາຍລະອຽດປະເພດລາຍຈ່າຍ </a>
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
			<div class="widget-header">
        	<h4 class="widget-title"  style="font-family:phetsarath OT;">
        	</h4>
        	</div>
			<div class="widget-main">
			&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			<a href="#addnew" data-toggle="modal" class="btn btn-white btn-info btn-bold"><i class="fa fa-plus"></i> ເພິ້ມຂໍ້ມູນເຂົ້າ</a>

				<form:form class="form-horizontal"  attribute="merchant" autocomplete="off" method="POST"  action ="${pageContext.request.contextPath}/merchant/update/${data.documentData}" enctype="multipart/form-data">
					<div class="modal-body" >
						<div class="panel-body">
							<table id="dynamic-table" class="table table-striped table-bordered table-hover" style="zoom: 85%;">
							<thead>
							<tr>
							<th scope="col" class="text-center">ລໍາດັບ</th>
							<th scope="col" class="text-left">ປະເພດລາຍຈ່າຍ</th>
								<th scope="col" class="text-center">ເຫດການ</th>
							</tr>
							</thead>
								<tbody>
									<c:forEach var="data" items="${documentData}" varStatus="No">
										<tr>
										<td scope="col"  class="text-center">${No.index +1 }</td>
											<td scope="col"  class="text-left">${data.name}</td>
											<td class="text-center" > 
												<a class="btn btn-primary btn-sm text-white " href="${pageContext.request.contextPath}/Expenses/viewUpdate/${data.id}"><i class="fa fa-edit" aria-hidden="true"></i> ເເກ້ໄຂ </a>
												<a class="btn btn-danger btn-sm text-white " href="${pageContext.request.contextPath}/Expenses/del/${data.id}"><span class="glyphicon glyphicon-remove-sign"></span> ລຶບ</a>
					     					</td>
										</tr>
									</c:forEach>
								</tbody>				
							</table>
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
  		<%@include file="../Modal/ModalExpensesType.jsp" %>
  		<%@include file="../Modal/scriptcss.jsp" %> 
	
	