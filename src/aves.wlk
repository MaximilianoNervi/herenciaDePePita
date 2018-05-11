class Ave {

	var energia = 100
	var metrosVoladosPrevioALaUltimaComida = 0

	method comer(comida) {
		if (self.velocidad() <= comida.velocidad()) {
			self.error("no es suficientemente rapido para alcanzar 
			su comida")
		}
		energia += comida.energia()
		metrosVoladosPrevioALaUltimaComida = 0
	}

	method velocidad() {
		return 0
	}

}

