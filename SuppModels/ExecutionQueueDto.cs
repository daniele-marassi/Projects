﻿using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Threading.Tasks;
using static SuppModels.WebSpeechTypes;

namespace SuppModels
{
    public class ExecutionQueueDto
    {
        public long Id { get; set; }
        public string Type { get; set; }
        public string FullPath { get; set; }
        public string Arguments { get; set; }
        public string Output { get; set; }
        public string Host { get; set; }
        public string StateQueue { get; set; }

        public System.DateTime InsDateTime { get; set; }

        public IEnumerable<WebSpeechType> WebSpeechTypes { get { return WebSpeechTypesUtility.Get(); } }
    }
}