{ lib
, fetchurl
, fetchFromGitHub
, freerdp
, libnotify
, copyDesktopItems
, makeDesktopItem
, python3
}:

python3.pkgs.buildPythonApplication rec {
  pname = "cassowary-linux";
  version = "0.6";
  format = "pyproject";

  src = fetchFromGitHub {
    owner = "casualsnek";
    repo = pname;
    rev = "e04d5afe269576084e06c65b98d2f29f59b9bbda";
    hash = "sha256-hcR9Jxw6b1KJw4vcvMGGKUdHmMrhLOcIMXHpUN7tLR4=";
  };

  patches = [ ./cassowary.patch ];

  postPatch = ''
    cp README.md app-linux/
    cd app-linux
  '';

  nativeBuildInputs = [ copyDesktopItems ];

  buildInputs = [
    libnotify
    freerdp
  ];

  propagatedBuildInputs = with python3.pkgs; [
    setuptools
    pyqt5
    libvirt
  ];

  icon = fetchurl {
    url = "https://raw.githubusercontent.com/casualsnek/cassowary/main/app-linux/src/cassowary/gui/extrares/cassowary.png";
    hash = "sha256-gnUu0QaYarQHOySwOg/GGUR+u0ysIwPBQUtcKi05fMo=";
  };

  desktopItems = [
    (makeDesktopItem {
      name = "cassowary_linux";
      desktopName = "Cassowary Linux";
      genericName = "cassowary";
      comment = "Controls settings for cassowary";
      icon = icon;
      exec = "cassowary -a";
      terminal = false;
      categories = [ "Utility" ];
      startupNotify = true;
    })
  ];

  meta = with lib; {
    description = "Cassowary - Integrate windows VM with linux ( client ).";
    homepage = "https://github.com/causalsnek/cassowary";
    license = licenses.gpl2;
    maintainers = with maintainers; [ mathiassven ];
  };
}
