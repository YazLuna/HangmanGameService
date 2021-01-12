�
YC:\Users\Ale_2\source\repos\HangmanGameServices\HangmanGameServices\HangmanGameService.cs
	namespace

 	
HangmanGameService


 
{ 
[ 
ServiceBehavior 
( 
ConcurrencyMode !
=" #
ConcurrencyMode$ 3
.3 4
	Reentrant4 =
,= >
InstanceContextMode? R
=S T
InstanceContextModeU h
.h i
Singlei o
)o p
]p q
public 
partial 
class 
HangmanGameService (
:) *
IAccountManager+ :
{ 
public 
void	 
SearchAccount 
( 
string "
email# (
)( )
{ 
QueryDB 

consult 
= 
new 
QueryDB  
(  !
)! "
;" #
Account 

account 
= 
consult 
. 
SearchAccount *
(* +
email+ 0
)0 1
;1 2
ServiceAccount 
serviceAccount  
=! "
new# &
ServiceAccount' 5
{ 
	IdAccount 
= 
account 
. 
	idAccount !
,! "
NickName 
= 
account 
. 
nickName 
,  
Email 	
=
 
account 
. 
email 
, 
PasswordAccount 
= 
account 
. 
passwordAccount -
}   
;   
OperationContext!! 
.!! 
Current!! 
.!! 
GetCallbackChannel!! .
<!!. /
IAccountCallback!!/ ?
>!!? @
(!!@ A
)!!A B
.!!B C"
AccountResponseAccount!!C Y
(!!Y Z
serviceAccount!!Z h
)!!h i
;!!i j
}"" 
public'' 
void''	 
SearchPlayer'' 
('' 
string'' !
nickname''" *
)''* +
{(( 
QueryDB)) 

consult)) 
=)) 
new)) 
QueryDB))  
())  !
)))! "
;))" #
Player** 	
player**
 
