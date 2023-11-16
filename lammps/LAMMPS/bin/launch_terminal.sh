#!/bin/bash

SCRIPT_DIR=$( cd -- "$( dirname -- "${BASH_SOURCE[0]}" )" &> /dev/null && pwd )

LAMMPS_INSTALL_DIR=$(realpath ${SCRIPT_DIR}/..)
LAMMPS_POTENTIALS=${LAMMPS_INSTALL_DIR}/share/lammps/potentials
LAMMPS_BENCH_DIR=${LAMMPS_INSTALL_DIR}/share/lammps/bench
MSI2LMP_LIBRARY=${LAMMPS_INSTALL_DIR}/share/lammps/frc_files
PATH=${LAMMPS_INSTALL_DIR}/bin:${LAMMPS_INSTALL_DIR}/tools:$PATH
PYTHONPATH=${LAMMPS_INSTALL_DIR}/tools
MANPATH=${LAMMPS_INSTALL_DIR}/share/man:$MANPATH
export LAMMPS_POTENTIALS LAMMPS_BENCH_DIR PATH PYTHONPATH MANPATH

echo
echo "If nothing happens here for some time (>2 min), you might need to add proxy settings to"
echo "your environment"
echo
echo "The easiest way to do this is to add the follwoing two lines to your"
echo "shell's profile file, replacing <your_proxy> with the appropriate proxy"
echo "server from your network"
echo
echo "export HTTP_PROXY=http://<your_proxy>"
echo "export HTTPS_PROXY=https://<your_proxy>"
echo
echo "To abort and edit that file, press CTRL+C, and then type:"
echo
if [[ "$SHELL" == "/bin/zsh" ]]; then
    echo "open ~/.zprofile"
else
    echo "open ~/.bash_profile"
fi
echo
echo "Afterwards, close and relaunch."

python3 -m venv ~/.lammps_tutorial/lammps
source ~/.lammps_tutorial/lammps/bin/activate
pip install matplotlib numpy

if python -c "import matplotlib" && python -c "import numpy"; then
clear
echo -e "\033[1;34m"
echo "########################################################"
echo "LAMMPS Command-Line environment loaded"
echo "You can now launch the \"lmp\" command-line executable"
echo "########################################################"
echo -e "\033[0m"
else
    echo "Python package installation FAILED!"
    echo
    echo "Try fixing your proxy setting, close this window and relaunch."
fi

cd $LAMMPS_INSTALL_DIR

exec bash -i
