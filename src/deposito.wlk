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
		return bicicletas.filter({bici=>bici.largo()>170}).sum({bici=>bici.carga()})
	}
	
	method bicisSinAccesoros(){
		return bicicletas.count({bici=>bici.carga() == 0})
	}
	
	method buscarBicicletasCompanieras(unaBici) {
        return bicicletas.filter({ bici=>bici.SonCompanieras(unaBici) })
    }	
	    
//Punto 5
//Para implementar cualquier tipo nuevo de "accesorio" se debe crear una 
//clase que contenga los metodos que hay en los otros
//accesorios, así respeta el contrato y el polimorfismo.
}
