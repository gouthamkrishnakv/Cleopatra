/**
 *  GMimeMessageHeader Module
 *
 *  Copyright (C) 2022 Goutham Krishna K V
 */

namespace Cleopatra.Core {
    class GMimeHeader : Header, GMime.Header {
        public string name { get; set; }
        public string value { get; set; }

        public GMimeHeader(string name, string value) {}
    }
}