<nav class="navbar navbar-expand-lg navbar-light bg-light">
	<div class="container px-4 px-lg-5">
		<a class="navbar-brand" href="${contextRoot}/home">eShop</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<ul class="navbar-nav me-auto mb-2 mb-lg-0 ms-lg-4">
			<li class="nav-item"><a id="home" class="nav-link active"
				aria-current="page" href="${contextRoot}/home">Home</a></li>
			<li id="products" class="nav-item"><a class="nav-link" href="${contextRoot}/products">Products</a></li>
			<li id="contact" class="nav-item"><a class="nav-link" href="${contextRoot}/contact">Contact</a></li>
			<li id="about" class="nav-item"><a class="nav-link" href="${contextRoot}/about">About</a></li>
		</ul>
		<form class="d-flex">
			<button class="btn btn-outline-dark" type="submit">
				<i class="bi-cart-fill me-1"></i> Cart <span
					class="badge bg-dark text-white ms-1 rounded-pill">0</span>
			</button>
		</form>
	</div>
</nav>