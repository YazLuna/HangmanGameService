using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Connection;
using System.Collections.Generic;
using System.Threading;

namespace HangmanGameTests
{
    [TestClass]
    public class PlayTests
    {
        private static int idMatch;
        public static string Encrypt(string password)
        {
            string passwordEncrypt = string.Empty;
            byte[] encryted = System.Text.Encoding.Unicode.GetBytes(password);
            passwordEncrypt = Convert.ToBase64String(encryted);
            return passwordEncrypt;
        }

        [ClassInitialize()]
        public static void ClassInitializeReport(TestContext testContext)
        {
            Account accountOne = new Account();
            accountOne.passwordAccount = Encrypt("Mmol180515#");
            accountOne.email = "maria_15_7@outlook.com";
            accountOne.confirmationCode = 154863;
            accountOne.nickName = "MariaFer13";

            Player playerOne = new Player();
            playerOne.lastName = "Gomez";
            playerOne.nickName = "MariaFer13";
            playerOne.namePlayer = "Maria Fernanda";
            playerOne.statusPlayer = "Active";

            Account accountTwo = new Account();
            accountTwo.passwordAccount = Encrypt("Mmol180515#");
            accountTwo.email = "martha_15_7@gmail.com";
            accountTwo.confirmationCode = 154863;
            accountTwo.nickName = "MiroStart";

            Player playerTwo = new Player();
            playerTwo.lastName = "Ortiz";
            playerTwo.nickName = "MiroStart";
            playerTwo.namePlayer = "Martha";
            playerTwo.statusPlayer = "Active";

            QueryDB queryDB = new QueryDB();
            queryDB.RegisterPlayer(accountOne, playerOne);
            queryDB.RegisterPlayer(accountTwo, playerTwo);
        }

        [TestMethod]
        public void TestRegisterMatch()
        {
            Match match = new Match();
            DateTime dateTimeCurrent = DateTime.Now;
            match.dateHour = dateTimeCurrent;
            match.idSentence = 1;
            QueryDB queryDB = new QueryDB();
            idMatch = queryDB.RegisterMatch(match);
            Assert.IsNotNull(idMatch);
        }

        [TestMethod]
        public void TestErrorRegisterMatch()
        {
            Match match = new Match();
            DateTime dateTimeCurrent = DateTime.Now;
            match.dateHour = dateTimeCurrent;
            QueryDB queryDB = new QueryDB();
            int idMatch;
            idMatch = queryDB.RegisterMatch(match);
            Thread.Sleep(2000);
            Assert.AreNotEqual(0,idMatch);
        }

        [TestMethod]
        public void TestRegisterPlayerMatch()
        {
            List<Player> players = new List<Player>();
            Player player = new Player();
            player.nickName = "MiroStart";
            players.Add(player);
            player.nickName = "MariaFer13";
            players.Add(player);
            QueryDB queryDB = new QueryDB();
            bool isRegisterPlayerMatch;
            isRegisterPlayerMatch = queryDB.RegisterPlayerMatch(idMatch, players);
            Assert.IsTrue(isRegisterPlayerMatch);
        }

        [TestMethod]
        public void TestErrorRegisterPlayerMatch()
        {
            List<Player> players = new List<Player>();
            QueryDB queryDB = new QueryDB();
            bool isRegisterPlayerMatch;
            isRegisterPlayerMatch = queryDB.RegisterPlayerMatch(1, players);
            Thread.Sleep(2000);
            Assert.IsTrue(isRegisterPlayerMatch);
        }

        [TestMethod]
        public void TestSearchSentence()
        {
            QueryDB queryDB = new QueryDB();
            Sentence sentence = queryDB.SearchSentence();
            Assert.IsNotNull(sentence.hintSpanish);
        }

        [TestMethod]
        public void TestSavePoints()
        {
            QueryDB queryDB = new QueryDB();
            bool saveOk = queryDB.SavePoints("MiroStart",1000);
            Assert.IsTrue(saveOk);
        }

        [TestMethod]
        public void TestErrorSavePoints()
        {
            QueryDB queryDB = new QueryDB();
            bool saveError = queryDB.SavePoints("MiroStarts", 1000);
            Assert.IsFalse(saveError);
        }

        [ClassCleanup()]
        public static void ClassCleanupPlayer()
        {
            QueryDB queryDB = new QueryDB();
            List<Player> players = new List<Player>();
            Player playerOne = new Player();
            playerOne.nickName = "MiroStart";
            players.Add(playerOne);
            Player playerTwo = new Player();
            playerTwo.nickName = "MariaFer13";
            players.Add(playerTwo);
            queryDB.DeletePlayerMatch(idMatch, players);
            queryDB.DeleteMatch(idMatch);
            queryDB.DeleteAccount("MariaFer13");
            queryDB.DeleteAccount("MiroStart");
            queryDB.DeletePlayer("MariaFer13");
            queryDB.DeletePlayer("MiroStart");
        }
    }
}
