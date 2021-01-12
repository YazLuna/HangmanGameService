Íµ
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
Position	IIx Ä
=
IIÅ Ç
playerCount
IIÉ é
}
IIè ê
)
IIê ë
;
IIë í
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
ÄÄ 
{
ÅÅ 
bool
ÇÇ  
isRegisterNickname
ÇÇ	 
=
ÇÇ 
false
ÇÇ #
;
ÇÇ# $
foreach
ÉÉ 
(
ÉÉ 
var
ÉÉ 
players
ÉÉ 
in
ÉÉ $
playersNickNameConnect
ÉÉ 2
)
ÉÉ2 3
{
ÑÑ 
if
ÖÖ 
(
ÖÖ 	
nickname
ÖÖ	 
.
ÖÖ 
Equals
ÖÖ 
(
ÖÖ 
players
ÖÖ  
.
ÖÖ  !
NickName
ÖÖ! )
)
ÖÖ) *
)
ÖÖ* +
{
ÜÜ  
isRegisterNickname
áá 
=
áá 
true
áá 
;
áá  
break
àà 
;
àà 
}
ââ 
}
ää 
if
ãã 
(
ãã 
!
ãã 	 
isRegisterNickname
ãã	 
)
ãã 
{
åå 
ServicePlayer
çç 
servicePlayer
çç  
=
çç! "
new
çç# &
ServicePlayer
çç' 4
(
çç4 5
)
çç5 6
;
çç6 7
servicePlayer
éé 
.
éé 
NickName
éé 
=
éé 
nickname
éé &
;
éé& '
this
èè 	
.
èè	 
$
playersNickNameConnect
èè
  
.
èè  !
Add
èè! $
(
èè$ %
servicePlayer
èè% 2
)
èè2 3
;
èè3 4$
playersConnectCallback
êê 
.
êê 
Add
êê 
(
êê  
nickname
êê  (
,
êê( )
OperationContext
êê* :
.
êê: ;
Current
êê; B
.
êêB C 
GetCallbackChannel
êêC U
<
êêU V"
IPlayConnectCallback
êêV j
>
êêj k
(
êêk l
)
êêl m
)
êêm n
;
êên o
}
ëë 
foreach
ìì 
(
ìì 
KeyValuePair
ìì 
<
ìì 
string
ìì  
,
ìì  !"
IPlayConnectCallback
ìì" 6
>
ìì6 7
result
ìì8 >
in
ìì? A$
playersConnectCallback
ììB X
)
ììX Y
{
îî 
if
ïï 
(
ïï 	
!
ïï	 


connection
ïï
 
.
ïï 
Equals
ïï 
(
ïï 
result
ïï "
.
ïï" #
Value
ïï# (
)
ïï( )
)
ïï) *
{
ññ 
result
óó 
.
óó 
Value
óó 
.
óó 
PlayerConnectList
óó $
(
óó$ %$
playersNickNameConnect
óó% ;
)
óó; <
;
óó< =
}
òò 
}
ôô 
OperationContext
öö 
.
öö 
Current
öö 
.
öö  
GetCallbackChannel
öö /
<
öö/ 0"
IPlayConnectCallback
öö0 D
>
ööD E
(
ööE F
)
ööF G
.
ööG H
PlayerConnectList
ööH Y
(
ööY Z$
playersNickNameConnect
ööZ p
)
ööp q
;
ööq r
}
õõ 
}
úú 
public
¢¢ 
void
¢¢	 
PlayerDisconnect
¢¢ 
(
¢¢ 
string
¢¢ %
nickname
¢¢& .
)
¢¢. /
{
££ 
var
§§ 

connection
§§ 
=
§§ 
OperationContext
§§ $
.
§§$ %
Current
§§% ,
.
§§, - 
GetCallbackChannel
§§- ?
<
§§? @"
IPlayConnectCallback
§§@ T
>
§§T U
(
§§U V
)
§§V W
;
§§W X
for
•• 
(
•• 
int
•• 
index
•• 
=
•• 
$num
•• 
;
•• 
index
•• 
<
•• $
playersNickNameConnect
•• 5
.
••5 6
Count
••6 ;
;
••; <
index
••= B
++
••B D
)
••D E
{
¶¶ 
if
ßß 
(
ßß 
nickname
ßß 
.
ßß 
Equals
ßß 
(
ßß $
playersNickNameConnect
ßß .
[
ßß. /
index
ßß/ 4
]
ßß4 5
.
ßß5 6
NickName
ßß6 >
)
ßß> ?
)
ßß? @
{
®® $
playersNickNameConnect
©© 
.
©© 
RemoveAt
©© $
(
©©$ %
index
©©% *
)
©©* +
;
©©+ ,$
playersConnectCallback
™™ 
.
™™ 
Remove
™™ "
(
™™" #
nickname
™™# +
)
™™+ ,
;
™™, -
break
´´ 

;
´´
 
}
¨¨ 
}
≠≠ 
foreach
ÆÆ 

(
ÆÆ 
KeyValuePair
ÆÆ 
<
ÆÆ 
string
ÆÆ 
,
ÆÆ  "
IPlayConnectCallback
ÆÆ! 5
>
ÆÆ5 6
result
ÆÆ7 =
in
ÆÆ> @$
playersConnectCallback
ÆÆA W
)
ÆÆW X
{
ØØ 
if
∞∞ 
(
∞∞ 
!
∞∞ 	

connection
∞∞	 
.
∞∞ 
Equals
∞∞ 
(
∞∞ 
result
∞∞ !
.
∞∞! "
Value
∞∞" '
)
∞∞' (
)
∞∞( )
{
±± 
result
≤≤ 
.
≤≤ 
Value
≤≤ 
.
≤≤ 
PlayerConnectList
≤≤ #
(
≤≤# $$
playersNickNameConnect
≤≤$ :
)
≤≤: ;
;
≤≤; <
}
≥≥ 
}
¥¥ 
if
µµ 
(
µµ $
playersConnectCallback
µµ 
.
µµ 
Count
µµ #
==
µµ$ &
Number
µµ' -
.
µµ- .
NumberValue
µµ. 9
(
µµ9 :
NumberValues
µµ: F
.
µµF G
ZERO
µµG K
)
µµK L
)
µµL M
{
∂∂ 
isStartGame
∑∑ 
=
∑∑ 
false
∑∑ 
;
∑∑ 
}
∏∏ 
OperationContext
ππ 
.
ππ 
Current
ππ 
.
ππ  
GetCallbackChannel
ππ .
<
ππ. /"
IPlayConnectCallback
ππ/ C
>
ππC D
(
ππD E
)
ππE F
.
ππF G
PlayerConnectList
ππG X
(
ππX Y$
playersNickNameConnect
ππY o
)
ππo p
;
ππp q
}
∫∫ 
public
¿¿ 
void
¿¿	 
	StartGame
