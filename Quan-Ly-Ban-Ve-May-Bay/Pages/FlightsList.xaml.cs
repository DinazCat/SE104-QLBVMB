﻿using MaterialDesignColors;
using MaterialDesignThemes.Wpf;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data.SqlClient;
using System.Data;
using System.Diagnostics.Eventing.Reader;
using System.Linq;
using System.Runtime.CompilerServices;
using System.Text;
using System.Threading.Tasks;
using System.Windows;
using System.Windows.Controls;
using System.Windows.Controls.Primitives;
using System.Windows.Data;
using System.Windows.Documents;
using System.Windows.Input;
using System.Windows.Media;
using System.Windows.Media.Imaging;
using System.Windows.Media.Media3D;
using System.Windows.Shapes;
using Quan_Ly_Ban_Ve_May_Bay.Model;
using static System.Windows.Forms.VisualStyles.VisualStyleElement.TaskbarClock;
using System.Diagnostics;
using System.Globalization;
using Quan_Ly_Ban_Ve_May_Bay.Converter;
using System.Drawing;
using Quan_Ly_Ban_Ve_May_Bay.UserControls;
using static Quan_Ly_Ban_Ve_May_Bay.View.AddInforHK;

namespace Quan_Ly_Ban_Ve_May_Bay
{
    /// <summary>
    /// Interaction logic for FlightsList.xaml
    /// </summary>
    public partial class FlightsList : Page
    {
        //string selectedAirlineName;
        public DateTime dateTimeDestination, dateTimeDeparture;
        public TimeSpan time;
        public string flightID;
        public string airlineLogo;

        public event RoutedEventHandler ShowDetail;
        public event RoutedEventHandler Return;

        public event RoutedEventHandler Search;
        public FlightsList()
        {
            InitializeComponent();
            addDataToLsvAirport();

        }
        private void addDataToLsvAirport()
        {
            SqlCommand sqlCommand = new SqlCommand(
            "select * from [HANGMAYBAY]", DataProvider.sqlConnection);
            SqlDataAdapter adapter = new SqlDataAdapter(sqlCommand);
            DataSet ds = new DataSet();
            adapter.Fill(ds);
            List<string> listAirline = new List<string>();
            foreach (DataRow dr in ds.Tables[0].Rows)
            {
                listAirline.Add(dr["TenHang"].ToString());
            }
            lvAirline.ItemsSource = listAirline;

        }
        //set up flightList Screen
        public void FlightSearched(string departure, string destination, string date, int quantity, string flightClass)
        {
            infoSearch.Text = departure + " -> " + destination + " | " + date + " | " + flightClass + " | " + quantity + " người";
           
            DataProvider.sqlConnection.Open();
            SqlCommand sqlCommand = new SqlCommand();
            if (flightClass != "")
            {
                sqlCommand = new SqlCommand(
                 "select [c].*, Logo, TenHang, (select count(*) from [SANBAYTRUNGGIAN] [sbtg] where [sbtg].MaChuyenBay = [c].MaChuyenBay) SoSBTG from [CHUYENBAY] [c], [SANBAY] [s1], [SANBAY] [s2], [HANGMAYBAY] [hmb] " +
                 "where NgayKhoiHanh=@date " +
                 "and [c].SanBayDi=[s1].MaSanBay " +
                 "and [c].SanBayDen=[s2].MaSanBay " +
                 "and [c].MaHangMayBay=[hmb].MaHang " +
                 "and [s1].Tinh=@departure " +
                 "and [s2].Tinh=@destination " +
                 "and MaChuyenBay in (select MaChuyenBay from [VE] [v], [HANGVE] [hv] " +
                                       " where TinhTrang = N'TRONG' and [v].MaHangVe = [hv].MaHangVe " +
                                       "and TenHangVe=@flightClass " +
                                       "group by MaChuyenBay " +
                                       "having count(MaVe)>=@quantity)",
                DataProvider.sqlConnection);
            }
            else
            {
                sqlCommand = new SqlCommand(
                 "select [c].*, Logo, TenHang, (select count(*) from [SANBAYTRUNGGIAN] [sbtg] where [sbtg].MaChuyenBay = [c].MaChuyenBay) SoSBTG from [CHUYENBAY] [c], [SANBAY] [s1], [SANBAY] [s2], [HANGMAYBAY] [hmb] " +
                 "where NgayKhoiHanh=@date " +
                 "and [c].SanBayDi=[s1].MaSanBay " +
                 "and [c].SanBayDen=[s2].MaSanBay " +
                 "and [c].MaHangMayBay=[hmb].MaHang " +
                 "and [s1].Tinh=@departure " +
                 "and [s2].Tinh=@destination " +
                 "and MaChuyenBay in (select MaChuyenBay from [VE] [v] " +
                                       " where TinhTrang = N'TRONG' " +
                                       "group by MaChuyenBay " +
                                       "having count(MaVe)>=@quantity)",
                DataProvider.sqlConnection);
            }
            sqlCommand.Parameters.Add("@date", SqlDbType.NVarChar).Value = date;
            sqlCommand.Parameters.Add("@departure", SqlDbType.NVarChar).Value = departure;
            sqlCommand.Parameters.Add("@destination", SqlDbType.NVarChar).Value = destination;
            sqlCommand.Parameters.Add("@flightClass", SqlDbType.NVarChar).Value = flightClass;
            sqlCommand.Parameters.Add("@quantity", SqlDbType.Int).Value = quantity; 
            SqlDataReader reader = sqlCommand.ExecuteReader();
            List<Flight> flight_list = new List<Flight>();
            if (reader.HasRows)
            {
                while (reader.Read())
                {
                    string flightID = reader["MaChuyenBay"].ToString();
                    string airlineLogo = reader["Logo"].ToString();
                    string airlineName = reader["TenHang"].ToString();
                    string airportDepartureName = reader["SanBayDi"].ToString();
                    string airportDestinationName = reader["SanBayDen"].ToString();
                    string ngayGioXuatPhat = reader["NgayKhoiHanh"].ToString() + " " + reader["ThoiGianXuatPhat"].ToString();
                    CultureInfo provider = CultureInfo.InvariantCulture;
                    string format = "dd/MM/yyyy HH:mm";
                    TimeSpan time = TimeSpan.FromMinutes(double.Parse(reader["ThoiGianDuKien"].ToString()));

                    DateTime dateTimeDeparture = DateTime.ParseExact(ngayGioXuatPhat, format, provider);
                    DateTime dateTimeDestination = dateTimeDeparture.Add(time);

                    string timeDeparture = dateTimeDeparture.ToString("HH:mm");
                    string timeDestination = dateTimeDestination.ToString("HH:mm");

                    int stop = int.Parse(reader["SoSBTG"].ToString());
                    long price = long.Parse(reader["Gia"].ToString());
                    flight_list.Add(new Flight(flightID, airlineLogo, airlineName, airportDepartureName, airportDestinationName, timeDestination, timeDeparture, time, dateTimeDeparture, dateTimeDestination, stop, price));
                    
                }
            }
            DataProvider.sqlConnection.Close();

            lvFlight.ItemsSource = flight_list;
            CollectionView view = (CollectionView)CollectionViewSource.GetDefaultView(lvFlight.ItemsSource);
            setIsHavingData(view);
        }


