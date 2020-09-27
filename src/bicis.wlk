import accesorios.*

class Bici {
	const property rodado = 0
	const property largo = 0
	const property marca = "Cachito"
	const property accesorios = []
	
	method agregarAccesorio(acc) { accesorios.add(acc) }
	
	method altura() { return self.rodado() * 2.5 + 15 }
	
	method velCrucero() { return 
		if (self.largo() > 120) { self.rodado() + 6 }
		else { self.rodado() + 2 }
	}
	
	method carga() { return
		accesorios.sum( { a=>a.carga() } )
	}
	
	method peso() { return
		( self.rodado() / 2 ) + accesorios.sum( { a=>a.peso() } )
	}
	
	method tieneLuz() { return 
		accesorios.any( { a=>a.esLuminoso() } )
	}
	
	method cantAccLivianos() { return
		accesorios.count( { a=>a.peso() < 1 } )
	}
}