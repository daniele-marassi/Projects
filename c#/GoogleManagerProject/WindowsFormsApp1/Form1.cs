﻿using Google.Apis.Calendar.v3;
using Google.Apis.Calendar.v3.Data;
using Google.Apis.Services;
using GoogleCalendar;
using GoogleManagerModels;
using GoogleService;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Data;
using System.Diagnostics;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Windows.Forms;

namespace WindowsFormsApp1
{
    public partial class Form1 : Form
    {
        GoogleCalendarUtility googleCalendarUtility;
        public Form1()
        {
            InitializeComponent();
            googleCalendarUtility = new GoogleCalendarUtility();
        }

        private async void Form1_Load(object sender, EventArgs e)
        {                                                               
            var authInJson = @"{""installed"":{""client_id"":""982569746577-4lnrb3udcu2dqqk2u2mts0j2rqmiripd.apps.googleusercontent.com"",""project_id"":""ace-case-311111"",""auth_uri"":""https://accounts.google.com/o/oauth2/auth"",""token_uri"":""https://oauth2.googleapis.com/token"",""auth_provider_x509_cert_url"":""https://www.googleapis.com/oauth2/v1/certs"",""client_secret"":""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"",""redirect_uris"":[""urn:ietf:wg:oauth:2.0:oob"",""http://localhost""]}}";
            var auth = JsonConvert.DeserializeObject<Auth>(authInJson);

            var tokenFileInJson = @"{""FileName"":""Google.Apis.Auth.OAuth2.Responses.TokenResponse-daniele.marassi"",""Content"":""{\""access_token\"":\""ya29.a0ARrdaM_ZqW89kSAbOLz-KP2JY-1fLwVUTInvGcdCMKzsIHTqYlPgGLwhgytluGYjYCfM_YCO8-riE9L8wrXI2p0XDo13zurG9ptquLhGFLNPE04vksCB8053TktHiCfPf_pyJogB1186bRHC8pDMtJzWU5tK\"",\""token_type\"":\""Bearer\"",\""expires_in\"":3599,\""refresh_token\"":\""1//09VpvnkCzSL9ZCgYIARAAGAkSNwF-L9Irfjv3JJSqr0Dg6OfTOo_pBgkwGG75egVl0bVh7LCflysEHgSiEh5E9koZ1I9MBI7QMrw\"",\""scope\"":\""https://www.googleapis.com/auth/calendar.readonly https://www.googleapis.com/auth/calendar\"",\""Issued\"":\""2021-12-10T10:12:51.555+01:00\"",\""IssuedUtc\"":\""2021-12-10T09:12:51.555Z\""}""}";
            var tokenFile = JsonConvert.DeserializeObject<TokenFile>(tokenFileInJson);

            var googlePublicKey = "AIzaSyCdWVUdy3QmmYLjDwQWqP03gV49hfvWMhc";

            //var createCalendarEventRequest = new CreateCalendarEventRequest() 
            //{ 
            //    Auth = auth,
            //    TokenFile = tokenFile,
            //    Account = "daniele.marassi",
            //    Description = "Description 1",
            //    Location = "via giulia, 1 Trieste",
            //    Summary = "Summary 1",
            //    EventDateStart = DateTime.Parse("2021-12-01 23:45:00"),
            //    EventDateEnd = DateTime.Parse("2021-12-01 23:50:00"),
            //    NotificationMinutes = new List<int?>() {5, 10 },
            //    Color = GoogleCalendarColors.Blueberry
            //};

            //var calendarEvent = googleCalendarUtility.CreateCalendarEvent(createCalendarEventRequest);

            //var getCalendarEventsRequest = new CalendarEventsRequest()
            //{
            //    Auth = auth,
            //    TokenFile = tokenFile,
            //    Account = "daniele.marassi",
            //    TimeMin = DateTime.Parse("2021-12-01 00:00:00"),
            //    TimeMax = DateTime.Parse("2021-12-31 23:59:59")
            //};

            //var calendarEventsResult = googleCalendarUtility.GetCalendarEvents(getCalendarEventsRequest);

            //var editCalendarEventRequest = new EditCalendarEventRequest()
            //{
            //    Auth = auth,
            //    TokenFile = tokenFile,
            //    Account = "daniele.marassi",

            //    //Description = "Description 1",
            //    //Location = "via giulia, 1 Trieste",
            //    Summary = "Summary 1",
            //    EventDateStart = DateTime.Parse(DateTime.Now.ToString("yyyy-MM-dd") + " 00:00:00"),
            //    EventDateEnd = DateTime.Parse(DateTime.Now.ToString("yyyy-MM-dd") + " 23:59:59"),
            //    //NotificationMinutes = new List<int?>() { 5, 10 },
            //    //Color = GoogleCalendarColors.Blueberry,
            //    TimeMin = DateTime.Parse(DateTime.Now.AddMonths(-1).ToString("yyyy-MM-dd") + " 00:00:00"),
            //    TimeMax = DateTime.Parse(DateTime.Now.ToString("yyyy-MM-dd") + " 23:59:59"),

            //    SummaryToSearch = "Summary 1"
            //};

            //var calendarEventUpdated = googleCalendarUtility.EditLastCalendarEventBySummary(editCalendarEventRequest);

            //var deleteCalendarEventsRequest = new DeleteCalendarEventsRequest()
            //{
            //    Auth = auth,
            //    TokenFile = tokenFile,
            //    Account = "daniele.marassi",
            //    TimeMin = DateTime.Parse(DateTime.Now.AddMonths(-1).ToString("yyyy-MM-dd") + " 00:00:00"),
            //    TimeMax = DateTime.Parse(DateTime.Now.ToString("yyyy-MM-dd") + " 23:59:59"),
            //    Summary = "Summary 1"
            //};

            //var eventDeleted = googleCalendarUtility.DeleteLastCalendarEventBySummary(deleteCalendarEventsRequest);

            //var holidays = await googleCalendarUtility.GetHolidays(CountryAndLanguageType.it_italian, googlePublicKey, DateTime.Parse("2021-12-01"), DateTime.Parse("2021-12-31"));

            //if (calendarEventsResult != null)
            //    if (holidays != null)
            //    {
            //        foreach (var holiday in holidays.Data)
            //        {
            //            calendarEventsResult.Data.Add( new CalendarEvent() { Summary = holiday.Summary, Description = holiday.Description, EventDateStart = holiday.Start.Date, IsHoliday= holiday.IsHoliday});
            //        } 
            //    }

            //foreach (var item in calendarEventsResult.Data.OrderBy(_=>_.EventDateStart))
            //{
            //    listBox1.Items.Add(item.Summary);
            //}

            var timeMin = DateTime.Parse(DateTime.Now.ToString("yyyy-MM-dd") + " 00:00:00").AddDays(-7);
            var timeMax = DateTime.Parse(DateTime.Now.ToString("yyyy-MM-dd") + " 23:59:59");

            var calendarEventsRequest = new CalendarEventsRequest()
            {
                Auth = auth,
                TokenFile = tokenFile,
                Account = "daniele.marassi",
                TimeMin = timeMin,
                TimeMax = timeMax
            };

            var getCalendarEventsResult = googleCalendarUtility.GetCalendarEvents(calendarEventsRequest);

            if (getCalendarEventsResult.Successful)
            {
                foreach (var item in getCalendarEventsResult.Data.Where(_ => _.Summary.Contains("#Note")).ToList())
                {
                    var editCalendarEventRequest = new EditCalendarEventRequest()
                    {
                        Auth = auth,
                        TokenFile = tokenFile,
                        Account = "daniele.marassi",
                        IdToSearch = item.Id,
                        EventDateStart = DateTime.Parse(item.EventDateStart.Value.ToString("yyyy-MM-dd") + " 00:00:00"),
                        EventDateEnd = DateTime.Parse(item.EventDateStart.Value.ToString("yyyy-MM-dd") + " 23:59:59"),
                        TimeMin = DateTime.Parse(item.EventDateStart.Value.ToString("yyyy-MM-dd") + " 00:00:00"),
                        TimeMax = DateTime.Parse(item.EventDateStart.Value.ToString("yyyy-MM-dd") + " 23:59:59")
                    };

                    var calendarEventUpdated = googleCalendarUtility.EditCalendarEventById(editCalendarEventRequest);

                    var ttt = 0;
                }
            }
        }
    }
}