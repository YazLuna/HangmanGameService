using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;

namespace HangmanGameService
{
    [ServiceContract(CallbackContract = typeof(IChatCallback))]
    interface IChatManager
    {
        [OperationContract]
        void ClientConnect(string nickname);

        [OperationContract]
        void GetNewMessage(string nickname);

        [OperationContract]
        void SendNewMessage(string newMessage, string nickname);

        [OperationContract]
        void GetAllPlayers();

        [OperationContract]
        void RemoveUser(string nickname);
    }


    [ServiceContract]
    interface IChatCallback
    {

        [OperationContract]
        void ChatResponseBoolean(bool responseBoolean);

        [OperationContract]
        void ChatResponse(string responseString);

        [OperationContract]
        void ChatResponseList(List<ServicePlayer> responseList);

        [OperationContract]
        void PlayerEntryMessage(List<string> responseListString);

    }
}


