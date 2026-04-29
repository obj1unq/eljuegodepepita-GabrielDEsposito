import wollok.game.*
import extras.*
import direcciones.*

object pepita {

	var energia = 100
	var property position = game.at(3, 5)
	method text() = "Energía: " + self.energia().toString()
	
	

	//method image() = "pepita.png"

	

	method image() = if(self.estaCansada() ){ "pepita-gris.png" } else "pepita.png"
	
	method estaCansada() = energia <= 0

		
	


	method positionX() = position.x() 
	method positionY() = position.y() 
	
	
	method mover(direccion) {
		direccion.mover(self)
		self.volar()
		
		
	}
 
	method comerAca() {
		const hayComida = game.uniqueCollider(self)
		if(hayComida != null){
			self.comer(comida1)
			game.removeVisual(comida1)
		}
		
	}

	method comer(comida) {
		energia = energia + comida.energiaQueOtorga()
	}

	method volar() {
		if(!self.estaCansada()){
			energia = energia - 9 
			
		}
		else 
			game.stop()
	}
	
	method energia() {
		return energia
	}

	

}

