import comida.*
class Ave {

	var energia = 100

	method comer(comida) {
		if (self.velocidad() <= comida.velocidad()) {
			self.error("no es suficientemente rapido para alcanzar 
			su comida")
		}
		energia += comida.energia()
	}
	
	method volar(metros){
		if (self.estaCansada())	self.comer(alpiste)
		
		if (metros < energia) self.calculoDeConsumo(metros)
		 else self.error("la energia es muy poca para volar 
			esa distancia")
	}
	method estaCansada()
	
	method velocidad() {
		return 0
	}
	
	method calculoDeConsumo(metros)
}

