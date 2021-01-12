namespace HangmanGameService
{
    /// <summary>
	/// This enumeration saves numbers to use throughout the server
	/// </summary>
    public enum NumberValues
    {
        /// <value>Zero assigns its value to an enum .</value>
        ZERO = 0,
        /// <value>One assigns its value to an enum .</value>
        ONE = 1,
        /// <value>Two assigns its value to an enum .</value>
        TWO = 2,
        /// <value>Three assigns its value to an enum .</value>
        THREE = 3,
        /// <value>Four assigns its value to an enum .</value>
        FOUR = 4,
        /// <value>Five assigns its value to an enum .</value>
        FIVE = 5,
        /// <value>Ten assigns its value to an enum .</value>
        TEN = 10
    }

    /// <summary>
	/// This class allows the assignment and retrieval of the values of the enumeration
	/// </summary>
    public static class Number
    {
        /// <summary>
        /// This method allows the assignment and retrieval of the values of the enumeration
        /// </summary>
        /// <param name="numberValues">The value of the enum</param>
        public static int NumberValue(NumberValues numberValues)
        {
            int number = (int)numberValues;
            return number;
        }
    }
}
