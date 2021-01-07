using System.Runtime.Serialization;

namespace HangmanGameService
{
    [DataContract]
    public class ServiceReportMisConduct
    {
        [DataMember]
        public int IdReportMisConduct { get; set; }

        [DataMember]
        public string TypeReport { get; set; }

        [DataMember]
        public System.DateTime DateHour { get; set; }

        [DataMember]
        public string AdditionalContext { get; set; }

        [DataMember]
        public string IdReportedPlayer { get; set; }

        [DataMember]
        public string IdReportingPlayer { get; set; }
    }
}
