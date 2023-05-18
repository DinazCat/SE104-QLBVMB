﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
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
using System.Windows.Navigation;
using System.Windows.Shapes;
using static Quan_Ly_Ban_Ve_May_Bay.MainWindow;

namespace Quan_Ly_Ban_Ve_May_Bay.Pages
{
    /// <summary>
    /// Interaction logic for Home.xaml
    /// </summary>
    public partial class Home : Page
    {
        private string departure;
        private string destination;
        DateTime _date;
        private int quantity;
        private string flightClass;
        public string Departure
        {
            get { return departure; }
            set { departure = value; }
        }
        public string Destination
        {
            get { return destination; } 
            set { destination = value; }        
        } 
        public DateTime Date
        {
            get { return _date; }
            set { _date = value; }
        }
        public int Quantity
        {
            set { quantity = value; }
            get { return quantity; }
        }
        public string FlightClass
        {
            set { flightClass = value; }
            get { return flightClass; }
        }
        SqlConnection sqlConnection = new SqlConnection(@"Data Source=.\SQLEXPRESS;Initial Catalog=QuanLyBanVeMayBay;Integrated Security=True");
        SqlCommand sqlCommand = new SqlCommand();
        SqlDataAdapter adapter;
        DataSet ds;
        public event RoutedEventHandler Search;
        public Home()
        {
            sqlConnection.Open();
            InitializeComponent();
            //addDataToCCBDeparture();
            //addDataToCCBDestination();
            addDataToClass();

            addDataToCCBDeparture();
            addDataToCCBDestination();

            ds = null;
            adapter.Dispose();
            sqlConnection.Close();
            sqlConnection.Dispose();
        }
        public void btnSearch_Click(object sender, RoutedEventArgs e)
        {
            if (cbbDeparture.Text == "" || cbbDestination.Text == "" || cbbQuantity.Text == "" || date.Text == "" ||cbbClass.Text == "")
            {
                MessageBox.Show("Mời bạn chọn đầy đủ thông tin");
            }
            else
            {
                Search?.Invoke(this, new RoutedEventArgs());
                departure = cbbDeparture.Text;
                destination = cbbDestination.Text;
                quantity = int.Parse(cbbQuantity.Text);
                _date = DateTime.Parse(date.Text);
                flightClass = cbbClass.Text;

            }
        }
        private void addDataToCCBDestination()
        {
            sqlCommand = new SqlCommand(
            "select distinct Tinh from SANBAY s", sqlConnection);
            adapter = new SqlDataAdapter(sqlCommand);
            ds = new DataSet();
            adapter.Fill(ds);
            List<string> listDestination = new List<string>();
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                listDestination.Add(dr[0].ToString());
            }
            cbbDestination.ItemsSource = listDestination;
            ds = null;
        }
        private void addDataToCCBDeparture()
        {
            sqlCommand = new SqlCommand(
            "select distinct Tinh from SANBAY s", sqlConnection);
            adapter = new SqlDataAdapter(sqlCommand);
            ds = new DataSet();
            adapter.Fill(ds);
            List<string> listDeparture = new List<string>();
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                listDeparture.Add(dr[0].ToString());
            }
            cbbDeparture.ItemsSource = listDeparture;
        }
        private void addDataToClass()
        {
            sqlCommand = new SqlCommand(
            "select TenHangVe from HANGVE", sqlConnection);
            adapter = new SqlDataAdapter(sqlCommand);
            ds = new DataSet();
            adapter.Fill(ds);
            List<string> listDeparture = new List<string>();
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                listDeparture.Add(dr[0].ToString());
            }
            cbbClass.ItemsSource = listDeparture;
        }
    }
}
