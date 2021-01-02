using System;
using System.Collections.Generic;
using System.Linq;
using System.ServiceModel;

namespace HangmanGameService
{
    [ServiceContract(CallbackContract = typeof(IPlayCallback))]
    interface IPlayManager
    {
        [OperationContract]
        void SearchSentence(string lenguage);
    }

    [ServiceContract]
    interface IPlayCallback
    {
        [OperationContract]
        void SentenceFound(ServiceSentence responseSentence);

    }
}