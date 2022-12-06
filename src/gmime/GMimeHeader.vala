/**
 *  GMimeMessageHeader Module
 *
 *  Copyright (C) 2022 Goutham Krishna K V
 */

namespace Cleopatra.Core {
    class GMimeHeader : Header, GMime.Header {
        /* Properties */
        private string _name;
        private string _value;

        /* Getters/Setters */
        public string name { get { return _name; } set { _name = value; }}
        public string value { get { return _name; } set { _value = value; }}

        public GMimeHeader(string name, string value) {
            this.name = name;
            this.value = value;
        }
    }
}