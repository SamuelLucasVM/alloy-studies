module mula

abstract sig Pessoa {}

one sig A, B, C extends Pessoa{}
one sig Mula in Pessoa {}

pred A1 {Mula in C}
pred A2 {Mula not in A}
fact { (A1 && !A2) || (A2 and !A1) }

pred B1 {Mula not in C}
pred B2 {Mula in A}
fact { (B1 && !B2) || (B2 && !B1) }

pred C1 {Mula in C}
pred C2 {!B2}
fact { (C1 && !C2) || (C2 && !C1) }

run {}