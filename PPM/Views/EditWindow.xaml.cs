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
using PPM.Controls;

namespace PPM.Views
{
    /// <summary>
    /// Interaction logic for Window1.xaml
    /// </summary>

    public partial class EditWindow : Window
    {
        public Controller Controls = new Controller();
        public EditWindow()
        {
            InitializeComponent();
            Controls.LoadNames(cmbListNames);
        }
        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                this.DragMove();
            }
        }
        public void RefreshComboBox()
        {
            cmbListNames.Items.Clear();
            Controls.LoadNames(cmbListNames);
        }

        private void CmbListNames_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            if (cmbListNames.SelectedItem != null)
            {
                Controls.LoadCredentialsFromCmbBox(EditNameInput, EditEmailInput, EditUsernameInput, EditPasswordInput, cmbListNames, SaveChangesButton);
            }

        }

        private void SaveChangesButton_Click(object sender, RoutedEventArgs e)
        {
            Controls.SaveChanges(EditNameInput, EditEmailInput, EditUsernameInput, EditPasswordInput, cmbListNames, SaveChangesButton);
            

        }

        private void ExitButton_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void MinimizeButton_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }
    }
}