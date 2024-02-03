<%@page import="java.util.Calendar"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<div class="modal fade" id="addnew" style="font-family:phetsarath OT;">
    <div class="modal-dialog">
        <div class="modal-content">
          	<div class="modal-header">
            	<button type="button" class="close" data-dismiss="modal" aria-label="Close">
              		<span aria-hidden="true">&times;</span></button>
            	<h4 class="modal-title" style="font-family:phetsarath OT;"><b>ເພີ້ມປະເພດເອກະສານ </b></h4>
            	
          	</div>
          	 	<div class="modal-body">
          	 	
          	<div class="modal-body">
          		<form:form class="form-horizontal"  attribute="Settlementsave" autocomplete="off" method="POST" 
          		 action ="${pageContext.request.contextPath}/doc/save" enctype="multipart/form-data">
				<div class="form-group">
				<div class="col-xs-6 col-sm-10">
				<label>ຊື່ຢີຫໍ້ສິນຄ້າcc</label>
							<input type="text" class="form-control" name="docTypeName"  placeholder=""  autocomplete="off">
					</div>
					</div>
          	</div>
          	<div class="modal-footer" OnClick="chkConfirm()">
            	<button type="button" class="btn btn-default btn-flat pull-left" data-dismiss="modal"><i class="fa fa-close"></i> ອອກ</button>
            	<button type="submit" class="btn btn-primary btn-flat" name="add2" value="Upload" id="btn_upload"><i class="fa fa-save"></i> ບັນທຶກຂໍ້ມູນ</button>
          	</form:form>
          	</div>
        </div>
    </div>
       </div>
       