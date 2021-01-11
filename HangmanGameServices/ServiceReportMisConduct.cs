using System.Runtime.Serialization;

namespace HangmanGameService
{
    /// <summary>
    /// This class is for the report data
    /// </summary>
    [DataContract]
    public class ServiceReportMisConduct
    {
        /// <value>Set the value of TypeReport.</value>
        /// <value>Gets the value of TypeReport.</value>
        [DataMember]
        public string TypeReport { get; set; }

        /// <value>Set the value of DateHour.</value>
        /// <value>Gets the value of DateHour.</value>
        [DataMember]
        public System.DateTime DateHour { get; set; }

        /// <value>Set the value of AdditionalContext.</value>
        /// <value>Gets the value of AdditionalContext.</value>
        [DataMember]
        public string AdditionalContext { get; set; }

        /// <value>Set the value of IdReportedPlayer.</value>
        /// <value>Gets the value of IdReportedPlayer.</value>
        [DataMember]
        public string IdReportedPlayer { get; set; }

        /// <value>Set the value of IdReportingPlayer.</value>
        /// <value>Gets the value of IdReportingPlayer.</value>
        [DataMember]
        public string IdReportingPlayer { get; set; }
    }
}
