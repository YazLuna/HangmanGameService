using System.Runtime.Serialization;

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
