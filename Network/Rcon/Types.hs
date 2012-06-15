{-
© 2012 Johan Kiviniemi <devel@johan.kiviniemi.name>

Permission to use, copy, modify, and/or distribute this software for any
purpose with or without fee is hereby granted, provided that the above
copyright notice and this permission notice appear in all copies.

THE SOFTWARE IS PROVIDED "AS IS" AND THE AUTHOR DISCLAIMS ALL WARRANTIES
WITH REGARD TO THIS SOFTWARE INCLUDING ALL IMPLIED WARRANTIES OF
MERCHANTABILITY AND FITNESS. IN NO EVENT SHALL THE AUTHOR BE LIABLE FOR
ANY SPECIAL, DIRECT, INDIRECT, OR CONSEQUENTIAL DAMAGES OR ANY DAMAGES
WHATSOEVER RESULTING FROM LOSS OF USE, DATA OR PROFITS, WHETHER IN AN
ACTION OF CONTRACT, NEGLIGENCE OR OTHER TORTIOUS ACTION, ARISING OUT OF
OR IN CONNECTION WITH THE USE OR PERFORMANCE OF THIS SOFTWARE.
-}

module Network.Rcon.Types
( QueryPacket (..)
, ResponsePacket (..)
) where

import qualified Data.ByteString as BS
import           Data.Word

data QueryPacket = AuthQ { qId       :: Word32
                         , qPassword :: BS.ByteString
                         }
                 | ExecCommandQ { qId      :: Word32
                                , qCommand :: BS.ByteString
                                }
  deriving (Eq, Read, Show)

data ResponsePacket = AuthR { rId   :: Word32
                            , rData :: BS.ByteString
                            }
                    | DataR { rId   :: Word32
                            , rData :: BS.ByteString
                            }
  deriving (Eq, Read, Show)

-- vim:set et sw=2 sts=2:
