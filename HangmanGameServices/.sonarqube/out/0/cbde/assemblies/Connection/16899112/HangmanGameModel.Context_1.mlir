func @_Connection.HangmanGameContext.OnModelCreating$System.Data.Entity.DbModelBuilder$(none) -> () loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\Connection\\HangmanGameModel.Context.cs" :22 :8) {
^entry (%_modelBuilder : none):
%0 = cbde.alloca none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\Connection\\HangmanGameModel.Context.cs" :22 :48)
cbde.store %_modelBuilder, %0 : memref<none> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\Connection\\HangmanGameModel.Context.cs" :22 :48)
br ^0

^0: // JumpBlock
%1 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\Connection\\HangmanGameModel.Context.cs" :24 :18) // new UnintentionalCodeFirstException() (ObjectCreationExpression)
cbde.throw %1 :  none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\Connection\\HangmanGameModel.Context.cs" :24 :12)

^1: // ExitBlock
return

}
