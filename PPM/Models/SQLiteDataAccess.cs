using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SQLite;
using System.Linq;
using System.Windows.Controls;
using System.Text;
using System.Threading.Tasks;
using Dapper;
using PPM.Models;
using System.Xml.Linq;

namespace PPM.Models
{
    public class SQLiteDataAccess
    {
        public static string[] LoadCredential(string name)
        {
            using (IDbConnection cnn = new SQLiteConnection(LoadConnectionString()))
            {
                var output = cnn.Query<Credential>(string.Format("select * from Credential where NAME = '{0}'", name), new DynamicParameters());

                var creds = output.Select(c => string.Format("{0},{1},{2},{3}", c.Name, c.Email, c.Username, c.Password)).ToArray();
                var credentials = creds[0].Split(',');
                return credentials;
            }
        }

        public static void SaveCredential(Credential credentials)
        {
            using (IDbConnection cnn = new SQLiteConnection(LoadConnectionString()))
            {
                try
                {
                    cnn.Execute("insert into Credential (NAME, EMAIL, USERNAME, PASSWORD) values (@Name, @Email, @Username, @Password)", credentials);
                }
                catch (Exception)
                {
                    return;
                }

            }
        }

        public static void DeleteCredential(TextBox name, TextBox email, TextBox username, PasswordBox password)
        {
            using (IDbConnection cnn = new SQLiteConnection(LoadConnectionString()))
            {
                try
                {
                    cnn.Execute(string.Format("delete from Credential where NAME = '{0}' and EMAIL = '{1}' and USERNAME = '{2}' and PASSWORD = '{3}'", name.Text, email.Text, username.Text, password.Password));
                }
                catch (Exception)
                {
                    return;
                }
            }
        }

        public static List<Credential> ListOfAllCredentials()
        {
            using (IDbConnection cnn = new SQLiteConnection(LoadConnectionString()))
            {
                List<Credential> listOfCredentials = cnn.Query<Credential>("select * from Credential").ToList();
                return listOfCredentials;
            }
        }

        public static List<string> ListOfAllNames()
        {
            using (IDbConnection cnn = new SQLiteConnection(LoadConnectionString()))
            {
                List<string> listOfCredentials = cnn.Query<string>("select NAME from credential").ToList();
                return listOfCredentials;
            }
        }

        public static string LoadConnectionString(string id = "Default")
        {
            return ConfigurationManager.ConnectionStrings[id].ConnectionString;
        }

        public static void DeleteCredentialFromName(string name)
        {
            using (IDbConnection cnn = new SQLiteConnection(LoadConnectionString()))
            {
                try
                {
                    cnn.Execute(string.Format("delete from Credential where NAME='{0}'", name));
                }
                catch (Exception)
                {
                    return;
                }
            }
        }

    }
}