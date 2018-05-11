import comida.*
import aves.*

class Golondrina inherits Ave {

	method energia() = energia

	method volar(metros) {
		if (energia < 50) {
			self.comer(alpiste)}
			
		if (energia > metros) self.calculoDeConsumo(metros)
		 else self.error("la energia es muy poca para volar 
				esa distancia")
	}

	override method velocidad() {
		if (energia < 50) return 10 else return 20
	}

	method calculoDeConsumo(metros) {
		energia -= metros + 10
	}

}

