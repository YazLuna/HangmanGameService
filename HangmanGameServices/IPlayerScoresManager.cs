using System.Collections.Generic;
using System.ServiceModel;

namespace HangmanGameService
{
    [ServiceContract(CallbackContract = typeof(IPlayerScoresCallback))]
    interface IPlayerScoresManager
    {
        [OperationContract]
        void SearchBestScoresPlayer();
    }

    [ServiceContract]
    interface IPlayerScoresCallback
    {
        [OperationContract]
        void PlayerResponseList(List<ServicePlayer> responseList);
    }
}
