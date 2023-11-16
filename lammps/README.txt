Static LAMMPS binaries for Linux (x86_64)
=========================================

This package provides static binaries of LAMMPS and some of its utilities that
should run on most current Linux systems. Note the binaries only enable a
subset of the available packages.

Please follow these steps to verify you have a working installation:

1. Double-click the "LAMMPS CLI" launcher

   This will open a new terminal and try to set up your environment. This
   involves setting necessary environment variables and creating a Python virtual
   environment to install matplotlib and numpy.

   The launcher is fully automated, however, in case there are errors please
   read the error messages and first try to resolve it yourself (you might have to
   add proxy server settings or install python3-venv via a package manager). If
   you get stuck, let us know in the #tutorial channel on the Workshop Slack.

2. Try running LAMMPS

   lmp -i $LAMMPS_BENCH_DIR/in.lj

3. Try running the Python helper scripts

   # convert log file to csv file
   log2txt.py log.lammps data.txt
   plot.py output.png data.txt 1,2

   # open an image with eog (should be part of any GNOME installation)
   eog output.png

   # alternative: open image with default image viewer
   xdg-open output.png
