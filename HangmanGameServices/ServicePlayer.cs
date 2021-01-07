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
    public class ServicePlayer
    {
        [DataMember]
        public string NickName { get; set; }

        [DataMember]
        public string NamePlayer { get; set; }

        [DataMember]
        public string LastName { get; set; }

        [DataMember]
        public Nullable<int> ScoreObtained { get; set; }

        [DataMember]
        public string StatusPlayer { get; set; }

        [DataMember]
        public int Position { get; set; }

        [DataMember]
        public virtual ObservableCollection<ServiceReportMisConduct> ServiceReportMisConduct { get; set; }
    }
}
