<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<script src="https://code.jquery.com/jquery-3.6.0.js"></script>
		<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
			<%@ include file="../include/header.jsp" %>
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">개인 고객 페이지 </h1>
					</div>
					<!-- /.col-lg-12 -->
				</div> <!-- /.row -->
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">개인 고객 페이지 
							<button id='regBtn' type="button" class="btn btn-xs pull-right"> 대출 가능 여부 </button>
							</div> <!-- /.panel-heading -->
							<div class="panel-body">
								<div class="form-group">
									<label for="free_id">번호</label>
									<input class="form-control" name="free_id" id="free_id"
										value='<c:out value="${user.free_id}"/>' readonly="readonly">
								</div>
								<div class="form-group">
									<label for="free_name">이름</label>
									<input class="form-control" name="free_name" id="free_name"
										value='<c:out value="${user.free_name}"/>' readonly="readonly">
								</div>
								<div class="form-group">
									<label for="free_password">비밀번호</label>
									<input class="form-control" name="free_password" id="free_password"
										value='<c:out value="${user.free_password}"/>' readonly="readonly">
								</div>
								<div class="form-group">
									<label for="free_serial">계좌번호</label>
									<input class="form-control" name="free_serial" id="free_serial"
										value='<c:out value="${user.free_serial}"/>' readonly="readonly">
								</div>
								<div class="form-group">
									<label for="input_money">입금</label>
									<input class="form-control" name="input_money" id="input_money"
										value='<c:out value="${user.input_money}"/>'  readonly="readonly">
								</div>
								<div class="form-group">
									<label for="output_money">출금</label>
									<input class="form-control" name="output_money" id="output_money"
										value='<c:out value="${user.output_money}"/>'  readonly="readonly">
								</div>
								<div class="form-group">
									<label for="money_save">잔액</label>
									<input class="form-control" name="money_save" id="money_save"
										value='<c:out value="${user.input_money-user.output_money}"/>'  readonly="readonly">
								</div>
								<div class="form-group">
									<label for="free_serial">대출여부</label>
									<input class="form-control" name="free_serial" id="free_serial"
										value='<c:out value="${user.loan_able}"/>' readonly="readonly">
								</div>
								<button data-oper='modify' class="btn btn-default"
									onclick="location.href='/user/modify?free_id=<c:out value="${user.free_id}" />'">
									입출금하기
								</button>
								<button class="btn btn-default"
									onclick="location.href='/loan/list'">
									대출 알아보기
								</button>
								<button data-oper='list' class="btn btn-info" 
									onclick="location.href='/user/list'">목록 </button>
								
							</div> <!-- end panel-body -->
						</div> <!-- end panel -->
					</div> <!-- col-lg-12 -->
				</div> <!-- row -->
				<script>
					$(document).ready(function() {
						$('#regBtn').click(function() {
							if($('#money_save')>500.0){
								alert('대출 가능하십니다.');
							}else {
								alert('대출 불가능하십니다.attr')
							}
						})
					})
				</script>
				<%@ include file="../include/footer.jsp" %>