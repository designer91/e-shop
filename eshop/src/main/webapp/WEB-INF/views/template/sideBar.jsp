<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- Hero Section Begin -->

<div class="hero__categories">
	<div class="hero__categories__all">
		<i class="bi bi-border-width"></i> <span>All categories</span> <i
			class="bi bi-caret-up" id="caret-down-cat"></i>
	</div>
	<ul>
		<c:forEach items="${categories}" var="category">
			<li><a
				href="${contextRoot}/show/category/${category.id}/products" id="a_${category.name}">${category.name}</a></li>
		</c:forEach>
	</ul>
</div>

<!-- Hero Section End -->