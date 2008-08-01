{-# LANGUAGE TemplateHaskell #-}
-- | Definitions for use of ASCIIMathML in HTML.  
-- (See <http://www1.chapman.edu/~jipsen/mathml/asciimath.html>.)
module Text.Pandoc.ASCIIMathML ( asciiMathMLScript ) where
import Text.Pandoc.Shared ( contentsOf )

-- | String containing ASCIIMathML javascript.
asciiMathMLScript :: String
asciiMathMLScript = "<script type=\"text/javascript\">\n" ++
                    $(contentsOf $ "data/ASCIIMathML.js.comment") ++
                    $(contentsOf $ "data/ASCIIMathML.js.packed") ++ "</script>\n"