using System.Runtime.Serialization;

namespace HangmanGameService
{
    public class ServiceWinner
    {
        [DataMember]
        public string NickName { get; set; }

        [DataMember]
        public int Time { get; set; }

        [DataMember]
        public int Points { get; set; }

        [DataMember]
        public int Mistakes { get; set; }
    }
}