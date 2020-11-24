using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

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
