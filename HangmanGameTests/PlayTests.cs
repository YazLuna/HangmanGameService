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
        [TestMethod]
        public void TestRegisterMatch()
        {
            Match match = new Match();
            DateTime dateTimeCurrent = DateTime.Now;
            match.dateHour = dateTimeCurrent;
            match.idSentence = 1;
            QueryDB queryDB = new QueryDB();
            int idMatch;
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
            player.nickName = "MariaFer13";
            players.Add(player);
            player.nickName = "MarthaStart123";
            players.Add(player);
            QueryDB queryDB = new QueryDB();
            bool isRegisterPlayerMatch;
            isRegisterPlayerMatch = queryDB.RegisterPlayerMatch(1, players);
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
    }
}
