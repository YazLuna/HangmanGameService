using System.Runtime.Serialization;

namespace HangmanGameService
{
	/// <summary>
	/// This class is for the sentence data
	/// </summary>
	[DataContract]
	public class ServiceSentence
	{
		/// <value>Set the value of IdSentence.</value>
		/// <value>Gets the value of IdSentence.</value>
		[DataMember]
		public int IdSentence { get; set; }

		/// <value>Set the value of ScoreSentence.</value>
		/// <value>Gets the value of ScoreSentence.</value>
		[DataMember]
		public int ScoreSentence { get; set; }

		/// <value>Set the value of SentenceWordSpanish.</value>
		/// <value>Gets the value of SentenceWordSpanish.</value>
		[DataMember]
		public string SentenceWordSpanish { get; set; }

		/// <value>Set the value of HintSpanish.</value>
		/// <value>Gets the value of HintSpanish.</value>
		[DataMember]
		public string HintSpanish { get; set; }

		/// <value>Set the value of SentenceWordEnglish.</value>
		/// <value>Gets the value of SentenceWordEnglish.</value>
		[DataMember]
		public string SentenceWordEnglish { get; set; }

		/// <value>Set the value of HintEnglish.</value>
		/// <value>Gets the value of HintEnglish.</value>
		[DataMember]
		public string HintEnglish { get; set; }

		/// <value>Set the value of Category.</value>
		/// <value>Gets the value of Category.</value>
		[DataMember]
		public string Category { get; set; }
	}
}
