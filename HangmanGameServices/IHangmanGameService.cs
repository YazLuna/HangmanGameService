using System.ServiceModel;

namespace HangmanGameService
{
    [ServiceContract(CallbackContract = typeof(IHangmanGameServiceCallback))]
    interface IHangmanGameService
    {
        [OperationContract]
        void SendOperation();
    }
    [ServiceContract]
    public interface IHangmanGameServiceCallback
    {
        [OperationContract]
        void Response(int result);
    }
}
