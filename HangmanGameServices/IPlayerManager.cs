using HangmanGameService;
using System.Collections.Generic;
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
        void SearchNicknamePlayer(string nickname);

        [OperationContract]
        void SendEmail(string email, int code);

        [OperationContract]
        void ChangePassword(string email, string newPassword);

        [OperationContract]
        void SearchEmailPlayer(string email);

        [OperationContract]
        void SearchRepeatEmailAccount(string emailEdit, int idAccount);

        [OperationContract]
        void SearchRepeatNicknamePlayer(string nickNameEdit, string nickNameCurrent);

        [OperationContract]
        void UpdateEmail(string email, int idAccount);

        [OperationContract]
        void UpdatePlayer(string nickName, ServicePlayer servicePlayerEdit);

        [OperationContract]
        void DeleteAccountPlayer(string nickName);
    }

    [ServiceContract]
    interface IPlayerCallback
    {
        [OperationContract]
        void PlayerResponseBoolean(bool response);
    }

}
