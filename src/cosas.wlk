import moneda.*

object heladera {
	method precio() { return 200000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object cama {
	method precio() { return 80000 }
	method esComida() { return false }
	method esElectrodomestico() { return false }	
}

object tiraDeAsado {
	method precio() { return 3500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object paqueteDeFideos {
	method precio() { return 500 }
	method esComida() { return true }
	method esElectrodomestico() { return false }	
}

object plancha {
	method precio() { return 12000 }
	method esComida() { return false }
	method esElectrodomestico() { return true }	
}

object milanesaRebozada{
	method precio(){return 2600}
	method esComida(){return true}
	method esElectrodomestico(){return false}
}
object botellaSalsaTomate{
	method precio(){return 900}
	method esComida(){return true}
	method esElectrodomestico(){return false}
}

object microondas{
	method precio(){return 42000}
	method esComida(){return false}
	method esElectrodomestico(){return true}
}

object cebolla{
	method precio(){return 250}
	method esComida(){return true}
	method esElectrodomestico(){return false}
}

object compu{
	method precio(){return 500*dolar.precioVenta()}
	method esComida(){return false}
	method esElectrodomestico(){return true}
}


object packComida{
	/*no se si hacia falta estas listas pero por el tema visto */
	const platos=[tiraDeAsado,paqueteDeFideos,milanesaRebozada];
	const aderezos=[botellaSalsaTomate,cebolla];
	var plato;
	var aderezo;
	method setPlato(cosa){
		if(platos.contains(cosa)){plato=cosa}		
	}	
	method setAderezo(cosa){
		if(aderezos.contains(cosa)){aderezo=cosa}		
	}	
	method precio(){
		try{
			return plato.precio()+aderezo.precio();
		}catch e: Exception{
			return "no contiene una comida o aderezo";
		}		
	}	
	method esComida(){return true}
	method esElectrodomestico(){return false}
}