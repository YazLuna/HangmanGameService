using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Connection;
using System.Collections.Generic;
using System.Threading;


namespace HangmanGameTests
{
    [TestClass]
    public class ReportTests
    {
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
        public void TestRegisterReport()
        {
            ReportMisConduct reportMisConduct = new ReportMisConduct();
            DateTime dateTimeCurrent = DateTime.Now;
            reportMisConduct.dateHour = dateTimeCurrent;
            reportMisConduct.typeReport = "ABUSO VERBAL "+
            "Lenguaje ofensivo, Acoso";
            reportMisConduct.idReportedPlayer = "MariaFer13";
            reportMisConduct.idReportingPlayer = "MiroStart";
            QueryDB queryDB = new QueryDB();
            bool isRegisterReport;
            isRegisterReport = queryDB.RegisterReport(reportMisConduct);
            Assert.IsTrue(isRegisterReport);
        }

        [TestMethod]
        public void TestErrorRegisterReport()
        {
            ReportMisConduct reportMisConduct = new ReportMisConduct();
            DateTime dateTimeCurrent = DateTime.Now;
            reportMisConduct.dateHour = dateTimeCurrent;
            reportMisConduct.idReportedPlayer = "MiroStart";
            reportMisConduct.idReportingPlayer = null;
            QueryDB queryDB = new QueryDB();
            bool isRegisterReport;
            isRegisterReport = queryDB.RegisterReport(reportMisConduct);
            Thread.Sleep(2000);
            Assert.IsTrue(isRegisterReport);
        }

        [TestMethod]
        public void TestSearchReport()
        {
            List<ReportMisConduct> reportMisConducts = new List<ReportMisConduct>();
            QueryDB queryDB = new QueryDB();
            reportMisConducts = queryDB.SearchReport("MariaFer13");
            Assert.AreEqual(1, reportMisConducts.Count);
        }

        [TestMethod]
        public void TestErrorSearchReport()
        {
            List<ReportMisConduct> reportMisConducts;
            QueryDB queryDB = new QueryDB();
            reportMisConducts = queryDB.SearchReport("MiroStart");
            Thread.Sleep(2000);
            Assert.AreNotEqual(0,reportMisConducts.Count);
        }

        [TestMethod]
        public void TestReportAccountPlayer()
        {
            QueryDB queryDB = new QueryDB();
            bool isReportAccountPlayer;
            isReportAccountPlayer = queryDB.ReportAccountPlayer("MariaFer13");
            Assert.IsTrue(isReportAccountPlayer);
        }

        [TestMethod]
        public void TestErrorReportAccountPlayer()
        {
            QueryDB queryDB = new QueryDB();
            bool isReportAccountPlayer;
            isReportAccountPlayer = queryDB.ReportAccountPlayer(null);
            Thread.Sleep(2000);
            Assert.IsTrue(isReportAccountPlayer);
        }

        [ClassCleanup()]
        public static void ClassCleanupReport()
        {
            QueryDB queryDB = new QueryDB();
            queryDB.DeleteAccount("MariaFer13");
            queryDB.DeleteAccount("MiroStart");
            queryDB.DeletePlayer("MariaFer13");
            queryDB.DeletePlayer("MiroStart");
            queryDB.DeleteReport("MariaFer13");
        }
    }
}