=** 
consult** 
.** 
SearchPlayer** '
(**' (
nickname**( 0
)**0 1
;**1 2
ServicePlayer++ 
servicePlayer++ 
=++  
new++! $
ServicePlayer++% 2
{,, 
NickName-- 
=-- 
player-- 
.-- 
nickName-- 
,-- 

NamePlayer.. 
=.. 
player.. 
... 

namePlayer.. "
,.." #
LastName// 
=// 
player// 
.// 
lastName// 
,// 
ScoreObtained00 
=00 
player00 
.00 
scoreObtained00 (
,00( )
StatusPlayer11 
=11 
player11 
.11 
statusPlayer11 &
}22 
;22 
OperationContext33 
.33 
Current33 
.33 
GetCallbackChannel33 .
<33. /
IAccountCallback33/ ?
>33? @
(33@ A
)33A B
.33B C!
AccountResponsePlayer33C X
(33X Y
servicePlayer33Y f
)33f g
;33g h
}44 
}55 
public:: 
partial:: 
class:: 
HangmanGameService:: (
:::) * 
IPlayerScoresManager::+ ?
{;; 
public?? 
void??	 "
SearchBestScoresPlayer?? $
(??$ %
)??% &
{@@ 
QueryDBAA 

consultAA 
=AA 
newAA 
QueryDBAA  
(AA  !
)AA! "
;AA" #
ListBB 
<BB 
PlayerBB 
>BB 
PlayerBB 
=BB 
consultBB  
.BB  !"
SearchBestScoresPlayerBB! 7
(BB7 8
)BB8 9
;BB9 :
ListCC 
<CC 
ServicePlayerCC 
>CC 
ServicePlayerCC $
=CC% &
newCC' *
ListCC+ /
<CC/ 0
ServicePlayerCC0 =
>CC= >
(CC> ?
)CC? @
;CC@ A
intDD 
playerCountDD 
=DD 
PlayerDD 
.DD 
CountDD !
;DD! "
forFF 
(FF 
intFF 
indexFF 
=FF 
$numFF 
;FF 
indexFF 
<FF 
PlayerFF %
.FF% &
CountFF& +
;FF+ ,
indexFF- 2
++FF2 4
)FF4 5
{GG 
PlayerHH 

playerIndexHH 
=HH 
PlayerHH 
[HH  
indexHH  %
]HH% &
;HH& '
ServicePlayerII 
.II 
AddII 
(II 
newII 
ServicePlayerII '
(II' (
)II( )
{II* +
NickNameII, 4
=II5 6
playerIndexII7 B
.IIB C
nickNameIIC K
,IIK L
ScoreObtainedIIM Z
=II[ \
playerIndexII] h
.IIh i
scoreObtainedIIi v
,IIv w
Position	IIx �
=
II� �
playerCount
II� �
}
II� �
)
II� �
;
II� �
playerCountJJ 
--JJ 
;JJ 
}KK 
OperationContextLL 
.LL 
CurrentLL 
.LL 
GetCallbackChannelLL .
<LL. /!
IPlayerScoresCallbackLL/ D
>LLD E
(LLE F
)LLF G
.LLG H
PlayerResponseListLLH Z
(LLZ [
ServicePlayerLL[ h
)LLh i
;LLi j
}MM 
}NN 
publicSS 
partialSS 
classSS 
HangmanGameServiceSS (
:SS) *%
IInformationPlayerManagerSS+ D
{TT 
publicYY 
voidYY	 #
SearchInformationPlayerYY %
(YY% &
stringYY& ,
emailYY- 2
)YY2 3
{ZZ 
QueryDB[[ 

consult[[ 
=[[ 
new[[ 
QueryDB[[  
([[  !
)[[! "
;[[" #
Player\\ 	
player\\
 
=\\ 
consult\\ 
.\\ #
SearchInformationPlayer\\ 2
(\\2 3
email\\3 8
)\\8 9
;\\9 :
ServicePlayer]] 
servicePlayer]] 
=]]  
new]]! $
ServicePlayer]]% 2
{^^ 
NickName__ 
=__ 
player__ 
.__ 
nickName__ 
,__ 
ScoreObtained`` 
=`` 
player`` 
.`` 
scoreObtained`` (
}aa 
;aa 
OperationContextbb 
.bb 
Currentbb 
.bb 
GetCallbackChannelbb .
<bb. /&
IInformationPlayerCallbackbb/ I
>bbI J
(bbJ K
)bbK L
.bbL M%
PlayerResponseInformationbbM f
(bbf g
servicePlayerbbg t
)bbt u
;bbu v
}cc 
}dd 
publicii 
partialii 
classii 
HangmanGameServiceii (
:ii) *
IPlayConnectii+ 7
{jj 
privatekk 	

Dictionarykk
 
<kk 
stringkk 
,kk  
IPlayConnectCallbackkk 1
>kk1 2"
playersConnectCallbackkk3 I
=kkJ K
newkkL O

DictionarykkP Z
<kkZ [
stringkk[ a
,kka b 
IPlayConnectCallbackkkc w
>kkw x
(kkx y
)kky z
;kkz {
privatell 	

Dictionaryll
 
<ll 
stringll 
,ll  
IPlayConnectCallbackll 1
>ll1 2"
winnersConnectCallbackll3 I
=llJ K
newllL O

DictionaryllP Z
<llZ [
stringll[ a
,lla b 
IPlayConnectCallbackllc w
>llw x
(llx y
)lly z
;llz {
privatemm 	
Listmm
 
<mm 
ServicePlayermm 
>mm "
playersNickNameConnectmm 4
=mm5 6
newmm7 :
Listmm; ?
<mm? @
ServicePlayermm@ M
>mmM N
(mmN O
)mmO P
;mmP Q
privatenn 	
Listnn
 
<nn 
ServiceWinnernn 
>nn 
playersWinnernn +
=nn, -
newnn. 1
Listnn2 6
<nn6 7
ServiceWinnernn7 D
>nnD E
(nnE F
)nnF G
;nnG H
privateoo 	
booloo
 
isStartGameoo 
=oo 
falseoo "
;oo" #
publicuu 
voiduu	 
PlayerConnectuu 
(uu 
stringuu "
nicknameuu# +
)uu+ ,
{vv 
varww 

connectionww 
=ww 
OperationContextww $
.ww$ %
Currentww% ,
.ww, -
GetCallbackChannelww- ?
<ww? @ 
IPlayConnectCallbackww@ T
>wwT U
(wwU V
)wwV W
;wwW X
ifxx 
(xx "
playersNickNameConnectxx 
.xx 
Countxx #
==xx$ &
Numberxx' -
.xx- .
NumberValuexx. 9
(xx9 :
NumberValuesxx: F
.xxF G
ZEROxxG K
)xxK L
)xxL M
{yy 
ServicePlayerzz 
servicePlayerzz 
=zz  !
newzz" %
ServicePlayerzz& 3
(zz3 4
)zz4 5
;zz5 6
servicePlayer{{ 
.{{ 
NickName{{ 
={{ 
nickname{{ %
;{{% &
this|| 
.|| 	"
playersNickNameConnect||	 
.||  
Add||  #
(||# $
servicePlayer||$ 1
)||1 2
;||2 3"
playersConnectCallback}} 
.}} 
Add}} 
(}} 
nickname}} '
,}}' (
OperationContext}}) 9
.}}9 :
Current}}: A
.}}A B
GetCallbackChannel}}B T
<}}T U 
IPlayConnectCallback}}U i
>}}i j
(}}j k
)}}k l
)}}l m
;}}m n
OperationContext~~ 
.~~ 
Current~~ 
.~~ 
GetCallbackChannel~~ /
<~~/ 0 
IPlayConnectCallback~~0 D
>~~D E
(~~E F
)~~F G
.~~G H
PlayerConnectList~~H Y
(~~Y Z"
playersNickNameConnect~~Z p
)~~p q
;~~q r
} 
else
�� 
{
�� 
bool
��  
isRegisterNickname
��	 
=
�� 
false
�� #
;
��# $
foreach
�� 
(
�� 
var
�� 
players
�� 
in
�� $
playersNickNameConnect
�� 2
)
��2 3
{
�� 
if
�� 
(
�� 	
nickname
��	 
.
�� 
Equals
�� 
(
�� 
players
��  
.
��  !
NickName
��! )
)
��) *
)
��* +
{
��  
isRegisterNickname
�� 
=
�� 
true
�� 
;
��  
break
�� 
;
�� 
}
�� 
}
�� 
if
�� 
(
�� 
!
�� 	 
isRegisterNickname
��	 
)
�� 
{
�� 
ServicePlayer
�� 
servicePlayer
��  
=
��! "
new
��# &
ServicePlayer
��' 4
(
��4 5
)
��5 6
;
��6 7
servicePlayer
�� 
.
�� 
NickName
�� 
=
�� 
nickname
�� &
;
��& '
this
�� 	
.
��	 
$
playersNickNameConnect
��
  
.
��  !
Add
��! $
(
��$ %
servicePlayer
��% 2
)
��2 3
;
��3 4$
playersConnectCallback
�� 
.
�� 
Add
�� 
(
��  
nickname
��  (
,
��( )
OperationContext
��* :
.
��: ;
Current
��; B
.
��B C 
GetCallbackChannel
��C U
<
��U V"
IPlayConnectCallback
��V j
>
��j k
(
��k l
)
��l m
)
��m n
;
��n o
}
�� 
foreach
�� 
(
�� 
KeyValuePair
�� 
<
�� 
string
��  
,
��  !"
IPlayConnectCallback
��" 6
>
��6 7
result
��8 >
in
��? A$
playersConnectCallback
��B X
)
��X Y
{
�� 
if
�� 
(
�� 	
!
��	 


connection
��
 
.
�� 
Equals
�� 
(
�� 
result
�� "
.
��" #
Value
��# (
)
��( )
)
��) *
{
�� 
result
�� 
.
�� 
Value
�� 
.
�� 
PlayerConnectList
�� $
(
��$ %$
playersNickNameConnect
��% ;
)
��; <
;
��< =
}
�� 
}
�� 
OperationContext
�� 
.
�� 
Current
�� 
.
��  
GetCallbackChannel
�� /
<
��/ 0"
IPlayConnectCallback
��0 D
>
��D E
(
��E F
)
��F G
.
��G H
PlayerConnectList
��H Y
(
��Y Z$
playersNickNameConnect
��Z p
)
��p q
;
��q r
}
�� 
}
�� 
public
�� 
void
��	 
PlayerDisconnect
�� 
(
�� 
string
�� %
nickname
��& .
)
��. /
{
�� 
var
�� 

connection
�� 
=
�� 
OperationContext
�� $
.
��$ %
Current
��% ,
.
��, - 
GetCallbackChannel
��- ?
<
��? @"
IPlayConnectCallback
��@ T
>
��T U
(
��U V
)
��V W
;
��W X
for
�� 
(
�� 
int
�� 
index
�� 
=
�� 
$num
�� 
;
�� 
index
�� 
<
�� $
playersNickNameConnect
�� 5
.
��5 6
Count
��6 ;
;
��; <
index
��= B
++
��B D
)
��D E
{
�� 
if
�� 
(
�� 
nickname
�� 
.
�� 
Equals
�� 
(
�� $
playersNickNameConnect
�� .
[
��. /
index
��/ 4
]
��4 5
.
��5 6
NickName
��6 >
)
��> ?
)
��? @
{
�� $
playersNickNameConnect
�� 
.
�� 
RemoveAt
�� $
(
��$ %
index
��% *
)
��* +
;
��+ ,$
playersConnectCallback
�� 
.
�� 
Remove
�� "
(
��" #
nickname
��# +
)
��+ ,
;
��, -
break
�� 

;
��
 
}
�� 
}
�� 
foreach
�� 

(
�� 
KeyValuePair
�� 
<
�� 
string
�� 
,
��  "
IPlayConnectCallback
��! 5
>
��5 6
result
��7 =
in
��> @$
playersConnectCallback
��A W
)
��W X
{
�� 
if
�� 
(
�� 
!
�� 	

connection
��	 
.
�� 
Equals
�� 
(
�� 
result
�� !
.
��! "
Value
��" '
)
��' (
)
��( )
{
�� 
result
�� 
.
�� 
Value
�� 
.
�� 
PlayerConnectList
�� #
(
��# $$
playersNickNameConnect
��$ :
)
��: ;
;
��; <
}
�� 
}
�� 
if
�� 
(
�� $
playersConnectCallback
�� 
.
�� 
Count
�� #
==
��$ &
Number
��' -
.
��- .
NumberValue
��. 9
(
��9 :
NumberValues
��: F
.
��F G
ZERO
��G K
)
��K L
)
��L M
{
�� 
isStartGame
�� 
=
�� 
false
�� 
;
�� 
}
�� 
OperationContext
�� 
.
�� 
Current
�� 
.
��  
GetCallbackChannel
�� .
<
��. /"
IPlayConnectCallback
��/ C
>
��C D
(
��D E
)
��E F
.
��F G
PlayerConnectList
��G X
(
��X Y$
playersNickNameConnect
��Y o
)
��o p
;
��p q
}
�� 
public
�� 
void
��	 
	StartGame
�� 
(
�� 
string
�� 
nickname
�� '
)
��' (
{
�� 
isStartGame
�� 
=
�� 
true
�� 
;
�� 
QueryDB
�� 

consult
�� 
=
�� 
new
�� 
QueryDB
��  
(
��  !
)
��! "
;
��" #
ServiceSentence
�� 
serviceSentence
�� "
=
��# $
new
��% (
ServiceSentence
��) 8
(
��8 9
)
��9 :
;
��: ;
Sentence
�� 
sentence
�� 
=
�� 
consult
�� 
.
�� 
SearchSentence
�� -
(
��- .
)
��. /
;
��/ 0
serviceSentence
�� 
.
�� 

IdSentence
�� 
=
�� 
sentence
��  (
.
��( )

idSentence
��) 3
;
��3 4
serviceSentence
�� 
.
�� 
HintSpanish
�� 
=
��  
sentence
��! )
.
��) *
hintSpanish
��* 5
;
��5 6
serviceSentence
�� 
.
�� 
ScoreSentence
��  
=
��! "
sentence
��# +
.
��+ ,
scoreSentence
��, 9
;
��9 :
serviceSentence
�� 
.
�� !
SentenceWordSpanish
�� &
=
��' (
sentence
��) 1
.
��1 2!
sentenceWordSpanish
��2 E
;
��E F
serviceSentence
�� 
.
�� 
HintEnglish
�� 
=
��  
sentence
��! )
.
��) *
hintEnglish
��* 5
;
��5 6
serviceSentence
�� 
.
�� !
SentenceWordEnglish
�� &
=
��' (
sentence
��) 1
.
��1 2!
sentenceWordEnglish
��2 E
;
��E F
serviceSentence
�� 
.
�� 
Category
�� 
=
�� 
sentence
�� &
.
��& '
category
��' /
;
��/ 0
DateTime
�� 
dateTimeCurrent
�� 
=
�� 
DateTime
�� &
.
��& '
Now
��' *
;
��* +
Match
�� 
match
�� 
=
�� 
new
�� 
Match
�� #
{
�� 

idSentence
�� 
=
�� 
serviceSentence
�� ,
.
��, -

IdSentence
��- 7
,
��7 8
dateHour
�� 
=
�� 
dateTimeCurrent
�� *
}
�� 
;
�� 
match
�� 
.
�� 
idMatch
�� 
=
�� 
consult
�� #
.
��# $
RegisterMatch
��$ 1
(
��1 2
match
��2 7
)
��7 8
;
��8 9
List
�� 
<
�� 
Player
�� 
>
�� 
players
�� 
=
�� 
new
�� 
List
�� "
<
��" #
Player
��# )
>
��) *
(
��* +
)
��+ ,
;
��, -
foreach
�� 

