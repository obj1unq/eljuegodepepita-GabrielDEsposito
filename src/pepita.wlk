import wollok.game.*
import extras.*
import direcciones.*

object pepita {

	var energia = 100
	var property position = game.at(3, 5)
	method text() = "Energía: " + self.energia().toString()
	
	

	//method image() = "pepita.png"

	

	method image() = if(self.estaMuerta() || self.estaCansada() ){ "pepita-gris.png" } else "pepita.png"
	
	method estaCansada() = energia <= 0

	method estaMuerta() {
		return position == game.at(silvestre.position().x() , 0 )
		
	}


	method positionX() = position.x() 
	method positionY() = position.y() 
	
	
	method mover(direccion) {
		direccion.mover(self)
		self.volar()
		
	}
 

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar() {
		if(self.estaCansada()){
			game.stop()
		}
		else 
		energia = energia - 9 
	}
	
	method energia() {
		return energia
	}

	

}

