/**
 *  HeaderList
 *
 *  Generic HeaderList Module
 *
 *  Copyright (C) 2022 Goutham Krishna K V
 */

namespace Cleopatra.Core {
    /**
     *  HeaderList
     *
     *  This holds a list of headers for a messge.
     */
    public interface HeaderSet : Object {
        public abstract void add(Header new_header);

        public abstract void remove(Header header_to_remove);
    }
}