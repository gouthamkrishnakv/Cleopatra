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
    public class GMimeInternetAddress : Object, Serializable <string>, InternetAddress {

        private GMime.InternetAddressMailbox mailbox { get; set; }

        public GMimeInternetAddress(string name, string addr) {
            this.mailbox = new GMime.InternetAddressMailbox (name, addr);
        }

        public GMimeInternetAddress.ofMailbox(GMime.InternetAddressMailbox mailbox) {
            this.mailbox = mailbox;
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

        public GMime.InternetAddressMailbox get_mailbox() {
            return this.mailbox;
        }

        public Gee.Map<string, string> get_serializable_map() {
            Gee.Map<string, string> address_map = new Gee.HashMap<string, string>();
            address_map.set("name", this.mailbox.get_name());
            address_map.set("addr", this.mailbox.get_addr());
            return address_map;
        }
    }
}