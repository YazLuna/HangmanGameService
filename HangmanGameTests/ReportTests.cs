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
        [TestMethod]
        public void TestRegisterReport()
        {
            ReportMisConduct reportMisConduct = new ReportMisConduct();
            DateTime dateTimeCurrent = DateTime.Now;
            reportMisConduct.dateHour = dateTimeCurrent;
            reportMisConduct.typeReport = "ABUSO VERBAL "+
            "Lenguaje ofensivo, Acoso";
            reportMisConduct.idReportedPlayer = "MiroStart";
            reportMisConduct.idReportingPlayer = "MariaFer13";
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
            reportMisConduct.idReportingPlayer = "MariaFer13";
            QueryDB queryDB = new QueryDB();
            bool isRegisterReport;
            Thread.Sleep(2000);
            isRegisterReport = queryDB.RegisterReport(reportMisConduct);
            Assert.IsTrue(isRegisterReport);
        }

        [TestMethod]
        public void TestSearchReport()
        {
            List<ReportMisConduct> reportMisConducts = new List<ReportMisConduct>();
            QueryDB queryDB = new QueryDB();
            reportMisConducts = queryDB.SearchReport("MariaFer13");
            Assert.IsNotNull(reportMisConducts);
        }

        [TestMethod]
        public void TestErrorSearchReport()
        {
            List<ReportMisConduct> reportMisConducts = new List<ReportMisConduct>();
            QueryDB queryDB = new QueryDB();
            reportMisConducts = queryDB.SearchReport("Martha252");
            Thread.Sleep(2000);
            Assert.IsNotNull(reportMisConducts);
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
    }
}
