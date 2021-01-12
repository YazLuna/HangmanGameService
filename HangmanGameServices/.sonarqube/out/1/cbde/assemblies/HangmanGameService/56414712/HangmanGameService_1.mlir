func @_HangmanGameService.HangmanGameService.SearchAccount$string$(none) -> () loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :21 :2) {
^entry (%_email : none):
%0 = cbde.alloca none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :21 :28)
cbde.store %_email, %0 : memref<none> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :21 :28)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :23 :21) // new QueryDB() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :24 :21) // Not a variable of known type: consult
%4 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :24 :43) // Not a variable of known type: email
%5 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :24 :21) // consult.SearchAccount(email) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :25 :35) // new ServiceAccount     {      IdAccount = account.idAccount,      NickName = account.nickName,      Email = account.email,      PasswordAccount = account.passwordAccount     } (ObjectCreationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :27 :16) // Not a variable of known type: account
%9 = cbde.unknown : i32 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :27 :16) // account.idAccount (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :28 :15) // Not a variable of known type: account
%11 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :28 :15) // account.nickName (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :29 :12) // Not a variable of known type: account
%13 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :29 :12) // account.email (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :30 :22) // Not a variable of known type: account
%15 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :30 :22) // account.passwordAccount (SimpleMemberAccessExpression)
// Entity from another assembly: OperationContext
%17 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :32 :3) // OperationContext.Current (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :32 :3) // OperationContext.Current.GetCallbackChannel<IAccountCallback>() (InvocationExpression)
%19 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :32 :90) // Not a variable of known type: serviceAccount
%20 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :32 :3) // OperationContext.Current.GetCallbackChannel<IAccountCallback>().AccountResponseAccount(serviceAccount) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_HangmanGameService.HangmanGameService.SearchPlayer$string$(none) -> () loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :38 :2) {
^entry (%_nickname : none):
%0 = cbde.alloca none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :38 :27)
cbde.store %_nickname, %0 : memref<none> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :38 :27)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :40 :21) // new QueryDB() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :41 :19) // Not a variable of known type: consult
%4 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :41 :40) // Not a variable of known type: nickname
%5 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :41 :19) // consult.SearchPlayer(nickname) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :42 :33) // new ServicePlayer     {      NickName = player.nickName,      NamePlayer = player.namePlayer,      LastName = player.lastName,      ScoreObtained = player.scoreObtained,      StatusPlayer = player.statusPlayer     } (ObjectCreationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :44 :15) // Not a variable of known type: player
%9 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :44 :15) // player.nickName (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :45 :17) // Not a variable of known type: player
%11 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :45 :17) // player.namePlayer (SimpleMemberAccessExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :46 :15) // Not a variable of known type: player
%13 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :46 :15) // player.lastName (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :47 :20) // Not a variable of known type: player
%15 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :47 :20) // player.scoreObtained (SimpleMemberAccessExpression)
%16 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :48 :19) // Not a variable of known type: player
%17 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :48 :19) // player.statusPlayer (SimpleMemberAccessExpression)
// Entity from another assembly: OperationContext
%19 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :50 :3) // OperationContext.Current (SimpleMemberAccessExpression)
%20 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :50 :3) // OperationContext.Current.GetCallbackChannel<IAccountCallback>() (InvocationExpression)
%21 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :50 :89) // Not a variable of known type: servicePlayer
%22 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :50 :3) // OperationContext.Current.GetCallbackChannel<IAccountCallback>().AccountResponsePlayer(servicePlayer) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_HangmanGameService.HangmanGameService.SearchBestScoresPlayer$$() -> () loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :62 :2) {
^entry :
br ^0

^0: // ForInitializerBlock
%0 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :64 :21) // new QueryDB() (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :65 :25) // Not a variable of known type: consult
%3 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :65 :25) // consult.SearchBestScoresPlayer() (InvocationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :66 :39) // new List<ServicePlayer>() (ObjectCreationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :67 :21) // Not a variable of known type: Player
%8 = cbde.unknown : i32 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :67 :21) // Player.Count (SimpleMemberAccessExpression)
%9 = cbde.alloca i32 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :67 :7) // playerCount
cbde.store %8, %9 : memref<i32> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :67 :7)
%10 = constant 0 : i32 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :69 :20)
%11 = cbde.alloca i32 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :69 :12) // index
cbde.store %10, %11 : memref<i32> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :69 :12)
br ^1

