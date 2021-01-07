using System.Collections.Generic;
using System.ServiceModel;

namespace HangmanGameService
{
    [ServiceContract(CallbackContract = typeof(IPlayConnectCallback))]
    interface IPlayConnect
    {
        [OperationContract]
        void PlayerConnect(string nickname);

        [OperationContract]
        void PlayerDisconnect(string nickname);

        [OperationContract]
        void StartGame(string nickname);

        [OperationContract]
        void VerifyGameStart();

        [OperationContract]
        void GameOver(ServiceWinner serviceWinner);

        [OperationContract]
        void GetNewMessage(string nickname);

        [OperationContract]
        void SendNewMessage(string newMessage, string nickname);
    }

    [ServiceContract]
    interface IPlayConnectCallback
    {
        [OperationContract]
        void PlayerConnectList(List<ServicePlayer> servicePlayerList);

        [OperationContract]
        void IsStarGame(bool isStarGame);

        [OperationContract]
        void SentenceFound(ServiceSentence responseSentence);

        [OperationContract]
        void PlayerWinner(ServiceWinner playerWinner);

        [OperationContract]
        void PlayerEntryMessage(List<string> responseListString);

        [OperationContract]
        void PlayerEntryOneMessage(string responseListString);
    }
}
