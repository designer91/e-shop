<div class="container px-4 px-lg-5 mt-5">
	<div class="row justify-content-right">
		<div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-3 col-xxl-3">
			<%@ include file="./template/sideBar.jsp"%>
		</div>
		<div class="col-12 col-sm-12 col-md-12 col-lg-12 col-xl-9 col-xxl-9">
			<c:if test="${userClickAllProducts == true}">
				<nav aria-label="breadcrumb">
					<ol class="breadcrumb customBreadcrumb">
						<li class="breadcrumb-item"><a href="${contextRoot}/home">Home</a></li>
						<li class="breadcrumb-item active">All products</li>
					</ol>
				</nav>
			</c:if>
			<c:if test="${userClickCategoryProducts == true}">
				<nav aria-label="breadcrumb ">
					<ol class="breadcrumb customBreadcrumb">
						<li class="breadcrumb-item"><a href="${contextRoot}/home">Home</a></li>
						<li class="breadcrumb-item active">Category</li>
						<li class="breadcrumb-item active">${category.name}</li>
					</ol>
				</nav>
			</c:if>
		</div>
	</div>
</div>