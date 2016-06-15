<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.text.DecimalFormat" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<title>Calculadora IMC - MVC</title>
	<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
</head>
<body>
	<br><br><br><br>
	<div class="panel panel-default">
		<div class="panel-body">
			<h1>IMC</h1>
			
		<%
		String pesoStr = request.getParameter("peso");
		String alturaStr = request.getParameter("altura");
		String sexo = request.getParameter("sexo");
		Double peso = Double.parseDouble(pesoStr);
		Double altura = Double.parseDouble(alturaStr);
		Double imc = peso / (altura * altura);
		DecimalFormat df = new DecimalFormat("##.##");
		
		if (sexo.equals("feminino")) {
					if (imc < 19.1){
					  out.println("Seu IMC é: "+ df.format(imc) +". Você está abaixo do peso!");
					}else if (imc > 19.1 && imc <= 25.8){
						out.print("Seu IMC é: " + df.format(imc) +". Você está com peso normal!");
							}else if (imc > 25.8 && imc <= 27.3){
								out.print("Seu IMC é: " + df.format(imc) +". Você está com sobrepeso!");
									}else if (imc > 27.3 && imc <= 32.3){
										out.print("Seu IMC é: "+ df.format(imc) +". Você está acima do peso!");
										}else if (imc > 32.3) {
											out.print("Seu IMC é: "+ df.format(imc) +". Você está obesa!");	
										}
				} else if (sexo.equals("masculino")) {
						if (imc < 20.7)
						{
							out.print("Seu IMC é: "+ df.format(imc)  +". Você está abaixo do peso!");
						}else if (imc > 20.7 && imc <= 26.4){
							out.print("Seu IMC é: "+ df.format(imc) +". Você está com peso normal!");
								}else if (imc > 26.4 && imc <= 27.8){
									out.print("Seu IMC é: "+ df.format(imc) +". Você está com sobrepeso!");
										}else if (imc > 27.8 && imc <= 31.1){
											out.print("Seu IMC é: "+ df.format(imc) +". Você está acima do peso!");
												}else if (imc > 31.2) {
													out.print("Seu IMC é: "+ df.format(imc) +". Você está obeso!");
												}
				}
				
			%>
				</div>
				
				<input type="button" onclick="retorna();" value="Voltar" name="Voltar" class="btn btn-info" align="right"/>
				
				<br><br><br><br>
				</div>
				
</body>
</html>