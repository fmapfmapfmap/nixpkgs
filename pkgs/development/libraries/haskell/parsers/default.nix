# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, attoparsec, charset, doctest, filepath, parsec, QuickCheck
, quickcheckInstances, text, transformers, unorderedContainers
}:

cabal.mkDerivation (self: {
  pname = "parsers";
  version = "0.12.1.1";
  sha256 = "1yx75xbmg3lms0hj79r5w9fl81g5cbsm842lijhd9jnnbli2mzfw";
  buildDepends = [
    attoparsec charset parsec text transformers unorderedContainers
  ];
  testDepends = [
    attoparsec doctest filepath parsec QuickCheck quickcheckInstances
  ];
  meta = {
    homepage = "http://github.com/ekmett/parsers/";
    description = "Parsing combinators";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
