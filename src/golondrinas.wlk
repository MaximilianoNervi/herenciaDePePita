import comida.*
import aves.*

class Golondrina inherits Ave {

	method energia() = energia

	method volar(metros) {
		if (self.estaCansada()) {
			self.comer(alpiste)
		}
		if (energia > metros) self.calculoDeConsumo(metros)
		 else self.error("la energia es muy poca para volar 
				esa distancia")
	}
	method estaCansada(){
		return energia < 50 
	}

	override method velocidad() {
		if (self.estaCansada()) return 10 else return 20
	}

	method calculoDeConsumo(metros) {
		energia -= metros + 10
	}

}

class GolondrinaVaga inherits Golondrina{
	
	override method estaCansada(){
		return energia < 150 
	}
}