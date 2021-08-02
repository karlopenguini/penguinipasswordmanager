using System.Collections.Generic;
using System.Windows;
using System.Windows.Input;
using PPMUI.Controller;

namespace PPM
{
    /// <summary>
    /// Interaction logic for MainWindow.xaml
    /// </summary>
    public partial class MainWindow : Window
    {
        /// Controller
        public Controller Controls = new Controller();
        public CredentialsWindow AllCredentials;
        public EditWindow EditCredentials;
        /// Initialize Window
        public MainWindow()
        {
            InitializeComponent();

        }

        private void RemoveEntries()
        {
            NameInput.Text = string.Empty;
            EmailInput.Text = string.Empty;
            UserNameInput.Text = string.Empty;
            PasswordInput.Password = string.Empty;
        }

        private void SaveButton_Click(object sender, RoutedEventArgs e)
        {

            string name = NameInput.Text;
            string email = EmailInput.Text;
            string username = UserNameInput.Text;
            string password = PasswordInput.Password;

            if (name == "")
            {
                return;
            }
            else
            {
                Controls.AddNewCredentialsToDatabase(name, email, username, password);
                RemoveEntries();
            }

            if (AllCredentials != null)
            {
                AllCredentials.RefreshCredentialsTable();
            }

        }

        private void SearchButton_Click(object sender, RoutedEventArgs e)
        {
            string name = SearchInput.Text;
            if (name == "")
            {
                return;
            }
            else
            {
                Controls.ShowCredentials(name, EmailOutput, UsernameOutput, PasswordOutput);
            }
        }

        private void DeleteButton_Click(object sender, RoutedEventArgs e)
        {
            Controls.DeleteCredentialsInDatabase(NameInput, EmailInput, UserNameInput, PasswordInput);
            if (AllCredentials != null)
            {
                AllCredentials.RefreshCredentialsTable();
            }
            RemoveEntries();
        }
        private void EditButton_Click(object sender, RoutedEventArgs e)
        {
            EditCredentials = new EditWindow();
            EditCredentials.Closed += (_, __) => this.EditCredentials = null;
            EditCredentials.Show();
        }

        /// Window Manipulation
        private void ExitButton_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }
        private void MinimizeButton_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }
        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                this.DragMove();
            }
        }
        private void ViewAllButton_Click(object sender, RoutedEventArgs e)
        { ///this.m_myWindow.Closed += (sender, args) => this.m_myWindow = null; 
            AllCredentials = new CredentialsWindow();
            AllCredentials.Closed += (_, __) => this.AllCredentials = null;
            AllCredentials.Show();
        }

    }
}