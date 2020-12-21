using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;
using System.Text;
using System.Threading.Tasks;

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
