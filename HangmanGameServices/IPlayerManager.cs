using HangmanGameService;
using System.ServiceModel;


namespace HangmanGameService
{
    [ServiceContract(CallbackContract = typeof(IPlayerCallback))]
    interface IPlayerManager
    {
        [OperationContract]
        void LogIn(string email, string password);

        [OperationContract]
        void Register(ServiceAccount account, ServicePlayer servicePlayer);

        [OperationContract]
        void SearchNickNamePlayer(string nickname);

        [OperationContract]
        void SendEmail(string email, int code);

        [OperationContract]
        void ChangePassword(string email, string password);

        [OperationContract]
        void SearchEmailPlayer(string email);

    }

    [ServiceContract]
    interface IPlayerCallback
    {

        [OperationContract]
        void PlayerResponseBoolean(bool response);
    }
}
