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
		public string SentenceWordSpanish { get; set; }

		[DataMember]
		public string HintSpanish { get; set; }

		[DataMember]
		public string SentenceWordEnglish { get; set; }

		[DataMember]
		public string HintEnglish { get; set; }

		[DataMember]
		public string Category { get; set; }
	}
}