(
�� 
ServicePlayer
�� "
servicePlayerConnect
�� .
in
��/ 1$
playersNickNameConnect
��2 H
)
��H I
{
�� 
Player
�� 

playerConnect
�� 
=
�� 
new
�� 
Player
�� %
(
��% &
)
��& '
;
��' (
playerConnect
�� 
.
�� 
nickName
�� 
=
�� "
servicePlayerConnect
�� 1
.
��1 2
NickName
��2 :
;
��: ;
players
�� 
.
�� 
Add
�� 
(
�� 
playerConnect
�� 
)
�� 
;
�� 
}
�� 
consult
�� 

.
��
 !
RegisterPlayerMatch
�� 
(
�� 
match
�� $
.
��$ %
idMatch
��% ,
,
��, -
players
��. 5
)
��5 6
;
��6 7
foreach
�� 

(
�� 
KeyValuePair
�� 
<
�� 
string
�� 
,
��  "
IPlayConnectCallback
��! 5
>
��5 6
result
��7 =
in
��> @$
playersConnectCallback
��A W
)
��W X
{
�� 
if
�� 
(
�� 
!
�� 	
result
��	 
.
�� 
Key
�� 
.
�� 
Equals
�� 
(
�� 
nickname
�� #
)
��# $
)
��$ %
{
�� 
result
�� 
.
�� 
Value
�� 
.
�� 
SentenceFound
�� 
(
��  
serviceSentence
��  /
)
��/ 0
;
��0 1
}
�� 
}
�� 
OperationContext
�� 
.
�� 
Current
�� 
.
��  
GetCallbackChannel
�� .
<
��. /"
IPlayConnectCallback
��/ C
>
��C D
(
��D E
)
��E F
.
��F G
SentenceFound
��G T
(
��T U
serviceSentence
��U d
)
��d e
;
��e f
}
�� 
public
�� 
void
��	 
VerifyGameStart
�� 
(
�� 
)
�� 
{
�� 
OperationContext
�� 
.
�� 
Current
�� 
.
��  
GetCallbackChannel
�� .
<
��. /"
IPlayConnectCallback
��/ C
>
��C D
(
��D E
)
��E F
.
��F G

IsStarGame
��G Q
(
��Q R
isStartGame
��R ]
)
��] ^
;
��^ _
}
�� 
public
�� 
void
��	 
GameOver
�� 
(
�� 
ServiceWinner
�� $
serviceWinner
��% 2
)
��2 3
{
�� 
playersWinner
�� 
.
�� 
Add
�� 
(
�� 
serviceWinner
�� "
)
��" #
;
��# $$
winnersConnectCallback
�� 
.
�� 
Add
�� 
(
�� 
serviceWinner
�� +
.
��+ ,
NickName
��, 4
,
��4 5
OperationContext
��6 F
.
��F G
Current
��G N
.
��N O 
GetCallbackChannel
��O a
<
��a b"
IPlayConnectCallback
��b v
>
��v w
(
��w x
)
��x y
)
��y z
;
��z {
if
�� 
(
�� 
playersWinner
�� 
.
�� 
Count
�� 
==
�� $
playersNickNameConnect
�� 4
.
��4 5
Count
��5 :
)
��: ;
{
�� 
ServiceWinner
�� !
serviceWinnerPlayer
�� %
=
��& '
SearchWinner
��( 4
(
��4 5
)
��5 6
;
��6 7
foreach
�� 
(
�� 
KeyValuePair
�� 
<
�� 
string
��  
,
��  !"
IPlayConnectCallback
��" 6
>
��6 7
result
��8 >
in
��? A$
winnersConnectCallback
��B X
)
��X Y
{
�� 
result
�� 
.
�� 
Value
�� 
.
�� 
PlayerWinner
�� 
(
�� !
serviceWinnerPlayer
�� 2
)
��2 3
;
��3 4
}
�� 
RestartGame
�� 
(
�� 
)
�� 
;
�� 
}
�� 
else
�� 
{
�� 
OperationContext
�� 
.
�� 
Current
�� 
.
��  
GetCallbackChannel
�� /
<
��/ 0"
IPlayConnectCallback
��0 D
>
��D E
(
��E F
)
��F G
.
��G H

IsStarGame
��H R
(
��R S
isStartGame
��S ^
)
��^ _
;
��_ `
}
�� 
}
�� 
public
�� 
ServiceWinner
��	 
SearchWinner
�� #
(
��# $
)
��$ %
{
�� 
ServiceWinner
�� !
servicePlayerWinner
�� $
=
��% &
playersWinner
��' 4
[
��4 5
Number
��5 ;
.
��; <
NumberValue
��< G
(
��G H
NumberValues
��H T
.
��T U
ZERO
��U Y
)
��Y Z
]
��Z [
;
��[ \
for
�� 
(
�� 
int
�� 
index
�� 
=
�� 
$num
�� 
;
�� 
index
�� 
<
�� 
playersWinner
�� ,
.
��, -
Count
��- 2
;
��2 3
index
��4 9
++
��9 ;
)
��; <
{
�� 
if
�� 
(
�� 
playersWinner
�� 
[
�� 
index
�� 
]
�� 
.
�� 
Points
�� #
>
��$ %!
servicePlayerWinner
��& 9
.
��9 :
Points
��: @
)
��@ A
{
�� !
servicePlayerWinner
�� 
=
�� 
playersWinner
�� (
[
��( )
index
��) .
]
��. /
;
��/ 0
}
�� 
else
�� 
{
�� 
if
�� 
(
�� 	
playersWinner
��	 
[
�� 
index
�� 
]
�� 
.
�� 
Points
�� $
==
��% '!
servicePlayerWinner
��( ;
.
��; <
Points
��< B
)
��B C
{
�� 
if
�� 
(
��	 

playersWinner
��
 
[
�� 
index
�� 
]
�� 
.
�� 
Mistakes
�� '
<
��( )!
servicePlayerWinner
��* =
.
��= >
Mistakes
��> F
)
��F G
{
�� !
servicePlayerWinner
�� 
=
�� 
playersWinner
�� *
[
��* +
index
��+ 0
]
��0 1
;
��1 2
}
�� 
else
�� 

{
�� 
if
�� 	
(
��
 
playersWinner
�� 
[
�� 
index
�� 
]
�� 
.
��  
Mistakes
��  (
==
��) +!
servicePlayerWinner
��, ?
.
��? @
Mistakes
��@ H
&&
��I K
playersWinner
�� 
[
�� 
index
�� 
]
�� 
.
�� 
Time
�� !
<
��" #!
servicePlayerWinner
��$ 7
.
��7 8
Time
��8 <
)
��< =
{
�� !
servicePlayerWinner
�� 
=
�� 
playersWinner
�� +
[
��+ ,
index
��, 1
]
��1 2
;
��2 3
}
�� 
}
�� 
}
�� 
}
�� 
}
�� 
QueryDB
�� 

consult
�� 
=
�� 
new
�� 
QueryDB
��  
(
��  !
)
��! "
;
��" #
consult
�� 

.
��
 

SavePoints
�� 
(
�� !
servicePlayerWinner
�� )
.
��) *
NickName
��* 2
,
��2 3!
servicePlayerWinner
��4 G
.
��G H
Points
��H N
)
��N O
;
��O P
return
�� 	!
servicePlayerWinner
��
 
;
�� 
}
�� 
public
�� 
void
��	 
RestartGame
�� 
(
�� 
)
�� 
{
�� $
playersConnectCallback
�� 
.
�� 
Clear
�� 
(
��  
)
��  !
;
��! "$
playersNickNameConnect
�� 
.
�� 
Clear
�� 
(
��  
)
��  !
;
��! "
playersWinner
�� 
.
�� 
Clear
�� 
(
�� 
)
�� 
;
�� $
winnersConnectCallback
�� 
.
�� 
Clear
�� 
(
��  
)
��  !
;
��! "
}
�� 
}
�� 
public
�� 
partial
�� 
class
��  
HangmanGameService
�� (
:
��) *
IReportManager
��+ 9
{
�� 
public
�� 
void
��	 
ReportPlayer
�� 
(
�� %
ServiceReportMisConduct
�� 2%
serviceReportMisConduct
��3 J
)
��J K
{
�� 
ReportMisConduct
�� 
reportMisConduct
�� $
=
��% &
new
��' *
ReportMisConduct
��+ ;
{
�� 
idReportedPlayer
�� 
=
�� %
serviceReportMisConduct
�� .
.
��. /
IdReportedPlayer
��/ ?
,
��? @
idReportingPlayer
�� 
=
�� %
serviceReportMisConduct
�� /
.
��/ 0
IdReportingPlayer
��0 A
,
��A B

typeReport
�� 
=
�� %
serviceReportMisConduct
�� (
.
��( )

TypeReport
��) 3
,
��3 4
additionalContext
�� 
=
�� %
serviceReportMisConduct
�� /
.
��/ 0
AdditionalContext
��0 A
}
�� 
;
�� 
DateTime
�� 
dateTimeCurrent
�� 
=
�� 
DateTime
�� &
.
��& '
Now
��' *
;
��* +
reportMisConduct
�� 
.
�� 
dateHour
�� 
=
�� 
dateTimeCurrent
�� .
;
��. /
QueryDB
�� 

consult
�� 
=
�� 
new
�� 
QueryDB
��  
(
��  !
)
��! "
;
��" #
bool
�� 
isReport
�� 
=
�� 
consult
�� 
.
�� 
RegisterReport
�� )
(
��) *
reportMisConduct
��* :
)
��: ;
;
��; <
List
�� 
<
�� 
ReportMisConduct
�� 
>
�� 
reports
�� !
=
��" #
consult
��$ +
.
��+ ,
SearchReport
��, 8
(
��8 9
reportMisConduct
��9 I
.
��I J
idReportedPlayer
��J Z
)
��Z [
;
��[ \
if
�� 
(
�� 
reports
�� 
.
�� 
Count
�� 
==
�� 
Number
�� 
.
�� 
NumberValue
�� *
(
��* +
NumberValues
��+ 7
.
��7 8
TEN
��8 ;
)
��; <
)
��< =
{
�� 
consult
�� 
.
�� !
ReportAccountPlayer
�� 
(
��  
reportMisConduct
��  0
.
��0 1
idReportedPlayer
��1 A
)
��A B
;
��B C
}
�� 
OperationContext
�� 
.
�� 
Current
�� 
.
��  
GetCallbackChannel
�� .
<
��. /
IReportCallback
��/ >
>
��> ?
(
��? @
)
��@ A
.
��A B"
ResponseReportPlayer
��B V
(
��V W
isReport
��W _
)
��_ `
;
��` a
}
�� 
public
�� 
void
��	 

ReportList
�� 
(
�� 
string
�� 
nickname
��  (
)
��( )
{
�� 
List
�� 
<
�� %
ServiceReportMisConduct
�� 
>
��  
serviceReportList
��! 2
=
��3 4
new
��5 8
List
��9 =
<
��= >%
ServiceReportMisConduct
��> U
>
��U V
(
��V W
)
��W X
;
��X Y
QueryDB
�� 

consult
�� 
=
�� 
new
�� 
QueryDB
��  
(
��  !
)
��! "
;
��" #
List
�� 
<
�� 
ReportMisConduct
�� 
>
�� 
reportMisConducts
�� +
=
��, -
consult
��. 5
.
��5 6
SearchReport
��6 B
(
��B C
nickname
��C K
)
��K L
;
��L M
foreach
�� 

(
�� 
ReportMisConduct
�� 
report
�� #
in
��$ &
reportMisConducts
��' 8
)
��8 9
{
�� %
ServiceReportMisConduct
�� 
serviceReport
�� )
=
��* +
new
��, /%
ServiceReportMisConduct
��0 G
{
�� 
AdditionalContext
�� 
=
�� 
report
�� 
.
��  
additionalContext
��  1
,
��1 2
DateHour
�� 
=
�� 
report
�� 
.
�� 
dateHour
�� 
,
��  

TypeReport
�� 
=
�� 
report
�� 
.
�� 

typeReport
�� #
}
�� 
;
�� 
serviceReportList
�� 
.
�� 
Add
�� 
(
�� 
serviceReport
�� '
)
��' (
;
��( )
}
�� 
OperationContext
�� 
.
�� 
Current
�� 
.
��  
GetCallbackChannel
�� .
<
��. /
IReportCallback
��/ >
>
��> ?
(
��? @
)
��@ A
.
��A B 
ResponseReportList
��B T
(
��T U
serviceReportList
��U f
)
��f g
;
��g h
}
�� 
}
�� 
public
�� 
partial
�� 
class
��  
HangmanGameService
�� (
:
��) *
IPlayerManager
��+ 9
{
�� 
public
�� 
void
��	 
LogIn
�� 
(
�� 
string
�� 
email
��  
,
��  !
string
��" (
password
��) 1
)
��1 2
{
�� 
QueryDB
�� 

consult
�� 
=
�� 
new
�� 
QueryDB
��  
(
��  !
)
��! "
;
��" #
bool
�� 
log
�� 
=
�� 
consult
�� 
.
�� 
IsLog
�� 
(
�� 
email
�� !
,
��! "
password
��# +
)
��+ ,
;
��, -
OperationContext
�� 
.
�� 
Current
�� 
.
��  
GetCallbackChannel
�� .
<
��. /
IPlayerCallback
��/ >
>
��> ?
(
��? @
)
��@ A
.
��A B#
PlayerResponseBoolean
��B W
(
��W X
log
��X [
)
��[ \
;
��\ ]
}
�� 
public
�� 
void
��	 
SearchEmailPlayer
�� 
(
��  
string
��  &
email
��' ,
)
��, -
{
�� 
QueryDB
�� 

consult
�� 
=
�� 
new
�� 
QueryDB
��  
(
��  !
)
��! "
;
��" #
bool
�� 

emailFound
�� 
=
�� 
consult
�� 
.
�� 
SearchEmailPlayer
�� .
(
��. /
email
��/ 4
)
��4 5
;
��5 6
OperationContext
�� 
.
�� 
Current
�� 
.
��  
GetCallbackChannel
�� .
<
��. /
IPlayerCallback
��/ >
>
��> ?
(
��? @
)
��@ A
.
��A B#
PlayerResponseBoolean
��B W
(
��W X

emailFound
��X b
)
��b c
;
��c d
}
�� 
public
�� 
void
��	 
ChangePassword
�� 
(
�� 
string
�� #
email
��$ )
,
��) *
string
��+ 1
newPassword
��2 =
)
��= >
{
�� 
QueryDB
�� 

consult
�� 
=
�� 
new
�� 
QueryDB
��  
(
��  !
)
��! "
;
��" #
bool
�� 
change
�� 
=
�� 
consult
�� 
.
�� 
ChangePassword
�� '
(
��' (
email
��( -
,
��- .
newPassword
��/ :
)
��: ;
;
��; <
OperationContext
�� 
.
�� 
Current
�� 
.
��  
GetCallbackChannel
�� .
<
��. /
IPlayerCallback
��/ >
>
��> ?
(
��? @
)
��@ A
.
��A B#
PlayerResponseBoolean
��B W
(
��W X
change
��X ^
)
��^ _
;
��_ `
}
�� 
public
�� 
void
��	 
Register
�� 
(
�� 
ServiceAccount
�� %
account
��& -
,
��- .
ServicePlayer
��/ <
servicePlayer
��= J
)
��J K
{
�� 
QueryDB
�� 

consult
�� 
=
�� 
new
�� 
QueryDB
��  
(
��  !
)
��! "
;
��" #
Account
�� 

dataAccount
�� 
=
�� 
new
�� 
Account
�� $
{
�� 
email
�� 	
=
��
 
account
�� 
.
�� 
Email
�� 
,
�� 
passwordAccount
�� 
=
�� 
account
�� 
.
�� 
PasswordAccount
�� -
,
��- .
confirmationCode
�� 
=
�� 
account
�� 
.
�� 
ConfirmationCode
�� /
,
��/ 0
nickName
�� 
=
�� 
servicePlayer
�� 
.
�� 
NickName
�� %
}
�� 
;
�� 
Player
�� 	

dataPlayer
��
 
=
�� 
new
�� 
Player
�� !
{
�� 

namePlayer
�� 
=
�� 
servicePlayer
�� 
.
�� 

NamePlayer
�� )
,
��) *
lastName
�� 
=
�� 
servicePlayer
�� 
.
�� 
LastName
�� %
,
��% &
statusPlayer
�� 
=
�� 
servicePlayer
��  
.
��  !
StatusPlayer
��! -
,
��- .
nickName
�� 
=
�� 
servicePlayer
�� 
.
�� 
NickName
�� %
}
�� 
;
�� 
bool
�� 
register
�� 
=
�� 
consult
�� 
.
�� 
RegisterPlayer
�� )
(
��) *
dataAccount
��* 5
,
��5 6

dataPlayer
��7 A
)
��A B
;
��B C
OperationContext
�� 
.
�� 
Current
�� 
.
��  
GetCallbackChannel
�� .
<
��. /
IPlayerCallback
��/ >
>
��> ?
(
��? @
)
��@ A
.
��A B#
PlayerResponseBoolean
��B W
(
��W X
register
��X `
)
��` a
;
��a b
}
�� 
public
�� 
void
��	 "
SearchNicknamePlayer
�� "
(
��" #
string
��# )
nickname
��* 2
)
��2 3
{
�� 
QueryDB
�� 

consult
�� 
=
�� 
new
�� 
QueryDB
��  
(
��  !
)
��! "
;
��" #
bool
�� 
searchNickName
�� 
=
�� 
consult
��  
.
��  !"
SearchNicknamePlayer
��! 5
(
��5 6
nickname
��6 >
)
��> ?
;
��? @
OperationContext
�� 
.
�� 
Current
�� 
.
��  
GetCallbackChannel
�� .
<
��. /
IPlayerCallback
��/ >
>
��> ?
(
��? @
)
��@ A
.
��A B#
PlayerResponseBoolean
��B W
(
��W X
searchNickName
��X f
)
��f g
;
��g h
}
�� 
public
�� 
void
��	 
	SendEmail
