{
  lib,
  stdenv,
  fetchFromGitHub,
  cmake,
  glib,
  meson,
  ninja,
  libevdev,
  json-glib,
  cairo,
  pango,
  polkit,
  libinput,
  gtk4,
  gtk3,
  wrapGAppsHook,
  libxkbcommon,
  pkg-config,
  ...
} @ args:
stdenv.mkDerivation rec {
  pname = "showmethekey";
  version = "1.7.3";

  src = fetchFromGitHub {
    owner = "AlynxZhou";
    repo = "showmethekey";
    rev = "v${version}";
    fetchSubmodules = false;
    sha256 = "sha256-hq4X4dG25YauMjsNXC6Flco9pEpVj3EM2JiFWbRrPaA=";
  };

  nativeBuildInputs = [
    glib
    meson
    ninja
    cmake
    pkg-config
    wrapGAppsHook
  ];

  buildInputs = [
    libevdev
    json-glib
    cairo
    pango
    polkit
    libinput
    gtk4
    gtk3
    libxkbcommon
  ];
}
