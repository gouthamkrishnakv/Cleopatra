/**
 *  GMimeInternetAddress Module
 *
 *  GMime-based Implementation of Internet Address.
 *
 *  Copyright (C) 2022 Goutham Krishna K V
 */

namespace Cleopatra.Core {

    /**
     *  GMimeInternetAddress Class
     *
     *  GMime-based Implementation of @InternetAddress.
     */
    class GMimeInternetAddress : Object, Serializable <string>, InternetAddress {

        private GMime.InternetAddressMailbox mailbox;

        public GMimeInternetAddress(string name, string addr) {
            this.mailbox = new GMime.InternetAddressMailbox (name, addr);
        }

        public unowned string? get_addr() {
            return this.mailbox.get_addr();
        }

        public void set_addr(string addr) {
            this.mailbox.set_addr(addr);
        }

        public unowned string? get_charset() {
            return this.mailbox.get_charset();
        }

        public unowned string? get_name() {
            return this.mailbox.get_name();
        }

        public void set_charset(string? charset) {
            this.mailbox.set_name(charset);
        }

        public void set_name(string name) {
            this.mailbox.set_name(name);
        }

        public Gee.Map<string, string> get_serializable_map() {
            Gee.Map<string, string> address_map = new Gee.HashMap<string, string>();
            address_map.set("mailbox", this.mailbox.get_addr());
            address_map.set("displayName", this.mailbox.get_name());
            return address_map;
        }
    }
}