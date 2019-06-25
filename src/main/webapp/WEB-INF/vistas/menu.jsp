<c:set var="context" value="${pageContext.request.contextPath}"/>
<nav class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light" id="ftco-navbar">
	<div class="container">
		<a class="navbar-brand" href="index">MMD'A</a>
	      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#ftco-nav" aria-controls="ftco-nav" aria-expanded="false" aria-label="Toggle navigation">
	        <span class="oi oi-menu"></span> Menu
	      </button>

      	<div class="collapse navbar-collapse" id="ftco-nav">
	        <ul class="navbar-nav ml-auto">
	          <li class="nav-item"><a href="${context}/index" class="nav-link">Home</a></li>
	          <li class="nav-item"><a href="${context}/shop" class="nav-link">Productos</a></li>
	          <li class="nav-item"><a href="${context}/about" class="nav-link">Nosotros</a></li>
	          <li class="nav-item"><a href="${context}/blog" class="nav-link">Blog</a></li>
	          <li class="nav-item"><a href="${context}/contact" class="nav-link">Contacto</a></li>
	          <li class="nav-item cta cta-colored"><a href="${context}/cart" class="nav-link"><span class="icon-shopping_cart"></span>[0]</a></li>
	        </ul>
	   	</div>
	</div>
</nav>