�� 
(
�� 
string
�� 
email
�� $
,
��$ %
int
��& )
code
��* .
)
��. /
{
�� 
String
�� 	
	emailGame
��
 
=
�� 
$str
�� 4
;
��4 5
String
�� 	
owner
��
 
=
�� 
$str
�� #
;
��# $
MailMessage
�� 
correo
�� 
=
�� 
new
�� 
MailMessage
�� '
{
�� 
From
�� 
=
��	 

new
�� 
MailAddress
�� 
(
�� 
	emailGame
�� $
,
��$ %
$str
��& 3
,
��3 4
System
��5 ;
.
��; <
Text
��< @
.
��@ A
Encoding
��A I
.
��I J
UTF8
��J N
)
��N O
}
�� 
;
�� 
correo
�� 	
.
��	 

To
��
 
.
�� 
Add
�� 
(
�� 
email
�� 
)
�� 
;
�� 
correo
�� 	
.
��	 

Subject
��
 
=
�� 
$str
�� 
;
�� 
correo
�� 	
.
��	 

Body
��
 
=
�� 
$str
�� !
+
��" #
code
��$ (
;
��( )
correo
�� 	
.
��	 


IsBodyHtml
��
 
=
�� 
true
�� 
;
�� 
correo
�� 	
.
��	 

Priority
��
 
=
�� 
MailPriority
�� !
.
��! "
Normal
��" (
;
��( )

SmtpClient
�� 
smtp
�� 
=
�� 
new
�� 

SmtpClient
�� #
{
�� #
UseDefaultCredentials
�� 
=
�� 
false
�� !
,
��! "
Host
�� 
=
��	 

$str
�� 
,
�� 
Port
�� 
=
��	 

$num
�� 
,
�� 
Credentials
�� 
=
�� 
new
�� 
NetworkCredential
�� '
(
��' (
	emailGame
��( 1
,
��1 2
owner
��3 8
)
��8 9
}
�� 
;
�� !
ServicePointManager
�� 
.
�� 1
#ServerCertificateValidationCallback
�� :
=
��; <
delegate
�� 
(
�� 
object
�� 
s
�� 
,
�� 
X509Certificate
�� '
certificate
��( 3
,
��3 4
	X509Chain
��5 >
chain
��? D
,
��D E
SslPolicyErrors
��F U
sslPolicyErrors
��V e
)
��e f
{
��g h
return
��i o
true
��p t
;
��t u
}
��v w
;
��w x
smtp
�� 
.
�� 
	EnableSsl
�� 
=
�� 
true
�� 
;
�� 
smtp
�� 
.
�� 
Send
�� 
(
�� 
correo
�� 
)
�� 
;
�� 
}
�� 
public
�� 
void
��	 &
SearchRepeatEmailAccount
�� &
(
��& '
string
��' -
	emailEdit
��. 7
,
��7 8
int
��9 <
	idAccount
��= F
)
��F G
{
�� 
QueryDB
�� 

consult
�� 
=
�� 
new
�� 
QueryDB
��  
(
��  !
)
��! "
;
��" #
bool
�� 
repeatEmail
�� 
=
�� 
consult
�� 
.
�� &
SearchRepeatEmailAccount
�� 6
(
��6 7
	emailEdit
��7 @
,
��@ A
	idAccount
��B K
)
��K L
;
��L M
OperationContext
�� 
.
�� 
Current
�� 
.
��  
GetCallbackChannel
�� .
<
��. /
IPlayerCallback
��/ >
>
��> ?
(
��? @
)
��@ A
.
��A B#
PlayerResponseBoolean
��B W
(
��W X
repeatEmail
��X c
)
��c d
;
��d e
}
�� 
public
�� 
void
��	 (
SearchRepeatNicknamePlayer
�� (
(
��( )
string
��) /
nicknameEdit
��0 <
,
��< =
string
��> D
nicknameCurrent
��E T
)
��T U
{
�� 
QueryDB
�� 

consult
�� 
=
�� 
new
�� 
QueryDB
��  
(
��  !
)
��! "
;
��" #
bool
�� 
repeatNickName
�� 
=
�� 
consult
��  
.
��  !(
SearchRepeatNicknamePlayer
��! ;
(
��; <
nicknameEdit
��< H
,
��H I
nicknameCurrent
��J Y
)
��Y Z
;
��Z [
OperationContext
�� 
.
�� 
Current
�� 
.
��  
GetCallbackChannel
�� .
<
��. /
IPlayerCallback
��/ >
>
��> ?
(
��? @
)
��@ A
.
��A B#
PlayerResponseBoolean
��B W
(
��W X
repeatNickName
��X f
)
��f g
;
��g h
}
�� 
public
�� 
void
��	 
UpdateEmail
�� 
(
�� 
string
��  
email
��! &
,
��& '
int
��( +
	idAccount
��, 5
)
��5 6
{
�� 
QueryDB
�� 

consult
�� 
=
�� 
new
�� 
QueryDB
��  
(
��  !
)
��! "
;
��" #
bool
�� 
updateEmail
�� 
=
�� 
consult
�� 
.
�� 
UpdateEmail
�� )
(
��) *
email
��* /
,
��/ 0
	idAccount
��1 :
)
��: ;
;
��; <
OperationContext
�� 
.
�� 
Current
�� 
.
��  
GetCallbackChannel
�� .
<
��. /
IPlayerCallback
��/ >
>
��> ?
(
��? @
)
��@ A
.
��A B#
PlayerResponseBoolean
��B W
(
��W X
updateEmail
��X c
)
��c d
;
��d e
}
�� 
public
�� 
void
��	 
UpdatePlayer
�� 
(
�� 
string
�� !
nickname
��" *
,
��* +
ServicePlayer
��, 9
servicePlayerEdit
��: K
)
��K L
{
�� 
Player
�� 	

playerEdit
��
 
=
�� 
new
�� 
Player
�� !
{
�� 

namePlayer
�� 
=
�� 
servicePlayerEdit
�� "
.
��" #

NamePlayer
��# -
,
��- .
lastName
�� 
=
�� 
servicePlayerEdit
��  
.
��  !
LastName
��! )
,
��) *
nickName
�� 
=
�� 
servicePlayerEdit
��  
.
��  !
NickName
��! )
}
�� 
;
�� 
QueryDB
�� 

consult
�� 
=
�� 
new
�� 
QueryDB
��  
(
��  !
)
��! "
;
��" #
bool
�� 
updatePlayer
�� 
=
�� 
consult
�� 
.
�� 
UpdatePlayer
�� +
(
��+ ,
nickname
��, 4
,
��4 5

playerEdit
��6 @
)
��@ A
;
��A B
OperationContext
�� 
.
�� 
Current
�� 
.
��  
GetCallbackChannel
�� .
<
��. /
IPlayerCallback
��/ >
>
��> ?
(
��? @
)
��@ A
.
��A B#
PlayerResponseBoolean
��B W
(
��W X
updatePlayer
��X d
)
��d e
;
��e f
}
�� 
public
�� 
void
��	 !
DeleteAccountPlayer
�� !
(
��! "
string
��" (
nickname
��) 1
)
��1 2
{
�� 
QueryDB
�� 

consult
�� 
=
�� 
new
�� 
QueryDB
��  
(
��  !
)
��! "
;
��" #
bool
�� 
isDeletePlayer
�� 
=
�� 
consult
��  
.
��  !!
DeleteAccountPlayer
��! 4
(
��4 5
nickname
��5 =
)
��= >
;
��> ?
OperationContext
�� 
.
�� 
Current
�� 
.
��  
GetCallbackChannel
�� .
<
��. /
IPlayerCallback
��/ >
>
��> ?
(
��? @
)
��@ A
.
��A B#
PlayerResponseBoolean
��B W
(
��W X
isDeletePlayer
��X f
)
��f g
;
��g h
}
�� 
}
�� 
public
�� 
partial
�� 
class
��  
HangmanGameService
�� (
:
��) *
IChatManager
��+ 7
{
�� 
private
�� 	
readonly
��
 

Dictionary
�� 
<
�� 
string
�� $
,
��$ %
IChatCallback
��& 3
>
��3 4
playersCallback
��5 D
=
��E F
new
��G J

Dictionary
��K U
<
��U V
string
��V \
,
��\ ]
IChatCallback
��^ k
>
��k l
(
��l m
)
��m n
;
��n o
private
�� 	
readonly
��
 
