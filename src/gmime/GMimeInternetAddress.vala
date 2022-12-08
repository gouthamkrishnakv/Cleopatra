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

        private GMime.InternetAddressMailbox _mailbox;

        public GMime.InternetAddressMailbox mailbox {
            get { return _mailbox; } set { _mailbox = value; }
        }

        public GMimeInternetAddress(string name, string addr) {
            this._mailbox = new GMime.InternetAddressMailbox (name, addr);
        }

        public GMimeInternetAddress.of_mailbox(GMime.InternetAddressMailbox mailbox) {
            this._mailbox = mailbox;
        }

        public unowned string? get_addr() {
            return this._mailbox.get_addr();
        }

        public void set_addr(string addr) {
            this._mailbox.set_addr(addr);
        }

        public unowned string? get_charset() {
            return this._mailbox.get_charset();
        }

        public unowned string? get_name() {
            return this._mailbox.get_name();
        }

        public void set_charset(string? charset) {
            this._mailbox.set_name(charset);
        }

        public void set_name(string name) {
            this._mailbox.set_name(name);
        }

        public Gee.Map<string, string> get_serializable_map() {
            Gee.Map<string, string> address_map = new Gee.HashMap<string, string>();
            address_map.set("name", this._mailbox.get_name());
            address_map.set("addr", this._mailbox.get_addr());
            return address_map;
        }
    }
}

