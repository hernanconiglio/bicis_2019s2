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

/* 
 * 5. Una Pregunta
 * ¿Qué agregados o cambios deberían hacerse para agregar un nuevo tipo de accesorio? 
 * P.ej. el porta-botellitas de agua, un canasto en la parte de atrás, 
 * luces para poner en las ruedas.
 * Indicar qué hay que agregar, y qué hay que tocar. 
 * Relacionar con los conceptos de "contrato" y/o "polimorfismo". 
 * En dos frases, bien cortito.
 * 
 * Incluir la respuesta en el archivo en el que se definen los accesorios. 
 * Pónganlo como se indica abajo así lo toma como comentario y no afecta al programa.
 
 ******* RESPUESTA *******
 * Para agregar los nuevos accesorios hay que definir nuevas clases, por ejemplo:
 * class portaBotellitas
 * class canastoTrasero
 * class lucesParaRuedas
 * 
 * Para respetar el contrado y el polimorfismo, las 3 nuevas clases deben tener
 * definidas los métodos peso(), carga(), esLuminoso()
 
 */