List
�� 
<
�� 
ServicePlayer
�� %
>
��% &
playersConnect
��' 5
=
��6 7
new
��8 ;
List
��< @
<
��@ A
ServicePlayer
��A N
>
��N O
(
��O P
)
��P Q
;
��Q R
public
�� 
void
��	 
ClientConnect
�� 
(
�� 
string
�� "
nickname
��# +
)
��+ ,
{
�� 
if
�� 
(
�� 
playersConnect
�� 
.
�� 
Count
�� 
==
�� 
Number
�� %
.
��% &
NumberValue
��& 1
(
��1 2
NumberValues
��2 >
.
��> ?
ZERO
��? C
)
��C D
)
��D E
{
�� 
ServicePlayer
�� 
servicePlayer
�� 
=
��  !
new
��" %
ServicePlayer
��& 3
{
�� 
NickName
�� 
=
�� 
nickname
�� 
}
�� 
;
�� 
this
�� 
.
�� 	
playersConnect
��	 
.
�� 
Add
�� 
(
�� 
servicePlayer
�� )
)
��) *
;
��* +
playersCallback
�� 
.
�� 
Add
�� 
(
�� 
nickname
��  
,
��  !
OperationContext
��" 2
.
��2 3
Current
��3 :
.
��: ; 
GetCallbackChannel
��; M
<
��M N
IChatCallback
��N [
>
��[ \
(
��\ ]
)
��] ^
)
��^ _
;
��_ `
}
�� 
else
�� 
{
�� 
bool
��  
isRegisterNickname
��	 
=
�� 
false
�� #
;
��# $
foreach
�� 
(
�� 
var
�� 
players
�� 
in
�� 
playersConnect
�� *
)
��* +
{
�� 
if
�� 
(
�� 	
nickname
��	 
.
�� 
Equals
�� 
(
�� 
players
��  
.
��  !
NickName
��! )
)
��) *
)
��* +
{
��  
isRegisterNickname
�� 
=
�� 
true
�� 
;
��  
break
�� 
;
�� 
}
�� 
}
�� 
if
�� 
(
�� 
!
�� 	 
isRegisterNickname
��	 
)
�� 
{
�� 
ServicePlayer
�� 
servicePlayer
��  
=
��! "
new
��# &
ServicePlayer
��' 4
{
�� 
NickName
�� 
=
�� 
nickname
�� 
}
�� 
;
�� 
this
�� 	
.
��	 

playersConnect
��
 
.
�� 
Add
�� 
(
�� 
servicePlayer
�� *
)
��* +
;
��+ ,
playersCallback
�� 
.
�� 
Add
�� 
(
�� 
nickname
�� !
,
��! "
OperationContext
��# 3
.
��3 4
Current
��4 ;
.
��; < 
GetCallbackChannel
��< N
<
��N O
IChatCallback
��O \
>
��\ ]
(
��] ^
)
��^ _
)
��_ `
;
��` a
}
�� 
}
�� 
OperationContext
�� 
.
�� 
Current
�� 
.
��  
GetCallbackChannel
�� .
<
��. /
IChatCallback
��/ <
>
��< =
(
��= >
)
��> ?
.
��? @!
ChatResponseBoolean
��@ S
(
��S T
true
��T X
)
��X Y
;
��Y Z
}
�� 
public
�� 
void
��	 
SendNewMessages
�� 
(
�� 
string
�� $

newMessage
��% /
,
��/ 0
string
��1 7
nickname
��8 @
)
��@ A
{
�� 
var
�� 

connection
�� 
=
�� 
OperationContext
�� $
.
��$ %
Current
��% ,
.
��, - 
GetCallbackChannel
��- ?
<
��? @
IChatCallback
��@ M
>
��M N
(
��N O
)
��O P
;
��P Q
foreach
�� 

(
�� 
KeyValuePair
�� 
<
�� 
string
�� 
,
��  
IChatCallback
��! .
>
��. /
result
��0 6
in
��7 9
playersCallback
��: I
)
��I J
{
�� 
if
�� 
(
�� 
!
�� 	

connection
��	 
.
�� 
Equals
�� 
(
�� 
result
�� !
.
��! "
Value
��" '
)
��' (
)
��( )
{
�� 
result
�� 
.
�� 
Value
�� 
.
�� !
PlayerEntryMessages
�� %
(
��% &

newMessage
��& 0
)
��0 1
;
��1 2
}
�� 
}
�� 
OperationContext
�� 
.
�� 
Current
�� 
.
��  
GetCallbackChannel
�� .
<
��. /
IChatCallback
��/ <
>
��< =
(
��= >
)
��> ?
.
��? @!
ChatResponseBoolean
��@ S
(
��S T
true
��T X
)
��X Y
;
��Y Z
}
�� 
public
�� 
void
��	 

RemoveUser
�� 
(
�� 
string
�� 
nickname
��  (
)
��( )
{
�� 
for
�� 
(
�� 
int
�� 
index
�� 
=
�� 
$num
�� 
;
�� 
index
�� 
<
�� 
playersConnect
�� -
.
��- .
Count
��. 3
;
��3 4
index
��5 :
++
��: <
)
��< =
{
�� 
if
�� 
(
�� 
nickname
�� 
.
�� 
Equals
�� 
(
�� 
playersConnect
�� &
[
��& '
index
��' ,
]
��, -
.
��- .
NickName
��. 6
)
��6 7
)
��7 8
{
�� 
playersConnect
�� 
.
�� 
RemoveAt
�� 
(
�� 
index
�� "
)
��" #
;
��# $
playersCallback
�� 
.
�� 
Remove
�� 
(
�� 
nickname
�� $
)
��$ %
;
��% &
break
�� 

;
��
 
}
�� 
}
�� 
OperationContext
�� 
.
�� 
Current
�� 
.
��  
GetCallbackChannel
�� .
<
��. /
IChatCallback
��/ <
>
��< =
(
��= >
)
��> ?
.
��? @!
ChatResponseBoolean
��@ S
(
��S T
true
��T X
)
��X Y
;
��Y Z
}
�� 
}
�� 
}�� �
VC:\Users\Ale_2\source\repos\HangmanGameServices\HangmanGameServices\IAccountManager.cs
	namespace 	
HangmanGameService
 
{ 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /
IAccountCallback/ ?
)? @
)@ A
]A B
	interface 
IAccountManager 
{ 
[ 	
OperationContract	 
] 
void		 
SearchAccount		 
(		 
string		 !
email		" '
)		' (
;		( )
[ 	
OperationContract	 
] 
void 
SearchPlayer 
( 
string  
nickname! )
)) *
;* +
} 
[ 
ServiceContract 
] 
	interface 
IAccountCallback 
{ 
[ 	
OperationContract	 
] 
void "
AccountResponseAccount #
(# $
ServiceAccount$ 2
serviceAccount3 A
)A B
;B C
[ 	
OperationContract	 
] 
void !
AccountResponsePlayer "
(" #
ServicePlayer# 0
servicePlayer1 >
)> ?
;? @
} 
} �
SC:\Users\Ale_2\source\repos\HangmanGameServices\HangmanGameServices\IChatManager.cs
	namespace 	
HangmanGameService
 
{ 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /
IChatCallback/ <
)< =
)= >
]> ?
	interface 
IChatManager 
{ 
[ 	
OperationContract	 
] 
void		 
ClientConnect		 
(		 
string		 !
nickname		" *
)		* +
;		+ ,
[ 	
OperationContract	 
] 
void 
SendNewMessages 
( 
string #

newMessage$ .
,. /
string0 6
nickname7 ?
)? @
;@ A
[ 	
OperationContract	 
] 
void 

RemoveUser 
( 
string 
nickname '
)' (
;( )
} 
[ 
ServiceContract 
] 
	interface 
IChatCallback 
{ 
[ 	
OperationContract	 
] 
void 
ChatResponseBoolean  
(  !
bool! %
responseBoolean& 5
)5 6
;6 7
[ 	
OperationContract	 
] 
void 
PlayerEntryMessages  
(  !
string! '
responseListString( :
): ;
;; <
} 
} �
`C:\Users\Ale_2\source\repos\HangmanGameServices\HangmanGameServices\IInformationPlayerManager.cs
	namespace 	
