{ stdenv, fetchurl, SDL, boost, cmake, ffmpeg, gettext, glew
, ilmbase, libXi, libjpeg, libpng, libsamplerate, libsndfile
, libtiff, mesa, openal, opencolorio, openexr, openimageio, openjpeg, python
, zlib
, jackaudioSupport ? false, jackaudio
}:

stdenv.mkDerivation rec {
  name = "blender-2.70a";

  src = fetchurl {
    url = "http://download.blender.org/source/${name}.tar.gz";
    sha256 = "1rgkijn1nirj3jwh058zv6piw8q4j5wwjapgbvh2hh6fpbj84bgb";
  };

  buildInputs =
    [ SDL boost cmake ffmpeg gettext glew ilmbase jackaudio libXi
      libjpeg libpng libsamplerate libsndfile libtiff mesa openal
      opencolorio openexr openimageio openjpeg python zlib
    ] ++ stdenv.lib.optional jackaudioSupport jackaudio;

  cmakeFlags =
    [ "-DOPENEXR_INC=${openexr}/include/OpenEXR"
      "-DWITH_OPENCOLLADA=OFF"
      "-DWITH_CODEC_FFMPEG=ON"
      "-DWITH_CODEC_SNDFILE=ON"
      "-DWITH_INSTALL_PORTABLE=OFF"
      "-DPYTHON_LIBRARY=python${python.majorVersion}m"
      "-DPYTHON_LIBPATH=${python}/lib"
      "-DPYTHON_INCLUDE_DIR=${python}/include/python${python.majorVersion}m"
      "-DPYTHON_VERSION=${python.majorVersion}"
    ] ++ stdenv.lib.optional jackaudioSupport "-DWITH_JACK=ON";

  NIX_CFLAGS_COMPILE = "-I${ilmbase}/include/OpenEXR -I${python}/include/${python.libPrefix}m";

  enableParallelBuilding = true;

  meta = with stdenv.lib; {
    description = "3D Creation/Animation/Publishing System";
    homepage = http://www.blender.org;
    # They comment two licenses: GPLv2 and Blender License, but they
    # say: "We've decided to cancel the BL offering for an indefinite period."
    license = licenses.gpl2Plus;
    platforms = platforms.linux;
    maintainers = [ maintainers.goibhniu ];
  };
}
