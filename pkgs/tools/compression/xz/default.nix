{ stdenv, fetchurl }:

stdenv.mkDerivation rec {
  name = "xz-5.0.5";

  src = fetchurl {
    url = "http://tukaani.org/xz/${name}.tar.bz2";
    sha256 = "1404i59bp6rzxya0br1q9njdv32z4sggyfrkjr7vq695hk94hv0n";
  };

  doCheck = true;

  # In stdenv-linux, prevent a dependency on bootstrap-tools.
  preHook = "unset CONFIG_SHELL";

  meta = {
    homepage = http://tukaani.org/xz/;
    description = "XZ, general-purpose data compression software, successor of LZMA";

    longDescription =
      '' XZ Utils is free general-purpose data compression software with high
         compression ratio.  XZ Utils were written for POSIX-like systems,
         but also work on some not-so-POSIX systems.  XZ Utils are the
         successor to LZMA Utils.

         The core of the XZ Utils compression code is based on LZMA SDK, but
         it has been modified quite a lot to be suitable for XZ Utils.  The
         primary compression algorithm is currently LZMA2, which is used
         inside the .xz container format.  With typical files, XZ Utils
         create 30 % smaller output than gzip and 15 % smaller output than
         bzip2.
      '';

    license = [ "GPLv2+" "LGPLv2.1+" ];
    maintainers = with stdenv.lib.maintainers; [ sander ];
    platforms = stdenv.lib.platforms.all;
  };
}
