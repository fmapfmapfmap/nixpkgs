{ cabal, stm, transformers }:

cabal.mkDerivation (self: {
  pname = "speculation";
  version = "1.5.0.1";
  sha256 = "1kjshccmfnigb2dxq0czn3c1ckdflz6bl1q60h38qp3rc7250ml0";
  buildDepends = [ stm transformers ];
  meta = {
    homepage = "http://github.com/ekmett/speculation";
    description = "A framework for safe, programmable, speculative parallelism";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
