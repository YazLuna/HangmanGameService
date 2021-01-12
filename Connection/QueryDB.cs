using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Entity.Validation;
using System.Data.Entity.Infrastructure;
using System.Data.Entity.Core;

namespace Connection
{
	/// <summary>
	/// This class QueryDB is has queries to the database
	/// </summary>
	public class QueryDB
	{
		/// <summary>
		/// Method to know if a player is registered
		/// </summary>
		/// <param name="email">Registered player email</param>
		/// <param name="password">Registered player password</param>
		/// <returns>If the player is registered in the database</returns>
		public bool IsLog(string email, string password)
		{
			bool log = false;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				try
				{
					Account account = new Account();
					account = db.Account.SingleOrDefault
						(accountSearch => accountSearch.email == email && accountSearch.passwordAccount == password);
					if (account != null)
					{
						Player player = db.Player.SingleOrDefault(playerSearch => playerSearch.nickName == account.nickName &&
						playerSearch.statusPlayer == "Active");
						if (player != null)
						{
							log = true;
						}
					}
                }
                catch (DbEntityValidationException exception)
                {
					TelegramBot.SendToTelegram(exception);
					LogException.Log(this, exception);
				}
			}
			return log;
		}

		/// <summary>
		/// Method to register player account
		/// </summary>
		/// <param name="account">Account data</param>
		/// <param name="player">Player data</param>
		/// <returns>If the player was registered correctly</returns>
		public bool RegisterPlayer(Account account, Player player)
		{
			bool registerOk = false;
				using (HangmanGameContext db = new HangmanGameContext())
				{
					try
					{
						db.Player.Add(player);
						db.Account.Add(account);
						db.SaveChanges();
						registerOk = true;
					}
					catch (DbEntityValidationException exception)
					{
						TelegramBot.SendToTelegram(exception);
						LogException.Log(this, exception);
					}
				}
			return registerOk;
		}

		/// <summary>
		/// Method to register a game
		/// </summary>
		/// <param name="match">Match data</param>
		/// <returns>If the game was registered correctly</returns>
		public int RegisterMatch(Match match)
		{
			int idMatch = 0;
			
			using (HangmanGameContext db = new HangmanGameContext())
			{
				try
				{
					db.Match.Add(match);
					db.SaveChanges();
					idMatch = match.idMatch;
				}

				catch (DbEntityValidationException exception)
				{
					TelegramBot.SendToTelegram(exception);
					LogException.Log(this, exception);
				}
				catch (DbUpdateException exception)
                {
					TelegramBot.SendToTelegram(exception);
					LogException.Log(this, exception);
				}
			}
			return idMatch;
		}

