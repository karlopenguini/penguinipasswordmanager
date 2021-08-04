using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using PPM.Models;
using System.Windows.Controls;

namespace PPM.Controls
{
    public class Controller
    {
        /// Credentials Dictionary - Communicates with the database
        public void AddNewCredentialsToDatabase(string name, string email, string username, string password)
        {
            if (name != "" && password != "")
            {
                Credential NewCredential = new Credential(name, email, username, password);
                SQLiteDataAccess.SaveCredential(NewCredential);
            }
        }
        public string[] LoadCredentialsFromDatabase(string name)
        {
            string[] credential = SQLiteDataAccess.LoadCredential(name);
            return credential;
        }
        public void ShowCredentials(string name, TextBox email, TextBox username, TextBox password)
        {
            try
            {
                LoadCredentialsFromDatabase(name);
            }
            catch (Exception)
            {
                return;
            }
            string[] credentials = LoadCredentialsFromDatabase(name);
            email.Text = credentials[1];
            username.Text = credentials[2];
            password.Text = credentials[3];
        }
        public void DeleteCredentialsInDatabase(TextBox name, TextBox email, TextBox username, PasswordBox password)
        {
            SQLiteDataAccess.DeleteCredential(name, email, username, password);
        }
        public void ShowAllCredentials(DataGrid CredentialsTable)
        {
            List<Credential> ListOfAllCredentials = SQLiteDataAccess.ListOfAllCredentials();
            foreach (Credential credential in ListOfAllCredentials)
            {
                CredentialsTable.Items.Add(credential);
            }
        }
        public void AddCredentialToTable(DataGrid CredentialsTable, Credential credential)
        {
            CredentialsTable.Items.Add(credential);
        }
        public void LoadNames(ComboBox listNames)
        {
            listNames.ItemsSource = SQLiteDataAccess.ListOfAllNames();
        }
        public void LoadCredentialsFromCmbBox(TextBox EditNameInput, TextBox EditEmailInput, TextBox EditUsernameInput, TextBox EditPasswordInput, ComboBox cmbListNames, Button SaveChangesButton)
        {
            string[] credentials = LoadCredentialsFromDatabase(cmbListNames.SelectedItem.ToString());

            EditNameInput.IsEnabled = true;
            EditEmailInput.IsEnabled = true;
            EditUsernameInput.IsEnabled = true;
            EditPasswordInput.IsEnabled = true;
            SaveChangesButton.IsEnabled = true;

            EditNameInput.Text = credentials[0];
            EditEmailInput.Text = credentials[1];
            EditUsernameInput.Text = credentials[2];
            EditPasswordInput.Text = credentials[3];
        }
        public void SaveChanges(TextBox EditNameInput, TextBox EditEmailInput, TextBox EditUsernameInput, TextBox EditPasswordInput, ComboBox cmbListNames, Button SaveChangesButton)
        {
            if (cmbListNames.SelectedItem != null)
            {
                string NameToSelect = cmbListNames.SelectedItem.ToString();
                SQLiteDataAccess.DeleteCredentialFromName(NameToSelect);
                Credential NewCredential = new Credential(EditNameInput.Text, EditEmailInput.Text, EditUsernameInput.Text, EditPasswordInput.Text);
                SQLiteDataAccess.SaveCredential(NewCredential);

                cmbListNames.SelectedItem = null;
                EditNameInput.Clear();
                EditEmailInput.Clear();
                EditUsernameInput.Clear();
                EditPasswordInput.Clear();
                EditNameInput.IsEnabled = false;
                EditEmailInput.IsEnabled = false;
                EditUsernameInput.IsEnabled = false;
                EditPasswordInput.IsEnabled = false;
                SaveChangesButton.IsEnabled = false;
            }
        }
        
    }
}