# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, llvm }:

cabal.mkDerivation (self: {
  pname = "GlomeVec";
  version = "0.2";
  sha256 = "08hyiadkbkmcsd1g51xvxqzp6l94hnqqbz4r6yk0zk29iawq8610";
  buildTools = [ llvm ];
  meta = {
    homepage = "http://www.haskell.org/haskellwiki/Glome";
    description = "Simple 3D vector library";
    license = "GPL";
    platforms = self.ghc.meta.platforms;
  };
})
