{ pkgs, ... }:

{
  packages = [
    pkgs.git
    pkgs.quarto
  ];

  # Use system Python
  env.PATH = "/usr/bin:/bin:/usr/sbin:/sbin:$PATH";
  
  # Set Python version
  env.PYTHONPATH = "/Library/Frameworks/Python.framework/Versions/3.11/bin:${pkgs.python311}/bin:$PYTHONPATH";
}
