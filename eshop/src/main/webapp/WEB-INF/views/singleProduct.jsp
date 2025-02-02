<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="container px-4 px-lg-5 mt-5 mb-5">
	<div class="row">
		<div class="col-xs-2">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb customBreadcrumb">
					<li class="breadcrumb-item">
						<a href="${contextRoot}/home">Home</a></li>
					<li class="breadcrumb-item">
						<a href="${contextRoot}/show/all/products">Products</a></li>
					<li class="breadcrumb-item active">${product.name}</li>
				</ol>
			</nav>
		</div>
	</div>
	<div class="row">
		<div class="col-xs-12 col-sm-4">
			<img src="${images}/${product.code}.jpg" class="img-thumbnail" alt="product image" />
		</div>
		<div class="col-xs-12 col-sm-8">
			<h3>${product.name}</h3>
			<hr />
			<p>${product.description}</p>
			<hr />
			<h4>Price: <strong>&#36; ${product.unitPrice}</strong></h4>
			<c:choose>
				<c:when test="${product.quantity < 1}">
					<h6>Qty in Stock: <span style="color: #BB2D3B">Out of Stock</span></h6>
				</c:when>
				<c:otherwise>
					<h6>Qty in Stock: ${product.quantity}</h6>
				</c:otherwise>
			</c:choose>
			<c:choose>
				<c:when test="${product.quantity < 1}">
					<a href="javascript:void(0)" class="btn btn-success disabled">
						<del>
							<i class="fa-solid fa-cart-plus"></i> Add to Cart</del>
					</a>
				</c:when>
				<c:otherwise>
					<a href="${contextRoot}/cart/add/${product.id}/product" class="btn btn-success">
						<i class="fa-solid fa-cart-plus"> Add to Cart</i>
					</a>
				</c:otherwise>
			</c:choose>
			<a href="${contextRoot}/show/all/products" class="btn btn-danger">
				<i class="fa-solid fa-circle-arrow-left"></i> Go Back
			</a>
		</div>
	</div>
</div>