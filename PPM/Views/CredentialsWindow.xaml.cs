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
    /// 

    public partial class CredentialsWindow : Window
    {
        public Controller Controls = new Controller();

        public CredentialsWindow()
        {
            InitializeComponent();
            Controls.ShowAllCredentials(CredentialsTable);

        }

        private void ExitButton_Click(object sender, RoutedEventArgs e)
        {
            Close();
        }

        private void Window_MouseDown(object sender, MouseButtonEventArgs e)
        {
            if (e.LeftButton == MouseButtonState.Pressed)
            {
                this.DragMove();
            }
        }

        private void MinimizeButton_Click(object sender, RoutedEventArgs e)
        {
            this.WindowState = WindowState.Minimized;
        }

        public void RefreshCredentialsTable()
        {
            CredentialsTable.Items.Clear();
            Controls.ShowAllCredentials(CredentialsTable);
        }

        
    }
}