^1: // BinaryBranchBlock
%12 = cbde.load %11 : memref<i32> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :69 :23)
%13 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :69 :31) // Not a variable of known type: Player
%14 = cbde.unknown : i32 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :69 :31) // Player.Count (SimpleMemberAccessExpression)
%15 = cmpi "slt", %12, %14 : i32 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :69 :23)
cond_br %15, ^2, ^3 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :69 :23)

^2: // SimpleBlock
%16 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :71 :25) // Not a variable of known type: Player
%17 = cbde.load %11 : memref<i32> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :71 :32)
%18 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :71 :25) // Player[index] (ElementAccessExpression)
%20 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :72 :4) // Not a variable of known type: ServicePlayer
%21 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :72 :22) // new ServicePlayer() { NickName = playerIndex.nickName, ScoreObtained = playerIndex.scoreObtained, Position = playerCount } (ObjectCreationExpression)
%22 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :72 :55) // Not a variable of known type: playerIndex
%23 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :72 :55) // playerIndex.nickName (SimpleMemberAccessExpression)
%24 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :72 :93) // Not a variable of known type: playerIndex
%25 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :72 :93) // playerIndex.scoreObtained (SimpleMemberAccessExpression)
%26 = cbde.load %9 : memref<i32> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :72 :131)
%27 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :72 :4) // ServicePlayer.Add(new ServicePlayer() { NickName = playerIndex.nickName, ScoreObtained = playerIndex.scoreObtained, Position = playerCount }) (InvocationExpression)
%28 = cbde.load %9 : memref<i32> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :73 :4)
%29 = constant 1 : i32 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :73 :4)
%30 = subi %28, %29 : i32 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :73 :4)
cbde.store %30, %9 : memref<i32> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :73 :4)
br ^4

^4: // SimpleBlock
%31 = cbde.load %11 : memref<i32> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :69 :45)
%32 = constant 1 : i32 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :69 :45)
%33 = addi %31, %32 : i32 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :69 :45)
cbde.store %33, %11 : memref<i32> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :69 :45)
br ^1

^3: // SimpleBlock
// Entity from another assembly: OperationContext
%34 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :75 :3) // OperationContext.Current (SimpleMemberAccessExpression)
%35 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :75 :3) // OperationContext.Current.GetCallbackChannel<IPlayerScoresCallback>() (InvocationExpression)
%36 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :75 :91) // Not a variable of known type: ServicePlayer
%37 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :75 :3) // OperationContext.Current.GetCallbackChannel<IPlayerScoresCallback>().PlayerResponseList(ServicePlayer) (InvocationExpression)
br ^5

^5: // ExitBlock
return

}
func @_HangmanGameService.HangmanGameService.SearchInformationPlayer$string$(none) -> () loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :88 :2) {
^entry (%_email : none):
%0 = cbde.alloca none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :88 :38)
cbde.store %_email, %0 : memref<none> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :88 :38)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :90 :21) // new QueryDB() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :91 :19) // Not a variable of known type: consult
%4 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :91 :51) // Not a variable of known type: email
%5 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :91 :19) // consult.SearchInformationPlayer(email) (InvocationExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :92 :33) // new ServicePlayer     {      NickName = player.nickName,      ScoreObtained = player.scoreObtained     } (ObjectCreationExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :94 :15) // Not a variable of known type: player
%9 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :94 :15) // player.nickName (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :95 :20) // Not a variable of known type: player
%11 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :95 :20) // player.scoreObtained (SimpleMemberAccessExpression)
// Entity from another assembly: OperationContext
%13 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :97 :3) // OperationContext.Current (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :97 :3) // OperationContext.Current.GetCallbackChannel<IInformationPlayerCallback>() (InvocationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :97 :103) // Not a variable of known type: servicePlayer
%16 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :97 :3) // OperationContext.Current.GetCallbackChannel<IInformationPlayerCallback>().PlayerResponseInformation(servicePlayer) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function PlayerConnect(none), it contains poisonous unsupported syntaxes

