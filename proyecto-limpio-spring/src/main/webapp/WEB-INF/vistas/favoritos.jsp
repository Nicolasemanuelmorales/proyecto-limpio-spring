<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<% 
String filtro = request.getParameter("filtro");
String formaDeFiltro = request.getParameter("formaDeFiltro");
String formaDeFiltro2 = request.getParameter("formaDeFiltro2");
String ordenado = request.getParameter("ordenado");
%>
<!DOCTYPE html>
<html lang="en">
<c:set var="context" value="${pageContext.request.contextPath}"/>
 <head>
    <title>MMD'A</title>
    <%@include file='head.jsp'%>    
  </head>
  <body class="goto-here">
	<%@include file='barra_superior.jsp'%>
    <%@include file='menu.jsp'%>
    
    <div class="container">
    					<div class="col-md-8 col-lg-10 order-md-last">
    				<div class="row">
    				<c:forEach items="${favoritos}" var="i">
    				<div class="col-sm-6 col-md-6 col-lg-4 ftco-animate">
		    				<div class="product">
		    					<a href="${context}/detalleProducto/${i.id}/${i.producto.tipo.nombre}" class="img-prod"><img class="img-fluid" src="${context}/ ${i.producto.imagen}" alt="Colorlib Template">
		    						<div class="overlay"></div>
		    					</a>
		    					<div class="text py-3 px-3">
		    						<h3><a href="#">${i.producto.nombre}</a></h3>
		    						<div class="d-flex">
		    							<div class="pricing">
				    						<p class="price"><span class="price-sale">$ ${i.producto.precio}</span></p>
				    					</div>
				    					<div class="rating">
			    							<p class="text-right">
			    								<a href="#"><span class="ion-ios-star-outline"></span></a>
			    								<a href="#"><span class="ion-ios-star-outline"></span></a>
			    								<a href="#"><span class="ion-ios-star-outline"></span></a>
			    								<a href="#"><span class="ion-ios-star-outline"></span></a>
			    								<a href="#"><span class="ion-ios-star-outline"></span></a>
			    							</p>
			    						</div>
			    					</div>
			    					<p class="bottom-area d-flex px-3">
			    						<a href="${context}/agregarAlCarro/${i.producto.id}" class="add-to-cart text-center py-2">Carro<span><i class="ion-ios-cart ml-1"></i></span></a>
		    							<a href="${context}/detalleProducto/${i.producto.id}/${i.producto.tipo.nombre}" class="buy-now text-center py-2 mr-1"><span>Detalle<i class="ion-ios-add ml-1"></i></span></a>
		    							<a href="${context}/favoritos/${i.producto.id}" class="buy-now text-center py-2 mr-1"><span><i class="ion-ios-heart ml-1"></i></span></a>

		    						</p>
		    					</div>
		    				</div>
		    			</div>
		    			</c:forEach>
		    		</div>
		    		<div class="row mt-5">
		          <div class="col text-center">
		            <div class="block-27">
		              <ul>
		                <li><a href="#">&lt;</a></li>
		                <li class="active"><span>1</span></li>
		                <li><a href="#">2</a></li>
		                <li><a href="#">3</a></li>
		                <li><a href="#">4</a></li>
		                <li><a href="#">5</a></li>
		                <li><a href="#">&gt;</a></li>
		              </ul>
		            </div>
		          </div>
		        </div>
		    	</div>
		    	</div> 
 <%@include file='newsletter.jsp' %>
<%@include file='footer.jsp' %>
  	<!-- loader -->
  	<div id="ftco-loader" class="show fullscreen"><svg class="circular" width="48px" height="48px"><circle class="path-bg" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke="#eeeeee"/><circle class="path" cx="24" cy="24" r="22" fill="none" stroke-width="4" stroke-miterlimit="10" stroke="#F96D00"/></svg></div>
	<%@include file='footer_script.jsp' %>
  </body>
</html>