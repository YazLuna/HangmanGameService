using Connection;
using System;
using System.Collections.Generic;
using System.Net;
using System.Net.Mail;
using System.Net.Security;
using System.Security.Cryptography.X509Certificates;
using System.ServiceModel;

namespace HangmanGameService
{
	/// <summary>
	/// This service is used to search for an account and to search for a player
	/// </summary>
	[ServiceBehavior(ConcurrencyMode = ConcurrencyMode.Reentrant, InstanceContextMode = InstanceContextMode.Single)]
	public partial class HangmanGameService : IAccountManager
	{
		/// <summary>
		/// Search if the account is registered in the database
		/// </summary>
		/// <param name="email">Player's email to search.</param>
		public void SearchAccount(string email)
		{
			QueryDB consult = new QueryDB();
			Account account = consult.SearchAccount(email);
			ServiceAccount serviceAccount = new ServiceAccount
			{
				IdAccount = account.idAccount,
				NickName = account.nickName,
				Email = account.email,
				PasswordAccount = account.passwordAccount
			};
			OperationContext.Current.GetCallbackChannel<IAccountCallback>().AccountResponseAccount(serviceAccount);
		}
		/// <summary>
		/// Search if the player is registered in the database
		/// </summary>
		/// <param name="nickname">Player's nickname to search.</param>
		public void SearchPlayer(string nickname)
		{
			QueryDB consult = new QueryDB();
			Player player = consult.SearchPlayer(nickname);
			ServicePlayer servicePlayer = new ServicePlayer
			{
				NickName = player.nickName,
				NamePlayer = player.namePlayer,
				LastName = player.lastName,
				ScoreObtained = player.scoreObtained,
				StatusPlayer = player.statusPlayer
			};
			OperationContext.Current.GetCallbackChannel<IAccountCallback>().AccountResponsePlayer(servicePlayer);
		}
	}

	/// <summary>
	/// This service is used to find the players with the best scores
	/// </summary>
	public partial class HangmanGameService : IPlayerScoresManager
	{
		/// <summary>
		/// Find the list of players with the best scores
		/// </summary>
		public void SearchBestScoresPlayer()
		{
			QueryDB consult = new QueryDB();
			List<Player> Player = consult.SearchBestScoresPlayer();
			List<ServicePlayer> ServicePlayer = new List<ServicePlayer>();
			int playerCount = Player.Count;

			for (int index = 0; index < Player.Count; index++)
			{
				Player playerIndex = Player[index];
				ServicePlayer.Add(new ServicePlayer() { NickName = playerIndex.nickName, ScoreObtained = playerIndex.scoreObtained, Position = playerCount });
				playerCount--;
			}
			OperationContext.Current.GetCallbackChannel<IPlayerScoresCallback>().PlayerResponseList(ServicePlayer);
		}
	}

	/// <summary>
	/// This service is used to search the information of a player
	/// </summary>
	public partial class HangmanGameService : IInformationPlayerManager
	{
		/// <summary>
		/// Search the personal information of a player using his email as identifier
		/// </summary>
		/// <param name="email">Player's email to search.</param>
		public void SearchInformationPlayer(string email)
		{
			QueryDB consult = new QueryDB();
			Player player = consult.SearchInformationPlayer(email);
			ServicePlayer servicePlayer = new ServicePlayer
			{
				NickName = player.nickName,
				ScoreObtained = player.scoreObtained
			};
			OperationContext.Current.GetCallbackChannel<IInformationPlayerCallback>().PlayerResponseInformation(servicePlayer);
		}
	}

	/// <summary>
	/// This service is used for the management of the game
	/// </summary>
	public partial class HangmanGameService : IPlayConnect
	{
		private Dictionary<string, IPlayConnectCallback> playersConnectCallback = new Dictionary<string, IPlayConnectCallback>();
		private Dictionary<string, IPlayConnectCallback> winnersConnectCallback = new Dictionary<string, IPlayConnectCallback>();
		private List<ServicePlayer> playersNickNameConnect = new List<ServicePlayer>();
		private List<ServiceWinner> playersWinner = new List<ServiceWinner>();
		private bool isStartGame = false;

