{ cabal, aeson, base64Bytestring, cryptohash, dataDefault
, httpTypes, HUnit, network, QuickCheck, scientific, tasty
, tastyHunit, tastyQuickcheck, tastyTh, text, time
, unorderedContainers
}:

cabal.mkDerivation (self: {
  pname = "jwt";
  version = "0.4.0";
  sha256 = "0kfdrl795h7nyai1gk056kjbw2c5n3bc30aq9466pky5jv6ywlbz";
  buildDepends = [
    aeson base64Bytestring cryptohash dataDefault httpTypes network
    scientific text time unorderedContainers
  ];
  testDepends = [
    aeson base64Bytestring cryptohash dataDefault httpTypes HUnit
    network QuickCheck scientific tasty tastyHunit tastyQuickcheck
    tastyTh text time unorderedContainers
  ];
  meta = {
    homepage = "https://bitbucket.org/ssaasen/haskell-jwt";
    description = "JSON Web Token (JWT) decoding and encoding";
    license = self.stdenv.lib.licenses.mit;
    platforms = self.ghc.meta.platforms;
  };
})