HangmanGameService
 
{ 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /&
IInformationPlayerCallback/ I
)I J
)J K
]K L
	interface %
IInformationPlayerManager '
{ 
[ 	
OperationContract	 
] 
void		 #
SearchInformationPlayer		 $
(		$ %
string		% +
email		, 1
)		1 2
;		2 3
}

 
[ 
ServiceContract 
] 
	interface &
IInformationPlayerCallback (
{ 
[ 	
OperationContract	 
] 
void %
PlayerResponseInformation &
(& '
ServicePlayer' 4
response5 =
)= >
;> ?
} 
} �
SC:\Users\Ale_2\source\repos\HangmanGameServices\HangmanGameServices\IPlayConnect.cs
	namespace 	
HangmanGameService
 
{ 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. / 
IPlayConnectCallback/ C
)C D
)D E
]E F
	interface 
IPlayConnect 
{ 
[		 	
OperationContract			 
]		 
void

 
PlayerConnect

 
(

 
string

 !
nickname

" *
)

* +
;

+ ,
[ 	
OperationContract	 
] 
void 
PlayerDisconnect 
( 
string $
nickname% -
)- .
;. /
[ 	
OperationContract	 
] 
void 
	StartGame 
( 
string 
nickname &
)& '
;' (
[ 	
OperationContract	 
] 
void 
VerifyGameStart 
( 
) 
; 
[ 	
OperationContract	 
] 
void 
GameOver 
( 
ServiceWinner #
serviceWinner$ 1
)1 2
;2 3
} 
[ 
ServiceContract 
] 
	interface  