		/// <summary>
		/// Connect a player to the game
		/// </summary>
		/// <param name="nickname">Player's nickname to connect.</param>
		public void PlayerConnect(string nickname)
		{
			var connection = OperationContext.Current.GetCallbackChannel<IPlayConnectCallback>();
			if (playersNickNameConnect.Count == Number.NumberValue(NumberValues.ZERO))
			{
				ServicePlayer servicePlayer = new ServicePlayer();
				servicePlayer.NickName = nickname;
				this.playersNickNameConnect.Add(servicePlayer);
				playersConnectCallback.Add(nickname, OperationContext.Current.GetCallbackChannel<IPlayConnectCallback>());
				OperationContext.Current.GetCallbackChannel<IPlayConnectCallback>().PlayerConnectList(playersNickNameConnect);
			}
			else
			{
				bool isRegisterNickname = false;
				foreach (var players in playersNickNameConnect)
				{
					if (nickname.Equals(players.NickName))
					{
						isRegisterNickname = true;
						break;
					}
				}
				if (!isRegisterNickname)
				{
					ServicePlayer servicePlayer = new ServicePlayer();
					servicePlayer.NickName = nickname;
					this.playersNickNameConnect.Add(servicePlayer);
					playersConnectCallback.Add(nickname, OperationContext.Current.GetCallbackChannel<IPlayConnectCallback>());
				}

				foreach (KeyValuePair<string, IPlayConnectCallback> result in playersConnectCallback)
				{
					if (!connection.Equals(result.Value))
					{
						result.Value.PlayerConnectList(playersNickNameConnect);
					}
				}
				OperationContext.Current.GetCallbackChannel<IPlayConnectCallback>().PlayerConnectList(playersNickNameConnect);
			}
		}

		/// <summary>
		/// Disconnect a player to the game
		/// </summary>
		/// <param name="nickname">Player's nickname to disconnect.</param>
		public void PlayerDisconnect(string nickname)
		{
			var connection = OperationContext.Current.GetCallbackChannel<IPlayConnectCallback>();
			for (int index = 0; index < playersNickNameConnect.Count; index++)
			{
				if (nickname.Equals(playersNickNameConnect[index].NickName))
				{
					playersNickNameConnect.RemoveAt(index);
					playersConnectCallback.Remove(nickname);
					break;
				}
			}
			foreach (KeyValuePair<string, IPlayConnectCallback> result in playersConnectCallback)
			{
				if (!connection.Equals(result.Value))
				{
					result.Value.PlayerConnectList(playersNickNameConnect);
				}
			}
			if (playersConnectCallback.Count == Number.NumberValue(NumberValues.ZERO))
			{
				isStartGame = false;
			}
			OperationContext.Current.GetCallbackChannel<IPlayConnectCallback>().PlayerConnectList(playersNickNameConnect);
		}

		/// <summary>
		/// Find the phrase and start the game to one player
		/// </summary>
		/// <param name="nickname">Player's nickname to start game .</param>
		public void StartGame(string nickname)
		{
			isStartGame = true;
			var connection = OperationContext.Current.GetCallbackChannel<IPlayConnectCallback>();
			QueryDB consult = new QueryDB();
			ServiceSentence serviceSentence = new ServiceSentence();
			Sentence sentence = new Sentence();
			sentence = consult.SearchSentence();
			serviceSentence.IdSentence = sentence.idSentence;
			serviceSentence.HintSpanish = sentence.hintSpanish;
			serviceSentence.ScoreSentence = sentence.scoreSentence;
			serviceSentence.SentenceWordSpanish = sentence.sentenceWordSpanish;
			serviceSentence.HintEnglish = sentence.hintEnglish;
			serviceSentence.SentenceWordEnglish = sentence.sentenceWordEnglish;
			serviceSentence.Category = sentence.category;
			DateTime dateTimeCurrent = DateTime.Now;
			Match match = new Match();
			match.idSentence = serviceSentence.IdSentence;
			match.dateHour = dateTimeCurrent;
			match.idMatch = consult.RegisterMatch(match);
			List<Player> players = new List<Player>();
			foreach (ServicePlayer servicePlayerConnect in playersNickNameConnect)
			{
				Player playerConnect = new Player();
				playerConnect.nickName = servicePlayerConnect.NickName;
				players.Add(playerConnect);
			}
			consult.RegisterPlayerMatch(match.idMatch, players);
			foreach (KeyValuePair<string, IPlayConnectCallback> result in playersConnectCallback)
			{
				if (!result.Key.Equals(nickname))
				{
					result.Value.SentenceFound(serviceSentence);
				}
			}
			OperationContext.Current.GetCallbackChannel<IPlayConnectCallback>().SentenceFound(serviceSentence);
		}

