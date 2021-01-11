using System;
using System.ServiceModel;

namespace HangmanGameService
{
    class Program
    {
        static void Main()
        {
            using (ServiceHost host = new ServiceHost(typeof(HangmanGameService)))
            {
                host.Open();
                Console.WriteLine("Server is running");
                Console.ReadLine();
            }
        }
    }
}