¿¿ 
(
¿¿ 
string
¿¿ 
nickname
¿¿ '
)
¿¿' (
{
¡¡ 
isStartGame
¬¬ 
=
¬¬ 
true
¬¬ 
;
¬¬ 
QueryDB
√√ 

consult
√√ 
=
√√ 
new
√√ 
QueryDB
√√  
(
√√  !
)
√√! "
;
√√" #
ServiceSentence
ƒƒ 
serviceSentence
ƒƒ "
=
ƒƒ# $
new
ƒƒ% (
ServiceSentence
ƒƒ) 8
(
ƒƒ8 9
)
ƒƒ9 :
;
ƒƒ: ;
Sentence
≈≈ 
sentence
≈≈ 
=
≈≈ 
consult
≈≈ 
.
≈≈ 
SearchSentence
≈≈ -
(
≈≈- .
)
≈≈. /
;
≈≈/ 0
serviceSentence
∆∆ 
.
∆∆ 

IdSentence
∆∆ 
=
∆∆ 
sentence
∆∆  (
.
∆∆( )

idSentence
∆∆) 3
;
∆∆3 4
serviceSentence
«« 
.
«« 
HintSpanish
«« 
=
««  
sentence
««! )
.
««) *
hintSpanish
««* 5
;
««5 6
serviceSentence
»» 
.
»» 
ScoreSentence
»»  
=
»»! "
sentence
»»# +
.
»»+ ,
scoreSentence
»», 9
;
»»9 :
serviceSentence
…… 
.
…… !
SentenceWordSpanish
…… &
=
……' (
sentence
……) 1
.
……1 2!
sentenceWordSpanish
……2 E
;
……E F
serviceSentence
   
.
   
HintEnglish
   
=
    
sentence
  ! )
.
  ) *
hintEnglish
  * 5
;
  5 6
serviceSentence
ÀÀ 
.
ÀÀ !
SentenceWordEnglish
ÀÀ &
=
ÀÀ' (
sentence
ÀÀ) 1
.
ÀÀ1 2!
sentenceWordEnglish
ÀÀ2 E
;
ÀÀE F
serviceSentence
ÃÃ 
.
ÃÃ 
Category
ÃÃ 
=
ÃÃ 
sentence
ÃÃ &
.
ÃÃ& '
category
ÃÃ' /
;
ÃÃ/ 0
DateTime
ÕÕ 
dateTimeCurrent
ÕÕ 
=
ÕÕ 
DateTime
ÕÕ &
.
ÕÕ& '
Now
ÕÕ' *
;
ÕÕ* +
Match
ŒŒ 
match
ŒŒ 
=
ŒŒ 
new
ŒŒ 
Match
ŒŒ #
{
œœ 

idSentence
–– 
=
–– 
serviceSentence
–– ,
.
––, -

IdSentence
––- 7
,
––7 8
dateHour
—— 
=
—— 
dateTimeCurrent
—— *
}
““ 
;
““ 
match
”” 
.
”” 
idMatch
”” 
=
”” 
consult
”” #
.
””# $
RegisterMatch
””$ 1
(
””1 2
match
””2 7
)
””7 8
;
””8 9
List
‘‘ 
<
‘‘ 
Player
‘‘ 
>
‘‘ 
players
‘‘ 
=
‘‘ 
new
‘‘ 
List
‘‘ "
<
‘‘" #
Player
‘‘# )
>
‘‘) *
(
‘‘* +
)
‘‘+ ,
;
‘‘, -
foreach
’’ 

(
’’ 
ServicePlayer
’’ "
servicePlayerConnect
’’ .
in
’’/ 1$
playersNickNameConnect
’’2 H
)
’’H I
{
÷÷ 
Player
◊◊ 

playerConnect
◊◊ 
=
◊◊ 
new
◊◊ 
Player
◊◊ %
(
◊◊% &
)
◊◊& '
;
◊◊' (
playerConnect
ÿÿ 
.
ÿÿ 
nickName
ÿÿ 
=
ÿÿ "
servicePlayerConnect
ÿÿ 1
.
ÿÿ1 2
NickName
ÿÿ2 :
;
ÿÿ: ;
players
ŸŸ 
.
ŸŸ 
Add
ŸŸ 
(
ŸŸ 
playerConnect
ŸŸ 
)
ŸŸ 
;
ŸŸ 
}
⁄⁄ 
consult
€€ 

.
€€
 !
RegisterPlayerMatch
€€ 
(
€€ 
match
€€ $
.
€€$ %
idMatch
€€% ,
,
€€, -
players
€€. 5
)
€€5 6
;
€€6 7
foreach
‹‹ 

