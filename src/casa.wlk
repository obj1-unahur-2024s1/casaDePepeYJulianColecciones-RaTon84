import cosas.* //obviamente, vamos a usar los objetos del archivo cosas ;-)

object casaDePepeYJulian {
	const cosas = []
	method comprar(cosa){
		cosas.add(cosa);
	}
	method cantidadDeCosasCompradas(){
		return cosas.size();
	}
	///////ver
	method tieneComida(){
		return cosas.any({cosa => cosa.esComida()})
	}
	//probar
	method vieneDeEquiparse(){
		return (cosas.last().esElectrodomestico() or cosas.last().precio()>50000);
	}
	//probar
	method esDerrochona(){
		var suma = 0;
		cosas.forEach({cosa => suma+=cosa.precio()});
		return suma>90000;
	}
	//probar
	method comprarMasCara(){
		return cosas.precio().max();
	}
	//ver si lleva los parentesis en wollok solo tiene llaves
	method electrodomesticosComprados(){
		return cosas.filter({cosa => cosa.esElectrodomestico()});
	}
	//probar
	method malaEpoca(){
		return cosas.all({cosa => cosa.esComida()})
	}
	method queFaltaComprar(lista){
		
	}
	method faltaComida(){
		
	}
	
}
