package ar.edu.unlam.tallerweb1.servicios;

import java.util.List;

import ar.edu.unlam.tallerweb1.modelo.Producto;

public interface ServicioDetalleProducto {
	
	List<Producto> consultarDetalleProducto(Long filtrar);
	List<Producto> consultarProductosRelacionadosDeDetalleProducto(String tipo, Long filtro);
	
}
