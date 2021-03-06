using Additional;
using GoogleManagerModels;
using Microsoft.AspNetCore.Http;
using Newtonsoft.Json;
using Supp.Models;
using Supp.Site.Common;
using Supp.Site.Repositories;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using static Supp.Site.Common.Config;

namespace Supp.Site.Recognition
{
    public class DialogueSetTimer
    {
        private readonly WebSpeechesRepository webSpeecheRepo;
        private SuppUtility suppUtility;
        private PhraseInDateTimeManager phraseInDateTimeManager;

        public DialogueSetTimer()
        {
            webSpeecheRepo = new WebSpeechesRepository();
            suppUtility = new SuppUtility();
            phraseInDateTimeManager = new PhraseInDateTimeManager();
        }

        /// <summary>
        /// Get
        /// </summary>
        /// <param name="culture"></param>
        /// <param name="lastWebSpeechId"></param>
        /// <param name="_subType"></param>
        /// <returns></returns>
        public List<WebSpeechDto> Get(string culture, long lastWebSpeechId, string _subType)
        {
            var result = new List<WebSpeechDto>() { };
            var startId = lastWebSpeechId + 1;
            long id = 0;
            var step = 0;

            if (culture.ToLower() == "it-it")
            {
                id = startId;
                step++;
                result.Add(
                    new WebSpeechDto()
                    {
                        Id = id,
                        Name = _subType + "_" + id.ToString(),
                        Phrase = @"EMPTY",
                        Answer = @"[""Dimmi quando"",""Quando?""]",
                        Host = "All",
                        FinalStep = false,
                        UserId = 0,
                        Order = 0,
                        Type = WebSpeechTypes.SystemRequest.ToString(),
                        SubType = _subType,
                        Step = step,
                        OperationEnable = true,
                        ParentIds = "",
                        StepType = StepTypes.Default.ToString(),
                        ElementIndex = 0
                    }
                );

                id++;
                step++;
                result.Add(
                    new WebSpeechDto()
                    {
                        Id = id,
                        Name = _subType + "_" + id.ToString(),
                        Phrase = @"EMPTY",
                        Answer = null,
                        Host = "All",
                        FinalStep = false,
                        UserId = 0,
                        Order = 0,
                        Type = WebSpeechTypes.SystemRequest.ToString(),
                        SubType = _subType,
                        Step = step,
                        OperationEnable = true,
                        ParentIds = "[" + (id - 1).ToString() + "]",
                        StepType = StepTypes.GetElementDateTime.ToString(),
                        ElementIndex = 1
                    }
                );

                id++;
                step++;
                result.Add(
                    new WebSpeechDto()
                    {
                        Id = id,
                        Name = _subType + "_" + id.ToString(),
                        Phrase = @"EMPTY",
                        Answer = null,
                        Host = "All",
                        FinalStep = false,
                        UserId = 0,
                        Order = 0,
                        Type = WebSpeechTypes.SystemRequest.ToString(),
                        SubType = _subType,
                        Step = step,
                        OperationEnable = true,
                        ParentIds = "[" + (id - 1).ToString() + "]",
                        StepType = StepTypes.ApplyNow.ToString(),
                        ElementIndex = 1
                    }
                );

                id++;
                step++;
                result.Add(
                    new WebSpeechDto()
                    {
                        Id = id,
                        Name = _subType + "_" + id.ToString(),
                        Phrase = @"EMPTY",
                        Answer = @"[""Avviato""]",
                        Host = "All",
                        FinalStep = true,
                        UserId = 0,
                        Order = 0,
                        Type = WebSpeechTypes.SystemRequest.ToString(),
                        SubType = _subType,
                        Step = step,
                        OperationEnable = true,
                        ParentIds = "[" + (id - 1).ToString() + "]",
                        StepType = StepTypes.Default.ToString(),
                        ElementIndex = 0
                    }
                );
            }

            if (culture.ToLower() == "en-us")
            {
                id = startId;
                step++;
                result.Add(
                    new WebSpeechDto()
                    {
                        Id = id,
                        Name = _subType + "_" + id.ToString(),
                        Phrase = @"EMPTY",
                        Answer = @"[""Tell me when"",""When?""]",
                        Host = "All",
                        FinalStep = false,
                        UserId = 0,
                        Order = 0,
                        Type = WebSpeechTypes.SystemRequest.ToString(),
                        SubType = _subType,
                        Step = step,
                        OperationEnable = true,
                        ParentIds = "",
                        StepType = StepTypes.Default.ToString(),
                        ElementIndex = 0
                    }
                );

                id++;
                step++;
                result.Add(
                    new WebSpeechDto()
                    {
                        Id = id,
                        Name = _subType + "_" + id.ToString(),
                        Phrase = @"EMPTY",
                        Answer = null,
                        Host = "All",
                        FinalStep = false,
                        UserId = 0,
                        Order = 0,
                        Type = WebSpeechTypes.SystemRequest.ToString(),
                        SubType = _subType,
                        Step = step,
                        OperationEnable = true,
                        ParentIds = "[" + (id - 1).ToString() + "]",
                        StepType = StepTypes.GetElementDateTime.ToString(),
                        ElementIndex = 1
                    }
                );

                id++;
                step++;
                result.Add(
                    new WebSpeechDto()
                    {
                        Id = id,
                        Name = _subType + "_" + id.ToString(),
                        Phrase = @"EMPTY",
                        Answer = null,
                        Host = "All",
                        FinalStep = false,
                        UserId = 0,
                        Order = 0,
                        Type = WebSpeechTypes.SystemRequest.ToString(),
                        SubType = _subType,
                        Step = step,
                        OperationEnable = true,
                        ParentIds = "[" + (id - 1).ToString() + "]",
                        StepType = StepTypes.ApplyNow.ToString(),
                        ElementIndex = 1
                    }
                );

                id++;
                step++;
                result.Add(
                    new WebSpeechDto()
                    {
                        Id = id,
                        Name = _subType + "_" + id.ToString(),
                        Phrase = @"EMPTY",
                        Answer = @"[""Started""]",
                        Host = "All",
                        FinalStep = true,
                        UserId = 0,
                        Order = 0,
                        Type = WebSpeechTypes.SystemRequest.ToString(),
                        SubType = _subType,
                        Step = step,
                        OperationEnable = true,
                        ParentIds = "[" + (id - 1).ToString() + "]",
                        StepType = StepTypes.Default.ToString(),
                        ElementIndex = 0
                    }
                );
            }

            return result;
        }

