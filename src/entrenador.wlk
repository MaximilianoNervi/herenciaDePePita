import golondrinas.*
import comida.*

object roque {
	var aves = []
	
	method agregarAve(ave){
		aves.add(ave)
	}
	
	method removerAve(ave){
		aves.remove(ave)
	}
	
	method entrenamiento(){
		aves.forEach({ave => self.entrenarAve(ave)})
	}
	
	method entrenarAve(ave){
		ave.volar(20)
		ave.comer(alpiste)
		ave.volar(100)
		ave.comer(manzana)
	}
}