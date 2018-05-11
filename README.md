# Pepita con Herencia

## 1) Roque, el entrenador
Agregar a roque, entrenador de aves.
Roque tiene una colección de Aves a las que entrena.

Cuando roque quiere entrenar un Ave, hace lo siguiente:
- volar 20 metros
- comer un poco de alpiste
- volar 100 metros
- comer una manzana

El objeto roque nos debe permitir
- agregarle una nueva ave para que entrene
- pedirle que inicie el entrenamiento, usando el 
 entrenamiento antes descripto para cada una de las aves que le dimos.

## 2) Águilas
Agregar las águilas, que también tienen energía y que al 
comer incrementan su energía igual que las golondrinas. 
Sin embargo, al volar, el consumo de energía es distinto y 
depende de si el águila está gorda.

Un águila se considera gorda si acumuló más de 500 calorías.
 En ese caso la energía para volar es 2 calorías por metro, 
 si no 1 caloría por metro.
En todos los casos se suman las 10 calorías de arranque, igual 
que las golondrinas.

## 3) Comer _reloaded_
Hasta aquí un ave puede comerse cualquier cosa que otorgue energia,
 pero para eso tiene que poder alcanzarlo, teniendo en cuenta que:
* La velocidad de un aguila es 50 km/h o 15km/h si está gorda.
* La velocidad de una golondrina es de 20km/h o de 10 km/h si está 
	cansada.
* Una golondrina está cansada si le quedan menos de 50 calorías.
* El alpiste y la manzana tienen velocidad 0.

Si a un ave le pido que coma algo que la supera en velocidad,
 entonces debe contestar con un error.

/*class Aguila {
	var energia = 100
	method energia() = energia
	method volar(metros) {
		if (energia > 500) energia -= metros * 2 + 10 
			else energia -= metros * 1 + 10}
	method comer(comida) {
		if (self.velocidad() >= comida.velocidad())
		 	energia += comida.energia()
			 else self.error("no es lo suficientemente rapido para alcanzar
				su comida, capaz este gorda")}
	method velocidad() {
			if (energia > 500) return 15 
				else return 50
	}}
*/

## 4) Cansancio
* Todas las aves, si les piden volar cuando están cansadas, 
comen un poquito de alpiste antes de emprender el vuelo.

  Un águila está cansada si voló más de 1000 metros después 
  de su última comida.

* Todas las aves, si se les pide volar más de lo que pueden según
 su energía, se niegan (y lo modelamos con self.error).

## 5) Más aves
- Agregar la clase AguilaDeLosAndes, cuya velocidad es el 
doble del águila común.
- Agregar la clase GolondrinaVaga, que se comporta igual que 
una golondrina, pero se considera cansada si tiene menos de 150 
calorías de energia.