		/// <summary>
		/// Method to register players to a game
		/// </summary>
		/// <param name="idMatch">Identifier Match</param>
		/// <param name="players">Players of the match</param>
		/// <returns>If the players were registered to the match successfully</returns>
		public bool RegisterPlayerMatch(int idMatch, List<Player> players)
        {
			bool isRegisterPlayerMatch = false;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				try
				{
					Match match = db.Match.SingleOrDefault(matchSearch => matchSearch.idMatch == idMatch);
					if (match != null)
					{
						foreach (Player player in players)
						{
							Player playerMatch = db.Player.Find(player.nickName);
							match.Player.Add(playerMatch);
						}
						db.SaveChanges();
						isRegisterPlayerMatch = true;
					}
				}
				catch (DbEntityValidationException exception)
				{
					TelegramBot.SendToTelegram(exception);
					LogException.Log(this, exception);
				}
			}
			return isRegisterPlayerMatch;
        }

		/// <summary>
		/// Method to find a player's nickname
		/// </summary>
		/// <param name="nickname">Nickname of the player</param>
		/// <returns>If the player's nickname was found</returns>
		public bool SearchNicknamePlayer(string nickname)
		{
			bool searchNickname = false;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				try
				{
					Player player = db.Player.SingleOrDefault(playerSearch => playerSearch.nickName == nickname);
					if (player != null)
					{
						searchNickname = true;
					}
				}
				catch (DbEntityValidationException exception)
				{
					TelegramBot.SendToTelegram(exception);
					LogException.Log(this, exception);
				}
			}
			return searchNickname;
		}

		/// <summary>
		/// Method to find a player's email
		/// </summary>
		/// <param name="email">Email of the player</param>
		/// <returns>If the player's email was found</returns>
		public bool SearchEmailPlayer(string email)
		{
			bool search = false;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				try
				{
					Account account = new Account();
					account = db.Account.SingleOrDefault(accountSearch => accountSearch.email == email);
					if (account != null)
					{
						Player player = db.Player.SingleOrDefault(playerSearch => playerSearch.nickName == account.nickName &&
						playerSearch.statusPlayer == "Active");
						if (player != null)
						{
							search = true;
						}
					}
				}
				catch (DbEntityValidationException exception)
				{
					TelegramBot.SendToTelegram(exception);
					LogException.Log(this, exception);
				}
			}
			return search;
		}

		/// <summary>
		/// Method to change account password
		/// </summary>
		/// <param name="email">Email of the player</param>
		/// <param name="newPassword">The new password</param>
		/// <returns>If the password was changed correctly</returns>
		public bool ChangePassword(string email, string newPassword)
		{
			bool update = false;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				try
				{
					Account account = db.Account.SingleOrDefault(accountSearch => accountSearch.email == email);
					if (account != null)
					{
						account.passwordAccount = newPassword;
						db.SaveChanges();
						update = true;
					}
				}
				catch (DbEntityValidationException exception)
				{
					TelegramBot.SendToTelegram(exception);
					LogException.Log(this, exception);
				}
			}
			return update;
		}

		/// <summary>
		/// Method to find a player's account
		/// </summary>
		/// <param name="email">Email of the player</param>
		/// <returns>The player's account</returns>
		public Account SearchAccount(string email)
		{
			Account account = null;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				try
				{
					account = db.Account.SingleOrDefault(accountSearch => accountSearch.email == email);
				}
				catch (DbEntityValidationException exception)
				{
					TelegramBot.SendToTelegram(exception);
					LogException.Log(this, exception);
				}
			}
			return account;
		}

		/// <summary>
		/// Methods to find player data with nickname
		/// </summary>
		/// <param name="nickname">Nickname of the player</param>
		/// <returns>Player data</returns>
		public Player SearchPlayer(string nickname)
		{
			Player player = null;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				try
				{
					player = db.Player.SingleOrDefault(playerSearch => playerSearch.nickName == nickname);
				}
				catch (DbEntityValidationException exception)
				{
					TelegramBot.SendToTelegram(exception);
					LogException.Log(this, exception);
				}
			}
			return player;
		}

		/// <summary>
		/// Methods to obtain the points of all players
		/// </summary>
		/// <returns>List of players with the points obtained</returns>
		public List<Player> SearchBestScoresPlayer()
		{
			List<Player> playersOrder = null;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				try
				{
					List<Player> players = db.Player.Where(player => player.scoreObtained > 0).ToList<Player>();
					playersOrder = players.OrderBy(score => score.scoreObtained).ToList();
				}
				catch (DbEntityValidationException exception)
				{
					TelegramBot.SendToTelegram(exception);
					LogException.Log(this, exception);
				}
			}
			return playersOrder;
		}

		/// <summary>
		/// Method to find a player's information with email
		/// </summary>
		/// <param name="email">Email of the player</param>
		/// <returns>Player data</returns>
		public Player SearchInformationPlayer(string email)
		{
			Player player = null;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				try
				{
					Account account = db.Account.SingleOrDefault(playerSearch => playerSearch.email == email);
					player = db.Player.SingleOrDefault(playerSearch => playerSearch.nickName == account.nickName);
				}
				catch (DbEntityValidationException exception)
				{
					TelegramBot.SendToTelegram(exception);
					LogException.Log(this, exception);
				}
			}
			return player;
		}

		/// <summary>
		/// Method to find if a player's email repeats
		/// </summary>
		/// <param name="emailEdit">The new email of the player</param>
		/// <param name="idAccount">The player account identifier</param>
		/// <returns>If the same email was found</returns>
		public bool SearchRepeatEmailAccount(string emailEdit, int idAccount)
		{
			bool search = false;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				try
				{
					Account account = db.Account.SingleOrDefault(accountSearch => accountSearch.email == emailEdit && accountSearch.idAccount != idAccount);
					if (account != null)
					{
						search = true;
					}
				}
				catch (DbEntityValidationException exception)
				{
					TelegramBot.SendToTelegram(exception);
					LogException.Log(this, exception);
				}
			}
			return search;
		}

		/// <summary>
		/// Method to search for a repeated player email
		/// </summary>
		/// <param name="nicknameEdit">The new nickname of the player</param>
		/// <param name="nicknameCurrent">The nickname of the player</param>
		/// <returns>If the nickname was found in the database</returns>
		public bool SearchRepeatNicknamePlayer(string nicknameEdit, string nicknameCurrent)
		{
			bool search = false;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				try
				{
					Player player = db.Player.SingleOrDefault(playerSearch => playerSearch.nickName == nicknameEdit && playerSearch.nickName != nicknameCurrent);
					if (player != null)
					{
						search = true;
					}
				}
				catch (DbEntityValidationException exception)
				{
					TelegramBot.SendToTelegram(exception);
					LogException.Log(this, exception);
				}
			}
			return search;
		}

		/// <summary>
		/// Method to modify the player's email
		/// </summary>
		/// <param name="email">The email of the player</param>
		/// <param name="idAccount">The account identifier</param>
		/// <returns>If the email was modified correctly</returns>
		public bool UpdateEmail(string email, int idAccount)
		{
			bool updateEmail = false;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				try
				{
					Account account = db.Account.SingleOrDefault(accountSearch => accountSearch.idAccount == idAccount);
					if (account != null)
					{
						account.email = email;
						db.SaveChanges();
						updateEmail = true;
					}
				}
				catch (DbEntityValidationException exception)
				{
					TelegramBot.SendToTelegram(exception);
					LogException.Log(this, exception);
				}
			}
			return updateEmail;
		}

		/// <summary>
		/// Method to modify player data
		/// </summary>
		/// <param name="nickname">Nickname of the player</param>
		/// <param name="playerEdit">The new data of the player</param>
		/// <returns>If the player data was modified correctly</returns>
		public bool UpdatePlayer(string nickname, Player playerEdit)
		{
			bool updatePlayer = false;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				try { 
					Player player = db.Player.SingleOrDefault(playerSearch => playerSearch.nickName == nickname);
					if (player != null)
					{
						if (!string.IsNullOrWhiteSpace(playerEdit.namePlayer))
						{
							player.namePlayer = playerEdit.namePlayer;
							updatePlayer = true;
						}
						if (!string.IsNullOrWhiteSpace(playerEdit.lastName))
						{
							player.lastName = playerEdit.lastName;
							updatePlayer = true;
						}
						db.SaveChanges();
					}
				}
				catch (DbEntityValidationException exception)
				{
					TelegramBot.SendToTelegram(exception);
					LogException.Log(this, exception);
				}
			}
			return updatePlayer;
		}

		/// <summary>
		/// Method to delete an account
		/// </summary>
		/// <param name="nickname">Nickname of the player</param>
		/// <returns>If the account was deleted successfully</returns>
		public bool DeleteAccountPlayer(string nickname)
		{
			bool isDeletePlayer = false;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				try
				{
					Player player = db.Player.SingleOrDefault(playerSearch => playerSearch.nickName == nickname);
					if (player != null)
					{
						player.statusPlayer = "Inactive";
						db.SaveChanges();
						isDeletePlayer = true;
					}
				}
				catch (DbEntityValidationException exception)
				{
					TelegramBot.SendToTelegram(exception);
					LogException.Log(this, exception);
				}
			}
			return isDeletePlayer;
		}

		/// <summary>
		/// Method to search for a sentence
		/// </summary>
		/// <returns>The sentence found</returns>
		public Sentence SearchSentence()
		{
			Sentence sentence = null;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				try
                {
					do
					{
						sentence = db.Sentence.OrderBy(r => Guid.NewGuid()).Take(1).FirstOrDefault();
					} while (sentence == null);
				} 
				catch (DbEntityValidationException exception)
				{
					TelegramBot.SendToTelegram(exception);
					LogException.Log(this, exception);
				}
			}
			return sentence;
		}

		/// <summary>
		/// Method to register a report
		/// </summary>
		/// <param name="report">Data report</param>
		/// <returns>If the report was registered correctly</returns>
		public bool RegisterReport(ReportMisConduct report)
		{
			bool isReport = false;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				try
				{
					db.ReportMisConduct.Add(report);
					db.SaveChanges();
					isReport = true;
				}
				catch (DbEntityValidationException exception)
				{
					TelegramBot.SendToTelegram(exception);
					LogException.Log(this, exception);
				}
			}
			return isReport;
		}

		/// <summary>
		/// Method to get a player's report list
		/// </summary>
		/// <param name="nickname">Nickname of the player</param>
		/// <returns>The player report list</returns>
		public List<ReportMisConduct> SearchReport(String nickname)
        {
			List<ReportMisConduct> reportMisConducts = null;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				try
				{
					List<ReportMisConduct> reports = db.ReportMisConduct.Where(reportMisConductSearch => reportMisConductSearch.idReportedPlayer == nickname).ToList<ReportMisConduct>();
					reportMisConducts = reports.OrderBy(player => player.dateHour).ToList();
				}
				catch (DbEntityValidationException exception)
				{
					TelegramBot.SendToTelegram(exception);
					LogException.Log(this, exception);
				}
			}
			return reportMisConducts;
		}

		/// <summary>
		/// Method to change account to reported
		/// </summary>
		/// <param name="nickname">Nickname of the player</param>
		/// <returns>If the account was reported correctly</returns>
		public bool ReportAccountPlayer(string nickname)
		{
			bool isReportAccountPlayer = false;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				try
				{
					Player player = db.Player.SingleOrDefault(playerSearch => playerSearch.nickName == nickname);
					if (player != null)
					{
						player.statusPlayer = "Report";
						db.SaveChanges();
						isReportAccountPlayer = true;
					}
				}
				catch (EntityException exception)
				{
					TelegramBot.SendToTelegram(exception);
					LogException.Log(this, exception);
				}
			}
			return isReportAccountPlayer;
		}

		/// <summary>
		/// Method of saving a player's points
		/// </summary>
		/// <param name="nickname">Nickname of the player</param>
		/// <param name="points">Points obtained of the player</param>
		/// <returns>If the points were saved correctly</returns>
		public bool SavePoints(string nickname, int points)
		{
			bool save = false;
			Player player = null;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				player = db.Player.SingleOrDefault(playerSearch => playerSearch.nickName == nickname);
				player.scoreObtained += points;
				db.SaveChanges();
				save = true;
			}
			return save;
		}
	}
}

