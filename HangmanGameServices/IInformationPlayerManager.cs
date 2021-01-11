using System.ServiceModel;

namespace HangmanGameService
{
    [ServiceContract(CallbackContract = typeof(IInformationPlayerCallback))]
    interface IInformationPlayerManager
    {
        [OperationContract]
        void SearchInformationPlayer(string email);
    }

    [ServiceContract]
    interface IInformationPlayerCallback
    {
        [OperationContract]
        void PlayerResponseInformation(ServicePlayer response);
    }
}
