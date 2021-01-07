using System;
using Microsoft.VisualStudio.TestTools.UnitTesting;
using Connection;
using System.Threading;


namespace HangmanGameTests
{
    [TestClass]
    public class PlayerTests
    {
        public string Encrypt(string password)
        {
            string passwordEncrypt = string.Empty;
            byte[] encryted = System.Text.Encoding.Unicode.GetBytes(password);
            passwordEncrypt = Convert.ToBase64String(encryted);
            return passwordEncrypt;
        }

        public string Decrypt(string password)
        {
            string passwordDecrypt = string.Empty;
            byte[] decryted = Convert.FromBase64String(password);
            passwordDecrypt = System.Text.Encoding.Unicode.GetString(decryted);
            return passwordDecrypt;
        }

        [TestMethod]
        public void TestRegisterPlayer()
        {
            Account account = new Account();
            account.passwordAccount = Encrypt("Mmol180515#");
            account.email = "maria_145@gmail.com";
            account.confirmationCode = 154863;
            account.nickName = "Maria123";

            Player player = new Player();
            player.lastName = "Gomez";
            player.nickName = "Maria123";
            player.namePlayer = "Maria Fernanda";
            player.statusPlayer = "Active";

            QueryDB queryDB = new QueryDB();
            bool isRegisterPlayer;
            isRegisterPlayer = queryDB.RegisterPlayer(account, player);
            Assert.IsTrue(isRegisterPlayer);
        }

        [TestMethod]
        public void TestErrorRegisterPlayer()
        {
            Account account = new Account();
            account.passwordAccount = Encrypt("Mmol180515#");
            account.confirmationCode = 154863;
            account.nickName = "Maria123";

            Player player = new Player();
            player.lastName = "Gomez";
            player.nickName = "Maria123";
            player.statusPlayer = "Active";

            QueryDB queryDB = new QueryDB();
            bool isRegisterPlayer;
            isRegisterPlayer = queryDB.RegisterPlayer(account, player);
            Thread.Sleep(2000);
            Assert.IsTrue(isRegisterPlayer);
        }

        [TestMethod]
        public void TestSearchNicknamePlayer()
        {
            QueryDB queryDB = new QueryDB();
            bool isNicknamePlayer;
            isNicknamePlayer = queryDB.SearchNicknamePlayer("MiroStart");
            Assert.IsTrue(isNicknamePlayer);
        }

        [TestMethod]
        public void TestErrorSearchNicknamePlayer()
        {
            QueryDB queryDB = new QueryDB();
            bool isNicknamePlayer;
            isNicknamePlayer = queryDB.SearchNicknamePlayer(null);
            Assert.IsTrue(isNicknamePlayer);
        }

        [TestMethod]
        public void TestSearchEmailPlayer()
        {
            QueryDB queryDB = new QueryDB();
            bool isEmailPlayer;
            isEmailPlayer = queryDB.SearchEmailPlayer("martha_15_7@gmail.com");
            Assert.IsTrue(isEmailPlayer);
        }

        [TestMethod]
        public void TestErrorSearchEmailPlayer()
        {
            QueryDB queryDB = new QueryDB();
            bool isEmailPlayer;
            isEmailPlayer = queryDB.SearchEmailPlayer(null);
            Assert.IsTrue(isEmailPlayer);
        }

        [TestMethod]
        public void TestChangePassword()
        {
            QueryDB queryDB = new QueryDB();
            bool isChangePassword;
            string newPassword = Encrypt("Mmol15052000#");
            isChangePassword = queryDB.ChangePassword("martha_15_7@gmail.com", newPassword);
            Assert.IsTrue(isChangePassword);
        }

        [TestMethod]
        public void TestErrorChangePassword()
        {
            QueryDB queryDB = new QueryDB();
            bool isChangePassword;
            string newPassword = Encrypt("Mmol15052000#");
            isChangePassword = queryDB.ChangePassword("martha_15_7@gmail.com", null);
            Thread.Sleep(2000);
            Assert.IsTrue(isChangePassword);
        }

        [TestMethod]
        public void TestSearchAccount()
        {
            QueryDB queryDB = new QueryDB();
            Account account = new Account();
            account = queryDB.SearchAccount("martha_15_7@gmail.com");
            Assert.AreEqual("martha_15_7@gmail.com", account.email);
        }

