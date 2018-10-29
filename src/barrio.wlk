class Barrio {

	var habitantes
	
	constructor(unosHabitantes) {
		habitantes = unosHabitantes
	}
	
	method habitantesOrdenadosPorCaramelos() {
		return habitantes.sort({habitante => habitante.caramelos()})
	}

	method niniosConMasCaramelos() {
		return self.habitantesOrdenadosPorCaramelos().take(3)
	}
	
	method niniosConMasDe10() {
		return habitantes.filter({habitante => habitante.tieneMasDe(10)})
	}
	
	method elementosUsadosPorNiniosConMasDe10() {
		return self.niniosConMasDe10().flatMap({ninio => ninio.elementos()})
	}

}