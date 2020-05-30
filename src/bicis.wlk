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
	
	method sonCompanieras(bicicletaAComparar) {
        return ((self != bicicletaAComparar) and ((self.marca() == bicicletaAComparar.marca()) and ((self.largo() - bicicletaAComparar.largo()) <= 10 )))
    }
}

