/**
 *  Serializable Module
 *
 *  Interface for Serialization.
 *
 *  Copyright (C) 2022 Goutham Krishna K V
 */

namespace Cleopatra.Core {
    public interface Serializable <T> {
        public abstract Gee.Map<string, T> get_serializable_map();
    }
}