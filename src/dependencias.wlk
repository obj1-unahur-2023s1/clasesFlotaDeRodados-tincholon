import rodados.*

class Dependencia {
	const flota = []
	var property nEmpleados

	method agregarAFlota(unRodado) {
		flota.add(unRodado)
	}
	method quitarDeFlota(unRodado) {
		flota.remove(unRodado)
	}
	method pesoTotalFlota() = flota.sum({rodado => rodado.peso()})
	
	method estaBienEquipada() = flota.size() >= 3 and flota.all({rodado => rodado.velocidadMaxima() >= 100})
	method capacidadTotalEnColor(unColor) = flota.filter({rodado => rodado.color() == unColor}).sum({r => r.capacidad()})
	method colorDelRodadoMasRapido() = flota.max({rodado => rodado.velocidadMaxima()}).color()
	
	method capacidadDeLaFlota() = flota.sum({rodado => rodado.capacidad()})// necesaria para el método que sigue
	method capacidadFaltante() = 0.max(nEmpleados-self.capacidadDeLaFlota())
	method esGrande() = nEmpleados >= 40 and flota.size() >= 5
	
}
