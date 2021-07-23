using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Shapes;

namespace PPM
{
    /// <summary>
    /// Interaction logic for Window1.xaml
    /// </summary>
    public partial class CredentialsWindow : Window
    {
        public CredentialsWindow()
        {
            InitializeComponent();

            CredentialsTable.Items.Add(new Credentials
            {
                Name = "Google",
                Email = "karlobpalisoc@gmail.com",
                Password = "011120asdasd"
            });
        }

        
        public class Credentials
        {
            public Credentials()
            {
                Name = "No Data";
                Email = "No Data";
                Username = "No Data";
                Password = "No Data";
            }
            public string Name { get; set; }
            public string Email { get; set; }
            public string Username { get; set; }
            public string Password { get; set; }
        }
    }
}