		/// <summary>
		/// Check if a game is in progress
		/// </summary>
		public void VerifyGameStart()
		{
			OperationContext.Current.GetCallbackChannel<IPlayConnectCallback>().IsStarGame(isStartGame);
		}

		/// <summary>
		/// Finish the game and answer who won
		/// </summary>
		/// <param name="serviceWinner">PlThe data of a player's game .</param>
		public void GameOver(ServiceWinner serviceWinner)
		{
			playersWinner.Add(serviceWinner);
			winnersConnectCallback.Add(serviceWinner.NickName, OperationContext.Current.GetCallbackChannel<IPlayConnectCallback>());
			if (playersWinner.Count == playersNickNameConnect.Count)
			{
				ServiceWinner serviceWinnerPlayer = SearchWinner();
				foreach (KeyValuePair<string, IPlayConnectCallback> result in winnersConnectCallback)
				{
					result.Value.PlayerWinner(serviceWinnerPlayer);
				}
				RestartGame();
			}
			else
			{
				OperationContext.Current.GetCallbackChannel<IPlayConnectCallback>().IsStarGame(isStartGame);
			}
		}

		/// <summary>
		/// Look for the winner of the game first by score, then by mistakes and last by time
		/// </summary>
		public ServiceWinner SearchWinner()
		{
			ServiceWinner servicePlayerWinner = new ServiceWinner();
			servicePlayerWinner = playersWinner[Number.NumberValue(NumberValues.ZERO)];
			for (int index = 1; index < playersWinner.Count; index++)
			{
				if (playersWinner[index].Points > servicePlayerWinner.Points)
				{
					servicePlayerWinner = playersWinner[index];
				}
				else
				{
					if (playersWinner[index].Points == servicePlayerWinner.Points)
					{
						if (playersWinner[index].Mistakes < servicePlayerWinner.Mistakes)
						{
							servicePlayerWinner = playersWinner[index];
						}
						else
						{
							if (playersWinner[index].Mistakes == servicePlayerWinner.Mistakes)
							{
								if (playersWinner[index].Time < servicePlayerWinner.Time)
								{
									servicePlayerWinner = playersWinner[index];
								}
							}
						}
					}
				}
			}
			QueryDB consult = new QueryDB();
			consult.SavePoints(servicePlayerWinner.NickName, servicePlayerWinner.Points);
			return servicePlayerWinner;
		}

		/// <summary>
		/// Clears all used lists so that a new game can be started
		/// </summary>
		public void RestartGame()
		{
			playersConnectCallback.Clear();
			playersNickNameConnect.Clear();
			playersWinner.Clear();
			winnersConnectCallback.Clear();
		}
	}

