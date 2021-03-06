# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, aeson, dataDefault, filepath, ghcPaths, haskellNames
, haskellPackages, haskellSrcExts, languageEcmascript, mtl
, optparseApplicative, safe, sourcemap, split, spoon, syb, text
, time, transformers, uniplate, unorderedContainers, utf8String
, vector
}:

cabal.mkDerivation (self: {
  pname = "fay";
  version = "0.20.2.0";
  sha256 = "1xblfsd1rj38nlw0dl56zvvnad3l0bpsncv1k5vjs4h8cmwl1ik2";
  isLibrary = true;
  isExecutable = true;
  buildDepends = [
    aeson dataDefault filepath ghcPaths haskellNames haskellPackages
    haskellSrcExts languageEcmascript mtl optparseApplicative safe
    sourcemap split spoon syb text time transformers uniplate
    unorderedContainers utf8String vector
  ];
  meta = {
    homepage = "https://github.com/faylang/fay/wiki";
    description = "A compiler for Fay, a Haskell subset that compiles to JavaScript";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
    maintainers = with self.stdenv.lib.maintainers; [ ocharles ];
  };
})
