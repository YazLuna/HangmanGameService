using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace HangmanGameService
{
    [DataContract]
    public class ServiceMatch
    {
        [DataMember]
        public int IdMatch { get; set; }

        [DataMember]
        public System.DateTime DateHour { get; set; }

        [DataMember]
        public int IdSentence { get; set; }
    }
}
