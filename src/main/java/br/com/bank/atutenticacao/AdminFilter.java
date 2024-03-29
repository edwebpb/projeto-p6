package br.com.bank.atutenticacao;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * Servlet Filter implementation class AdminFilter
 */
//@WebFilter("/*")
public class AdminFilter implements Filter {

	
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
			
		System.out.println("Passando pelo filtro de acesso....");
		
		HttpServletRequest httpRequest = (HttpServletRequest) request;
		HttpSession session = httpRequest.getSession(false);
		
		boolean taLogado = (session != null && session.getAttribute("LoginServlet") != null);
		
		String urlLogin = httpRequest.getContextPath() + "/admin/login";
		
		
		boolean ehRequestLogin = httpRequest.getRequestURI().equals(urlLogin);
		boolean ehPaginaLogin = httpRequest.getRequestURI().endsWith("LoginServlet");
		
		
		if(taLogado && (ehRequestLogin || ehPaginaLogin)) {
			
			RequestDispatcher dispacher = request.getRequestDispatcher("/");
			dispacher.forward(request, response);
			
		}else if (taLogado || ehRequestLogin ) {
			chain.doFilter(request, response);
			
		} else {
			
			RequestDispatcher dispacher = request.getRequestDispatcher("LoginServlet");
			dispacher.forward(request, response);
		}
		
	}

	
	public void init(FilterConfig fConfig) throws ServletException {
		System.out.println("Iniciando o meu filtro aqui ....");
	}
	
	public void destroy() {
		// TODO Auto-generated method stub
	}

}
