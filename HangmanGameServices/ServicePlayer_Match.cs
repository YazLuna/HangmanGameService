using System.Runtime.Serialization;

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
