object arriba {
	method mover(personaje) {
		if (personaje.positionY() < game.height() - 1) {
			personaje.position(game.at(personaje.positionX(), personaje.positionY() + 1))
		}
	}
    
}

object abajo {
	method mover(personaje) {
		if (personaje.positionY() > 0) {
			personaje.position(game.at(personaje.positionX(), personaje.positionY() - 1))
		}
		
	}
}

object izquierda {
	method mover(personaje) {
		if (personaje.positionX() > 0) {
			personaje.position(game.at(personaje.positionX() - 1, personaje.positionY()))
		}
	}
}

object derecha {
	method mover(personaje) {
		if (personaje.positionX() < game.width() - 1) {
			personaje.position(game.at(personaje.positionX() + 1, personaje.positionY()))
		}
	}
}