﻿using System;
using System.IO;
using Telegram.Bot;

namespace Connection
{
    /// <summary>
	/// This class manages the telegram bot
	/// </summary>
    public class TelegramBot
    {
        private static readonly string idGroup = "-1001448987677";
        private static readonly TelegramBotClient telegramBotClient = new TelegramBotClient("1467307763:AAFeNhCkY01af8lRoMeZZuHOZTg-E_w7HAM");

        /// <summary>
        /// This is the constructor telegram Bot
        /// </summary>
        TelegramBot()
        {

        }

        /// <summary>
        /// This method sends the exception to telegram
        /// </summary>
        /// <param name="exception">The exception to log</param>
        public static void SendToTelegram(Exception exception)
        {
            try
            {
                string menssage = "Error message: " + exception.Message;
                if (exception.InnerException != null)
                {
                    menssage = menssage + "\nInner exception: " + exception.InnerException.Message;
                }
                menssage = menssage + "\nStack trace: " + exception.StackTrace;
                telegramBotClient.SendTextMessageAsync(idGroup, menssage);
            }
            catch (IOException ioException)
            {
                TelegramBot telegramBot = new TelegramBot();
                LogException.Log(telegramBot, ioException);
            }
        }
    }
}
