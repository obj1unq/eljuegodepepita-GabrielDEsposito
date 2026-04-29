import pepita.*
import wollok.game.*

object silvestre {
  
    var presa = pepita
    method image() = "silvestre.png"
    method position() = game.at(self.x(), 0)

    method x() {
        const xPresa = presa.positionX()
        return if(xPresa >= 3) xPresa else 3
    }

    method atrapar() {
      game.removeVisual(presa)
      game.stop()
    }
}

object comida1 {
  var property position = game.at(5, 7)
  method image() = "manzana1.png"
  method energiaQueOtorga() = 40

}

object nido{
  var property position = game.at(3, 7)
  method image() = "nido.png"
}
    
object meta {
      var property position = game.at(9, 9)
      method image() = "llegada.png"

      method ganar() {
        const personaje = pepita
        game.say(pepita, "¡GANE!")
        game.stop()
      }
}