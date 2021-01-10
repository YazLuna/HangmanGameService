using System.Runtime.Serialization;

namespace HangmanGameService
{
    /// <summary>
	/// This class is for the winning player data
	/// </summary>
    public class ServiceWinner
    {
        /// <value>Set the value of Nickname.</value>
        /// <value>Gets the value of Nickname.</value>
        [DataMember]
        public string NickName { get; set; }

        /// <value>Set the value of Time.</value>
        /// <value>Gets the value of Time.</value>
        [DataMember]
        public int Time { get; set; }

        /// <value>Set the value of Points.</value>
        /// <value>Gets the value of Points.</value>
        [DataMember]
        public int Points { get; set; }

        /// <value>Set the value of Mistakes .</value>
        /// <value>Gets the value of Mistakes .</value>
        [DataMember]
        public int Mistakes { get; set; }
    }
}