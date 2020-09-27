class Farolito {
	
	method peso() { return 0.5 }
	method carga() { return 0 }
	method esLuminoso() { return true }
}

class Canasto {
	const property volumen = 0
	
	method peso() { return volumen / 10 }
	method carga() { return volumen * 2 }
	method esLuminoso() { return false }
}

class Morral {
	const property largo = 0
	const property tieneOjoDeGato = false
	
	method peso() { return 1.2 }
	method carga() { return largo / 3 }
	method esLuminoso() { return tieneOjoDeGato }	
}

