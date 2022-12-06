/**
 *  Header Module
 *
 *  Copyright (C) 2021 Goutham Krishna K V
 */

namespace Cleopatra.Core {
    public interface Header {
        /* Key/Name of the Header */
        public abstract string name { get; set; }
        /* Value of the Header */
        public abstract string value { get; set; }
    }

    public interface HeaderFactory {
        public static Cleopatra.Core.Header get(string name, string value) {
            return new Cleopatra.Core.GMimeMessageHeader(name, value);
        }
    }
}