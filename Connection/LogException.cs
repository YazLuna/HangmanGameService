using System;
using System.IO;
using System.Diagnostics;

namespace Connection
{
    public class LogException
    {
        public static void Log(object obj, Exception exception)
        {
            string date = System.DateTime.Now.ToString("yyyy-MM-dd");
            string time = System.DateTime.Now.ToString("HH:mm:ss");
            string path = "Log/log-" + date + ".txt";
            string pathDirectory = "Log";
            try
            {
                if(!Directory.Exists(pathDirectory)){
                    Directory.CreateDirectory(pathDirectory);
                }
                StreamWriter streamWriter = new StreamWriter(path, true);
                StackTrace stacktrace = new StackTrace();
                streamWriter.WriteLine(obj.GetType().FullName + " " + time);
                streamWriter.WriteLine(stacktrace.GetFrame(1).GetMethod().Name + " - " + exception.ToString());
                streamWriter.WriteLine("");
                streamWriter.Flush();
                streamWriter.Close();
            }
            catch (IOException exceptionLog)
            {
                TelegramBot.SendToTelegram(exceptionLog);
            }
        }
    }
}
 