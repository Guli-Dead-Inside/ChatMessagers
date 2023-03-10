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
    /// Логика взаимодействия для Topic.xaml
    /// </summary>
    public partial class Topic : Window
    {
        public Chat_dbEntities dbEntities = new Chat_dbEntities();
        ChatMessage message;
        public Topic(ChatMessage chatMessager)
        {
            InitializeComponent();
            this.message = chatMessager;
            TopicTB.Text = message.Chatroom.Topic;
            var chatRoom = ((Employee)LoginWindow.employee).Id_Employee;
            List<ChatMessage> chatMessages = dbEntities.ChatMessage.Where(x => x.Id_Chatroom == chatRoom).ToList();
            List<ChatMessage> distinct = chatMessages.Distinct().ToList();
            MemberLst.ItemsSource = distinct.ToList();
        }

        private void AddUserBtn_Click(object sender, RoutedEventArgs e)
        {

        }

        private void ChangeTopicBtn_Click(object sender, RoutedEventArgs e)
        {

        }

        private void LeaveChatroomBtn_Click(object sender, RoutedEventArgs e)
        {

        }

        private void SendBtn_Click(object sender, RoutedEventArgs e)
        {

        }
    }
}
