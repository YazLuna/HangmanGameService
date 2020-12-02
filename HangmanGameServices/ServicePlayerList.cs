using System;
using System.Collections.Generic;
using System.Collections.ObjectModel;
using System.Linq;
using System.Runtime.Serialization;
using System.Text;
using System.Threading.Tasks;

namespace HangmanGameService
{
    [DataContract]
    public class ServicePlayerList
    {
        [DataMember]
        public string NickName { get; set; }

        [DataMember]
        public Nullable<int> ScoreObtained { get; set; }
    }
}
