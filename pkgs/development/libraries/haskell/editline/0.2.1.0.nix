{ cabal, libedit }:

cabal.mkDerivation (self: {
  pname = "editline";
  version = "0.2.1.0";
  sha256 = "1qa65iqr5k3ajq1glf5y84lld132i2i3l0zmsw8xqkq7hrgqwqc3";
  extraLibraries = [ libedit ];
  meta = {
    homepage = "http://code.haskell.org/editline";
    description = "Bindings to the editline library (libedit)";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
