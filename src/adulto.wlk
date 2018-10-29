import ninio.*

class Adulto {

	var niniosQueIntentaronAsustarlo = 0

	method tolerancia() {
		return 10 * niniosQueIntentaronAsustarlo
	}

	method seAsustaCon(asustador) {
		return self.tolerancia() < asustador.capacidadDeSusto()
	}

	method caramelosQueDa() {
		return self.tolerancia() / 2
	}

	method darCaramelos(asustador) {
		asustador.recibirCaramelos(self.caramelosQueDa())
	}

	method recibirSusto(asustador) {
		if (self.seAsustaCon(asustador)) {
			self.darCaramelos(asustador)
		}
		if (asustador.tieneMasDe(15)) {
			niniosQueIntentaronAsustarlo += 1
		}
	}

}

class Abuelo inherits Adulto {

	override method seAsustaCon(asustador) = true

	override method caramelosQueDa() {
		return super() / 2
	}

}

class Necio inherits Adulto {

	override method seAsustaCon(asustador) = false

}