IPlayConnectCallback "
{ 
[ 	
OperationContract	 
] 
void 
PlayerConnectList 
( 
List #
<# $
ServicePlayer$ 1
>1 2
servicePlayerList3 D
)D E
;E F
[ 	
OperationContract	 
] 
void   

IsStarGame   
(   
bool   

isStarGame   '
)  ' (
;  ( )
["" 	
OperationContract""	 
]"" 
void## 
SentenceFound## 
(## 
ServiceSentence## *
responseSentence##+ ;
)##; <
;##< =
[%% 	
OperationContract%%	 
]%% 
void&& 
PlayerWinner&& 
(&& 
ServiceWinner&& '
playerWinner&&( 4
)&&4 5
;&&5 6
}'' 
}(( �
UC:\Users\Ale_2\source\repos\HangmanGameServices\HangmanGameServices\IPlayerManager.cs
	namespace 	
HangmanGameService
 
{ 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /
IPlayerCallback/ >
)> ?
)? @
]@ A
	interface 
IPlayerManager 
{ 
[ 	
OperationContract	 
] 
void		 
LogIn		 
(		 
string		 
email		 
,		  
string		! '
password		( 0
)		0 1
;		1 2
[ 	
OperationContract	 
] 
void 
Register 
( 
ServiceAccount $
account% ,
,, -
ServicePlayer. ;
servicePlayer< I
)I J
;J K
[ 	
OperationContract	 
] 
void  
SearchNicknamePlayer !
(! "
string" (
nickname) 1
)1 2
;2 3
[ 	
OperationContract	 
] 
void 
	SendEmail 
( 
string 
email #
,# $
int% (
code) -
)- .
;. /
[ 	
OperationContract	 
] 
void 
ChangePassword 
( 
string "
email# (
,( )
string* 0
newPassword1 <
)< =
;= >
[ 	
OperationContract	 
] 
void 
SearchEmailPlayer 
( 
string %
email& +
)+ ,
;, -
[ 	
OperationContract	 
] 
void $
SearchRepeatEmailAccount %
(% &
string& ,
	emailEdit- 6
,6 7
int8 ;
	idAccount< E
)E F
;F G
[ 	
OperationContract	 
] 
void &
SearchRepeatNicknamePlayer '
(' (
string( .
nicknameEdit/ ;
,; <
string= C
nicknameCurrentD S
)S T
;T U
[   	
OperationContract  	 
]   
void!! 
UpdateEmail!! 
(!! 
string!! 
email!!  %
,!!% &
int!!' *
	idAccount!!+ 4
)!!4 5
;!!5 6
[## 	
OperationContract##	 
]## 
void$$ 
UpdatePlayer$$ 
($$ 
string$$  
nickname$$! )
,$$) *
ServicePlayer$$+ 8
servicePlayerEdit$$9 J
)$$J K
;$$K L
[&& 	
OperationContract&&	 
]&& 
void'' 
DeleteAccountPlayer''  
(''  !
string''! '
nickname''( 0
)''0 1
;''1 2
}(( 
[** 
ServiceContract** 
]** 
	interface++ 
IPlayerCallback++ 
{,, 
[-- 	
OperationContract--	 
]-- 
void.. !
PlayerResponseBoolean.. "
(.." #
bool..# '
response..( 0
)..0 1
;..1 2
}// 
}00 �
[C:\Users\Ale_2\source\repos\HangmanGameServices\HangmanGameServices\IPlayerScoresManager.cs
	namespace 	
HangmanGameService
 
{ 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /!
IPlayerScoresCallback/ D
)D E
)E F
]F G
	interface  
IPlayerScoresManager "
{ 
[		 	
OperationContract			 
]		 
void

 "
SearchBestScoresPlayer

 #
(

# $
)

$ %
;

% &
} 
[ 
ServiceContract 
] 
	interface !
IPlayerScoresCallback #
{ 
[ 	
OperationContract	 
] 
void 
PlayerResponseList 
(  
List  $
<$ %
ServicePlayer% 2
>2 3
responseList4 @
)@ A
;A B
} 
} �
UC:\Users\Ale_2\source\repos\HangmanGameServices\HangmanGameServices\IReportManager.cs
	namespace 	
HangmanGameService
 
