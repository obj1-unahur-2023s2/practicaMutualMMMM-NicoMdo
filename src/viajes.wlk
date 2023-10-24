
class Viaje {
	const property idiomas = #{} 
	
	method implicaEsfuerzo() = true
	
	method sirveParaBroncearse() = true
	
	method cuantosDiasDura()
	
	method cantidadDeIdiomas() = idiomas.size()
	
	method esInteresante() = self.cantidadDeIdiomas() > 1
	
	method contieneElIdioma(unIdioma) = idiomas.contains(unIdioma)
	
	method esRecomendadaPara(unSocio) = self.esInteresante() and unSocio.leAtrae(self) and not unSocio.realizoLaActividad(self)
	
}

class Playa inherits Viaje{
	const property largo
	
	override method cuantosDiasDura() = largo / 500
	
	override method implicaEsfuerzo() = largo > 1200
	
}

class ExcursionACiudad inherits Viaje {
	const property cuantasAtracciones
	
	override method cuantosDiasDura() = cuantasAtracciones / 2
	
	override method implicaEsfuerzo() = cuantasAtracciones.between(5, 8) 
	
	override method sirveParaBroncearse() = false
	
	override method esInteresante() = super() or cuantasAtracciones == 5
}

class ExcursionACiudadTropical inherits ExcursionACiudad{
	
	override method cuantosDiasDura() = super() + 1
	
	override method sirveParaBroncearse() = true
}

class Trekking inherits Viaje{
	const property kilometros
	const property diasDeSol
		
	override method cuantosDiasDura() = kilometros / 50
	
	override method implicaEsfuerzo() = kilometros > 80
	
	override method sirveParaBroncearse() = diasDeSol > 200 or (diasDeSol.between(100, 200) and kilometros >120)
	
	override method esInteresante() = super() and diasDeSol > 140
	
}

class ClaseDeGimnasia inherits Viaje{  // QUE PASA CON EL UNICO IDIOMA "ESPAÑOL"????????????????????????????????????????
	
	override method cuantosDiasDura() = 1
	
	override method sirveParaBroncearse() = false
	
	override method esRecomendadaPara(unSocio) = unSocio.edad().between(20, 30)
}





