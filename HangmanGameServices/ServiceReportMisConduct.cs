using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

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
