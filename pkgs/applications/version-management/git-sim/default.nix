{ lib
, stdenv
, fetchFromGitHub
, python3
}:

python3.pkgs.buildPythonApplication rec {
  pname = "git-sim";
  version = "0.1.2";

  src = fetchFromGitHub {
    owner = "initialcommit-com";
    repo = "git-sim";
    rev = "v${version}";
    sha256 = "sha256-z45pJBnAHlPgJahAZZkjk6OKi1+6F9Dac45xTYRDc2I=";
  };

  postPatch = ''
    substituteInPlace setup.py \
      --replace "opencv-python-headless" ""
  '';

  propagatedBuildInputs = with python3.pkgs; [
    gitpython
    manim
    opencv4
  ];

  doCheck = false;

  checkPhase = ''
    python test.py
  '';

  meta = with lib; {
    description = "Visually simulate Git operations in your own repos with a single terminal command";
    homepage = "https://initialcommit.com/tools/git-sim";
    license = licenses.mit;
    maintainers = with maintainers; [ SuperSandro2000 ];
  };
}
