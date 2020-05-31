class Farolito{
	
	const property luminoso = true
	
	method peso(){ return 0.5 }
	method carga(){ return 0 }
	
}
class Canasto{
	
	const property luminoso = false
	var property volumen
	
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
	
