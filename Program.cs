using System;
using DbConnection;
using System.Collections.Generic;

namespace CRUDMySql
{
    class Program
    {
        static void Main(string[] args)
        {
            ReadDataBase();
            // Create(); // <----- Can be used to manually add an entry FROM the terminal!
        }
        public static void ReadDataBase()
        {
            string query = "SELECT * FROM users;";
            var allUsers = DbConnector.Query(query);
            foreach (var user in allUsers)
            {
                Console.WriteLine($"ID: {user["id"]}, First Name: {user["FirstName"]}, Last Name: {user["LastName"]}, Favorite Number {user["FavoriteNumber"]}");
            }
        }
        public static void Create()
        {
            Console.WriteLine("Enter first name:");
            string firstName = Console.ReadLine();
            Console.WriteLine("Enter last name:");
            string lastName = Console.ReadLine();
            Console.WriteLine("Enter favorite number:");
            string favNumAsString = Console.ReadLine();
            int favNum = int.Parse(favNumAsString);
            string query = $"INSERT INTO users (FirstName, LastName, FavoriteNumber) VALUES ('{firstName}', '{lastName}', {favNum});";
            DbConnector.Execute(query);
            ReadDataBase();
        }
        
    }
}
