func @_HangmanGameService.Number.NumberValue$HangmanGameService.NumberValues$(none) -> i32 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\Number.cs" :32 :8) {
^entry (%_numberValues : none):
%0 = cbde.alloca none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\Number.cs" :32 :38)
cbde.store %_numberValues, %0 : memref<none> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\Number.cs" :32 :38)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\Number.cs" :34 :30) // Not a variable of known type: numberValues
%2 = cbde.unknown : i32 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\Number.cs" :34 :25) // (int)numberValues (CastExpression)
%3 = cbde.alloca i32 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\Number.cs" :34 :16) // number
cbde.store %2, %3 : memref<i32> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\Number.cs" :34 :16)
%4 = cbde.load %3 : memref<i32> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\Number.cs" :35 :19)
return %4 : i32 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\Number.cs" :35 :12)

^1: // ExitBlock
cbde.unreachable

}
