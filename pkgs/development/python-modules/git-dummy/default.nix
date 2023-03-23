{ lib
, buildPythonPackage
, fetchFromGitHub
, gitpython
, typer
, pydantic
}:

buildPythonPackage rec {
  pname = "git-dummy";
  version = "0.0.6";
  format = "setuptools";

  src = fetchFromGitHub {
    owner = "initialcommit-com";
    repo = "git-dummy";
    rev = "v${version}";
    hash = "sha256-H+XkUVAwB+BxsgsEJ0zwcV63x9Jo4C4pG+ZDHlrck6E=";
  };

  propagatedBuildInputs = [
    gitpython
    typer
    pydantic
  ];

  # Tests are currently broken
  doCheck = false;

  meta = with lib; {
    homepage = "https://github.com/initialcommit-com/git-dummy";
    description = "Generate dummy Git repositories populated with the desired number of commits, branches, and structure.";
    license = licenses.mit;
    maintainers = with maintainers; [ mathiassven ];
  };
}
