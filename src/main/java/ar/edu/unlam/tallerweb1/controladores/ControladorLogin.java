package ar.edu.unlam.tallerweb1.controladores;
import java.util.ArrayList;
import java.util.List;

import javax.inject.Inject;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import ar.edu.unlam.tallerweb1.modelo.Producto;
import ar.edu.unlam.tallerweb1.modelo.Usuario;
import ar.edu.unlam.tallerweb1.servicios.ServicioLogin;

@Controller
public class ControladorLogin {

	@Inject
	private ServicioLogin servicioLogin;

	@RequestMapping("/login")
	public ModelAndView irALogin(HttpServletRequest request) {
		
		request.getSession().setAttribute("logeado",false);
		ModelMap modelo = new ModelMap();
		Usuario usuario = new Usuario();
		modelo.put("usuario", usuario);
		return new ModelAndView("login", modelo);
	}

	@RequestMapping(path = "/validar-login", method = RequestMethod.POST)
	public ModelAndView validarLogin(@ModelAttribute("usuario") Usuario usuario, HttpServletRequest request) {
		ModelMap model = new ModelMap();
		Usuario usuarioBuscado = servicioLogin.consultarUsuario(usuario);
		if (usuarioBuscado != null) {
			
			request.getSession().setAttribute("ROL", usuarioBuscado.getRol());
			request.getSession().setAttribute("logeado",true);
			request.getSession().setAttribute("email",usuarioBuscado.getEmail());
			
			List<Producto> listaPrincipal = new ArrayList<Producto>();
			request.getSession().setAttribute("articulosDeCarrito",listaPrincipal);	

			Integer contCart = 0;
			request.getSession().setAttribute("contCart",contCart);	
			
			Long auxiliar=(long) 0;
			request.getSession().setAttribute("auxiliar",auxiliar);	
			
			return new ModelAndView("redirect:/index");
		} else {
			model.put("error", "Usuario o clave incorrecta");
		}
		return new ModelAndView("login", model);
	}
	
	@RequestMapping(path = "/cerrarSesion", method = RequestMethod.GET)
	public ModelAndView cerrarSesion(HttpServletRequest request) {
		
		request.getSession().setAttribute("logeado",false);
		return new ModelAndView("redirect:/index");
	}
		
	@RequestMapping(path = "/", method = RequestMethod.GET)
	public ModelAndView inicio(HttpServletRequest request) {
		
		request.getSession().setAttribute("logeado",false);
		return new ModelAndView("redirect:/index");
	}
	
	@RequestMapping(path = "/index")
	public ModelAndView index() {
		return new ModelAndView();
	}

	public void setServicioLogin(ServicioLogin servicioLogin2) {
		this.servicioLogin = servicioLogin2;
		
	}
	
}
