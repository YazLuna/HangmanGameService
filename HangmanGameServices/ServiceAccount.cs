using System.Runtime.Serialization;

namespace HangmanGameService
{
    [DataContract]
    public class ServiceAccount
    {
        [DataMember]
        public string PasswordAccount { get; set; }

        [DataMember]
        public string Email { get; set; }

        [DataMember]
        public int ConfirmationCode { get; set; }

        [DataMember]
        public int IdAccount { get; set; }

        [DataMember]
        public string NickName { get; set; }
    }
}
