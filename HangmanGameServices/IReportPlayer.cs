using System.ServiceModel;

namespace HangmanGameService
{
    [ServiceContract(CallbackContract = typeof(IReportCallback))]
    interface IReportPlayer
    {
        [OperationContract]
        void ReportPlayer(ServiceReportMisConduct serviceReportMisConduct);

    }

    [ServiceContract]
    interface IReportCallback
    {
        [OperationContract]
        void ResponseReportPlayer(bool isReport);
    }
}