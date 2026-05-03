import pepita.*
import wollok.game.*

object silvestre {
  
    const presa = pepita
    method image() = "silvestre.png"
    method position() = game.at(self.x(), 0)

    method x() {
        const xPresa = presa.positionX()
        return if(xPresa >= 3) xPresa else 3
    }

   method atrapar() {
        if(presa.position() == self.position()){
        game.say(presa, "¡PERDÍ!!")
        game.stop()
       
      }
    }
    
}



//si le pongo object manzana no me aparece la manzana
object manzana1 {
  const energia = 40
  const x = 1.randomUpTo(game.width()).truncate(0)
  const y = 1.randomUpTo(game.height()).truncate(0)
  var property position = game.at(x,y)
  method image() = "manzana1.png"

  method energiaQueOtorga() = energia

  method posicionAleatoria() {
    const xNueva = 1.randomUpTo(game.width()).truncate(0)
    const yNueva = 1.randomUpTo(game.height()).truncate(0)
		position = game.at(xNueva, yNueva)
	}

  



}



object alpiste1 {
  var peso = 40.randomUpTo(100).floor()
  var calorias = 1 // no aclara
 

  const x = 1.randomUpTo(game.width()).floor()
  const y = 1.randomUpTo(game.height()).floor()
  var property position = game.at(x,y)
  
  method image() = "alpiste1.png"

  method energiaQueOtorga() = calorias * peso

   method posicionAleatoria() {
    const xNueva = 1.randomUpTo(game.width()).floor()
    const yNueva = 1.randomUpTo(game.height()).floor()
		position = game.at(xNueva, yNueva)
	}
}

    
object nido {
      var property position = game.at(8, 8)
      method image() = "nido.png"

      method ganar() {
        if(pepita.position() == self.position()){
        game.say(pepita, "¡GANÉ!")
        game.stop()
      }
}
}


object generarComida {
  method iniciar() {
	const r = (0.randomUpTo(2)).floor()

	game.removeVisual(manzana1) // sino tira error. las saco para despues agregarlas de nuevo
	game.removeVisual(alpiste1)

	if (r == 0) {
		manzana1.posicionAleatoria()
		game.addVisual(manzana1)
	} else {
		alpiste1.posicionAleatoria()
		game.addVisual(alpiste1)
	}
}
	
}