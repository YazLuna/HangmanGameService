using System;
using System.Collections.Generic;
using System.Linq;
using System.Data.Entity.Validation;

namespace Connection
{
	public class QueryDB
	{
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
						Player player = new Player();
						player = db.Player.SingleOrDefault(playerSearch => playerSearch.nickName == account.nickName &&
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
			}
			return idMatch;
		}
		public bool RegisterPlayerMatch(int idMatch, List<Player> players)
        {
			bool isRegisterPlayerMatch = false;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				try
				{
					Match match = new Match();
					match = db.Match.SingleOrDefault(matchSearch => matchSearch.idMatch == idMatch);
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
		public bool SearchNicknamePlayer(string nickname)
		{
			bool searchNickname = false;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				try
				{
					Player player = new Player();
					player = db.Player.SingleOrDefault(playerSearch => playerSearch.nickName == nickname);
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
						Player player = new Player();
						player = db.Player.SingleOrDefault(playerSearch => playerSearch.nickName == account.nickName &&
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
		public bool ChangePassword(string email, string newPassword)
		{
			bool update = false;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				try
				{
					Account account = new Account();
					account = db.Account.SingleOrDefault(accountSearch => accountSearch.email == email);
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
		public Account SearchAccount(string email)
		{
			Account account = new Account();
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
		public Player SearchPlayer(string nickname)
		{
			Player player = new Player();
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
		public List<Player> SearchBestScoresPlayer()
		{
			List<Player> playersOrder = new List<Player>();
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
		public Player SearchInformationPlayer(string email)
		{
			Player player = new Player();
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
		public bool SearchRepeatEmailAccount(string emailEdit, int idAccount)
		{
			bool search = false;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				try
				{
					Account account = new Account();
					account = db.Account.SingleOrDefault(accountSearch => accountSearch.email == emailEdit && accountSearch.idAccount != idAccount);
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
		public bool SearchRepeatNicknamePlayer(string nicknameEdit, string nicknameCurrent)
		{
			bool search = false;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				try
				{
					Player player = new Player();
					player = db.Player.SingleOrDefault(playerSearch => playerSearch.nickName == nicknameEdit && playerSearch.nickName != nicknameCurrent);
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
		public bool UpdateEmail(string email, int idAccount)
		{
			bool updateEmail = false;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				try
				{
					Account account = new Account();
					account = db.Account.SingleOrDefault(accountSearch => accountSearch.idAccount == idAccount);
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
		public bool UpdatePlayer(string nickname, Player playerEdit)
		{
			bool updatePlayer = false;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				try { 
					Player player = new Player();
					player = db.Player.SingleOrDefault(playerSearch => playerSearch.nickName == nickname);
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
		public bool DeleteAccountPlayer(string nickname)
		{
			bool isDeletePlayer = false;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				try
				{
					Player player = new Player();
					player = db.Player.SingleOrDefault(playerSearch => playerSearch.nickName == nickname);
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
		public Sentence SearchSentence()
		{
			Sentence sentence = new Sentence();
			using (HangmanGameContext db = new HangmanGameContext())
			{
				do
				{
					sentence = db.Sentence.OrderBy(r => Guid.NewGuid()).Take(1).FirstOrDefault();
				} while (sentence == null);
			}
			return sentence;
		}
		
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
		public List<ReportMisConduct> SearchReport(String nickname)
        {
			List<ReportMisConduct> reportMisConducts = new List<ReportMisConduct>();
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
		public bool ReportAccountPlayer(string nickname)
		{
			bool isReportAccountPlayer = false;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				try
				{
					Player player = new Player();
					player = db.Player.SingleOrDefault(playerSearch => playerSearch.nickName == nickname);
					if (player != null)
					{
						player.statusPlayer = "Report";
						db.SaveChanges();
						isReportAccountPlayer = true;
					}
				}
				catch (DbEntityValidationException exception)
				{
					TelegramBot.SendToTelegram(exception);
					LogException.Log(this, exception);
				}
			}
			return isReportAccountPlayer;
		}

		public bool SavePoints(string nickname, int points)
		{
			bool save = false;
			Player player = new Player();
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

