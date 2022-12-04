/**
 *  InternetAddress Module
 *
 *  InternetAddress Interface Module.
 *
 *  Copyright (C) 2022 Goutham Krishna K V
 */

namespace Cleopatra.Core {

    /**
     *  InternetAddressError
     *
     *  Errors related to @InternetAddress.
     */
    public errordomain InternetAddressError {
        NOT_IMPLEMENTED;
    }

    /**
     *  InternetAddress Interface
     *
     *  
     */
    public interface InternetAddress : Object, Serializable<string> {
        public abstract unowned string? get_name();

        public abstract unowned string? get_addr();

        public abstract unowned string? get_charset();

        public abstract void set_name(string name);

        public abstract void set_addr(string address);

        public abstract void set_charset(string? charset);
    }

    /**
     *  Internet Address Factory
     *
     *  This factory creates an InternetAddress object depending on the requirements.
     */
    public class InternetAddressFactory {
        public static InternetAddress get(string name, string address)
                throws InternetAddressError {
            return new GMimeInternetAddress(name, address);
        }
    }
}