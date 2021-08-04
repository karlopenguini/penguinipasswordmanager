using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PPM.Controls;
using System.ComponentModel;

namespace PPM.Models
{
    public class Credential
    {
        private string _name;
        private string _email;
        private string _username;
        private string _password;
        public Credential(string name, string email, string username, string password)
        {
            _name = name;
            _email = email;
            _username = username;
            _password = password;
        }
        public string Name
        {
            get
            {
                return _name;
            }
            set
            {
                _name = value;
                
            }
        }

        public string Email
        {
            get
            {
                return _email;
            }
            set
            {
                _email = value;
               
            }
        }
        public string Username
        {
            get
            {
                return _username;
            }
            set
            {
                _username = value;
                
            }
        }
        public string Password
        {
            get
            {
                return _password;
            }
            set
            {
                _password = value;
               
            }
        }
    }
}