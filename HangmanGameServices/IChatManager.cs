using System.Collections.Generic;
using System.ServiceModel;

namespace HangmanGameService
{
    [ServiceContract(CallbackContract = typeof(IChatCallback))]
    interface IChatManager
    {
        [OperationContract]
        void ClientConnect(string nickname);

        [OperationContract]
        void GetNewMessages(string nickname);

        [OperationContract]
        void SendNewMessages(string newMessage, string nickname);

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
        void PlayerEntryMessages(List<string> responseListString);


    }
}


