using System.Runtime.Serialization;

namespace HangmanGameService
{
    /// <summary>
    /// This class is for the account data
    /// </summary>
    [DataContract]
    public class ServiceAccount
    {
        /// <value>Set the value of PasswordAccount.</value>
        /// <value>Gets the value of PasswordAccount.</value>
        [DataMember]
        public string PasswordAccount { get; set; }

        /// <value>Set the value of Email.</value>
        /// <value>Gets the value of Email.</value>
        [DataMember]
        public string Email { get; set; }

        /// <value>Set the value of ConfirmationCode.</value>
        /// <value>Gets the value of ConfirmationCode.</value>
        [DataMember]
        public int ConfirmationCode { get; set; }

        /// <value>Set the value of IdAccount.</value>
        /// <value>Gets the value of IdAccount.</value>
        [DataMember]
        public int IdAccount { get; set; }

        /// <value>Set the value of Nickname.</value>
        /// <value>Gets the value of Nickname.</value>
        [DataMember]
        public string NickName { get; set; }
    }
}
