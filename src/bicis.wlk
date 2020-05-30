class Bicis {
	
	var property rodado
	var property largo
	var property marca
	const accesorios = []
	
	method altura() {
		return rodado * 2.5 + 15
	}
	
	method ponerAccesorios(accesorio){
		accesorios.add(accesorio)
	}
	
	method sacarAccesorio(accesorio){
		accesorios.remove(accesorio)
	}
	
	method carga(){
		return accesorios.sum({accesorio=>accesorio.carga()})
	}
	
	method velocidadCrucero(){
		return if (self.largo()>120){ self.rodado() + 6}
				else{ self.rodado() + 2 }	
	}
	
	method pesoDeCarga(){
		return accesorios.sum({accesorio=>accesorio.peso()})
	}
	
	method peso(){
		return rodado/2 + self.pesoDeCarga()
	}
	
	method accesoriosLivianos(){
		return accesorios.count({accesorio=>accesorio.peso()<1})
	
	}
	
	method tieneLuz(){
		return accesorios.any({accesorio=>accesorio.luminoso()})
	}
}
class Farolito{
	
	var luminoso = true
	
	method luminoso(){ return luminoso }
	method peso(){ return 0.5 }
	method carga(){ return 0 }
	
}
class Canasto{
	
	var luminoso = false
	var property volumen
	
	method luminoso(){ return luminoso }		
	method peso(){ return volumen / 10 }
	method carga(){ return volumen * 2 }
}
class Morral{
	
	var property largo
	var luminoso = false
	
	method ojoDeGato(){ luminoso = not luminoso }
	method peso(){ return 1.2 }
	method carga(){ return largo / 3 }
	method luminoso(){ return luminoso }
}
	