        [TestMethod]
        public void TestErrorSearchAccount()
        {
            QueryDB queryDB = new QueryDB();
            Account account = new Account();
            account = queryDB.SearchAccount("martha_2539_7@gmail.com");
            Assert.AreEqual("martha_2539_7@gmail.com", account.email);
        }

        [TestMethod]
        public void TestSearchPlayer()
        {
            QueryDB queryDB = new QueryDB();
            Player player = new Player();
            player = queryDB.SearchPlayer("MarthaStart123");
            Assert.AreEqual("MarthaStart123", player.nickName);
        }

        [TestMethod]
        public void TestErrorSearchPlayer()
        {
            QueryDB queryDB = new QueryDB();
            Player player = new Player();
            player = queryDB.SearchPlayer("MarthaStart2563");
            Assert.AreEqual("MarthaStart2563", player.nickName);
        }

        [TestMethod]
        public void TestSearchRepeatEmailAccount()
        {
            QueryDB queryDB = new QueryDB();
            bool isRepeatEmailAccount;
            isRepeatEmailAccount = queryDB.SearchRepeatEmailAccount("martha_20_7@gmail.com", 1);
            Assert.IsTrue(isRepeatEmailAccount);
        }

        [TestMethod]
        public void TestErrorSearchRepeatEmailAccount()
        {
            QueryDB queryDB = new QueryDB();
            bool isRepeatEmailAccount;
            isRepeatEmailAccount = queryDB.SearchRepeatEmailAccount("martha_15_7@outlook.com", 0);
            Assert.IsTrue(isRepeatEmailAccount);
        }

        [TestMethod]
        public void TestSearchRepeatNicknamePlayer()
        {
            QueryDB queryDB = new QueryDB();
            bool isRepeatNicknamePlayer;
            isRepeatNicknamePlayer = queryDB.SearchRepeatNicknamePlayer("MiroStart586", "MiroStart");
            Assert.IsTrue(isRepeatNicknamePlayer);
        }

        [TestMethod]
        public void TestErrorSearchRepeatNicknamePlayer()
        {
            QueryDB queryDB = new QueryDB();
            bool isRepeatNicknamePlayer;
            isRepeatNicknamePlayer = queryDB.SearchRepeatNicknamePlayer(null, "MiroStart");
            Assert.IsTrue(isRepeatNicknamePlayer);
        }

        [TestMethod]
        public void TestUpdateEmail()
        {
            QueryDB queryDB = new QueryDB();
            bool isUpdateEmail;
            isUpdateEmail = queryDB.UpdateEmail("martha_20_7@outlook.com", 1);
            Assert.IsTrue(isUpdateEmail);
        }

        [TestMethod]
        public void TestErrorUpdateEmail()
        {
            QueryDB queryDB = new QueryDB();
            bool isUpdateEmail;
            isUpdateEmail = queryDB.UpdateEmail(null, 1);
            Thread.Sleep(2000);
            Assert.IsTrue(isUpdateEmail);
        }

        [TestMethod]
        public void TestUpdatePlayer()
        {
            QueryDB queryDB = new QueryDB();
            bool isUpdatePlayer;
            Player player = new Player();
            player.lastName = "Valdivieso";
            isUpdatePlayer = queryDB.UpdatePlayer("MiroStart", player);
            Assert.IsTrue(isUpdatePlayer);
        }

        [TestMethod]
        public void TestErrorUpdatePlayer()
        {
            QueryDB queryDB = new QueryDB();
            bool isUpdatePlayer;
            Player player = new Player();
            isUpdatePlayer = queryDB.UpdatePlayer("MiroStart", player);
            Thread.Sleep(2000);
            Assert.IsTrue(isUpdatePlayer);
        }

        [TestMethod]
        public void TestDeleteAccountPlayer()
        {
            QueryDB queryDB = new QueryDB();
            bool isDeleteAccountPlayer;
            isDeleteAccountPlayer = queryDB.DeleteAccountPlayer("MiroStart");
            Assert.IsTrue(isDeleteAccountPlayer);
        }

        [TestMethod]
        public void TestErrorDeleteAccountPlayer()
        {
            QueryDB queryDB = new QueryDB();
            bool isDeleteAccountPlayer;
            isDeleteAccountPlayer = queryDB.DeleteAccountPlayer(null);
            Thread.Sleep(2000);
            Assert.IsTrue(isDeleteAccountPlayer);
        }
    }
}
