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
	}

}

