/**
 *  GMimeHeaderList
 *
 *  GMime Implementation for HeaderSet
 *
 *  Copyright (C) 2022 Goutham Krishna K V
 */

namespace Cleopatra.Core {
    /**
     *  GMimeHeaderList
     *
     *  GMime implementations of HeaderSet
     */
    public class GMimeHeaderSet : Object, HeaderSet {
        public Gee.Map<string, Header> header_set { get; set; }

        public GMimeHeaderSet() {
            this.header_set = new Gee.HashMap<string, Header>();
        }

        public void add(Header new_header) {
            if (new_header is GMimeHeader) {
                GMimeHeader new_gmime_header = new_header as GMimeHeader;
                this.header_set.set(new_gmime_header.name, new_gmime_header);
            }
        }

        public void remove(Header header_to_remove) {
            this.header_set.unset(header_to_remove.name);
        }
    }
}