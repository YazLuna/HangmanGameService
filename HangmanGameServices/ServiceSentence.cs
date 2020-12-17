using System.Runtime.Serialization;

namespace HangmanGameService
{
	[DataContract]
	public class ServiceSentence
	{
		[DataMember]
		public int IdSentence { get; set; }

		[DataMember]
		public int ScoreSentence { get; set; }

		[DataMember]
		public string SentenceWord { get; set; }

		[DataMember]
		public string Hint { get; set; }

		[DataMember]
		public string Language { get; set; }

	}
}
