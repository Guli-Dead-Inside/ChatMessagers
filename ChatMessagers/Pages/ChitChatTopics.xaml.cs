using ChatMessagers.db;
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

namespace ChatMessagers.Pages
{
    /// <summary>
    /// Логика взаимодействия для ChitChatTopics.xaml
    /// </summary>
    public partial class ChitChatTopics : Window
    {
        public Chat_dbEntities dbEntities = new Chat_dbEntities();
        Chatroom chatroom;
        public ChitChatTopics()
        {
            InitializeComponent();
            NameTB.Text = LoginWindow.employee.Name;
            var chatRoom = ((Employee)LoginWindow.employee).Id_Employee;
            TopicLst.ItemsSource = dbEntities.ChatMessage.Where(x => x.Id_Employee == chatRoom).ToList();
        }

        private void EmplFinderBtn_Click(object sender, RoutedEventArgs e)
        {
            ChitChat chitChat = new ChitChat();
            chitChat.Show();
            this.Close();
        }

        private void CloseBtn_Click(object sender, RoutedEventArgs e)
        {
            Environment.Exit(0);
        }

        private void TopicLst_MouseDoubleClick(object sender, MouseButtonEventArgs e)
        {
            var top = TopicLst.SelectedItem as ChatMessage;
            Topic topic = new Topic(top);
            topic.Show();
            this.Close();

        }
    }
}
