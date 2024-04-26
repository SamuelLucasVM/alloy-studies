module computadores

abstract sig Computador{}

one sig Lenovo, Dell, Apple, Acer extends Computador {}

sig Rapido, Compacto, Memoria in Computador {}

pred Ideal[x:Computador] {
    x in Rapido && x in Compacto && x in Memoria
}

fact {
    one x:Computador | Ideal[x]

    #Rapido = 3 and #Memoria = 2 and #Compacto = 1
    all x:Computador | x in Rapido || x in Compacto || x in Memoria
    (Lenovo in Memoria and Dell in Memoria) or (Lenovo not in Memoria and Dell not in Memoria)
    (Dell in Rapido and Apple in Rapido) or (Dell not in Rapido and Apple not in Rapido)
    (Apple in Rapido and Acer not in Rapido) or (Apple not in Rapido and Acer in Rapido)
}

run{}