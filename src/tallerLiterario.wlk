class TallerLiterario {
	const libros = #{}
	
	method agregarLibro(unLibro){
		libros.add(unLibro)
	}
	
	method idiomasUsados() = libros.map({libro=> libro.idioma()})
	
	method cantidadDeLibros() = libros.size()
	
	method diasQueLLeva() = self.cantidadDeLibros() + 1
	
	method hayAlgunoDeMasDe500() = libros.any({libro=> libro.tieneMasDe500()})

	method implicaEsfuerzo() = self.hayAlgunoDeMasDe500() and self.cantidadDeLibros() > 1 // FALTA TERMINAR!!!!!!!!!!!!!!!!!!!!!
	
	method sirveParaBroncearse() = false
	
	method esRecomendadoPara(unSocio) = unSocio.cantidadDeIdiomasHablados() > 1	
	
}

class Libro{
	const property idioma
	const property cantidadDePaginas
	const property nombreDelAutor
	
	method tieneMasDe500() = cantidadDePaginas > 500
}