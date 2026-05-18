object michaelJackson {
    var energia = 100
    var prime = true

    method energia() = energia
    method esElegido() = true
    method saltar() {energia = energia * 0.5}
    method vitalidad() = energia / 10
}

object morfeo {
    var property vitalidad = 8
    var estaCansado = false

    method esElegido() = false

    method saltar() {
        if (estaCansado == false) {
            estaCansado = true
            vitalidad -= 1
        }
        else {
            estaCansado = false
            vitalidad -= 1
        }
    }
}

object trinity {
    method vitalidad() = 0
    method esElegido() = false
    method saltar() {}
}