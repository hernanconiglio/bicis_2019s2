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
}
