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
					log = true;
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
			bool validateNickname = false;
			using (HangmanGameContext db = new HangmanGameContext())
			{
			    Player player = new Player();
				player = db.Player.SingleOrDefault(playerSearch => playerSearch.nickName == nickName);
				if (player != null)
				{
					validateNickname = true;
				}
			}
			return validateNickname;
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
					search = true;
				}
			}
			return search;
		}

		public bool ChangePassword(string email, string password)
		{
			bool update = false;
			using (HangmanGameContext db = new HangmanGameContext())
			{
				//db.Account.Attach();
			}
			return update;
		}

		public Account SearchAccount(string email)
        {
			Account account = new Account();
			using (HangmanGameContext db = new HangmanGameContext()) {
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
	}

}

