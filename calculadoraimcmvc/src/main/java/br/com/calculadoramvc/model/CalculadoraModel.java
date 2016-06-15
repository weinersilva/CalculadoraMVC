package br.com.calculadoramvc.model;

import java.text.DecimalFormat;

public class CalculadoraModel {
	public static String calcular(double peso, double altura, String sexo){
		double imc = 0;
		String mensagem = null;
		imc = peso / (altura * altura);
		DecimalFormat df = new DecimalFormat("##.##");
		if (sexo.equals("feminino")){
			if (imc < 19.1){
				mensagem = "Você está abaixo do peso!";
			}else if (imc > 19.1 && imc <= 25.8){
				mensagem = "Você está com peso normal!";
				}else if (imc > 25.8 && imc <= 27.3){
					mensagem = "Você está com sobrepeso!";
						}else if (imc > 27.3 && imc <= 32.3){
							mensagem = "Você está acima do peso!";
								}else if (imc > 32.3) {
									mensagem = "Você está obesa!";	
								}
			}else if (sexo.equals("masculino")) {
				if (imc < 20.7){
					mensagem = "Você está abaixo do peso!";
				}else if (imc > 20.7 && imc <= 26.4){
					mensagem = "Você está com peso normal!";
					}else if (imc > 26.4 && imc <= 27.8){
						mensagem = "Você está com sobrepeso!";
							}else if (imc > 27.8 && imc <= 31.1){
								mensagem = "Você está acima do peso!";
									}else if (imc > 31.1) {
										mensagem = "Você está obeso!";	
									}
					}
		String resultado = ("Seu IMC é: "+df.format(imc)+". "+mensagem +"!" );
		return resultado;
	}
	
	
		
		
	

}
