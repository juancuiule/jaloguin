import asustador.*

class Legion inherits Asustador {
	var miembros
	
	constructor(miembrosIniciales) {
		if(miembrosIniciales.size() < 2) {
			self.error("La legion no puede tener menos de 2 integrantes") 
		}
		miembros = miembrosIniciales
	}
	
	override method capacidadDeSusto() {
		return miembros.sum({miembro => miembro.capacidadDeSusto()})
	}
	
	override method caramelos() {
		return miembros.sum({miembro => miembro.caramelos()}) 
	}
	
	override method recibirCaramelos(cantidad) {
		self.lider().recibirCaramelos(cantidad)
	}
	
	method lider() {
		return miembros.max({miembro => miembro.capacidadDeSusto()})
	}
	
	override method elementos() {
		return miembros.flatMap({miembro => miembro.elementos()})
	}
	
}
