# This file was auto-generated by cabal2nix. Please do NOT edit manually!

{ cabal, aeson, attoparsec, base16Bytestring, blazeBuilder
, blazeTextual, cryptohash, hashable, HUnit, postgresqlLibpq
, scientific, text, time, transformers, uuid, vector
}:

cabal.mkDerivation (self: {
  pname = "postgresql-simple";
  version = "0.4.4.1";
  sha256 = "0lqvy8nc2izwlv7z0n12cknsrb2dkmla84bvjis5z9f63ngs2580";
  buildDepends = [
    aeson attoparsec blazeBuilder blazeTextual hashable postgresqlLibpq
    scientific text time transformers uuid vector
  ];
  testDepends = [
    aeson base16Bytestring cryptohash HUnit text time vector
  ];
  doCheck = false;
  meta = {
    description = "Mid-Level PostgreSQL client library";
    license = self.stdenv.lib.licenses.bsd3;
    platforms = self.ghc.meta.platforms;
  };
})
