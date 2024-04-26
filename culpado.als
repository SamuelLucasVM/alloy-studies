module culpado

abstract sig Pessoa {}

one sig FelipeBisneto, Romeuette extends Pessoa{}

sig Culpado in Pessoa {}

fact {
    FelipeBisneto not in Culpado
    FelipeBisneto in Culpado => Romeuette in Culpado
}

assert conclusion {Romeuette not in Culpado}
check conclusion

run {}