(
‹‹ 
KeyValuePair
‹‹ 
<
‹‹ 
string
‹‹ 
,
‹‹  "
IPlayConnectCallback
‹‹! 5
>
‹‹5 6
result
‹‹7 =
in
‹‹> @$
playersConnectCallback
‹‹A W
)
‹‹W X
{
›› 
if
ﬁﬁ 
(
ﬁﬁ 
!
ﬁﬁ 	
result
ﬁﬁ	 
.
ﬁﬁ 
Key
ﬁﬁ 
.
ﬁﬁ 
Equals
ﬁﬁ 
(
ﬁﬁ 
nickname
ﬁﬁ #
)
ﬁﬁ# $
)
ﬁﬁ$ %
{
ﬂﬂ 
result
‡‡ 
.
‡‡ 
Value
‡‡ 
.
‡‡ 
SentenceFound
‡‡ 
(
‡‡  
serviceSentence
‡‡  /
)
‡‡/ 0
;
‡‡0 1
}
·· 
}
‚‚ 
OperationContext
„„ 
.
„„ 
Current
„„ 
.
„„  
GetCallbackChannel
„„ .
<
„„. /"
IPlayConnectCallback
„„/ C
>
„„C D
(
„„D E
)
„„E F
.
„„F G
SentenceFound
„„G T
(
„„T U
serviceSentence
„„U d
)
„„d e
;
„„e f
}
‰‰ 
public
ÈÈ 
void
ÈÈ	 
VerifyGameStart
ÈÈ 
(
ÈÈ 
)
ÈÈ 
{
ÍÍ 
OperationContext
ÎÎ 
.
ÎÎ 
Current
ÎÎ 
.
ÎÎ  
GetCallbackChannel
ÎÎ .
<
ÎÎ. /"
IPlayConnectCallback
ÎÎ/ C
>
ÎÎC D
(
ÎÎD E
)
ÎÎE F
.
ÎÎF G

IsStarGame
ÎÎG Q
(
ÎÎQ R
isStartGame
ÎÎR ]
)
ÎÎ] ^
;
ÎÎ^ _
}
ÏÏ 
public
ÚÚ 
void
ÚÚ	 
GameOver
ÚÚ 
(
ÚÚ 
ServiceWinner
ÚÚ $
serviceWinner
ÚÚ% 2
)
ÚÚ2 3
{
ÛÛ 
playersWinner
ÙÙ 
.
ÙÙ 
Add
ÙÙ 
(
ÙÙ 
serviceWinner
ÙÙ "
)
ÙÙ" #
;
ÙÙ# $$
winnersConnectCallback
ıı 
.
ıı 
Add
ıı 
(
ıı 
serviceWinner
ıı +
.
ıı+ ,
NickName
ıı, 4
,
ıı4 5
OperationContext
ıı6 F
.
ııF G
Current
ııG N
.
ııN O 
GetCallbackChannel
ııO a
<
ııa b"
IPlayConnectCallback
ııb v
>
ııv w
(
ııw x
)
ııx y
)
ııy z
;
ıız {
if
ˆˆ 
(
ˆˆ 
playersWinner
ˆˆ 
.
ˆˆ 
Count
ˆˆ 
==
ˆˆ $
playersNickNameConnect
ˆˆ 4
.
ˆˆ4 5
Count
ˆˆ5 :
)
ˆˆ: ;
{
˜˜ 
ServiceWinner
¯¯ !
serviceWinnerPlayer
¯¯ %
=
¯¯& '
SearchWinner
¯¯( 4
(
¯¯4 5
)
¯¯5 6
;
¯¯6 7
foreach
˘˘ 
(
˘˘ 
KeyValuePair
˘˘ 
<
˘˘ 
string
˘˘  
,
˘˘  !"
IPlayConnectCallback
˘˘" 6
>
˘˘6 7
result
˘˘8 >
in
˘˘? A$
winnersConnectCallback
˘˘B X
)
˘˘X Y
{
˙˙ 
result
˚˚ 
.
˚˚ 
Value
˚˚ 
.
˚˚ 
PlayerWinner
˚˚ 
(
˚˚ !
serviceWinnerPlayer
˚˚ 2
)
˚˚2 3
;
˚˚3 4
}
¸¸ 
RestartGame
˝˝ 
(
˝˝ 
)
˝˝ 
;
˝˝ 
}
˛˛ 
else
ˇˇ 
{
ÄÄ 
OperationContext
ÅÅ 
.
ÅÅ 
Current
ÅÅ 
.
ÅÅ  
GetCallbackChannel
ÅÅ /
<
ÅÅ/ 0"
IPlayConnectCallback
ÅÅ0 D
>
ÅÅD E
(
ÅÅE F
)
ÅÅF G
.
ÅÅG H

IsStarGame
ÅÅH R
(
ÅÅR S
isStartGame
ÅÅS ^
)
ÅÅ^ _
;
ÅÅ_ `
}
ÇÇ 
}
ÉÉ 
public
àà 
ServiceWinner
àà	 
SearchWinner
àà #
(
àà# $
)
àà$ %
{
ââ 
ServiceWinner
ää !
servicePlayerWinner
ää $
=
ää% &
playersWinner
ää' 4
[
ää4 5
Number
ää5 ;
.
ää; <
NumberValue
ää< G
(
ääG H
NumberValues
ääH T
.
ääT U
ZERO
ääU Y
)
ääY Z
]
ääZ [
;
ää[ \
for
ãã 
(
ãã 
int
ãã 
index
ãã 
=
ãã 
$num
ãã 
;
ãã 
index
ãã 
<
ãã 
playersWinner
ãã ,
.
ãã, -
Count
ãã- 2
;
ãã2 3
index
ãã4 9
++
ãã9 ;
)
ãã; <
{
åå 
if
çç 
(
çç 
playersWinner
çç 
[
çç 
index
çç 
]
çç 
.
çç 
Points
çç #
>
çç$ %!
servicePlayerWinner
çç& 9
.
çç9 :
Points
çç: @
)
çç@ A
{
éé !
servicePlayerWinner
èè 
=
èè 
playersWinner
èè (
[
èè( )
index
èè) .
]
èè. /
;
èè/ 0
}
êê 
else
ëë 
{
íí 
if
ìì 
(
ìì 	
playersWinner
ìì	 
[
ìì 
index
ìì 
]
ìì 
.
ìì 
Points
ìì $
==
ìì% '!
servicePlayerWinner
ìì( ;
.
ìì; <
Points
ìì< B
)
ììB C
{
îî 
if
ïï 
(
ïï	 

playersWinner
ïï
 
[
ïï 
index
ïï 
]
ïï 
.
ïï 
Mistakes
ïï '
<
ïï( )!
servicePlayerWinner
ïï* =
.
ïï= >
Mistakes
ïï> F
)
ïïF G
{
ññ !
servicePlayerWinner
óó 
=
óó 
playersWinner
óó *
[
óó* +
index
óó+ 0
]
óó0 1
;
óó1 2
}
òò 
else
ôô 

{
öö 
if
õõ 	
(
õõ
 
playersWinner
õõ 
[
õõ 
index
õõ 
]
õõ 
.
õõ  
Mistakes
õõ  (
==
õõ) +!
servicePlayerWinner
õõ, ?
.
õõ? @
Mistakes
õõ@ H
&&
õõI K
playersWinner
úú 
[
úú 
index
úú 
]
úú 
.
úú 
Time
úú !
<
úú" #!
servicePlayerWinner
úú$ 7
.
úú7 8
Time
úú8 <
)
úú< =
{
ùù !
servicePlayerWinner
ûû 
=
ûû 
playersWinner
ûû +
[
ûû+ ,
index
ûû, 1
]
ûû1 2
;
ûû2 3
}
üü 
}
†† 
}
°° 
}
¢¢ 
}
££ 
QueryDB
§§ 

consult
§§ 
=
§§ 
new
§§ 
QueryDB
§§  
(
§§  !
)
§§! "
;
§§" #
consult
•• 

.
••
 

SavePoints
•• 
(
•• !
servicePlayerWinner
•• )
.
••) *
NickName
••* 2
,
••2 3!
servicePlayerWinner
••4 G
.
••G H
Points
••H N
)
••N O
;
••O P
return
¶¶ 	!
servicePlayerWinner
¶¶
 
;
¶¶ 
}
ßß 
public
¨¨ 
void
¨¨	 
RestartGame
¨¨ 
(
¨¨ 
)
¨¨ 
{
≠≠ $
playersConnectCallback
ÆÆ 
.
ÆÆ 
Clear
ÆÆ 
(
ÆÆ  
)
ÆÆ  !
;
ÆÆ! "$
playersNickNameConnect
ØØ 
.
ØØ 
Clear
ØØ 
(
ØØ  
)
ØØ  !
;
ØØ! "
playersWinner
∞∞ 
.
∞∞ 
Clear
∞∞ 
(
∞∞ 
)
∞∞ 
;
∞∞ $
winnersConnectCallback
±± 
.
±± 
Clear
±± 
(
±±  
)
±±  !
;
±±! "
}
≤≤ 
}
≥≥ 
public
∏∏ 
partial
∏∏ 
class
∏∏  
HangmanGameService
∏∏ (
:
∏∏) *
IReportManager
∏∏+ 9
{
ππ 
public
ææ 
void
ææ	 
ReportPlayer
ææ 
(
ææ %
ServiceReportMisConduct
ææ 2%
serviceReportMisConduct
ææ3 J
)
ææJ K
{
øø 
ReportMisConduct
¿¿ 
reportMisConduct
¿¿ $
=
¿¿% &
new
¿¿' *
ReportMisConduct
¿¿+ ;
{
¡¡ 
idReportedPlayer
¬¬ 
=
¬¬ %
serviceReportMisConduct
¬¬ .
.
¬¬. /
IdReportedPlayer
¬¬/ ?
,
¬¬? @
idReportingPlayer
√√ 
=
√√ %
serviceReportMisConduct
√√ /
.
√√/ 0
IdReportingPlayer
√√0 A
,
√√A B

typeReport
ƒƒ 
=
ƒƒ %
serviceReportMisConduct
ƒƒ (
.
ƒƒ( )

TypeReport
ƒƒ) 3
,
ƒƒ3 4
additionalContext
≈≈ 
=
≈≈ %
serviceReportMisConduct
≈≈ /
.
≈≈/ 0
AdditionalContext
≈≈0 A
}
∆∆ 
;
∆∆ 
DateTime
«« 
dateTimeCurrent
«« 
=
«« 
DateTime
«« &
.
««& '
Now
««' *
;
««* +
reportMisConduct
»» 
.
»» 
dateHour
»» 
=
»» 
dateTimeCurrent
»» .
;
»». /
QueryDB
…… 

consult
…… 
=
…… 
new
…… 
QueryDB
……  
(
……  !
)
……! "
;
……" #
bool
   
isReport
   
=
   
consult
   
.
   
RegisterReport
   )
(
  ) *
reportMisConduct
  * :
)
  : ;
;
  ; <
List
ÀÀ 
<
ÀÀ 
ReportMisConduct
ÀÀ 
>
ÀÀ 
reports
ÀÀ !
=
ÀÀ" #
consult
ÀÀ$ +
.
ÀÀ+ ,
SearchReport
ÀÀ, 8
(
ÀÀ8 9
reportMisConduct
ÀÀ9 I
.
ÀÀI J
idReportedPlayer
ÀÀJ Z
)
ÀÀZ [
;
ÀÀ[ \
if
ÃÃ 
(
ÃÃ 
reports
ÃÃ 
.
ÃÃ 
Count
ÃÃ 
==
ÃÃ 
Number
ÃÃ 
.
ÃÃ 
NumberValue
ÃÃ *
(
ÃÃ* +
NumberValues
ÃÃ+ 7
.
ÃÃ7 8
TEN
ÃÃ8 ;
)
ÃÃ; <
)
ÃÃ< =
{
ÕÕ 
consult
ŒŒ 
.
ŒŒ !
ReportAccountPlayer
ŒŒ 
(
ŒŒ  
reportMisConduct
ŒŒ  0
.
ŒŒ0 1
idReportedPlayer
ŒŒ1 A
)
ŒŒA B
;
ŒŒB C
}
œœ 
OperationContext
–– 
.
–– 
Current
–– 
.
––  
GetCallbackChannel
–– .
<
––. /
IReportCallback
––/ >
>
––> ?
(
––? @
)
––@ A
.
––A B"
ResponseReportPlayer
––B V
(
––V W
isReport
––W _
)
––_ `
;
––` a
}
—— 
public
◊◊ 
void
◊◊	 

ReportList
◊◊ 
(
◊◊ 
string
◊◊ 
nickname
◊◊  (
)
◊◊( )
{
ÿÿ 
List
ŸŸ 
<
ŸŸ %
ServiceReportMisConduct
ŸŸ 
>
ŸŸ  
serviceReportList
ŸŸ! 2
=
ŸŸ3 4
new
ŸŸ5 8
List
ŸŸ9 =
<
ŸŸ= >%
ServiceReportMisConduct
ŸŸ> U
>
ŸŸU V
(
ŸŸV W
)
ŸŸW X
;
ŸŸX Y
QueryDB
⁄⁄ 

consult
⁄⁄ 
=
⁄⁄ 
new
⁄⁄ 
QueryDB
⁄⁄  
(
⁄⁄  !
)
⁄⁄! "
;
⁄⁄" #
List
€€ 
<
€€ 
ReportMisConduct
€€ 
>
€€ 
reportMisConducts
€€ +
=
€€, -
consult
€€. 5
.
€€5 6
SearchReport
€€6 B
(
€€B C
nickname
€€C K
)
€€K L
;
€€L M
foreach
‹‹ 

(
‹‹ 
ReportMisConduct
‹‹ 
report
‹‹ #
in
‹‹$ &
reportMisConducts
‹‹' 8
)
‹‹8 9
{
›› %
ServiceReportMisConduct
ﬁﬁ 
serviceReport
ﬁﬁ )
=
ﬁﬁ* +
new
ﬁﬁ, /%
ServiceReportMisConduct
ﬁﬁ0 G
{
ﬂﬂ 
AdditionalContext
‡‡ 
=
‡‡ 
report
‡‡ 
.
‡‡  
additionalContext
‡‡  1
,
‡‡1 2
DateHour
·· 
=
·· 
report
·· 
.
·· 
dateHour
·· 
,
··  

TypeReport
‚‚ 
=
‚‚ 
report
‚‚ 
.
‚‚ 

typeReport
‚‚ #
}
„„ 
;
„„ 
serviceReportList
‰‰ 
.
‰‰ 
Add
‰‰ 
(
‰‰ 
serviceReport
‰‰ '
)
‰‰' (
;
‰‰( )
}
ÂÂ 
OperationContext
ÊÊ 
.
ÊÊ 
Current
ÊÊ 
.
ÊÊ  
GetCallbackChannel
ÊÊ .
<
ÊÊ. /
IReportCallback
ÊÊ/ >
>
ÊÊ> ?
(
ÊÊ? @
)
ÊÊ@ A
.
ÊÊA B 
ResponseReportList
ÊÊB T
(
ÊÊT U
serviceReportList
ÊÊU f
)
ÊÊf g
;
ÊÊg h
}
ÁÁ 
}
ËË 
public
ÌÌ 
partial
ÌÌ 
class
ÌÌ  
HangmanGameService
ÌÌ (
:
ÌÌ) *
IPlayerManager
ÌÌ+ 9
{
ÓÓ 
public
ÙÙ 
void
ÙÙ	 
LogIn
ÙÙ 
(
ÙÙ 
string
ÙÙ 
email
ÙÙ  
,
ÙÙ  !
string
ÙÙ" (
password
ÙÙ) 1
)
ÙÙ1 2
{
ıı 
QueryDB
ˆˆ 

consult
ˆˆ 
=
ˆˆ 
new
ˆˆ 
QueryDB
ˆˆ  
(
ˆˆ  !
)
ˆˆ! "
;
ˆˆ" #
bool
˜˜ 
log
˜˜ 
=
˜˜ 
consult
˜˜ 
.
˜˜ 
IsLog
˜˜ 
(
˜˜ 
email
˜˜ !
,
˜˜! "
password
˜˜# +
)
˜˜+ ,
;
˜˜, -
OperationContext
¯¯ 
.
¯¯ 
Current
¯¯ 
.
¯¯  
GetCallbackChannel
¯¯ .
<
¯¯. /
IPlayerCallback
¯¯/ >
>
¯¯> ?
(
¯¯? @
)
¯¯@ A
.
¯¯A B#
PlayerResponseBoolean
¯¯B W
(
¯¯W X
log
¯¯X [
)
¯¯[ \
;
¯¯\ ]
}
˘˘ 
public
ˇˇ 
void
ˇˇ	 
SearchEmailPlayer
ˇˇ 
(
ˇˇ  
string
ˇˇ  &
email
ˇˇ' ,
)
ˇˇ, -
{
ÄÄ 
QueryDB
ÅÅ 

consult
ÅÅ 
=
ÅÅ 
new
ÅÅ 
QueryDB
ÅÅ  
(
ÅÅ  !
)
ÅÅ! "
;
ÅÅ" #
bool
ÇÇ 

emailFound
ÇÇ 
=
ÇÇ 
consult
ÇÇ 
.
ÇÇ 
SearchEmailPlayer
ÇÇ .
(
ÇÇ. /
email
ÇÇ/ 4
)
ÇÇ4 5
;
ÇÇ5 6
OperationContext
ÉÉ 
.
ÉÉ 
Current
ÉÉ 
.
ÉÉ  
GetCallbackChannel
ÉÉ .
<
ÉÉ. /
IPlayerCallback
ÉÉ/ >
>
ÉÉ> ?
(
ÉÉ? @
)
ÉÉ@ A
.
ÉÉA B#
PlayerResponseBoolean
ÉÉB W
(
ÉÉW X

emailFound
ÉÉX b
)
ÉÉb c
;
ÉÉc d
}
ÑÑ 
public
ãã 
void
ãã	 
ChangePassword
ãã 
(
ãã 
string
ãã #
email
ãã$ )
,
ãã) *
string
ãã+ 1
newPassword
ãã2 =
)
ãã= >
{
åå 
QueryDB
çç 

consult
çç 
=
çç 
new
çç 
QueryDB
çç  
(
çç  !
)
çç! "
;
çç" #
bool
éé 
change
éé 
=
éé 
consult
éé 
.
éé 
ChangePassword
éé '
(
éé' (
email
éé( -
,
éé- .
newPassword
éé/ :
)
éé: ;
;
éé; <
OperationContext
èè 
.
èè 
Current
èè 
.
èè  
GetCallbackChannel
èè .
<
èè. /
IPlayerCallback
èè/ >
>
èè> ?
(
èè? @
)
èè@ A
.
èèA B#
PlayerResponseBoolean
èèB W
(
èèW X
change
èèX ^
)
èè^ _
;
èè_ `
}
êê 
public
óó 
void
óó	 
Register
óó 
(
óó 
ServiceAccount
óó %
account
óó& -
,
óó- .
ServicePlayer
óó/ <
servicePlayer
óó= J
)
óóJ K
{
òò 
QueryDB
ôô 

consult
ôô 
=
ôô 
new
ôô 
QueryDB
ôô  
(
ôô  !
)
ôô! "
;
ôô" #
Account
öö 

dataAccount
öö 
=
öö 
new
öö 
Account
öö $
{
õõ 
email
úú 	
=
úú
 
account
úú 
.
úú 
Email
úú 
,
úú 
passwordAccount
ùù 
=
ùù 
account
ùù 
.
ùù 
PasswordAccount
ùù -
,
ùù- .
confirmationCode
ûû 
=
ûû 
account
ûû 
.
ûû 
ConfirmationCode
ûû /
,
ûû/ 0
nickName
üü 
=
üü 
servicePlayer
üü 
.
üü 
NickName
üü %
}
†† 
;
†† 
Player
¢¢ 	

dataPlayer
¢¢
 
=
¢¢ 
new
¢¢ 
Player
¢¢ !
{
££ 

namePlayer
§§ 
=
§§ 
servicePlayer
§§ 
.
§§ 

NamePlayer
§§ )
,
§§) *
lastName
•• 
=
•• 
servicePlayer
•• 
.
•• 
LastName
•• %
,
••% &
statusPlayer
¶¶ 
=
¶¶ 
servicePlayer
¶¶  
.
¶¶  !
StatusPlayer
¶¶! -
,
¶¶- .
nickName
ßß 
=
ßß 
servicePlayer
ßß 
.
ßß 
NickName
ßß %
}
®® 
;
®® 
bool
™™ 
register
™™ 
=
™™ 
consult
™™ 
.
™™ 
RegisterPlayer
™™ )
(
™™) *
dataAccount
™™* 5
,
™™5 6

dataPlayer
™™7 A
)
™™A B
;
™™B C
OperationContext
´´ 
.
´´ 
Current
´´ 
.
´´  
GetCallbackChannel
´´ .
<
´´. /
IPlayerCallback
´´/ >
>
´´> ?
(
´´? @
)
´´@ A
.
´´A B#
PlayerResponseBoolean
´´B W
(
´´W X
register
´´X `
)
´´` a
;
´´a b
}
¨¨ 
public
≤≤ 
void
≤≤	 "
SearchNicknamePlayer
≤≤ "
(
≤≤" #
string
≤≤# )
nickname
≤≤* 2
)
≤≤2 3
{
≥≥ 
QueryDB
¥¥ 

consult
¥¥ 
=
¥¥ 
new
¥¥ 
QueryDB
¥¥  
(
¥¥  !
)
¥¥! "
;
¥¥" #
bool
µµ 
searchNickName
µµ 
=
µµ 
consult
µµ  
.
µµ  !"
SearchNicknamePlayer
µµ! 5
(
µµ5 6
nickname
µµ6 >
)
µµ> ?
;
µµ? @
OperationContext
∂∂ 
.
∂∂ 
Current
∂∂ 
.
∂∂  
GetCallbackChannel
∂∂ .
<
∂∂. /
IPlayerCallback
∂∂/ >
>
∂∂> ?
(
∂∂? @
)
∂∂@ A
.
∂∂A B#
PlayerResponseBoolean
∂∂B W
(
∂∂W X
searchNickName
∂∂X f
)
∂∂f g
;
∂∂g h
}
∑∑ 
public
ææ 
void
ææ	 
	SendEmail