{ 
[ 
ServiceContract 
( 
CallbackContract %
=& '
typeof( .
(. /
IReportCallback/ >
)> ?
)? @
]@ A
	interface 
IReportManager 
{ 
[		 	
OperationContract			 
]		 
void

 
ReportPlayer

 
(

 #
ServiceReportMisConduct

 1#
serviceReportMisConduct

2 I
)

I J
;

J K
[ 	
OperationContract	 
] 
void 

ReportList 
( 
string 
nickname '
)' (
;( )
} 
[ 
ServiceContract 
] 
	interface 
IReportCallback 
{ 
[ 	
OperationContract	 
] 
void  
ResponseReportPlayer !
(! "
bool" &
isReport' /
)/ 0
;0 1
[ 	
OperationContract	 
] 
void 
ResponseReportList 
(  
List  $
<$ %#
ServiceReportMisConduct% <
>< =
reportMisConducts> O
)O P
;P Q
} 
} �	
MC:\Users\Ale_2\source\repos\HangmanGameServices\HangmanGameServices\Number.cs
	namespace 	
HangmanGameService
 
{ 
public 

enum 
NumberValues 
{ 
ZERO		 
=		 
$num		 
,		 
ONE 
= 
$num 
, 
TWO 
= 
$num 
, 
THREE 
= 
$num 
, 
FOUR 
= 
$num 
, 
FIVE 
= 
$num 
, 
TEN 
= 
$num 
} 
public 

static 
class 
Number 
{ 
public!! 
static!! 
int!! 
NumberValue!! %
(!!% &
NumberValues!!& 2
numberValues!!3 ?
)!!? @
{"" 	
int## 
number## 
=## 
(## 
int## 
)## 
numberValues## *
;##* +
return$$ 
number$$ 
;$$ 
}%% 	
}&& 
}'' �

UC:\Users\Ale_2\source\repos\HangmanGameServices\HangmanGameServices\ServiceAccount.cs
	namespace 	
HangmanGameService
 
{ 
[ 
DataContract 
] 
public		 

class		 
ServiceAccount		 
{

 
[ 	

DataMember	 
] 
public 
string 
PasswordAccount %
{& '
get( +
;+ ,
set- 0
;0 1
}2 3
[ 	

DataMember	 
] 
public 
string 
Email 
{ 
get !
;! "
set# &
;& '
}( )
[ 	

DataMember	 
] 
public 
int 
ConfirmationCode #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 	

DataMember	 
] 
public 
int 
	IdAccount 
{ 
get "
;" #
set$ '
;' (
}) *
[!! 	

DataMember!!	 
]!! 
public"" 
string"" 
NickName"" 
{""  
get""! $
;""$ %
set""& )
;"") *
}""+ ,
}## 
}$$ �
TC:\Users\Ale_2\source\repos\HangmanGameServices\HangmanGameServices\ServicePlayer.cs
	namespace 	
HangmanGameService
 
{ 
[		 
DataContract		 
]		 
public

 

class

 
ServicePlayer

 
{ 
[ 	

DataMember	 
] 
public 
string 
NickName 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	

DataMember	 
] 
public 
string 

NamePlayer  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	

DataMember	 
] 
public 
string 
LastName 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	

DataMember	 
] 
public 
Nullable 
< 
int 
> 
ScoreObtained *
{+ ,
get- 0
;0 1
set2 5
;5 6
}7 8
["" 	

DataMember""	 
]"" 
public## 
string## 
StatusPlayer## "
{### $
get##% (
;##( )
set##* -
;##- .
}##/ 0
['' 	

DataMember''	 
]'' 
public(( 
int(( 
Position(( 
{(( 
get(( !
;((! "
set((# &
;((& '
}((( )
})) 
}** �
^C:\Users\Ale_2\source\repos\HangmanGameServices\HangmanGameServices\ServiceReportMisConduct.cs
	namespace 	
HangmanGameService
 
{ 
[ 
DataContract 
] 
public		 

class		 #
ServiceReportMisConduct		 (
{

 
[ 	

DataMember	 
] 
public 
string 

TypeReport  
{! "
get# &
;& '
set( +
;+ ,
}- .
[ 	

DataMember	 
] 
public 
System 
. 
DateTime 
DateHour '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
[ 	

DataMember	 
] 
public 
string 
AdditionalContext '
{( )
get* -
;- .
set/ 2
;2 3
}4 5
[ 	

DataMember	 
] 
public 
string 
IdReportedPlayer &
{' (
get) ,
;, -
set. 1
;1 2
}3 4
[!! 	

DataMember!!	 
]!! 
public"" 
string"" 
IdReportingPlayer"" '
{""( )
get""* -
;""- .
set""/ 2
;""2 3
}""4 5
}## 
}$$ �
VC:\Users\Ale_2\source\repos\HangmanGameServices\HangmanGameServices\ServiceSentence.cs
	namespace 	
HangmanGameService
 
{ 
[ 
DataContract 
] 
public		 
class		 
ServiceSentence		 
{

 
[ 

DataMember 
] 
public 
int	 

IdSentence 
{ 
get 
; 
set "
;" #
}$ %
[ 

DataMember 
] 
public 
int	 
ScoreSentence 
{ 
get  
;  !
set" %
;% &
}' (
[ 

DataMember 
] 
public 
string	 
SentenceWordSpanish #
{$ %
get& )
;) *
set+ .
;. /
}0 1
[ 

DataMember 
] 
public 
string	 
HintSpanish 
{ 
get !
;! "
set# &
;& '
}( )
[!! 

DataMember!! 
]!! 
public"" 
string""	 
SentenceWordEnglish"" #
{""$ %
get""& )
;"") *
set""+ .
;"". /
}""0 1
[&& 

DataMember&& 
]&& 
public'' 
string''	 
HintEnglish'' 
{'' 
get'' !
;''! "
set''# &
;''& '
}''( )
[++ 

DataMember++ 
]++ 
public,, 
string,,	 
Category,, 
{,, 
get,, 
;,, 
set,,  #
;,,# $
},,% &
}-- 
}.. �
NC:\Users\Ale_2\source\repos\HangmanGameServices\HangmanGameServices\Program.cs
	namespace 	
HangmanGameService
 
{ 
static 

class 
Program 
{ 
static 
void 
Main 
( 
) 
{		 	
using

 
(

 
ServiceHost

 
host

 #
=

$ %
new

& )
ServiceHost

* 5
(

5 6
typeof

6 <
(

< =
HangmanGameService

= O
)

O P
)

P Q
)

Q R
{ 
host 
. 
Open 
( 
) 
; 
Console 
. 
	WriteLine !
(! "
$str" 5
)5 6
;6 7
Console 
. 
ReadLine  
(  !
)! "
;" #
} 
} 	
} 
} �
^C:\Users\Ale_2\source\repos\HangmanGameServices\HangmanGameServices\Properties\AssemblyInfo.cs
[ 
assembly 	
:	 

AssemblyTitle 
( 
$str .
). /
]/ 0
[ 
assembly 	
:	 

AssemblyDescription 
( 
$str !
)! "
]" #
[		 
assembly		 	
:			 
!
AssemblyConfiguration		  
(		  !
$str		! #
)		# $
]		$ %
[

 
assembly

 	
:

	 

AssemblyCompany

 
(

 
$str

 
)

 
]

 
[ 
assembly 	
:	 

AssemblyProduct 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyCopyright 
( 
$str 0
)0 1
]1 2
[ 
assembly 	
:	 

AssemblyTrademark 
( 
$str 
)  
]  !
[ 
assembly 	
:	 

AssemblyCulture 
( 
$str 
) 
] 
[ 
assembly 	
:	 


ComVisible 
( 
false 
) 
] 
[ 
assembly 	
:	 

Guid 
( 
$str 6
)6 7
]7 8
["" 
assembly"" 	
:""	 

AssemblyVersion"" 
("" 
$str"" $
)""$ %
]""% &
[## 
assembly## 	
:##	 

AssemblyFileVersion## 
(## 
$str## (
)##( )
]##) *�
TC:\Users\Ale_2\source\repos\HangmanGameServices\HangmanGameServices\ServiceWinner.cs
	namespace 	
HangmanGameService
 
{ 
public 

class 
ServiceWinner 
{		 
[ 	

DataMember	 
] 
public 
string 
NickName 
{  
get! $
;$ %
set& )
;) *
}+ ,
[ 	

DataMember	 
] 
public 
int 
Time 
{ 
get 
; 
set "
;" #
}$ %
[ 	

DataMember	 
] 
public 
int 
Points 
{ 
get 
;  
set! $
;$ %
}& '
[ 	

DataMember	 
] 
public 
int 
Mistakes 
{ 
get !
;! "
set# &
;& '
}( )
} 
} 