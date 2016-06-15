package br.com.calculadoramvc.controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import br.com.calculadoramvc.model.CalculadoraModel;

/**
 * Servlet implementation class CalculadoraServletController
 */
@WebServlet("/calculadoramvc")
public class CalculadoraServletController extends HttpServlet {
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	private double toDouble (HttpServletRequest req, String param){
		return Double.parseDouble(param);
	}
	
	@Override
	protected void service (HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException{
		double peso = toDouble(req, "peso");
		double altura = toDouble(req, "altura");
		String sexo = req.getParameter("sexo");		
		String resultado = CalculadoraModel.calcular(peso, altura, sexo);
		
		req.setAttribute("imc", resultado);
		req.getRequestDispatcher("CalculadoraView.jsp").forward(req, resp);
	}
}
