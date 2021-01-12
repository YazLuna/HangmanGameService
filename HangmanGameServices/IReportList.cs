using System.Collections.Generic;
using System.ServiceModel;

namespace HangmanGameService
{
    [ServiceContract(CallbackContract = typeof(IReportListCallback))]
    interface IReportList
    {
        [OperationContract]
        void ReportList(string nickname);
    }

    [ServiceContract]
    interface IReportListCallback
    {
        [OperationContract]
        void ResponseReportList(List<ServiceReportMisConduct> reportMisConducts);
    }
}