{ stdenv
, mkRosPackage
, robonomics_comm-nightly
, python3Packages
}:

mkRosPackage rec {
  name = "${pname}-${version}";
  pname = "gakachu-auction-agent";
  version = "0.1.0";

  src = ./.;

  propagatedBuildInputs = with python3Packages; [
    robonomics_comm-nightly
    setuptools
    requests
    # sentry-sdk
  ];

  meta = with stdenv.lib; {
    description = "Gaka-Chu Action Agent";
    homepage = http://github.com/vourhey/gakachu-auction-agent;
    license = licenses.bsd3;
    maintainers = with maintainers; [ vourhey ];
  };
}
