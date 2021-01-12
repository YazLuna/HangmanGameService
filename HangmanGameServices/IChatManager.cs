using System.ServiceModel;

namespace HangmanGameService
{
    [ServiceContract(CallbackContract = typeof(IChatCallback))]
    interface IChatManager
    {
        [OperationContract]
        void ClientConnect(string nickname);

        [OperationContract]
        void SendNewMessages(string newMessage, string nickname);

        [OperationContract]
        void RemoveUser(string nickname);
    }

    [ServiceContract]
    interface IChatCallback
    {
        [OperationContract]
        void ChatResponseBoolean(bool responseBoolean);

        [OperationContract]
        void PlayerEntryMessages(string responseListString);
    }
}


