import comida.*
import aves.*

class Golondrina inherits Ave {

	method energia() = energia

	override method estaCansada(){
		return energia < 50 
	}
	override method volar(metros){
		super(metros+10)
	}
	override method velocidad() {
		if (self.estaCansada()) return 10 else return 20
	}

	override method calculoDeConsumo(metros) {
		energia = metros + 10
	}

}

class GolondrinaVaga inherits Golondrina{
	
	override method estaCansada(){
		return energia < 150 
	}
}