	/// <summary>
	/// This service is used to manage reports
	/// </summary>
	public partial class HangmanGameService : IReportManager
	{
		/// <summary>
		/// Used to record a report from one player to another
		/// </summary>
		/// <param name="serviceReportMisConduct">Object that contains all the report data.</param>
		public void ReportPlayer(ServiceReportMisConduct serviceReportMisConduct)
		{
			ReportMisConduct reportMisConduct = new ReportMisConduct
			{
				idReportedPlayer = serviceReportMisConduct.IdReportedPlayer,
				idReportingPlayer = serviceReportMisConduct.IdReportingPlayer,
				typeReport = serviceReportMisConduct.TypeReport,
				additionalContext = serviceReportMisConduct.AdditionalContext
			};
			DateTime dateTimeCurrent = DateTime.Now;
			reportMisConduct.dateHour = dateTimeCurrent;
			QueryDB consult = new QueryDB();
			bool isReport = consult.RegisterReport(reportMisConduct);
			List<ReportMisConduct> reports = consult.SearchReport(reportMisConduct.idReportedPlayer);
			if (reports.Count == Number.NumberValue(NumberValues.TEN))
			{
				consult.ReportAccountPlayer(reportMisConduct.idReportedPlayer);
			}
			OperationContext.Current.GetCallbackChannel<IReportCallback>().ResponseReportPlayer(isReport);
		}

		/// <summary>
		/// Used toIt is used to retrieve the list of reports for a specific player
		/// </summary>
		/// <param name="nickname">Identifier with which the list of reports will be searched.</param>
		public void ReportList(string nickname)
		{
			List<ServiceReportMisConduct> serviceReportList = new List<ServiceReportMisConduct>();
			QueryDB consult = new QueryDB();
			List<ReportMisConduct> reportMisConducts = consult.SearchReport(nickname);
			foreach (ReportMisConduct report in reportMisConducts)
			{
				ServiceReportMisConduct serviceReport = new ServiceReportMisConduct
				{
					AdditionalContext = report.additionalContext,
					DateHour = report.dateHour,
					TypeReport = report.typeReport
				};
				serviceReportList.Add(serviceReport);
			}
			OperationContext.Current.GetCallbackChannel<IReportCallback>().ResponseReportList(serviceReportList);
		}
	}

	/// <summary>
	/// This service is used for the management of the players (CRUD and validations)
	/// </summary>
	public partial class HangmanGameService : IPlayerManager
	{
		/// <summary>
		/// Search if a player has an account in the system
		/// </summary>
		/// <param name="email">Player's email.</param>
		/// <param name="password">Player's password.</param>
		public void LogIn(string email, string password)
		{
			QueryDB consult = new QueryDB();
			bool log = consult.IsLog(email, password);
			OperationContext.Current.GetCallbackChannel<IPlayerCallback>().PlayerResponseBoolean(log);
		}

		/// <summary>
		/// Search a player's email in the database
		/// </summary>
		/// <param name="email">Player's email to serach.</param>
		public void SearchEmailPlayer(string email)
		{
			QueryDB consult = new QueryDB();
			bool emailFound = consult.SearchEmailPlayer(email);
			OperationContext.Current.GetCallbackChannel<IPlayerCallback>().PlayerResponseBoolean(emailFound);
		}

		/// <summary>
		/// Change an account password
		/// </summary>
		/// <param name="email">Player's email.</param>
		/// <param name="password">Player's new password.</param>
		public void ChangePassword(string email, string password)
		{
			QueryDB consult = new QueryDB();
			bool change = consult.ChangePassword(email, password);
			OperationContext.Current.GetCallbackChannel<IPlayerCallback>().PlayerResponseBoolean(change);
		}

		/// <summary>
		/// Register an account associated with a player in the database
		/// </summary>
		/// <param name="account">Object with a player's account information.</param>
		/// <param name="accountPlayer">Object with a player information</param>
		public void Register(ServiceAccount account, ServicePlayer accountPlayer)
		{
			QueryDB consult = new QueryDB();
			Account dataAccount = new Account
			{
				email = account.Email,
				passwordAccount = account.PasswordAccount,
				confirmationCode = account.ConfirmationCode,
				nickName = accountPlayer.NickName
			};

			Player dataPlayer = new Player
			{
				namePlayer = accountPlayer.NamePlayer,
				lastName = accountPlayer.LastName,
				statusPlayer = accountPlayer.StatusPlayer,
				nickName = accountPlayer.NickName
			};

			bool register = consult.RegisterPlayer(dataAccount, dataPlayer);
			OperationContext.Current.GetCallbackChannel<IPlayerCallback>().PlayerResponseBoolean(register);
		}

