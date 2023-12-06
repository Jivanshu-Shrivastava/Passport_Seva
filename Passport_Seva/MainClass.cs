using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Passport_Seva
{
    public class MainClass
    {
        int[,] d = new int[,]
        {
  {0, 1, 2, 3, 4, 5, 6, 7, 8, 9},
  {1, 2, 3, 4, 0, 6, 7, 8, 9, 5},
  {2, 3, 4, 0, 1, 7, 8, 9, 5, 6},
  {3, 4, 0, 1, 2, 8, 9, 5, 6, 7},
  {4, 0, 1, 2, 3, 9, 5, 6, 7, 8},
  {5, 9, 8, 7, 6, 0, 4, 3, 2, 1},
  {6, 5, 9, 8, 7, 1, 0, 4, 3, 2},
  {7, 6, 5, 9, 8, 2, 1, 0, 4, 3},
  {8, 7, 6, 5, 9, 3, 2, 1, 0, 4},
  {9, 8, 7, 6, 5, 4, 3, 2, 1, 0}
};
        int[,] p = new int[,]
        {
       {0, 1, 2, 3, 4, 5, 6, 7, 8, 9},
       {1, 5, 7, 6, 2, 8, 3, 0, 9, 4},
       {5, 8, 0, 3, 7, 9, 6, 1, 4, 2},
       {8, 9, 1, 6, 0, 4, 3, 5, 2, 7},
       {9, 4, 5, 3, 1, 2, 6, 8, 7, 0},
       {4, 2, 8, 6, 5, 7, 3, 9, 0, 1},
       {2, 7, 9, 3, 8, 0, 6, 4, 1, 5},
       {7, 0, 4, 6, 9, 1, 3, 2, 5, 8}
        };

        int[] inv = { 0, 4, 3, 2, 1, 5, 6, 7, 8, 9 };

        public bool validateVerhoeff(string num)
        {
            int c = 0; int[] myArray = StringToReversedIntArray(num);
            for (int i = 0; i < myArray.Length; i++)
            {
                c = d[c, p[(i % 8), myArray[i]]];
            }
            return c == 0;

        }
        int[] StringToReversedIntArray(string num)
        {
            int[] myArray = new int[num.Length];
            for (int i = 0; i < num.Length; i++)
            {
                myArray[i] = int.Parse(num.Substring(i, 1));
            }
            Array.Reverse(myArray); return myArray;
        }
        public bool checkemailpresent(string s)
        {
            string connectionString = "server=LocalHost;user=root;password=jivanshu;database=passport_seva";
            string query = "SELECT COUNT(*) FROM user_details WHERE Email_Id =@dataToCheck";

            using (MySqlConnection connection = new MySqlConnection(connectionString))
            using (MySqlCommand command = new MySqlCommand(query, connection))
            {
                command.Parameters.AddWithValue("@dataToCheck", s);


                connection.Open();

                object result = command.ExecuteScalar();
                int count = 0;
                if (result != null && int.TryParse(result.ToString(), out count))
                {
                }

                return count > 0;
            }

        }
    }
    }