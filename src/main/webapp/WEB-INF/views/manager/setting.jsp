<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%><!DOCTYPE html>
<html lang="en">
	<head>
		<jsp:include page="../commons/header.jsp"></jsp:include>
	</head>

	<body class="no-skin">
	    <!-- 导航栏 start		-->
		  <jsp:include page="../commons/navbar.jsp"></jsp:include>
		<!-- 导航栏 end -->

		<div class="main-container ace-save-state" id="main-container">
			<script type="text/javascript">
				try{ace.settings.loadState('main-container')}catch(e){}
			</script>
            <!--- 左边栏-菜单 start -->
			  <jsp:include page="../commons/sidebar.jsp"></jsp:include>

			<!--- 内容主体 start -->
			<div class="main-content">
				<div class="main-content-inner">
				    <!-- 向导栏 start-->
					<div class="breadcrumbs ace-save-state" id="breadcrumbs">
						<ul class="breadcrumb">
								<li>
								<i class="ace-icon fa fa-home home-icon"></i>
								<a href="#">首页</a>
							</li>

							<li>
								<a href="#">角色管理</a>
							</li>
							<li class="active">角色-列表</li>
						</ul><!-- /.breadcrumb -->

						<div class="nav-search" id="nav-search">
							<form class="form-search">
								<span class="input-icon">
									<input type="text" placeholder="Search ..." class="nav-search-input" id="nav-search-input" autocomplete="off" />
									<i class="ace-icon fa fa-search nav-search-icon"></i>
								</span>
							</form>
						</div><!-- /.nav-search -->
					</div>
					<!-- 向导栏 end-->

					<!-- 内容页 start -->
					<div class="page-content">
				          			<div class="widget-box transparent" id="widget-box-13">
												<div class="widget-header">
													<h4 class="widget-title lighter">角色管理</h4>

													<div class="widget-toolbar no-border">
														<ul class="nav nav-tabs" id="myTab2">
															

													

															<li class="active">
																<a data-toggle="tab" href="#setPassword">修改密码</a>
															</li>
														</ul>
													</div>
												</div>

												<div class="widget-body">
													<div class="widget-main padding-12 no-padding-left no-padding-right">
														<div class="tab-content padding-4">
															

													        
															<div id="setPassword" class="tab-pane in active">
															   ${requestScope.admin_edit_password_msg }
															   <form action="${pageContext.request.contextPath }/admin/setAdminPwd.do" method="post" class="form-horizontal" role="form">
																		<input name="token" type="hidden" value="${sessionScope.token }">
																		<input name="token.invoke" type="hidden" value="/admin/toAdminSetting.do">
																		<div class="form-group">
																			<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 原密码 </label>

																			<div class="col-sm-9">
																				<input name="source_admin_pwd" type="password" id="form-field-1" placeholder="原密码" class="col-xs-10 col-sm-5" />
																			</div>
																		</div>
																		<div class="form-group">
																			<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 新密码 </label>

																			<div class="col-sm-9">
																				<input name="new_admin_pwd" type="password" id="form-field-1" placeholder="原密码" class="col-xs-10 col-sm-5" />
																			</div>
																		</div>
																		<div class="form-group">
																			<label class="col-sm-3 control-label no-padding-right" for="form-field-1"> 确认密码 </label>

																			<div class="col-sm-9">
																				<input name="confirm_admin_pwd" type="password" id="form-field-1" placeholder="确认密码" class="col-xs-10 col-sm-5" />
																			</div>
																		</div>
																			<div class="form-group">
																			
																			<div class="col-sm-7 text-right">
																				<button type="submit" class="btn btn-primary">修改密码</button>
																			</div>
																		</div>
																</form>
															</div>
														</div>
													</div>
												</div>
											</div>
					</div><!-- /.page-content -->
					<!-- 内容页 end -->
				</div>
			</div><!-- /.main-content -->
			<!--- 内容主体 end -->

			 <!--页尾 start -->
	 <jsp:include page="../commons/footer.jsp"></jsp:include>
		
			 <!--页尾 end -->
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="${pageContext.request.contextPath}/lib/ace-admin/js/jquery-2.1.4.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="${pageContext.request.contextPath}/lib/ace-admin/js/jquery-1.11.3.min.js"></script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='${pageContext.request.contextPath}/lib/ace-admin/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>
		<script src="${pageContext.request.contextPath}/lib/ace-admin/js/bootstrap.min.js"></script>

		<!-- page specific plugin scripts -->

		<!-- ace scripts -->
		<script src="${pageContext.request.contextPath}/lib/ace-admin/js/ace-elements.min.js"></script>
		<script src="${pageContext.request.contextPath}/lib/ace-admin/js/ace.min.js"></script>

		<!-- inline scripts related to this page -->
	</body>
</html>
