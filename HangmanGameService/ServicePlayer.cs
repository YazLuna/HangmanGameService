using System;
using System.Runtime.Serialization;

namespace HangmanGameService
{
    /// <summary>
    /// This class is for the player data
    /// </summary>
    [DataContract]
    public class ServicePlayer
    {
        /// <value>Set the value of Nickname.</value>
        /// <value>Gets the value of Nickname.</value>
        [DataMember]
        public string NickName { get; set; }

        /// <value>Set the value of NamePlayer.</value>
        /// <value>Gets the value of NamePlayer.</value>
        [DataMember]
        public string NamePlayer { get; set; }

        /// <value>Set the value of LastName.</value>
        /// <value>Gets the value of LastName.</value>
        [DataMember]
        public string LastName { get; set; }

        /// <value>Set the value of ScoreObtained.</value>
        /// <value>Gets the value of ScoreObtained.</value>
        [DataMember]
        public Nullable<int> ScoreObtained { get; set; }

        /// <value>Set the value of StatusPlayer.</value>
        /// <value>Gets the value of StatusPlayer.</value>
        [DataMember]
        public string StatusPlayer { get; set; }

        /// <value>Set the value of Position .</value>
        /// <value>Gets the value of Position .</value>
        [DataMember]
        public int Position { get; set; }
    }
}
