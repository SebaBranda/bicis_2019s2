import bicis.*

class Deposito {
	
	const bicicletas = []
	
	method ingresarBici(unaBici){
		bicicletas.add(unaBici)
	}
	
	method retirarBici(unaBici){
		bicicletas.remove(unaBici)
	}
	
	method bicisRapidas(){
		return bicicletas.filter({bici=>bici.velocidadCrucero()>25})
	}
	
	method biciPorMarca(){
		return bicicletas.map({bici=>bici.marca()}).asSet()
	}
	
	method nocturno(){
		return bicicletas.all({bici=>bici.tieneLuz()})		
	}
	
	method biciDeCarga(kilos){
		return bicicletas.any({bici=>bici.carga()>kilos})
	}
	
	method marcaMasRapida(){
		return bicicletas.max({bici=>bici.velocidadCrucero()}).marca()
	}
	
	method cargaBicisLargas(){
		return bicicletas.sum({bici=>bici.largo()>170}).carga()
	}
	
	method bicisSinAccesoros(){
		return bicicletas.count(bici=>bici.)
	}
	
	
	
}
