using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;

namespace Education_Ki_Dunya
{
    public class databaseConnection
    {
        public string dbConnection()
        {
            SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
            builder.InitialCatalog = "EducationKiDunya";
            builder.DataSource = "DESKTOP-1IMRK9O\\SQLEXPRESS";
            builder.UserID = "sa";
            builder.Password = "1234";
            return builder.ConnectionString;
        }

        public List<Book> getData(string query)
        {
            //Console.WriteLine();
            SqlConnection connection = new SqlConnection(dbConnection());
            connection.Open();
            SqlCommand cmd = new SqlCommand(query, connection);
            SqlDataReader reader = cmd.ExecuteReader();

            List<Book> booksList = new List<Book>();
            while(reader.Read())
            {
                Book book = new Book(Int32.Parse(reader[0].ToString()), reader[1].ToString(), 
                    reader[2].ToString(), reader[3].ToString(), reader[4].ToString());
                booksList.Add(book);
            }
            connection.Close();
            return booksList;
        }

        public int writeData(string query)
        {
            SqlConnection connection = new SqlConnection(dbConnection());
            connection.Open();
            SqlCommand cmd = new SqlCommand(query, connection);
            int result = cmd.ExecuteNonQuery();
            connection.Close();
            return result;
        }

        public int getAuthorID(string query)
        {
            SqlConnection connection = new SqlConnection(dbConnection());
            connection.Open();
            SqlCommand cmd = new SqlCommand(query, connection);
            SqlDataReader reader = cmd.ExecuteReader();
            int ID = 0;
            while(reader.Read())
            {
               ID = Int32.Parse(reader[0].ToString());
            }
            
            connection.Close();
            return ID;
        }

        public string getBookDescription(string query)
        {
            SqlConnection connection = new SqlConnection(dbConnection());
            connection.Open();
            SqlCommand cmd = new SqlCommand(query, connection);
            SqlDataReader reader = cmd.ExecuteReader();
            string description = "";
            while(reader.Read())
            {
                description = reader[0].ToString();
            }
            connection.Close();
            return description;
        }
    }
}