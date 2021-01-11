using System.ServiceModel;

namespace HangmanGameService
{
    [ServiceContract(CallbackContract = typeof(IAccountCallback))]
    interface IAccountManager
    {
        [OperationContract]
        void SearchAccount(string email);

        [OperationContract]
        void SearchPlayer(string nickName);
    }

    [ServiceContract]
    interface IAccountCallback
    {
        [OperationContract]
        void AccountPlayerResponse(ServiceAccount serviceAccount);

        [OperationContract]
        void PlayerResponse(ServicePlayer servicePlayer);
    }
}