		/// <summary>
		/// Search if the player's nickname is registered in the database
		/// </summary>
		/// <param name="nickname">Player's nickname to search.</param>
		public void SearchNicknamePlayer(string nickname)
		{
			QueryDB consult = new QueryDB();
			bool searchNickName = consult.SearchNicknamePlayer(nickname);
			OperationContext.Current.GetCallbackChannel<IPlayerCallback>().PlayerResponseBoolean(searchNickName);
		}

		/// <summary>
		/// Send the verification code to an email
		/// </summary>
		/// <param name="email">Player's email to send.</param>
		/// <param name="code">Player's code to send.</param>
		public void SendEmail(string email, int code)
		{
			MailMessage correo = new MailMessage
			{
				From = new MailAddress("hangmangameproject@gmail.com", "HangmanGame", System.Text.Encoding.UTF8)
			};
			correo.To.Add(email);
			correo.Subject = "Code";
			correo.Body = "Your code is: " + code;
			correo.IsBodyHtml = true;
			correo.Priority = MailPriority.Normal;
			SmtpClient smtp = new SmtpClient
			{
				UseDefaultCredentials = false,
				Host = "smtp.gmail.com",
				Port = 587,
				Credentials = new System.Net.NetworkCredential("hangmangameproject@gmail.com", "Martha-Yazminz4")
			};
			ServicePointManager.ServerCertificateValidationCallback =
				delegate (object s, X509Certificate certificate, X509Chain chain, SslPolicyErrors sslPolicyErrors) { return true; };
			smtp.EnableSsl = true;
			smtp.Send(correo);
		}

		/// <summary>
		/// Search if the email is the same as the one you already have that account
		/// </summary>
		/// <param name="emailEdit">Player's email to search.</param>
		/// /// <param name="idAccount">Player's idAccount where to search.</param>
		public void SearchRepeatEmailAccount(string emailEdit, int idAccount)
		{
			QueryDB consult = new QueryDB();
			bool repeatEmail = consult.SearchRepeatEmailAccount(emailEdit, idAccount);
			OperationContext.Current.GetCallbackChannel<IPlayerCallback>().PlayerResponseBoolean(repeatEmail);
		}

		/// <summary>
		/// Search if the nickname is the same as the one you already have that account
		/// </summary>
		/// <param name="nicknameEdit">Player's nickname to search.</param>
		/// /// <param name="nicknameCurrent">Player's nickname original.</param>
		public void SearchRepeatNicknamePlayer(string nicknameEdit, string nicknameCurrent)
		{
			QueryDB consult = new QueryDB();
			bool repeatNickName = consult.SearchRepeatNicknamePlayer(nicknameEdit, nicknameCurrent);
			OperationContext.Current.GetCallbackChannel<IPlayerCallback>().PlayerResponseBoolean(repeatNickName);
		}

		/// <summary>
		/// Update a player's email
		/// </summary>
		/// <param name="email">Player's email original.</param>
		/// <param name="idAccount">The player's idAccount .</param>
		public void UpdateEmail(string email, int idAccount)
		{
			QueryDB consult = new QueryDB();
			bool updateEmail = consult.UpdateEmail(email, idAccount);
			OperationContext.Current.GetCallbackChannel<IPlayerCallback>().PlayerResponseBoolean(updateEmail);
		}

		/// <summary>
		/// Update a player's account
		/// </summary>
		/// <param name="nickname">Player's nickname original.</param>
		/// <param name="servicePlayerEdit">Object with the new data to add.</param>
		public void UpdatePlayer(string nickname, ServicePlayer servicePlayerEdit)
		{
			Player playerEdit = new Player
			{
				namePlayer = servicePlayerEdit.NamePlayer,
				lastName = servicePlayerEdit.LastName,
				nickName = servicePlayerEdit.NickName
			};
			QueryDB consult = new QueryDB();
			bool updatePlayer = consult.UpdatePlayer(nickname, playerEdit);
			OperationContext.Current.GetCallbackChannel<IPlayerCallback>().PlayerResponseBoolean(updatePlayer);
		}

