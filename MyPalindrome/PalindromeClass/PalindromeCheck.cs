using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace PalindromeClass
{
    public class PalindromeCheck
    {
        // TODO: abstract class and overload IsPalindrome method
        public static bool IsPalindrome (string str)
        {
            var sb = new StringBuilder();

            // normalize
            // strip punctuation & rmv capitaliztion
            foreach (char c in str)
            {
                if (!char.IsPunctuation(c))
                    sb.Append(Char.ToLower(c));
            }

            // string to array
            str = sb.ToString();
            char[] arrayStr = str.ToCharArray();

            // reversed array and back to string
            Array.Reverse(arrayStr);
            string backwardsStr = new string(arrayStr);

            // return comparison
            return str == backwardsStr;
            
        }
        
    }
}
