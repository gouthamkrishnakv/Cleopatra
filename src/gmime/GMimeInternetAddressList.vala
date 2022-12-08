/**
 *  GMimeInternetAddressList Module
 *
 *  Copyright (C) 2022 Goutham Krishna K V
 */

using Cleopatra.Core;

namespace Cleopatra.Core {
    public class GMimeInternetAddressList: Object, InternetAddressList {
        private GMime.InternetAddressList ia_list;

        public GMimeInternetAddressList() {
            this.ia_list = new GMime.InternetAddressList();
        }

        public void add(InternetAddress ia) {
            if (ia is GMimeInternetAddress) {
                GMimeInternetAddress gia = ia as GMimeInternetAddress;
                this.ia_list.add(gia.mailbox);
            }
        }

        public void clear() { this.ia_list.clear(); }

        public bool contains(InternetAddress ia) {
            if (ia is GMimeInternetAddress) {
                GMimeInternetAddress gia = ia as GMimeInternetAddress;
                return this.ia_list.contains(gia.mailbox);
            }
            return false;
        }

        public void encode(out string encoded_string) {
            StringBuilder strbld = new StringBuilder();
            this.ia_list.encode(GMime.FormatOptions.get_default(), strbld);
            encoded_string = strbld.str;
        }

        public InternetAddress? get_address(int index) {
            GMime.InternetAddress gia = this.ia_list.get_address(index);
            if (gia is GMime.InternetAddressMailbox) {
                GMime.InternetAddressMailbox casted_gia = gia as GMime.InternetAddressMailbox;
                return new GMimeInternetAddress.of_mailbox(casted_gia);
            }
            return null;
        }

        public void insert(int index, InternetAddress ia) {
            if (ia is GMimeInternetAddress) {
                GMimeInternetAddress gia = ia as GMimeInternetAddress;
                this.ia_list.insert(index, gia.mailbox);
            }
        }

        public int length() { return this.ia_list.length(); }

        public bool remove(InternetAddress ia) {
            if (ia is GMimeInternetAddress) {
                GMimeInternetAddress gia = ia as GMimeInternetAddress;
                return this.ia_list.remove(gia.mailbox);
            }
            return false;
        }

        public bool remove_at(int index) {
            return this.ia_list.remove_at(index);
        }

        public void set_address(int index, InternetAddress ia) {
            if (ia is GMimeInternetAddress) {
                GMimeInternetAddress gia = ia as GMimeInternetAddress;
                this.ia_list.set_address(index, gia.mailbox);
            }
        }

        public string to_string(bool encode) {
            return this.ia_list.to_string(GMime.FormatOptions.get_default(), encode);
        }
    }
}