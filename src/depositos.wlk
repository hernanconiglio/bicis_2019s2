import bicis.*
import accesorios.*

class Deposito {
	const coleccionBicis = []
	
	method agregar(bici) { coleccionBicis.add(bici) }
	method quitar(bici) { coleccionBicis.remove(bici) }
	
	method bicisRapidas() { return
		coleccionBicis.filter( { b=>b.velCrucero() > 25 } ).asSet()
	}
	
	method marcas() { return
		coleccionBicis.map( { b=>b.marca() } ).asSet()
	}
	
	method esNocturno() { return
		coleccionBicis.all( { b=>b.tieneLuz() } )
	}
	
	method hayBiciParaLlevarKg(kg) { return
		coleccionBicis.any( { b=>b.carga() > kg } )
	}
	
	method marcaBiciMasRapida() { return
		coleccionBicis.max( { b=>b.velCrucero() } ).marca()
	}
	
	method cargaTotalBicisLargas() { return
		coleccionBicis.filter( { b=>b.largo() > 170 } ).sum( { b=>b.carga() } )
	}
	
	method cantBicisSinAccesorios() { return
		coleccionBicis.count( { b=>b.accesorios().isEmpty() } )
	}
	
	method bicisCompanieras(bici) { return 
	coleccionBicis.filter( { b=>b != bici and (b.largo() - bici.largo()).abs() <= 10 } )	
	}
	
}