        private void FlightList_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            var selectedFlight = (Flight)lvFlight.SelectedItem;
            if (selectedFlight != null)
            {
                //dữ liệu cần truyền sang cho flightListDetail
                time = selectedFlight.Time;
                flightID = selectedFlight.FlightID;
                dateTimeDeparture = selectedFlight.DateTimeDeparture;
                dateTimeDestination = selectedFlight.DateTimeDestination;
                airlineLogo = selectedFlight.AirlineLogo;
                ShowDetail?.Invoke(this, new RoutedEventArgs());
                lvFlight.SelectedIndex = -1;
            }
        }

        private void btnReturn_Click(object sender, RoutedEventArgs e)//test
        {
            Return?.Invoke(this, new RoutedEventArgs());
        }

        private void btnSearch_Click(object sender, RoutedEventArgs e)//test
        {
            Search?.Invoke(this, new RoutedEventArgs());
        }

        private void sortPriceAsc_Click(object sender, RoutedEventArgs e)
        {
            CollectionView view = (CollectionView)CollectionViewSource.GetDefaultView(lvFlight.ItemsSource);
            view.SortDescriptions.Clear();
            view.SortDescriptions.Add(new SortDescription("Price", ListSortDirection.Ascending));
        }
        private void sortPriceDes_Click(object sender, RoutedEventArgs e)
        {
            CollectionView view = (CollectionView)CollectionViewSource.GetDefaultView(lvFlight.ItemsSource);
            view.SortDescriptions.Clear();
            view.SortDescriptions.Add(new SortDescription("Price", ListSortDirection.Descending));
        }
        private void sortTimeAsc_Click(object sender, RoutedEventArgs e)
        {
            CollectionView view = (CollectionView)CollectionViewSource.GetDefaultView(lvFlight.ItemsSource);
            view.SortDescriptions.Clear();
            view.SortDescriptions.Add(new SortDescription("Time", ListSortDirection.Ascending));
        }

