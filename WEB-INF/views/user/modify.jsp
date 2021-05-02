<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

			<%@ include file="../include/header.jsp" %>
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">입출금 페이지 </h1>
					</div>
					<!-- /.col-lg-12 -->
				</div> <!-- /.row -->
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading"> 입출금 페이지 </div> <!-- /.panel-heading -->
							<div class="panel-body">
								<form action="/user/modify" role="form" method="post">
									<div class="form-group">
										<label for="free_id">번호</label>
										<input class="form-control" class="user" name="free_id" id="free_id" value="${user.free_id}" readonly="readonly"/>
									</div>
									<div class="form-group">
										<label for="input_money">입금금액</label>
										<input class="form-control" class="user" name="input_money" id="input_money"
											value='<c:out value="${user.input_money}"/>'>
									</div>
									<div class="form-group">
										<label for="output_money">출금 금액</label>
										<input class="form-control" class="user" name="output_money" id="output_money"
											value='<c:out value="${user.output_money}"/>'>
									</div>
									<div class="form-group">
										<label for="money_save">잔액</label>
										<input class="form-control" class="user" name="money_save" id="money_save"
											value='<c:out value="${user.input_money-user.output_money}"/>'>
									</div>

									<button type="submit" data-green='update' class="btn btn-danger" >완료</button>
									<button data-oper='list' class="btn btn-info" 
									onclick="location.href='/user/list'">목록으로 돌아가기 </button>
								</form>
							</div> <!-- end panel-body -->
						</div> <!-- end panel -->
					</div> <!-- col-lg-12 -->
				</div> <!-- row -->
				<!-- <script type="text/javascript">
					$(document).ready(function(){
						var input=0;
						var output=0;
						var save=0;
						
						var arr = ["input", "output", "save"]
						$.each(arr, function(index, item){
							$(item).change(function() {
								input = parseInt($("#input_money").val());
								output = parseInt($("output_money").val());
								
								$("#money_save").val(input-output);
							})
						});
						
					});
				</script> -->
				
				<%@ include file="../include/footer.jsp" %>