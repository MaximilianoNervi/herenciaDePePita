import comida.*
import aves.*

class Aguila inherits Ave {

	method energia() = energia

	method volar(metros) {
		if (metrosVoladosPrevioALaUltimaComida > 1000) 
		self.comer(alpiste)
		if (energia > metros) self.calculoDeConsumo(metros)
		 else self.error("la energia es muy poca para volar 
			esa distancia")
	}

	override method velocidad() {
		return self.calculoDeVelocidad()
	}
	
	method calculoDeVelocidad(){	
		if (self.estaGorda()) return 50 else return 15
	}
	method estaGorda(){
		return energia < 500
	}
	method calculoDeConsumo(metros) {
		if (self.estaGorda()) {
			energia -= metros * 2 + 10
			metrosVoladosPrevioALaUltimaComida =
				 metrosVoladosPrevioALaUltimaComida + metros
		} else energia -= metros * 1 + 10
	}

}

class AguilaDeLosAndes inherits Aguila{
	
	override method velocidad(){
		return 2*self.calculoDeVelocidad()
	}
}