        private void sortTimeDestinationAsc_Click(object sender, RoutedEventArgs e)
        {
            CollectionView view = (CollectionView)CollectionViewSource.GetDefaultView(lvFlight.ItemsSource);
            view.SortDescriptions.Clear();
            view.SortDescriptions.Add(new SortDescription("TimeDestination", ListSortDirection.Ascending));
        }

        private void sortTimeDestinationDesc_Click(object sender, RoutedEventArgs e)
        {
            CollectionView view = (CollectionView)CollectionViewSource.GetDefaultView(lvFlight.ItemsSource);
            view.SortDescriptions.Clear();
            view.SortDescriptions.Add(new SortDescription("TimeDestination", ListSortDirection.Descending));
        }
        private void sortTimeDepartureAsc_Click(object sender, RoutedEventArgs e)
        {
            CollectionView view = (CollectionView)CollectionViewSource.GetDefaultView(lvFlight.ItemsSource);
            view.SortDescriptions.Clear();
            view.SortDescriptions.Add(new SortDescription("TimeDeparture", ListSortDirection.Ascending));
        }

        private void sortTimeDepartureDesc_Click(object sender, RoutedEventArgs e)
        {
            CollectionView view = (CollectionView)CollectionViewSource.GetDefaultView(lvFlight.ItemsSource);
            view.SortDescriptions.Clear();
            view.SortDescriptions.Add(new SortDescription("TimeDeparture", ListSortDirection.Descending));
        }
        private bool nightToMorning_Destination_Filter(object item)
        {
            if (((item as Flight).TimeDestination.CompareTo("00:00")) >= 0 && ((item as Flight).TimeDestination.CompareTo("05:59")) <= 0)
            {
                return true;
            }
            return false;
        }
        private bool morningToNoon_Destination_Filter(object item)
        {
            if (((item as Flight).TimeDestination.CompareTo("06:00")) >= 0 && ((item as Flight).TimeDestination.CompareTo("11:59")) <= 0)
            {
                return true;
            }
            return false;
        }
        private bool noonToEvening_Destination_Filter(object item)
        {
            if (((item as Flight).TimeDestination.CompareTo("12:00")) >= 0 && ((item as Flight).TimeDestination.CompareTo("17:59")) <= 0)
            {
                return true;
            }
            return false;
        }
        private bool eveningToNight_Destination_Filter(object item)//test
        {
            if (((item as Flight).TimeDestination.CompareTo("18:00")) >= 0 && ((item as Flight).TimeDestination.CompareTo("23:59")) <= 0)
            {
                return true;
            }
            return false;
        }

        private bool nightToMorning_Departure_Filter(object item)
        {
            if (((item as Flight).TimeDeparture.CompareTo("00:00")) >= 0 && ((item as Flight).TimeDeparture.CompareTo("05:59")) <= 0)
            {
                return true;
            }
            return false;
        }
        private bool morningToNoon_Departure_Filter(object item)//test
        {
            if (((item as Flight).TimeDeparture.CompareTo("06:00")) >= 0 && ((item as Flight).TimeDeparture.CompareTo("11:59")) <= 0)
            {
                return true;
            }
            return false;
        }
        private bool noonToEvening_Departure_Filter(object item)//test
        {
            if (((item as Flight).TimeDeparture.CompareTo("12:00")) >= 0 && ((item as Flight).TimeDeparture.CompareTo("17:59")) <= 0)
            {
                return true;
            }
            return false;
        }
        private bool eveningToNight_Departure_Filter(object item)//test
        {
            if (((item as Flight).TimeDeparture.CompareTo("18:00")) >= 0 && ((item as Flight).TimeDeparture.CompareTo("23:59")) <= 0)
            {
                return true;
            }
            return false;
        }
        private void noStopFilter_Click(object sender, RoutedEventArgs e)
        {
            CollectionViewSource.GetDefaultView(lvFlight.ItemsSource).Refresh();
            CollectionView view = (CollectionView)CollectionViewSource.GetDefaultView(lvFlight.ItemsSource);
            view.Filter = DataProvider.noStopFilter;
            setIsHavingData(view);
        }

