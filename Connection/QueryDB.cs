using System;
using System.Collections.Generic;
using System.Linq;

namespace Connection
{
	public class QueryDB
	{
		public bool IsLog(string email, string password)
		{
			bool log = false;
			using (HangmanGameContext db = new HangmanGameContext())
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
			return log;
		}

		public bool RegisterPlayer(Account account, Player player)
		{
			bool registerOk = false;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				db.Player.Add(player);
				db.Account.Add(account);
				db.SaveChanges();
				registerOk = true;
			}
			return registerOk;
		}
		public bool SearchNicknamePlayer(string nickName)
		{
			bool searchNickname = false;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				Player player = new Player();
				player = db.Player.SingleOrDefault(playerSearch => playerSearch.nickName == nickName);
				if (player != null)
				{
					searchNickname = true;
				}
			}
			return searchNickname;
		}

		public bool SearchEmailPlayer(string email)
		{
			bool search = false;
			using (HangmanGameContext db = new HangmanGameContext())
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
			return search;
		}

		public bool ChangePassword(string email, string newPassword)
		{
			bool update = false;
			using (HangmanGameContext db = new HangmanGameContext())
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
			return update;
		}

		public Account SearchAccount(string email)
		{
			Account account = new Account();
			using (HangmanGameContext db = new HangmanGameContext())
			{
				account = db.Account.SingleOrDefault(accountSearch => accountSearch.email == email);
			}
			return account;
		}

		public Player SearchPlayer(string nickName)
		{
			Player player = new Player();
			using (HangmanGameContext db = new HangmanGameContext())
			{
				player = db.Player.SingleOrDefault(playerSearch => playerSearch.nickName == nickName);
			}
			return player;
		}

		public List<Player> SearchBestScoresPlayer()
		{
			List<Player> playersOrder = new List<Player>();
			using (HangmanGameContext db = new HangmanGameContext())
			{
				List<Player>players = db.Player.Where(player => player.scoreObtained > 0).ToList<Player>();
				playersOrder = players.OrderBy(score => score.scoreObtained).ToList();
			}
			return playersOrder;
		}

		public Player SearchInformationPlayer(string email)
		{
			Player player = new Player();

			using (HangmanGameContext db = new HangmanGameContext())
			{
				Account account = db.Account.SingleOrDefault(playerSearch => playerSearch.email == email);
				player = db.Player.SingleOrDefault(playerSearch => playerSearch.nickName == account.nickName);
			}
			return player;
		}
		public bool SearchRepeatEmailAccount(string emailEdit, int idAccount)
		{
			bool search = false;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				Account account = new Account();
				account = db.Account.SingleOrDefault(accountSearch => accountSearch.email == emailEdit && accountSearch.idAccount != idAccount);
				if (account != null)
				{
					search = true;
				}
			}
			return search;
		}
		public bool SearchRepeatNickNamePlayer(string nickNameEdit, string nickNameCurrent)
		{
			bool search = false;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				Player player = new Player();
				player = db.Player.SingleOrDefault(playerSearch => playerSearch.nickName == nickNameEdit && playerSearch.nickName != nickNameCurrent);
				if (player != null)
				{
					search = true;
				}
			}
			return search;
		}

		public bool UpdateEmail(string email, int idAccount)
		{
			bool updateEmail = false;
			using (HangmanGameContext db = new HangmanGameContext())
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
			return updateEmail;
		}

		public bool UpdatePlayer(string nickName, Player playerEdit)
		{
			bool updatePlayer = false;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				Player player = new Player();
				player = db.Player.SingleOrDefault(playerSearch => playerSearch.nickName == nickName);
				if (player != null)
				{
					if (!string.IsNullOrWhiteSpace(playerEdit.namePlayer))
					{
						player.namePlayer = playerEdit.namePlayer;
					}
					if (!string.IsNullOrWhiteSpace(playerEdit.lastName))
					{
						player.lastName = playerEdit.lastName;
					}
					db.SaveChanges();

					updatePlayer = true;
				}
			}
			return updatePlayer;
		}
		public bool DeleteAccountPlayer(string nickName)
		{
			bool isDeletePlayer = false;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				Player player = new Player();
				player = db.Player.SingleOrDefault(playerSearch => playerSearch.nickName == nickName);
				if (player != null)
				{
					player.statusPlayer = "Inactive";
					db.SaveChanges();
					isDeletePlayer = true;
				}
			}
			return isDeletePlayer;
		}

		public Sentence SearchSentence(string language)
		{
			Sentence sentence = new Sentence();
			using (HangmanGameContext db = new HangmanGameContext())
			{
				int id = GenerateIdSearch();
				do
				{
					sentence = db.Sentence.SingleOrDefault(sentenceSearch => sentenceSearch.language == language && sentenceSearch.idSentence == id);
				} while (sentence == null);
				
			}
			return sentence;
		}

		private int CountRowsSentence()
		{
			int count = 0;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				count = db.Sentence.Count();
			}
			return count;
		}

		private int GenerateIdSearch()
		{
			Random random = new Random();
			int code = random.Next(1,CountRowsSentence());
			return code;
		}

	}


}

