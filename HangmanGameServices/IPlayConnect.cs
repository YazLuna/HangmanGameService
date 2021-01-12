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
    }

    [ServiceContract]
    interface IPlayConnectCallback
    {
        [OperationContract]
        void PlayerConnectList(List<ServicePlayer> servicePlayerList);

        [OperationContract]
        void IsStarGame(bool isStarGameRun);

        [OperationContract]
        void SentenceFound(ServiceSentence responseSentence);

        [OperationContract]
        void PlayerWinner(ServiceWinner playerWinnerGame);
    }
}
