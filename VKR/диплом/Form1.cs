using Microsoft.Speech.Recognition;
using Microsoft.Speech.Synthesis;
using System;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Threading;
using System.Windows.Forms;
using WMPLib;


namespace SpeechRecognition
{
    public partial class Form1 : Form
    {
        public Form1()
        {
            InitializeComponent();
            this.label1.BackColor = System.Drawing.Color.Transparent;
            this.label2.BackColor = System.Drawing.Color.Transparent;
            this.label3.BackColor = System.Drawing.Color.Transparent;
            this.pictureBox1.BackColor = System.Drawing.Color.Transparent;
            this.pictureBox2.BackColor = System.Drawing.Color.Transparent;
        }

        static Label l;
        static Label l2;
        static Label l3;

        static void sre_SpeechRecognized(object sender, SpeechRecognizedEventArgs e)
        {
            
            if (e.Result.Confidence > 0.55) l.Text = e.Result.Text;
            l2.Text = ("привет братик");
         
            WindowsMediaPlayer wmp = new WindowsMediaPlayer();
            wmp.URL = @"C:/Users/guldav/Desktop/диплом/Resources/привет братик.wav";
            wmp.controls.play();

            System.Globalization.CultureInfo ci = new System.Globalization.CultureInfo("ru-ru");
            SpeechRecognitionEngine sre = new SpeechRecognitionEngine(ci);
            sre.SetInputToDefaultAudioDevice();

            sre.SpeechRecognized += new EventHandler<SpeechRecognizedEventArgs>(sre_SpeechRecognized2);

            Choices numbers = new Choices();
            string conn = @"Data Source=DESKTOP-Q3D125Q\SQLEXPRESS;Initial Catalog=WKR;Integrated Security=True";
            var sqlEx = String.Format("SELECT vopros FROM vopot");
            using (SqlConnection connecti = new SqlConnection(conn))
            {
                connecti.Open();
                SqlCommand command = new SqlCommand(sqlEx, connecti);
                SqlDataReader reader = command.ExecuteReader();
                while (reader.Read() && reader.HasRows) 
                {
                    object name = reader.GetValue(0);
                    numbers.Add(name.ToString());
                }
                reader.Close();

                GrammarBuilder gb = new GrammarBuilder();
                gb.Culture = ci;
                gb.Append(numbers);

                Grammar g = new Grammar(gb);
                sre.LoadGrammar(g);

                sre.RecognizeAsync(RecognizeMode.Multiple);
                //Thread.Sleep(TimeSpan.FromSeconds(30));//две строчки
                //sre.RecognizeAsyncCancel();//вроде так
            }
        }
        static void sre_SpeechRecognized2(object sender, SpeechRecognizedEventArgs e)
        {
            l2.Text = "";
            l3.Text = "";
            int hu, me;
            var db = new Entit();
            if (e.Result.Confidence > 0.55)
            {
                l.Text = e.Result.Text;

                string connectionString = @"Data Source=DESKTOP-Q3D125Q\SQLEXPRESS;Initial Catalog=WKR;Integrated Security=True";
                var sqlExpression = String.Format("select * from vopot where [vopros] = '{0}'", l.Text);
                using (SqlConnection connection = new SqlConnection(connectionString))
                {
                    connection.Open();
                    SqlCommand command = new SqlCommand(sqlExpression, connection);
                    SqlDataReader reader = command.ExecuteReader();

                    while (reader.Read() && reader.HasRows)
                    {
                        object name = reader.GetValue(1);
                        l2.Text = name.ToString();
                        object nas = reader.GetValue(2); 
                        Console.WriteLine(nas.ToString());
                        l3.Text = nas.ToString();
                    }
                    if (l3.Text == "NULL")
                    {
                        SpeechSynthesizer synth = new SpeechSynthesizer();
                        synth.SetOutputToDefaultAudioDevice();
                        synth.Speak(l2.Text);
                        
                    }
                    if (l3.Text != "NULL")
                    {
                        WindowsMediaPlayer wmp = new WindowsMediaPlayer();
                        wmp.URL = l3.Text;
                        wmp.controls.play();
                        //Console.WriteLine("99");
                    }
                    if (l.Text == ("некотян выключись"))
                    {
                        Application.Exit();
                    }
                    if (l.Text == ("некотян запуск протокола чистый лист"))
                    {
                        Application.Exit();
                    }
                    if (l.Text == ("который час"))
                    {
                        hu = DateTime.Now.Hour ;
                        me = DateTime.Now.Minute;
                        l2.Text = ("точное время " + hu+":"+me + " семпай");
                        SpeechSynthesizer synth1 = new SpeechSynthesizer();
                        synth1.SetOutputToDefaultAudioDevice();
                        synth1.Speak(l2.Text);
                        
                    }
                }
                var sqlExpression2 = String.Format("select * from comands where [comand] = '{0}'", l.Text); 
                using (SqlConnection connection2 = new SqlConnection(connectionString))
                {
                    connection2.Open();
                    SqlCommand command = new SqlCommand(sqlExpression2, connection2);
                    SqlDataReader reader = command.ExecuteReader();
                    while (reader.Read() && reader.HasRows) // построчно считываем данные
                    {
                        object name = reader.GetValue(1);
                        Process.Start(name.ToString());
                    }
                }
                var sqlExpression3 = String.Format("select * from veb where [comands] = '{0}'", l.Text);
                using (SqlConnection connection3 = new SqlConnection(connectionString))
                {
                    connection3.Open();
                    SqlCommand command3 = new SqlCommand(sqlExpression3, connection3);
                    SqlDataReader reader3 = command3.ExecuteReader();

                    while (reader3.Read() && reader3.HasRows) 
                    {
                        object name = reader3.GetValue(1);
                        Process.Start(name.ToString());
                    }
                }

                if (l.Text == "некотян хочу посмотрет аниме")
                {
                    l2.Text = ("выбери жанр братик");
                    //SpeechSynthesizer synth2 = new SpeechSynthesizer();
                    //synth2.SetOutputToDefaultAudioDevice();
                    //synth2.Speak(l2.Text);
                    WindowsMediaPlayer wmp2 = new WindowsMediaPlayer();
                    wmp2.URL = @"C:/Users/guldav/Downloads/выбери жанр.wav";
                    wmp2.controls.play();


                    var sqlExpression5 = String.Format("select * from veb where [comands] = '{0}'", l.Text);
                    using (SqlConnection connection5 = new SqlConnection(connectionString))
                    {
                        connection5.Open();
                        SqlCommand command5 = new SqlCommand(sqlExpression3, connection5);
                        SqlDataReader reader5 = command5.ExecuteReader();

                        while (reader5.Read() && reader5.HasRows) // построчно считываем данные
                        {
                            object name = reader5.GetValue(1);
                            Process.Start(name.ToString());
                        }
                    }

                }
            }
        }
        private void Form1_Shown(object sender, EventArgs e)
        {
            l = label1;
            l2 = label2;
            l3 = label3;

            System.Globalization.CultureInfo ci = new System.Globalization.CultureInfo("ru-ru");
            SpeechRecognitionEngine sre = new SpeechRecognitionEngine(ci);
            sre.SetInputToDefaultAudioDevice();
          
            sre.SpeechRecognized += new EventHandler<SpeechRecognizedEventArgs>(sre_SpeechRecognized);
          
            Choices numbers = new Choices();
            numbers.Add(new string[] { "привет некотян", "окей некотян", "некотян запуск"});

            GrammarBuilder gb = new GrammarBuilder();
            gb.Culture = ci;
            gb.Append(numbers);

            Grammar g = new Grammar(gb);
            sre.LoadGrammar(g);
            sre.RecognizeAsync(RecognizeMode.Single);
        }
    }
}
