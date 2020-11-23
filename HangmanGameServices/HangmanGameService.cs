using Connection;
using HangmanGameService;
using System.ServiceModel;
using System.Threading;
using System.Net.Mail;
using System.Configuration;
using System.Net.Configuration;
using System.Net;
using System.Security.Cryptography.X509Certificates;
using System.Net.Security;


namespace HangmanGameService
{
    [ServiceBehavior(ConcurrencyMode = ConcurrencyMode.Reentrant)]
    public partial class HangmanGameService : IHangmanGameService
    {
        public void SendOperation()
        {
            for (int index = 1; index <= 100; index++)
            {
                Thread.Sleep(50);
                OperationContext.Current.GetCallbackChannel<IHangmanGameServiceCallback>().Response(index);
            }

        }

    }

    public partial class HangmanGameService : IPlayerManager
    {
        Connection.QueryDB consult = new Connection.QueryDB();
        public void LogIn(string email, string password)
        {
            bool log = consult.IsLog(email, password);
            OperationContext.Current.GetCallbackChannel<IPlayerCallback>().PlayerResponseBoolean(log);

        }

        public void SearchEmailPlayer(string email)
        {
            bool emailFound = consult.SearchEmailPlayer(email);
            OperationContext.Current.GetCallbackChannel<IPlayerCallback>().PlayerResponseBoolean(emailFound);
        }

        public void ChangePassword(string email, string password)
        {
            bool change = consult.ChangePassword(email, password);
            OperationContext.Current.GetCallbackChannel<IPlayerCallback>().PlayerResponseBoolean(change);
        }

        public void Register(ServiceAccount account, ServicePlayer accountPlayer)
        {

            Account dataAccount = new Account();
            dataAccount.email = account.Email;
            dataAccount.passwordAccount = account.PasswordAccount;
            dataAccount.confirmationCode = account.ConfirmationCode;
            dataAccount.nickName = accountPlayer.NickName;

            Player dataPlayer = new Player();
            dataPlayer.namePlayer = accountPlayer.NamePlayer;
            dataPlayer.lastName = accountPlayer.LastName;
            dataPlayer.statusPlayer = accountPlayer.StatusPlayer;
            dataPlayer.nickName = accountPlayer.NickName;

            bool register = consult.RegisterPlayer(dataAccount, dataPlayer);
            OperationContext.Current.GetCallbackChannel<IPlayerCallback>().PlayerResponseBoolean(register);
        }

        public void SendEmail(string email, int code)
        {
            MailMessage correo = new MailMessage();
            correo.From = new MailAddress("hangmangameproject@gmail.com", "HangmanGame", System.Text.Encoding.UTF8);
            correo.To.Add(email);
            correo.Subject = "Code";
            correo.Body = "Your code is: " + code;
            correo.IsBodyHtml = true;
            correo.Priority = MailPriority.Normal;
            SmtpClient smtp = new SmtpClient();
            smtp.UseDefaultCredentials = false;
            smtp.Host = "smtp.gmail.com";
            smtp.Port = 587;
            smtp.Credentials = new System.Net.NetworkCredential("hangmangameproject@gmail.com", "Martha-Yazminz4");
            ServicePointManager.ServerCertificateValidationCallback =
                delegate (object s, X509Certificate certificate, X509Chain chain, SslPolicyErrors sslPolicyErrors) { return true; };
            smtp.EnableSsl = true;
            smtp.Send(correo);
        }
    }
}
