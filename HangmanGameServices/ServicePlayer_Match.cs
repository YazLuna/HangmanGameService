using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace HangmanGameService
{
    [DataContract]
    public class ServicePlayer_Match
    {
        [DataMember]
        public string NickName { get; set; }

        [DataMember]
        public int IdMatch { get; set; }
    }
}