ææ 
(
ææ 
string
ææ 
email
ææ $
,
ææ$ %
int
ææ& )
code
ææ* .
)
ææ. /
{
øø 
String
¿¿ 	
	emailGame
¿¿
 
=
¿¿ 
$str
¿¿ 4
;
¿¿4 5
String
¡¡ 	
owner
¡¡
 
=
¡¡ 
$str
¡¡ #
;
¡¡# $
MailMessage
¬¬ 
correo
¬¬ 
=
¬¬ 
new
¬¬ 
MailMessage
¬¬ '
{
√√ 
From
ƒƒ 
=
ƒƒ	 

new
ƒƒ 
MailAddress
ƒƒ 
(
ƒƒ 
	emailGame
ƒƒ $
,
ƒƒ$ %
$str
ƒƒ& 3
,
ƒƒ3 4
System
ƒƒ5 ;
.
ƒƒ; <
Text
ƒƒ< @
.
ƒƒ@ A
Encoding
ƒƒA I
.
ƒƒI J
UTF8
ƒƒJ N
)
ƒƒN O
}
≈≈ 
;
≈≈ 
correo
∆∆ 	
.
∆∆	 

To
∆∆
 
.
∆∆ 
Add
∆∆ 
(
∆∆ 
email
∆∆ 
)
∆∆ 
;
∆∆ 
correo
«« 	
.
««	 

Subject
««
 
=
«« 
$str
«« 
;
«« 
correo
»» 	
.
»»	 

Body
»»
 
=
»» 
$str
»» !
+
»»" #
code
»»$ (
;
»»( )
correo
…… 	
.
……	 


IsBodyHtml
……
 
=
…… 
true
…… 
;
…… 
correo
   	
.
  	 

Priority
  
 
=
   
MailPriority
   !
.
  ! "
Normal
  " (
;
  ( )

SmtpClient
ÀÀ 
smtp
ÀÀ 
=
ÀÀ 
new
ÀÀ 

SmtpClient
ÀÀ #
{
ÃÃ #
UseDefaultCredentials
ÕÕ 
=
ÕÕ 
false
ÕÕ !
,
ÕÕ! "
Host
ŒŒ 
=
ŒŒ	 

$str
ŒŒ 
,
ŒŒ 
Port
œœ 
=
œœ	 

$num
œœ 
,
œœ 
Credentials
–– 
=
–– 
new
–– 
NetworkCredential
–– '
(
––' (
	emailGame
––( 1
,
––1 2
owner
––3 8
)
––8 9
}
—— 
;
—— !
ServicePointManager
““ 
.
““ 1
#ServerCertificateValidationCallback
““ :
=
““; <
delegate
”” 
(
”” 
object
”” 
s
”” 
,
”” 
X509Certificate
”” '
certificate
””( 3
,
””3 4
	X509Chain
””5 >
chain
””? D
,
””D E
SslPolicyErrors
””F U
sslPolicyErrors
””V e
)
””e f
{
””g h
return
””i o
true
””p t
;
””t u
}
””v w
;
””w x
smtp
‘‘ 
.
‘‘ 
	EnableSsl
‘‘ 
=
‘‘ 
true
‘‘ 
;
‘‘ 
smtp
’’ 
.
’’ 
Send
’’ 
(
’’ 
correo
’’ 
)
’’ 
;
’’ 
}
÷÷ 
public
›› 
void
››	 &
SearchRepeatEmailAccount
›› &
(
››& '
string
››' -
	emailEdit
››. 7
,
››7 8
int
››9 <
	idAccount
››= F
)
››F G
{
ﬁﬁ 
QueryDB
ﬂﬂ 

consult
ﬂﬂ 
=
ﬂﬂ 
new
ﬂﬂ 
QueryDB
ﬂﬂ  
(
ﬂﬂ  !
)
ﬂﬂ! "
;
ﬂﬂ" #
bool
‡‡ 
repeatEmail
‡‡ 
=
‡‡ 
consult
‡‡ 
.
‡‡ &
SearchRepeatEmailAccount
‡‡ 6
(
‡‡6 7
	emailEdit
‡‡7 @
,
‡‡@ A
	idAccount
‡‡B K
)
‡‡K L
;
‡‡L M
OperationContext
·· 
.
·· 
Current
·· 
.
··  
GetCallbackChannel
·· .
<
··. /
IPlayerCallback
··/ >
>
··> ?
(
··? @
)
··@ A
.
··A B#
PlayerResponseBoolean
··B W
(
··W X
repeatEmail
··X c
)
··c d
;
··d e
}
‚‚ 
public
ÈÈ 
void
ÈÈ	 (
SearchRepeatNicknamePlayer
ÈÈ (
(
ÈÈ( )
string
ÈÈ) /
nicknameEdit
ÈÈ0 <
,
ÈÈ< =
string
ÈÈ> D
nicknameCurrent
ÈÈE T
)
ÈÈT U
{
ÍÍ 
QueryDB
ÎÎ 

consult
ÎÎ 
=
ÎÎ 
new
ÎÎ 
QueryDB
ÎÎ  
(
ÎÎ  !
)
ÎÎ! "
;
ÎÎ" #
bool
ÏÏ 
repeatNickName
ÏÏ 
=
ÏÏ 
consult
ÏÏ  
.
ÏÏ  !(
SearchRepeatNicknamePlayer
ÏÏ! ;
(
ÏÏ; <
nicknameEdit
ÏÏ< H
,
ÏÏH I
nicknameCurrent
ÏÏJ Y
)
ÏÏY Z
;
ÏÏZ [
OperationContext
ÌÌ 
.
ÌÌ 
Current
ÌÌ 
.
ÌÌ  
GetCallbackChannel
ÌÌ .
<
ÌÌ. /
IPlayerCallback
ÌÌ/ >
>
ÌÌ> ?
(
ÌÌ? @
)
ÌÌ@ A
.
ÌÌA B#
PlayerResponseBoolean
ÌÌB W
(
ÌÌW X
repeatNickName
ÌÌX f
)
ÌÌf g
;
ÌÌg h
}
ÓÓ 
public
ıı 
void
ıı	 
UpdateEmail
ıı 
(
ıı 
string
ıı  
email
ıı! &
,
ıı& '
int
ıı( +
	idAccount
ıı, 5
)
ıı5 6
{
ˆˆ 
QueryDB
˜˜ 

consult
˜˜ 
=
˜˜ 
new
˜˜ 
QueryDB
˜˜  
(
˜˜  !
)
˜˜! "
;
˜˜" #
bool
¯¯ 
updateEmail
¯¯ 
=
¯¯ 
consult
¯¯ 
.
¯¯ 
UpdateEmail
¯¯ )
(
¯¯) *
email
¯¯* /
,
¯¯/ 0
	idAccount
¯¯1 :
)
¯¯: ;
;
¯¯; <
OperationContext
˘˘ 
.
˘˘ 
Current
˘˘ 
.
˘˘  
GetCallbackChannel
˘˘ .
<
˘˘. /
IPlayerCallback
˘˘/ >
>
˘˘> ?
(
˘˘? @
)
˘˘@ A
.
˘˘A B#
PlayerResponseBoolean
˘˘B W
(
˘˘W X
updateEmail
˘˘X c
)
˘˘c d
;
˘˘d e
}
˙˙ 
public
ÅÅ 
void
ÅÅ	 
UpdatePlayer
ÅÅ 
(
ÅÅ 
string
ÅÅ !
nickname
ÅÅ" *
,
ÅÅ* +
ServicePlayer
ÅÅ, 9
servicePlayerEdit
ÅÅ: K
)
ÅÅK L
{
ÇÇ 
Player
ÉÉ 	

playerEdit
ÉÉ
 
=
ÉÉ 
new
ÉÉ 
Player
ÉÉ !
{
ÑÑ 

namePlayer
ÖÖ 
=
ÖÖ 
servicePlayerEdit
ÖÖ "
.
ÖÖ" #

NamePlayer
ÖÖ# -
,
ÖÖ- .
lastName
ÜÜ 
=
ÜÜ 
servicePlayerEdit
ÜÜ  
.
ÜÜ  !
LastName
ÜÜ! )
,
ÜÜ) *
nickName
áá 
=
áá 
servicePlayerEdit
áá  
.
áá  !
NickName
áá! )
}
àà 
;
àà 
QueryDB
ââ 

consult
ââ 
=
ââ 
new
ââ 
QueryDB
ââ  
(
ââ  !
)
ââ! "
;
ââ" #
bool
ää 
updatePlayer
ää 
=
ää 
consult
ää 
.
ää 
UpdatePlayer
ää +
(
ää+ ,
nickname
ää, 4
,
ää4 5

playerEdit
ää6 @
)
ää@ A
;
ääA B
OperationContext
ãã 
.
ãã 
Current
ãã 
.
ãã  
GetCallbackChannel
ãã .
<
ãã. /
IPlayerCallback
ãã/ >
>
ãã> ?
(
ãã? @
)
ãã@ A
.
ããA B#
PlayerResponseBoolean
ããB W
(
ããW X
updatePlayer
ããX d
)
ããd e
;
ããe f
}
åå 
public
íí 
void
íí	 !
DeleteAccountPlayer
íí !
(
íí! "
string
íí" (
nickname
íí) 1
)
íí1 2
{
ìì 
QueryDB
îî 

consult
îî 
=
îî 
new
îî 
QueryDB
îî  
(
îî  !
)
îî! "
;
îî" #
bool
ïï 
isDeletePlayer
ïï 
=
ïï 
consult
ïï  
.
ïï  !!
DeleteAccountPlayer
ïï! 4
(
ïï4 5
nickname
ïï5 =
)
ïï= >
;
ïï> ?
OperationContext
ññ 
.
ññ 
Current
ññ 
.
ññ  
GetCallbackChannel
ññ .
<
ññ. /
IPlayerCallback
ññ/ >
>
ññ> ?
(
ññ? @
)
ññ@ A
.
ññA B#
PlayerResponseBoolean
ññB W
(
ññW X
isDeletePlayer
ññX f
)
ññf g
;
ññg h
}
óó 
}
òò 
public
ùù 
partial
ùù 
class
ùù  
HangmanGameService
ùù (
:
ùù) *
IChatManager
ùù+ 7
{
ûû 
private
üü 	
readonly
üü
 

Dictionary
üü 
<
üü 
string
üü $
,
üü$ %
IChatCallback
üü& 3
>
üü3 4
playersCallback
üü5 D
=
üüE F
new
üüG J

Dictionary
üüK U
<
üüU V
string
üüV \
,
üü\ ]
IChatCallback
üü^ k
>
üük l
(
üül m
)
üüm n
;
üün o
private
†† 	
readonly
††
 