// Skipping function PlayerDisconnect(none), it contains poisonous unsupported syntaxes

// Skipping function StartGame(none), it contains poisonous unsupported syntaxes

func @_HangmanGameService.HangmanGameService.VerifyGameStart$$() -> () loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :232 :2) {
^entry :
br ^0

^0: // SimpleBlock
// Entity from another assembly: OperationContext
%0 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :234 :3) // OperationContext.Current (SimpleMemberAccessExpression)
%1 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :234 :3) // OperationContext.Current.GetCallbackChannel<IPlayConnectCallback>() (InvocationExpression)
%2 = cbde.unknown : i1 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :234 :82) // Not a variable of known type: isStartGame
%3 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :234 :3) // OperationContext.Current.GetCallbackChannel<IPlayConnectCallback>().IsStarGame(isStartGame) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function GameOver(none), it contains poisonous unsupported syntaxes

// Skipping function SearchWinner(), it contains poisonous unsupported syntaxes

func @_HangmanGameService.HangmanGameService.RestartGame$$() -> () loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :299 :2) {
^entry :
br ^0

^0: // SimpleBlock
%0 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :301 :3) // Not a variable of known type: playersConnectCallback
%1 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :301 :3) // playersConnectCallback.Clear() (InvocationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :302 :3) // Not a variable of known type: playersNickNameConnect
%3 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :302 :3) // playersNickNameConnect.Clear() (InvocationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :303 :3) // Not a variable of known type: playersWinner
%5 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :303 :3) // playersWinner.Clear() (InvocationExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :304 :3) // Not a variable of known type: winnersConnectCallback
%7 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :304 :3) // winnersConnectCallback.Clear() (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_HangmanGameService.HangmanGameService.ReportPlayer$HangmanGameService.ServiceReportMisConduct$(none) -> () loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :317 :2) {
^entry (%_serviceReportMisConduct : none):
%0 = cbde.alloca none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :317 :27)
cbde.store %_serviceReportMisConduct, %0 : memref<none> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :317 :27)
br ^0

^0: // BinaryBranchBlock
%1 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :319 :39) // new ReportMisConduct     {      idReportedPlayer = serviceReportMisConduct.IdReportedPlayer,      idReportingPlayer = serviceReportMisConduct.IdReportingPlayer,      typeReport = serviceReportMisConduct.TypeReport,      additionalContext = serviceReportMisConduct.AdditionalContext     } (ObjectCreationExpression)
%2 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :321 :23) // Not a variable of known type: serviceReportMisConduct
%3 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :321 :23) // serviceReportMisConduct.IdReportedPlayer (SimpleMemberAccessExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :322 :24) // Not a variable of known type: serviceReportMisConduct
%5 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :322 :24) // serviceReportMisConduct.IdReportingPlayer (SimpleMemberAccessExpression)
%6 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :323 :17) // Not a variable of known type: serviceReportMisConduct
%7 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :323 :17) // serviceReportMisConduct.TypeReport (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :324 :24) // Not a variable of known type: serviceReportMisConduct
%9 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :324 :24) // serviceReportMisConduct.AdditionalContext (SimpleMemberAccessExpression)
// Entity from another assembly: DateTime
%11 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :326 :30) // DateTime.Now (SimpleMemberAccessExpression)
%13 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :327 :3) // Not a variable of known type: reportMisConduct
%14 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :327 :3) // reportMisConduct.dateHour (SimpleMemberAccessExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :327 :31) // Not a variable of known type: dateTimeCurrent
%16 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :328 :21) // new QueryDB() (ObjectCreationExpression)
%18 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :329 :19) // Not a variable of known type: consult
%19 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :329 :42) // Not a variable of known type: reportMisConduct
%20 = cbde.unknown : i1 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :329 :19) // consult.RegisterReport(reportMisConduct) (InvocationExpression)
%21 = cbde.alloca i1 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :329 :8) // isReport
cbde.store %20, %21 : memref<i1> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :329 :8)
%22 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :330 :36) // Not a variable of known type: consult
%23 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :330 :57) // Not a variable of known type: reportMisConduct
%24 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :330 :57) // reportMisConduct.idReportedPlayer (SimpleMemberAccessExpression)
%25 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :330 :36) // consult.SearchReport(reportMisConduct.idReportedPlayer) (InvocationExpression)
%27 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :331 :7) // Not a variable of known type: reports
%28 = cbde.unknown : i32 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :331 :7) // reports.Count (SimpleMemberAccessExpression)
// Skipped because MethodDeclarationSyntax or ClassDeclarationSyntax or NamespaceDeclarationSyntax: Number
%29 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :331 :43) // Not a variable of known type: NumberValues
%30 = constant unit loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :331 :43) // NumberValues.TEN (SimpleMemberAccessExpression)
%31 = cbde.unknown : i32 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :331 :24) // Number.NumberValue(NumberValues.TEN) (InvocationExpression)
%32 = cmpi "eq", %28, %31 : i32 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :331 :7)
cond_br %32, ^1, ^2 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :331 :7)

