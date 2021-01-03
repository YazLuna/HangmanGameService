using System;
using System.Collections.Generic;
using System.Linq;
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
    }
}
