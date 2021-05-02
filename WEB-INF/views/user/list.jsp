<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>


			<%@ include file="../include/header.jsp" %>
				<div class="row">
					<div class="col-lg-12">
						<h1 class="page-header">목록 페이지</h1>
					</div>
					<!-- /.col-lg-12 -->
				</div>
				<!-- /.row -->
				<div class="row">
					<div class="col-lg-12">
						<div class="panel panel-default">
							<div class="panel-heading">
								전체 고객 목록 페이지		
							</div>
							<!-- /.panel-heading -->
							<div class="panel-body">
								<table width="100%" class="table table-striped table-bordered table-hover"
									id="dataTables-example">
									<thead>
										<tr>
											<th>번호</th>
											<th>이름</th>
											<th>비밀번호</th>
											<th>계좌번호</th>
											<th>입금액</th>
											<th>출금액</th>
											<th>잔액</th>
											<th>대출여부</th>
										</tr>
									</thead>
									<c:forEach items="${list}" var="user">
										<tr>
											<td>
												<a href='/user/person?free_id=<c:out value=" ${user.free_id}" />'>
												<c:out value="${user.free_id}" /></a>
											</td>
											
											<td>
												<c:out value="${user.free_name}" />
											</td>
											<td>
												<c:out value="${user.free_password}" />
											</td>
											<td>
												<c:out value="${user.free_serial}" />
											</td>
											<td>
												<c:out value="${user.input_money}" />
											</td>
											<td>
												<c:out value="${user.output_money}" />
											</td>
											<td>
												<c:out value="${user.input_money-user.output_money}" />
											</td>
											<td>

											<c:out value="${user.loan_able}" />

											</td>
											
										</tr>
									</c:forEach>
								</table>
								
								
							</div> <!--  panel-body -->
						</div> <!--  panel-->
					</div> <!--  col-lg-12 -->
				</div> <!--  row -->

				
				<%@ include file="../include/footer.jsp" %>