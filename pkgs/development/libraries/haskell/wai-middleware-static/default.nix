{ cabal, filepath, httpTypes, mtl, text, wai }:

cabal.mkDerivation (self: {
  pname = "wai-middleware-static";
  version = "0.6.0";
  sha256 = "1rsy8qkxcjqdpzqkar0smyy49p8vqapi47k8d24101lz3rym6018";
  buildDepends = [ filepath httpTypes mtl text wai ];
  jailbreak = true;
  meta = {
    homepage = "https://github.com/scotty-web/scotty";
    description = "WAI middleware that serves requests to static files";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