^1: // SimpleBlock
%33 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :333 :4) // Not a variable of known type: consult
%34 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :333 :32) // Not a variable of known type: reportMisConduct
%35 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :333 :32) // reportMisConduct.idReportedPlayer (SimpleMemberAccessExpression)
%36 = cbde.unknown : i1 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :333 :4) // consult.ReportAccountPlayer(reportMisConduct.idReportedPlayer) (InvocationExpression)
br ^2

^2: // SimpleBlock
// Entity from another assembly: OperationContext
%37 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :335 :3) // OperationContext.Current (SimpleMemberAccessExpression)
%38 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :335 :3) // OperationContext.Current.GetCallbackChannel<IReportCallback>() (InvocationExpression)
%39 = cbde.load %21 : memref<i1> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :335 :87)
%40 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :335 :3) // OperationContext.Current.GetCallbackChannel<IReportCallback>().ResponseReportPlayer(isReport) (InvocationExpression)
br ^3

^3: // ExitBlock
return

}
// Skipping function ReportList(none), it contains poisonous unsupported syntaxes

func @_HangmanGameService.HangmanGameService.LogIn$string.string$(none, none) -> () loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :371 :2) {
^entry (%_email : none, %_password : none):
%0 = cbde.alloca none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :371 :20)
cbde.store %_email, %0 : memref<none> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :371 :20)
%1 = cbde.alloca none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :371 :34)
cbde.store %_password, %1 : memref<none> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :371 :34)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :373 :21) // new QueryDB() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :374 :14) // Not a variable of known type: consult
%5 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :374 :28) // Not a variable of known type: email
%6 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :374 :35) // Not a variable of known type: password
%7 = cbde.unknown : i1 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :374 :14) // consult.IsLog(email, password) (InvocationExpression)
%8 = cbde.alloca i1 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :374 :8) // log
cbde.store %7, %8 : memref<i1> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :374 :8)
// Entity from another assembly: OperationContext
%9 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :375 :3) // OperationContext.Current (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :375 :3) // OperationContext.Current.GetCallbackChannel<IPlayerCallback>() (InvocationExpression)
%11 = cbde.load %8 : memref<i1> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :375 :88)
%12 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :375 :3) // OperationContext.Current.GetCallbackChannel<IPlayerCallback>().PlayerResponseBoolean(log) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_HangmanGameService.HangmanGameService.SearchEmailPlayer$string$(none) -> () loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :382 :2) {
^entry (%_email : none):
%0 = cbde.alloca none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :382 :32)
cbde.store %_email, %0 : memref<none> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :382 :32)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :384 :21) // new QueryDB() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :385 :21) // Not a variable of known type: consult
%4 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :385 :47) // Not a variable of known type: email
%5 = cbde.unknown : i1 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :385 :21) // consult.SearchEmailPlayer(email) (InvocationExpression)
%6 = cbde.alloca i1 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :385 :8) // emailFound
cbde.store %5, %6 : memref<i1> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :385 :8)
// Entity from another assembly: OperationContext
%7 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :386 :3) // OperationContext.Current (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :386 :3) // OperationContext.Current.GetCallbackChannel<IPlayerCallback>() (InvocationExpression)
%9 = cbde.load %6 : memref<i1> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :386 :88)
%10 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :386 :3) // OperationContext.Current.GetCallbackChannel<IPlayerCallback>().PlayerResponseBoolean(emailFound) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_HangmanGameService.HangmanGameService.ChangePassword$string.string$(none, none) -> () loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :394 :2) {
^entry (%_email : none, %_newPassword : none):
%0 = cbde.alloca none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :394 :29)
cbde.store %_email, %0 : memref<none> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :394 :29)
%1 = cbde.alloca none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :394 :43)
cbde.store %_newPassword, %1 : memref<none> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :394 :43)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :396 :21) // new QueryDB() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :397 :17) // Not a variable of known type: consult
%5 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :397 :40) // Not a variable of known type: email
%6 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :397 :47) // Not a variable of known type: newPassword
%7 = cbde.unknown : i1 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :397 :17) // consult.ChangePassword(email, newPassword) (InvocationExpression)
%8 = cbde.alloca i1 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :397 :8) // change
cbde.store %7, %8 : memref<i1> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :397 :8)
// Entity from another assembly: OperationContext
%9 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :398 :3) // OperationContext.Current (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :398 :3) // OperationContext.Current.GetCallbackChannel<IPlayerCallback>() (InvocationExpression)
%11 = cbde.load %8 : memref<i1> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :398 :88)
%12 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :398 :3) // OperationContext.Current.GetCallbackChannel<IPlayerCallback>().PlayerResponseBoolean(change) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_HangmanGameService.HangmanGameService.Register$HangmanGameService.ServiceAccount.HangmanGameService.ServicePlayer$(none, none) -> () loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :406 :2) {
^entry (%_account : none, %_servicePlayer : none):
%0 = cbde.alloca none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :406 :23)
cbde.store %_account, %0 : memref<none> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :406 :23)
%1 = cbde.alloca none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :406 :47)
cbde.store %_servicePlayer, %1 : memref<none> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :406 :47)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :408 :21) // new QueryDB() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :409 :25) // new Account     {      email = account.Email,      passwordAccount = account.PasswordAccount,      confirmationCode = account.ConfirmationCode,      nickName = servicePlayer.NickName     } (ObjectCreationExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :411 :12) // Not a variable of known type: account
%6 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :411 :12) // account.Email (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :412 :22) // Not a variable of known type: account
%8 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :412 :22) // account.PasswordAccount (SimpleMemberAccessExpression)
%9 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :413 :23) // Not a variable of known type: account
%10 = cbde.unknown : i32 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :413 :23) // account.ConfirmationCode (SimpleMemberAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :414 :15) // Not a variable of known type: servicePlayer
%12 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :414 :15) // servicePlayer.NickName (SimpleMemberAccessExpression)
%14 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :417 :23) // new Player     {      namePlayer = servicePlayer.NamePlayer,      lastName = servicePlayer.LastName,      statusPlayer = servicePlayer.StatusPlayer,      nickName = servicePlayer.NickName     } (ObjectCreationExpression)
%15 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :419 :17) // Not a variable of known type: servicePlayer
%16 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :419 :17) // servicePlayer.NamePlayer (SimpleMemberAccessExpression)
%17 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :420 :15) // Not a variable of known type: servicePlayer
%18 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :420 :15) // servicePlayer.LastName (SimpleMemberAccessExpression)
%19 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :421 :19) // Not a variable of known type: servicePlayer
%20 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :421 :19) // servicePlayer.StatusPlayer (SimpleMemberAccessExpression)
%21 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :422 :15) // Not a variable of known type: servicePlayer
%22 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :422 :15) // servicePlayer.NickName (SimpleMemberAccessExpression)
%24 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :425 :19) // Not a variable of known type: consult
%25 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :425 :42) // Not a variable of known type: dataAccount
%26 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :425 :55) // Not a variable of known type: dataPlayer
%27 = cbde.unknown : i1 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :425 :19) // consult.RegisterPlayer(dataAccount, dataPlayer) (InvocationExpression)
%28 = cbde.alloca i1 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :425 :8) // register
cbde.store %27, %28 : memref<i1> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :425 :8)
// Entity from another assembly: OperationContext
%29 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :426 :3) // OperationContext.Current (SimpleMemberAccessExpression)
%30 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :426 :3) // OperationContext.Current.GetCallbackChannel<IPlayerCallback>() (InvocationExpression)
%31 = cbde.load %28 : memref<i1> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :426 :88)
%32 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :426 :3) // OperationContext.Current.GetCallbackChannel<IPlayerCallback>().PlayerResponseBoolean(register) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_HangmanGameService.HangmanGameService.SearchNicknamePlayer$string$(none) -> () loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :433 :2) {
^entry (%_nickname : none):
%0 = cbde.alloca none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :433 :35)
cbde.store %_nickname, %0 : memref<none> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :433 :35)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :435 :21) // new QueryDB() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :436 :25) // Not a variable of known type: consult
%4 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :436 :54) // Not a variable of known type: nickname
%5 = cbde.unknown : i1 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :436 :25) // consult.SearchNicknamePlayer(nickname) (InvocationExpression)
%6 = cbde.alloca i1 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :436 :8) // searchNickName
cbde.store %5, %6 : memref<i1> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :436 :8)
// Entity from another assembly: OperationContext
%7 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :437 :3) // OperationContext.Current (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :437 :3) // OperationContext.Current.GetCallbackChannel<IPlayerCallback>() (InvocationExpression)
%9 = cbde.load %6 : memref<i1> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :437 :88)
%10 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :437 :3) // OperationContext.Current.GetCallbackChannel<IPlayerCallback>().PlayerResponseBoolean(searchNickName) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function SendEmail(none, i32), it contains poisonous unsupported syntaxes

