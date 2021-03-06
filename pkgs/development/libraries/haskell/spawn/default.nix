{ cabal }:

cabal.mkDerivation (self: {
  pname = "spawn";
  version = "0.3";
  sha256 = "0xkkl0w30rqif2jwdzjv239raly4yaf0116vkqcwh1i41jqn7ij8";
  meta = {
    description = "Tiny library for concurrent computations";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