        public async Task<EventResult> SetTimer(WebSpeechDto dto, string token, string userName, long userId, ClaimsDto _claims, HttpRequest request, HttpResponse response, int expiresInSeconds, DateTime timerDate)
        {
            var getRemindersResult = new EventResult() { ResultState = GoogleManagerModels.ResultType.None, Successful = true };

            if(dto.Elements != null && dto.Elements[0] != null) timerDate = (DateTime)phraseInDateTimeManager.Convert(dto.Elements[0].Value, _claims.Configuration.General.Culture);

            var withEvent = false;
            var summary = "";

            var lastIndexInString = suppUtility.ReadCookie(request, GeneralSettings.Constants.SuppSiteTimerLastIndexCookieName, onlySpecificKey: true);

            long newIndex = 0;

            if (lastIndexInString != null && lastIndexInString != "")
                newIndex = long.Parse(lastIndexInString) + 1;

            TimeSpan ts = timerDate - DateTime.Now;

            if (ts.TotalMinutes > 9)
            {
                withEvent = true;
                var eventDateStart = timerDate;
                var eventDateEnd = timerDate.AddMinutes(10);

                var notificationMinutes = new List<int?>() { 0 };
                var color = GoogleCalendarColors.Flamingo;
                var location = "";
                
                if(dto.SubType == WebSpeechTypes.SystemDialogueSetTimer.ToString())
                    summary = "#Timer_" + newIndex.ToString();

                if (dto.SubType == WebSpeechTypes.SystemDialogueSetAlarmClock.ToString())
                    summary = "#AlarmClock_" + newIndex.ToString();

                var createCalendarEventRequest = new CreateCalendarEventRequest() { Summary = summary, Description = "", Color = color, EventDateStart = eventDateStart, EventDateEnd = eventDateEnd, Location = location, NotificationMinutes = notificationMinutes };

                getRemindersResult = await webSpeecheRepo.CreateReminder(token, userName, userId, WebSpeechTypes.CreateNote, createCalendarEventRequest, _claims.Configuration.Speech.GoogleCalendarAccount);
            }
            var param = suppUtility.GetValue(dto.Parameters, _claims).Replace("'", @"""");

            var timerParam = new TimerParam() { Index = newIndex, Phrase = param, Date = timerDate.ToString("yyyy-MM-dd HH:mm:ss.fff"), Type = dto.Type, WithEvent = withEvent, Summary = summary };

            suppUtility.SetCookie(response, GeneralSettings.Constants.SuppSiteTimerParamInJsonCookieName + "_" + newIndex.ToString(), JsonConvert.SerializeObject(timerParam), expiresInSeconds, onlySpecificKey: true);

            suppUtility.SetCookie(response, GeneralSettings.Constants.SuppSiteTimerLastIndexCookieName, (newIndex).ToString(), expiresInSeconds, onlySpecificKey: true);

            return getRemindersResult;
        }
    }

    public class TimerParam
    {
        public long Index { get; set; }
        public string Phrase { get; set; }
        public string Date { get; set; }
        public string Type { get; set; }
        public bool WithEvent { get; set; }
        public string Summary { get; set; }
    }
}
