using System.ServiceModel;

namespace HangmanGameService
{
    [ServiceContract(CallbackContract = typeof(IAccountCallback))]
    interface IAccountManager
    {
        [OperationContract]
        void SearchAccount(string email);

        [OperationContract]
        void SearchPlayer(string nickname);
    }

    [ServiceContract]
    interface IAccountCallback
    {
        [OperationContract]
        void AccountResponseAccount(ServiceAccount serviceAccount);

        [OperationContract]
        void AccountResponsePlayer(ServicePlayer servicePlayer);
    }
}
