object neo {
  var energia =100

  method saltar(){
    energia/=2    
  }
  
   

  method esElElegido() = true

  method vitalidad() = energia * 0.10

  method energia() = energia  

}

object morfeo {
  var vitalidad =8
  var cansado= false

  method saltar(){
    cansado=not cansado
    vitalidad-=1    
  } 

  method esElElegido() = false

  method vitalidad() = vitalidad

  method cansado() =cansado 

  

}

object trinity {

    method vitalidad() =0

    method saltar(){

    }  

    method esElElegido() =false 
  
}


object nave {
  
  const pasajeros=#{neo,morfeo,trinity}

  method pasajeros() =pasajeros 

  method cuantosPasajerosTiene() =pasajeros.size()

  method pasajeroConMayorVitalidad() =pasajeros.max({p=> p.vitalidad()})

  method estaEquilibradaEnVitalidad() = pasajeros.max({p=> p.vitalidad()}) <= (pasajeros.min({p=> p.vitalidad()})*2)

  method estaElElegido() =pasajeros.any({p => p.esElElegido()}) 

  method chocar() {
    pasajeros.forEach({p=> p.saltar()})
    pasajeros.clear()
  } 

  method acelerar() {
    pasajeros.forEach({p=> if(not p.esElElegido()) p.saltar()})
  }

  method subirPasajero(pasajero) {
    pasajeros.add(pasajero)
  }

  method bajarPasajero(pasajero) {
    pasajeros.remove(pasajero)
  }


}

