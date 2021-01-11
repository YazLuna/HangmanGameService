namespace HangmanGameService
{
    public enum NumberValues
    {
        ZERO = 0,
        ONE = 1,
        TWO = 2,
        THREE = 3,
        FOUR = 4,
        FIVE = 5,
        TEN = 10
    }
    public class Number
    {
        public static int NumberValue(NumberValues numberValues)
        {
            int number = (int)numberValues;
            return number;
        }
    }
}
