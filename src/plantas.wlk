class Maiz {
	var esAdulto = false
	method imagen() = if(esAdulto) "corn_baby.png" else "corn_adult.png"
	method regar(){
		esAdulto = true
	}
}

class Trigo {
	var etapaActual = 0
	method imagen() = "wheat_" + etapaActual + ".png"
	method regar(){
		etapaActual = (etapaActual + 1) % 4
	}
}

class Tomaco {
	var imagen = "tomaco.png"
	var posicion = null
	method imagen() = imagen
	method regar() {
		posicion.y((posicion.y() + 1) % 10)
	}
}