		/// <summary>
		/// Delete a player's account
		/// </summary>
		/// <param name="nickname">Player's nickname to delete.</param>
		public void DeleteAccountPlayer(string nickname)
		{
			QueryDB consult = new QueryDB();
			bool isDeletePlayer = consult.DeleteAccountPlayer(nickname);
			OperationContext.Current.GetCallbackChannel<IPlayerCallback>().PlayerResponseBoolean(isDeletePlayer);
		}
	}

	/// <summary>
	/// This service is used for the management of the chat
	/// </summary>
	public partial class HangmanGameService : IChatManager
	{
		private readonly Dictionary<string, IChatCallback> playersCallback = new Dictionary<string, IChatCallback>();
		private readonly List<ServicePlayer> playersConnect = new List<ServicePlayer>();

		/// <summary>
		/// Add the player from the list of users connected in the chat
		/// </summary>
		/// <param name="nickname">Player's nickname to add to chat.</param>
		public void ClientConnect(string nickname)
		{
			if (playersConnect.Count == Number.NumberValue(NumberValues.ZERO))
			{
				ServicePlayer servicePlayer = new ServicePlayer
				{
					NickName = nickname
				};
				this.playersConnect.Add(servicePlayer);
				playersCallback.Add(nickname, OperationContext.Current.GetCallbackChannel<IChatCallback>());
			}
			else
			{
				bool isRegisterNickname = false;
				foreach (var players in playersConnect)
				{
					if (nickname.Equals(players.NickName))
					{
						isRegisterNickname = true;
						break;
					}
				}
				if (!isRegisterNickname)
				{
					ServicePlayer servicePlayer = new ServicePlayer
					{
						NickName = nickname
					};
					this.playersConnect.Add(servicePlayer);
					playersCallback.Add(nickname, OperationContext.Current.GetCallbackChannel<IChatCallback>());
				}
			}

			OperationContext.Current.GetCallbackChannel<IChatCallback>().ChatResponseBoolean(true);
		}

		/// <summary>
		/// Retrieve the messages
		/// </summary>
		/// <param name="nickname">Player's nickname to retrieve the messages.</param>
		public void GetNewMessages(string nickname)
		{
			//List<string> myNewMessages = incomingMessages[nickname];
			//incomingMessages[nickname].Clear();
			//OperationContext.Current.GetCallbackChannel<IChatCallback>().PlayerEntryMessages(myNewMessages);
		}

		/// <summary>
		/// Send a message to all registered players in the chat
		/// </summary>
		/// <param name="newMessage">The sender player's message.</param>
		/// <param name="nickname">The nickname of the sending player.</param>
		public void SendNewMessages(string newMessage, string nickname)
		{
			var connection = OperationContext.Current.GetCallbackChannel<IChatCallback>();
			foreach (KeyValuePair<string, IChatCallback> result in playersCallback)
			{
				if (!connection.Equals(result.Value))
				{
					result.Value.PlayerEntryMessages(newMessage);
				}
			}
			OperationContext.Current.GetCallbackChannel<IChatCallback>().ChatResponseBoolean(true);
		}

		/// <summary>
		/// Remove the player from the list of users connected in the chat
		/// </summary>
		/// <param name="nickname">Player's nickname to delete to chat.</param>
		public void RemoveUser(string nickname)
		{
			for (int index = 0; index < playersConnect.Count; index++)
			{
				if (nickname.Equals(playersConnect[index].NickName))
				{
					playersConnect.RemoveAt(index);
					playersCallback.Remove(nickname);
					break;
				}
			}
			OperationContext.Current.GetCallbackChannel<IChatCallback>().ChatResponseBoolean(true);
		}
	}

}