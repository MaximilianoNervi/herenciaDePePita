import comida.*
import aves.*

class Aguila inherits Ave {

	var metrosVoladosDesdeLaUltimaComida = 0
	var energiaConsumidaAlVolar
	method energia() = energia

	override method comer(comida) {
		super(comida)
		metrosVoladosDesdeLaUltimaComida = 0
	}
	override method volar(metros){
		energiaConsumidaAlVolar=self.calculoDeEnergiaGastada(metros)
		super(energiaConsumidaAlVolar)
		metrosVoladosDesdeLaUltimaComida = metrosVoladosDesdeLaUltimaComida + metros
	
	}
	override method velocidad() {
		return self.calculoDeVelocidad()
	}

	method calculoDeVelocidad() {
		if (self.estaGorda()) return 50 else return 15
	}

	method estaGorda() {
		return energia < 500
	}

	override method estaCansada() {
		return metrosVoladosDesdeLaUltimaComida > 1000
	}

	method calculoDeEnergiaGastada(metros) {
		if (self.estaGorda()) {
			return metros * 2 + 10
		} else  return metros * 1 + 10
	}
	override method calculoDeConsumo(metros){
		energia=-metros
	}
}

class AguilaDeLosAndes inherits Aguila {

	override method velocidad() {
		return 2 * self.calculoDeVelocidad()
	}

}