        private void btnDefault_Click(object sender, RoutedEventArgs e)
        {
            CollectionViewSource.GetDefaultView(lvFlight.ItemsSource).Refresh();
            CollectionView view = (CollectionView)CollectionViewSource.GetDefaultView(lvFlight.ItemsSource);
            view.Filter = null;
            setIsHavingData(view);
        }
        private void oneStopFilter_Click(object sender, RoutedEventArgs e)
        {
            CollectionViewSource.GetDefaultView(lvFlight.ItemsSource).Refresh();
            CollectionView view = (CollectionView)CollectionViewSource.GetDefaultView(lvFlight.ItemsSource);
            view.Filter = DataProvider.oneStopFilter;
            setIsHavingData(view);
        }
        private void moreTwoStopFilter_Click(object sender, RoutedEventArgs e)
        {
            CollectionViewSource.GetDefaultView(lvFlight.ItemsSource).Refresh();
            CollectionView view = (CollectionView)CollectionViewSource.GetDefaultView(lvFlight.ItemsSource);
            view.Filter = DataProvider.moreTwoStopFilter;
            setIsHavingData(view);
        }
        //filter destination
        private void nightToMorning_Destination_Click(object sender, RoutedEventArgs e)
        {
            CollectionViewSource.GetDefaultView(lvFlight.ItemsSource).Refresh();
            CollectionView view = (CollectionView)CollectionViewSource.GetDefaultView(lvFlight.ItemsSource);
            view.Filter = nightToMorning_Destination_Filter;
            setIsHavingData(view);
        }
        private void morningToNoon_Destination_Click(object sender, RoutedEventArgs e)
        {
            CollectionViewSource.GetDefaultView(lvFlight.ItemsSource).Refresh();
            CollectionView view = (CollectionView)CollectionViewSource.GetDefaultView(lvFlight.ItemsSource);
            view.Filter = morningToNoon_Destination_Filter;
            setIsHavingData(view);
        }
        private void noonToEvening_Destination_Click(object sender, RoutedEventArgs e)
        {
            CollectionViewSource.GetDefaultView(lvFlight.ItemsSource).Refresh();
            CollectionView view = (CollectionView)CollectionViewSource.GetDefaultView(lvFlight.ItemsSource);
            view.Filter = noonToEvening_Destination_Filter;
            setIsHavingData(view);
        }
        private void eveningToNight_Destination_Click(object sender, RoutedEventArgs e)
        {
            CollectionViewSource.GetDefaultView(lvFlight.ItemsSource).Refresh();
            CollectionView view = (CollectionView)CollectionViewSource.GetDefaultView(lvFlight.ItemsSource);
            view.Filter = eveningToNight_Destination_Filter;
            setIsHavingData(view);
        }

        //filter departure
        private void nightToMorning_Departure_Click(object sender, RoutedEventArgs e)
        {
            CollectionViewSource.GetDefaultView(lvFlight.ItemsSource).Refresh();
            CollectionView view = (CollectionView)CollectionViewSource.GetDefaultView(lvFlight.ItemsSource);
            view.Filter = nightToMorning_Departure_Filter;
            setIsHavingData(view);
        }
        private void morningToNoon_Departure_Click(object sender, RoutedEventArgs e)
        {
            CollectionViewSource.GetDefaultView(lvFlight.ItemsSource).Refresh();
            CollectionView view = (CollectionView)CollectionViewSource.GetDefaultView(lvFlight.ItemsSource);
            view.Filter = morningToNoon_Departure_Filter;
            setIsHavingData(view);
        }
        private void noonToEvening_Departure_Click(object sender, RoutedEventArgs e)
        {
            CollectionViewSource.GetDefaultView(lvFlight.ItemsSource).Refresh();
            CollectionView view = (CollectionView)CollectionViewSource.GetDefaultView(lvFlight.ItemsSource);
            view.Filter = noonToEvening_Departure_Filter;
            setIsHavingData(view);
        }
        private void eveningToNight_Departure_Click(object sender, RoutedEventArgs e)
        {
            CollectionViewSource.GetDefaultView(lvFlight.ItemsSource).Refresh();
            CollectionView view = (CollectionView)CollectionViewSource.GetDefaultView(lvFlight.ItemsSource);
            view.Filter = eveningToNight_Departure_Filter;
            setIsHavingData(view);
        }


        private void lvAirline_SelectionChanged(object sender, SelectionChangedEventArgs e)
        {
            DataProvider.selectedAirlineName = lvAirline.SelectedItem as string;
            if (DataProvider.selectedAirlineName != null)
            {
                CollectionViewSource.GetDefaultView(lvFlight.ItemsSource).Refresh();
                CollectionView view = (CollectionView)CollectionViewSource.GetDefaultView(lvFlight.ItemsSource);
                view.Filter = DataProvider.airlineNameFilter;
                setIsHavingData(view);
            }
            lvAirline.SelectedIndex = -1;
        }
        private void setIsHavingData(CollectionView view)//test
        {
            if (view.Count <= 0)
            {
                isHavingData.Text = "Không tìm thấy chuyến bay thích hợp";
            }
            else
            {
                isHavingData.Text = "Tất cả những chuyến bay đã tìm thấy";
            }
        }
    }
}
