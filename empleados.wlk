object gimenez{
    var fondo = 300000

    method pagarSueldo (empleado){
        fondo = fondo - empleado.sueldo()
        empleado.cobrarSueldo()
    }

    method fondo (){
        return fondo
    }
}

object baigorria{
    var dinero = 0
    const sueldoPorEmpanada = 15
    var cantidadDeEmpanadasVendidas = 0
    var totalCobrado = 0

    method vender (cantidad){
        cantidadDeEmpanadasVendidas = cantidadDeEmpanadasVendidas + cantidad
    }

    method sueldo (){
        return sueldoPorEmpanada * cantidadDeEmpanadasVendidas
    }

    method cobrarSueldo (){
        dinero = dinero + self.sueldo()
        totalCobrado = totalCobrado + self.sueldo()
        cantidadDeEmpanadasVendidas = 0
    }

    method totalCobrado(){
        return totalCobrado
    }
}

object galvan{
    var dinero = 0
    var deuda = 0
    var sueldo = 15000

    method cambiarSueldo (_sueldo){
        sueldo = _sueldo
    }

    method sueldo(){
        return sueldo
    }

    method cobrarSueldo(){
        deuda = deuda - sueldo
        if (deuda < 0){
            dinero = dinero + (-deuda)
            deuda = 0
        }
    }

    method gastar (total){
        dinero = dinero - total
        if (dinero < 0){
            deuda = deuda + (-dinero)
            dinero = 0
        }
    }

    method dinero (){
        return dinero
    }

    method deuda (){
        return deuda
    }
}