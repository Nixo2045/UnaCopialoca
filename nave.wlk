import matrix.*

object nave {
    const pasajeros = [neo, morfeo, trinity]

    method pasajeros() = pasajeros
    method cantidadDePasajeros() = pasajeros.size()
    method esEquilibrado() {
        self.pasajeroMaximaVitalidad() <= self.pasajeroMenorVitalidad() * 2
    }
    method pasajeroMaximaVitalidad()= pasajeros.max({p => p.vitalidad()}) // 10
    method pasajeroMenorVitalidad()= pasajeros.min({p => p.vitalidad()}) // 5
    method elElegidoEstaEnLaNave() = pasajeros.any({ p => p.esElegido()})
    method chocar() = self.saltar() and self.salenTodosDeLaNave()
    method saltar() = pasajeros.forEach({ p => p.saltar() })
    method salenTodosDeLaNave() = pasajeros.removeAll()
    method acelerar() {
        pasajeros.filter({ p => not p.esElegido()})
        self.saltar()
    }

    method vitalidadTotalDeLaNave() = pasajeros.sum({ p => p.vitalidad() })
}