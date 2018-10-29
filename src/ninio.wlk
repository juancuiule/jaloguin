import asustador.*

class Ninio inherits Asustador {

	var elementos
	var actitud
	var caramelos = 0

	constructor(unaActitud, elementosIniciales) {
		actitud = unaActitud
		elementos = elementosIniciales
	}

	override method capacidadDeSusto() {
		return elementos.sum({ elemento => elemento.capacidadDeSusto() }) * actitud
	}

	override method asustar(alguien) {
		alguien.recibirSusto(self)
	}

	override method recibirCaramelos(cantidad) {
		caramelos += cantidad
	}

}

