import pepita.*



object arriba {
	
	method mover(direccion) {
		
		if (pepita.positionY() < game.height() - 1) {
			pepita.position(game.at(pepita.positionX(), pepita.positionY() + 1))
		}

	}
    
}

object abajo {
	
	method mover(direccion) {
		if (pepita.positionY() > 0) {
			pepita.position(game.at(pepita.positionX(), pepita.positionY() - 1))
		}
		
		
	}
}

object izquierda {
	
	method mover(direccion) {
		if (pepita.positionX() > 0) {
			pepita.position(game.at(pepita.positionX() - 1, pepita.positionY()))
		}  
	}
}

object derecha {

	method mover(direccion) {
		if (pepita.positionX() < game.width() - 1) {
			pepita.position(game.at(pepita.positionX() + 1, pepita.positionY()))
		}
	}

	
	
}