func @_HangmanGameService.HangmanGameService.SearchRepeatEmailAccount$string.int$(none, i32) -> () loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :476 :2) {
^entry (%_emailEdit : none, %_idAccount : i32):
%0 = cbde.alloca none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :476 :39)
cbde.store %_emailEdit, %0 : memref<none> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :476 :39)
%1 = cbde.alloca i32 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :476 :57)
cbde.store %_idAccount, %1 : memref<i32> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :476 :57)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :478 :21) // new QueryDB() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :479 :22) // Not a variable of known type: consult
%5 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :479 :55) // Not a variable of known type: emailEdit
%6 = cbde.load %1 : memref<i32> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :479 :66)
%7 = cbde.unknown : i1 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :479 :22) // consult.SearchRepeatEmailAccount(emailEdit, idAccount) (InvocationExpression)
%8 = cbde.alloca i1 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :479 :8) // repeatEmail
cbde.store %7, %8 : memref<i1> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :479 :8)
// Entity from another assembly: OperationContext
%9 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :480 :3) // OperationContext.Current (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :480 :3) // OperationContext.Current.GetCallbackChannel<IPlayerCallback>() (InvocationExpression)
%11 = cbde.load %8 : memref<i1> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :480 :88)
%12 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :480 :3) // OperationContext.Current.GetCallbackChannel<IPlayerCallback>().PlayerResponseBoolean(repeatEmail) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_HangmanGameService.HangmanGameService.SearchRepeatNicknamePlayer$string.string$(none, none) -> () loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :488 :2) {
^entry (%_nicknameEdit : none, %_nicknameCurrent : none):
%0 = cbde.alloca none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :488 :41)
cbde.store %_nicknameEdit, %0 : memref<none> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :488 :41)
%1 = cbde.alloca none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :488 :62)
cbde.store %_nicknameCurrent, %1 : memref<none> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :488 :62)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :490 :21) // new QueryDB() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :491 :25) // Not a variable of known type: consult
%5 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :491 :60) // Not a variable of known type: nicknameEdit
%6 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :491 :74) // Not a variable of known type: nicknameCurrent
%7 = cbde.unknown : i1 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :491 :25) // consult.SearchRepeatNicknamePlayer(nicknameEdit, nicknameCurrent) (InvocationExpression)
%8 = cbde.alloca i1 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :491 :8) // repeatNickName
cbde.store %7, %8 : memref<i1> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :491 :8)
// Entity from another assembly: OperationContext
%9 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :492 :3) // OperationContext.Current (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :492 :3) // OperationContext.Current.GetCallbackChannel<IPlayerCallback>() (InvocationExpression)
%11 = cbde.load %8 : memref<i1> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :492 :88)
%12 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :492 :3) // OperationContext.Current.GetCallbackChannel<IPlayerCallback>().PlayerResponseBoolean(repeatNickName) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_HangmanGameService.HangmanGameService.UpdateEmail$string.int$(none, i32) -> () loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :500 :2) {
^entry (%_email : none, %_idAccount : i32):
%0 = cbde.alloca none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :500 :26)
cbde.store %_email, %0 : memref<none> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :500 :26)
%1 = cbde.alloca i32 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :500 :40)
cbde.store %_idAccount, %1 : memref<i32> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :500 :40)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :502 :21) // new QueryDB() (ObjectCreationExpression)
%4 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :503 :22) // Not a variable of known type: consult
%5 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :503 :42) // Not a variable of known type: email
%6 = cbde.load %1 : memref<i32> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :503 :49)
%7 = cbde.unknown : i1 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :503 :22) // consult.UpdateEmail(email, idAccount) (InvocationExpression)
%8 = cbde.alloca i1 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :503 :8) // updateEmail
cbde.store %7, %8 : memref<i1> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :503 :8)
// Entity from another assembly: OperationContext
%9 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :504 :3) // OperationContext.Current (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :504 :3) // OperationContext.Current.GetCallbackChannel<IPlayerCallback>() (InvocationExpression)
%11 = cbde.load %8 : memref<i1> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :504 :88)
%12 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :504 :3) // OperationContext.Current.GetCallbackChannel<IPlayerCallback>().PlayerResponseBoolean(updateEmail) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_HangmanGameService.HangmanGameService.UpdatePlayer$string.HangmanGameService.ServicePlayer$(none, none) -> () loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :512 :2) {
^entry (%_nickname : none, %_servicePlayerEdit : none):
%0 = cbde.alloca none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :512 :27)
cbde.store %_nickname, %0 : memref<none> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :512 :27)
%1 = cbde.alloca none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :512 :44)
cbde.store %_servicePlayerEdit, %1 : memref<none> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :512 :44)
br ^0

