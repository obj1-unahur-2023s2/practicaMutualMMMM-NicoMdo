import viajes.*

class Socio {
	const actividadesRealizadas = []
	const maximoDeActividades
	const property edad
	const property idiomasHablados = #{}
	
	method esAdoradorDelSol() = actividadesRealizadas.all({a=> a.sirveParaBroncearse()})
	
	method actividadesEsforzadas() = actividadesRealizadas.filter({a=> a.implicaEsfuerzo()})
	
	method cantidadDeActividadesRealizadas() = actividadesRealizadas.size()
	
	method registrarActividad(unaActividad){
		if(self.cantidadDeActividadesRealizadas() < maximoDeActividades){
			actividadesRealizadas.add(unaActividad)}
		else{self.error("Maximo numero de actividades realizadas")}
	}
	
	method leAtrae(unaActividad) // ME ROMPE LOS TEST ANTERIORES DE ROQUE Y ANA??????????????????????????????
	
	method realizoLaActividad(unaActividad) = actividadesRealizadas.contains(unaActividad)
	
	method cantidadDeIdiomasHablados() = idiomasHablados.size()

}

class SocioTranquilo inherits Socio{
	
	override method leAtrae(unaActividad) = unaActividad.cuantosDiasDura() >= 4
	
}

class SocioCoherente inherits Socio{
	
	override method leAtrae(unaActividad) =
		if(self.esAdoradorDelSol()){
			unaActividad.sirveParaBroncearse()}
		else{unaActividad.implicaEsfuerzo()}
	
}

class SocioRelajado inherits Socio{
	
	override method leAtrae(unaActividad) = idiomasHablados.any({idioma => unaActividad.contieneElIdioma(idioma)})
		
}



















