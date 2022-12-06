/**
 *  InternetAddressList Module
 *
 *  This holds modules related to @InternetAddress.
 *
 *  Copyright (C) 2022 Goutham Krishna K V
 */

using Cleopatra.Core;

namespace Cleopatra.Core {
    /**
     *  InternetAddressList Interface
     *
     *  Common Interface to hold a list of @InternetAddress elements.
     */
    public interface InternetAddressList {
        public abstract void add(InternetAddress ia);
        //  public abstract void append(InternetAddressList ial);
        public abstract void clear();
        public abstract bool contains(InternetAddress ia);
        public abstract void encode(out string encoded_string);
        //  TODO: Find what the issue is for the following method
        public abstract InternetAddress? get_address(int index);
        //  public abstract int index_of(InternetAddress ia);
        public abstract void insert(int index, InternetAddress ia);
        public abstract int length();
        //  public abstract void prepend(InternetAddressList ial);
        public abstract bool remove(InternetAddress ia);
        public abstract bool remove_at(int index);
        public abstract void set_address(int index, InternetAddress ia);
        public abstract string to_string(bool encode);
    }

    public class InternetAddressListFactory {
        //  TODO: Come back and finish after writing GMime-based Implementor Class.
        //  public static InternetAddressList parse(string addresses) {}
    }
}