^0: // SimpleBlock
%2 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :514 :23) // new Player     {      namePlayer = servicePlayerEdit.NamePlayer,      lastName = servicePlayerEdit.LastName,      nickName = servicePlayerEdit.NickName     } (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :516 :17) // Not a variable of known type: servicePlayerEdit
%4 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :516 :17) // servicePlayerEdit.NamePlayer (SimpleMemberAccessExpression)
%5 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :517 :15) // Not a variable of known type: servicePlayerEdit
%6 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :517 :15) // servicePlayerEdit.LastName (SimpleMemberAccessExpression)
%7 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :518 :15) // Not a variable of known type: servicePlayerEdit
%8 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :518 :15) // servicePlayerEdit.NickName (SimpleMemberAccessExpression)
%10 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :520 :21) // new QueryDB() (ObjectCreationExpression)
%12 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :521 :23) // Not a variable of known type: consult
%13 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :521 :44) // Not a variable of known type: nickname
%14 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :521 :54) // Not a variable of known type: playerEdit
%15 = cbde.unknown : i1 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :521 :23) // consult.UpdatePlayer(nickname, playerEdit) (InvocationExpression)
%16 = cbde.alloca i1 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :521 :8) // updatePlayer
cbde.store %15, %16 : memref<i1> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :521 :8)
// Entity from another assembly: OperationContext
%17 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :522 :3) // OperationContext.Current (SimpleMemberAccessExpression)
%18 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :522 :3) // OperationContext.Current.GetCallbackChannel<IPlayerCallback>() (InvocationExpression)
%19 = cbde.load %16 : memref<i1> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :522 :88)
%20 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :522 :3) // OperationContext.Current.GetCallbackChannel<IPlayerCallback>().PlayerResponseBoolean(updatePlayer) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
func @_HangmanGameService.HangmanGameService.DeleteAccountPlayer$string$(none) -> () loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :529 :2) {
^entry (%_nickname : none):
%0 = cbde.alloca none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :529 :34)
cbde.store %_nickname, %0 : memref<none> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :529 :34)
br ^0

