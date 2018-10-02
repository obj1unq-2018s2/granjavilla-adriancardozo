import wollok.game.*
import plantas.*
object hector {
	var property posicion = game.at(2,2)
	method imagen() = "player.png"
	method plantaMaiz() { 
		game.addVisualIn(new Maiz(), posicion.clone())
	}
	method plantaTrigo() { 
		game.addVisualIn(new Trigo(), posicion.clone())
	}
	method plantaTomaco() { 
		game.addVisual(new Tomaco(posicion = posicion.clone()))
	}
	
	method regar(){
		if(game.colliders(self).size() > 0){
			game.colliders(self).foreach { planta => planta.regar() }
		} 
		else{
			self.error("No tengo nada para regar")
		}
		
	}
}
