{ lib
, stdenv
, buildPythonPackage
, fetchFromGitHub
, fetchpatch
, substituteAll
, pytestCheckHook
# tests
, ffmpeg-full
, python
}:

buildPythonPackage rec {
  pname = "pydub";
  version = "0.25.1";
  format = "setuptools";

  # pypi version doesn't include required data files for tests
  src = fetchFromGitHub {
    owner = "jiaaro";
    repo = pname;
    rev = "v${version}";
    sha256 = "0xskllq66wqndjfmvp58k26cv3w480sqsil6ifwp4gghir7hqc8m";
  };

  patches = [
    # Fix codecs parsing with newer ffmpeg
    # https://github.com/jiaaro/pydub/pull/713
    (fetchpatch {
      url = "https://github.com/jiaaro/pydub/commit/12fac9434b48a6ca5af6ae6db155816450facdc8.patch";
      hash = "sha256-JJtnvlEL7pWxl5ICMiI3o4rW/1nbGD6mQMNCJ5XUYME=";
    })
    (substituteAll {
      src = ./use-absolute-paths.diff;
      ffmpeg = ffmpeg-full;
    })
  ];

  pythonImportsCheck = [
    "pydub"
    "pydub.audio_segment"
    "pydub.playback"
  ];

  nativeCheckInputs = [
    pytestCheckHook
  ];

  pytestFlagsArray = [
    "test/test.py"
  ];

  meta = with lib; {
    description = "Manipulate audio with a simple and easy high level interface";
    homepage = "https://pydub.com/";
    changelog = "https://github.com/jiaaro/pydub/releases/tag/v${version}";
    license = licenses.mit;
    maintainers = with maintainers; [ hexa ];
  };
}