^0: // SimpleBlock
%1 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :531 :21) // new QueryDB() (ObjectCreationExpression)
%3 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :532 :25) // Not a variable of known type: consult
%4 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :532 :53) // Not a variable of known type: nickname
%5 = cbde.unknown : i1 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :532 :25) // consult.DeleteAccountPlayer(nickname) (InvocationExpression)
%6 = cbde.alloca i1 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :532 :8) // isDeletePlayer
cbde.store %5, %6 : memref<i1> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :532 :8)
// Entity from another assembly: OperationContext
%7 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :533 :3) // OperationContext.Current (SimpleMemberAccessExpression)
%8 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :533 :3) // OperationContext.Current.GetCallbackChannel<IPlayerCallback>() (InvocationExpression)
%9 = cbde.load %6 : memref<i1> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :533 :88)
%10 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :533 :3) // OperationContext.Current.GetCallbackChannel<IPlayerCallback>().PlayerResponseBoolean(isDeletePlayer) (InvocationExpression)
br ^1

^1: // ExitBlock
return

}
// Skipping function ClientConnect(none), it contains poisonous unsupported syntaxes

// Skipping function SendNewMessages(none, none), it contains poisonous unsupported syntaxes

func @_HangmanGameService.HangmanGameService.RemoveUser$string$(none) -> () loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :607 :2) {
^entry (%_nickname : none):
%0 = cbde.alloca none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :607 :25)
cbde.store %_nickname, %0 : memref<none> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :607 :25)
br ^0

