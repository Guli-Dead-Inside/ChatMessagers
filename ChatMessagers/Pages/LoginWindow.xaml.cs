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
using ChatMessagers.db;

namespace ChatMessagers.Pages
{
    /// <summary>
    /// Логика взаимодействия для LoginWindow.xaml
    /// </summary>
    public partial class LoginWindow : Window
    {
        public Chat_dbEntities dbEntities = new Chat_dbEntities();
        public static Employee employee;
        public LoginWindow()
        {
            InitializeComponent();
        }

        private void CancelBtn_Click(object sender, RoutedEventArgs e)
        {
            Environment.Exit(0);
        }

        private void LogBtn_Click(object sender, RoutedEventArgs e)
        {
            if (UserNameTB.Text == "" || PasswordTB.Text == "")
            {
                MessageBox.Show("Введите логин и пароль!");
            }
            foreach (var user in dbEntities.Employee)
            {
                if (user.UserName == UserNameTB.Text.Trim())
                {
                    if (user.Password == PasswordTB.Text.Trim())
                    {
                        MessageBox.Show($"Здравствуйте, заместитель директора : {user.Name}");
                        employee = user;
                        ChitChatTopics main = new ChitChatTopics();
                        this.Close();
                        main.Show();
                    }
                }
            }
            foreach (var user in dbEntities.Employee)
            {
                if (user.UserName != UserNameTB.Text.Trim())
                {
                    if (user.Password != PasswordTB.Text.Trim())
                    {
                        MessageBox.Show($"Некорректные данные!");
                        return;
                    }
                }
            }
        }
    }
}
