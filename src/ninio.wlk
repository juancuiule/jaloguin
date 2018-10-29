class Ninio {

	var elementos
	var actitud
	var caramelos = 0

	constructor(unaActitud, elementosIniciales) {
		actitud = unaActitud
		elementos = elementosIniciales
	}

	method capacidadDeSusto() {
		return elementos.sum({ elemento => elemento.capacidadDeSusto() }) * actitud
	}

	method asustar(alguien) {
		alguien.recibirSusto(self)
	}

	method recibirCaramelos(cantidad) {
		caramelos += cantidad
	}

	method tieneMasDe(cantidad) {
		return caramelos > cantidad
	}

	method caramelos() = caramelos
}