^0: // ForInitializerBlock
%1 = constant 0 : i32 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :609 :20)
%2 = cbde.alloca i32 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :609 :12) // index
cbde.store %1, %2 : memref<i32> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :609 :12)
br ^1

^1: // BinaryBranchBlock
%3 = cbde.load %2 : memref<i32> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :609 :23)
%4 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :609 :31) // Not a variable of known type: playersConnect
%5 = cbde.unknown : i32 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :609 :31) // playersConnect.Count (SimpleMemberAccessExpression)
%6 = cmpi "slt", %3, %5 : i32 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :609 :23)
cond_br %6, ^2, ^3 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :609 :23)

^2: // BinaryBranchBlock
%7 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :611 :8) // Not a variable of known type: nickname
%8 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :611 :24) // Not a variable of known type: playersConnect
%9 = cbde.load %2 : memref<i32> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :611 :39)
%10 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :611 :24) // playersConnect[index] (ElementAccessExpression)
%11 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :611 :24) // playersConnect[index].NickName (SimpleMemberAccessExpression)
%12 = cbde.unknown : i1 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :611 :8) // nickname.Equals(playersConnect[index].NickName) (InvocationExpression)
cond_br %12, ^4, ^5 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :611 :8)

^4: // JumpBlock
%13 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :613 :5) // Not a variable of known type: playersConnect
%14 = cbde.load %2 : memref<i32> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :613 :29)
%15 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :613 :5) // playersConnect.RemoveAt(index) (InvocationExpression)
%16 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :614 :5) // Not a variable of known type: playersCallback
%17 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :614 :28) // Not a variable of known type: nickname
%18 = cbde.unknown : i1 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :614 :5) // playersCallback.Remove(nickname) (InvocationExpression)
br ^3 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :615 :5) // break

^5: // SimpleBlock
%19 = cbde.load %2 : memref<i32> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :609 :53)
%20 = constant 1 : i32 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :609 :53)
%21 = addi %19, %20 : i32 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :609 :53)
cbde.store %21, %2 : memref<i32> loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :609 :53)
br ^1

^3: // SimpleBlock
// Entity from another assembly: OperationContext
%22 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :618 :3) // OperationContext.Current (SimpleMemberAccessExpression)
%23 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :618 :3) // OperationContext.Current.GetCallbackChannel<IChatCallback>() (InvocationExpression)
%24 = constant 1 : i1 loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :618 :84) // true
%25 = cbde.unknown : none loc("C:\\Users\\Ale_2\\source\\repos\\HangmanGameServices\\HangmanGameServices\\HangmanGameService.cs" :618 :3) // OperationContext.Current.GetCallbackChannel<IChatCallback>().ChatResponseBoolean(true) (InvocationExpression)
br ^6

^6: // ExitBlock
return

}
