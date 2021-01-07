using System.Collections.Generic;
using System.ServiceModel;

namespace HangmanGameService
{
    [ServiceContract(CallbackContract = typeof(IReportCallback))]
    interface IReportManager
    {
        [OperationContract]
        void ReportPlayer(ServiceReportMisConduct serviceReportMisConduct);

        [OperationContract]
        void ReportList(string nickname);
    }

    [ServiceContract]
    interface IReportCallback
    {
        [OperationContract]
        void ResponseReportPlayer(bool isReport);

        [OperationContract]
        void ResponseReportList(List<ServiceReportMisConduct> reportMisConducts);
    }
}