List
†† 
<
†† 
ServicePlayer
†† %
>
††% &
playersConnect
††' 5
=
††6 7
new
††8 ;
List
††< @
<
††@ A
ServicePlayer
††A N
>
††N O
(
††O P
)
††P Q
;
††Q R
public
¶¶ 
void
¶¶	 
ClientConnect
¶¶ 
(
¶¶ 
string
¶¶ "
nickname
¶¶# +
)
¶¶+ ,
{
ßß 
if
®® 
(
®® 
playersConnect
®® 
.
®® 
Count
®® 
==
®® 
Number
®® %
.
®®% &
NumberValue
®®& 1
(
®®1 2
NumberValues
®®2 >
.
®®> ?
ZERO
®®? C
)
®®C D
)
®®D E
{
©© 
ServicePlayer
™™ 
servicePlayer
™™ 
=
™™  !
new
™™" %
ServicePlayer
™™& 3
{
´´ 
NickName
¨¨ 
=
¨¨ 
nickname
¨¨ 
}
≠≠ 
;
≠≠ 
this
ÆÆ 
.
ÆÆ 	
playersConnect
ÆÆ	 
.
ÆÆ 
Add
ÆÆ 
(
ÆÆ 
servicePlayer
ÆÆ )
)
ÆÆ) *
;
ÆÆ* +
playersCallback
ØØ 
.
ØØ 
Add
ØØ 
(
ØØ 
nickname
ØØ  
,
ØØ  !
OperationContext
ØØ" 2
.
ØØ2 3
Current
ØØ3 :
.
ØØ: ; 
GetCallbackChannel
ØØ; M
<
ØØM N
IChatCallback
ØØN [
>
ØØ[ \
(
ØØ\ ]
)
ØØ] ^
)
ØØ^ _
;
ØØ_ `
}
∞∞ 
else
±± 
{
≤≤ 
bool
≥≥  
isRegisterNickname
≥≥	 
=
≥≥ 
false
≥≥ #
;
≥≥# $
foreach
¥¥ 
(
¥¥ 
var
¥¥ 
players
¥¥ 
in
¥¥ 
playersConnect
¥¥ *
)
¥¥* +
{
µµ 
if
∂∂ 
(
∂∂ 	
nickname
∂∂	 
.
∂∂ 
Equals
∂∂ 
(
∂∂ 
players
∂∂  
.
∂∂  !
NickName
∂∂! )
)
∂∂) *
)
∂∂* +
{
∑∑  
isRegisterNickname
∏∏ 
=
∏∏ 
true
∏∏ 
;
∏∏  
break
ππ 
;
ππ 
}
∫∫ 
}
ªª 
if
ºº 
(
ºº 
!
ºº 	 
isRegisterNickname
ºº	 
)
ºº 
{
ΩΩ 
ServicePlayer
ææ 
servicePlayer
ææ  
=
ææ! "
new
ææ# &
ServicePlayer
ææ' 4
{
øø 
NickName
¿¿ 
=
¿¿ 
nickname
¿¿ 
}
¡¡ 
;
¡¡ 
this
¬¬ 	
.
¬¬	 

playersConnect
¬¬
 
.
¬¬ 
Add
¬¬ 
(
¬¬ 
servicePlayer
¬¬ *
)
¬¬* +
;
¬¬+ ,
playersCallback
√√ 
.
√√ 
Add
√√ 
(
√√ 
nickname
√√ !
,
√√! "
OperationContext
√√# 3
.
√√3 4
Current
√√4 ;
.
√√; < 
GetCallbackChannel
√√< N
<
√√N O
IChatCallback
√√O \
>
√√\ ]
(
√√] ^
)
√√^ _
)
√√_ `
;
√√` a
}
ƒƒ 
}
≈≈ 
OperationContext
«« 
.
«« 
Current
«« 
.
««  
GetCallbackChannel
«« .
<
««. /
IChatCallback
««/ <
>
««< =
(
««= >
)
««> ?
.
««? @!
ChatResponseBoolean
««@ S
(
««S T
true
««T X
)
««X Y
;
««Y Z
}
»» 
public
œœ 
void
œœ	 
SendNewMessages
œœ 
(
œœ 
string
œœ $

newMessage
œœ% /
,
œœ/ 0
string
œœ1 7
nickname
œœ8 @
)
œœ@ A
{
–– 
var
—— 

connection
—— 
=
—— 
OperationContext
—— $
.
——$ %
Current
——% ,
.
——, - 
GetCallbackChannel
——- ?
<
——? @
IChatCallback
——@ M
>
——M N
(
——N O
)
——O P
;
——P Q
foreach
““ 

(
““ 
KeyValuePair
““ 
<
““ 
string
““ 
,
““  
IChatCallback
““! .
>
““. /
result
““0 6
in
““7 9
playersCallback
““: I
)
““I J
{
”” 
if
‘‘ 
(
‘‘ 
!
‘‘ 	

connection
‘‘	 
.
‘‘ 
Equals
‘‘ 
(
‘‘ 
result
‘‘ !
.
‘‘! "
Value
‘‘" '
)
‘‘' (
)
‘‘( )
{
’’ 
result
÷÷ 
.
÷÷ 
Value
÷÷ 
.
÷÷ !
PlayerEntryMessages
÷÷ %
(
÷÷% &

newMessage
÷÷& 0
)
÷÷0 1
;
÷÷1 2
}
◊◊ 
}
ÿÿ 
OperationContext
ŸŸ 
.
ŸŸ 
Current
ŸŸ 
.
ŸŸ  
GetCallbackChannel
ŸŸ .
<
ŸŸ. /
IChatCallback
ŸŸ/ <
>
ŸŸ< =
(
ŸŸ= >
)
ŸŸ> ?
.
ŸŸ? @!
ChatResponseBoolean
ŸŸ@ S
(
ŸŸS T
true
ŸŸT X
)
ŸŸX Y
;
ŸŸY Z
}
⁄⁄ 
public
‡‡ 
void
‡‡	 

RemoveUser
‡‡ 
(
‡‡ 
string
‡‡ 
nickname
‡‡  (
)
‡‡( )
{
·· 
for
‚‚ 
(
‚‚ 
int
‚‚ 
index
‚‚ 
=
‚‚ 
$num
‚‚ 
;
‚‚ 
index
‚‚ 
<
‚‚ 
playersConnect
‚‚ -
.
‚‚- .
Count
‚‚. 3
;
‚‚3 4
index
‚‚5 :
++
‚‚: <
)
‚‚< =
{
„„ 
if
‰‰ 
(
‰‰ 
nickname
‰‰ 
.
‰‰ 
Equals
‰‰ 
(
‰‰ 
playersConnect
‰‰ &
[
‰‰& '
index
‰‰' ,
]
‰‰, -
.
‰‰- .
NickName
‰‰. 6
)
‰‰6 7
)
‰‰7 8
{
ÂÂ 
playersConnect
ÊÊ 
.
ÊÊ 
RemoveAt
ÊÊ 
(
ÊÊ 
index
ÊÊ "
)
ÊÊ" #
;
ÊÊ# $
playersCallback
ÁÁ 
.
ÁÁ 
Remove
ÁÁ 
(
ÁÁ 
nickname
ÁÁ $
)
ÁÁ$ %
;
ÁÁ% &
break
ËË 

;
ËË
 
}
ÈÈ 
}
ÍÍ 
OperationContext
ÎÎ 
.
ÎÎ 
Current
ÎÎ 
.
ÎÎ  
GetCallbackChannel
ÎÎ .
<
ÎÎ. /
IChatCallback
ÎÎ/ <
>
ÎÎ< =
(
ÎÎ= >
)
ÎÎ> ?
.
ÎÎ? @!
ChatResponseBoolean
ÎÎ@ S
(
ÎÎS T
true
ÎÎT X
)
ÎÎX Y
;
ÎÎY Z
}
ÏÏ 
}
ÌÌ 
}ÔÔ à
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
} Î
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
} °
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
} ‚
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
}(( ·
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
}00 í
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
} Õ
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
} ´	
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
}'' ‡

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
}$$ ‚
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
}** ¨
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
}$$ ú
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
}.. —
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
} â
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
]##) *æ
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