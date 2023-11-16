# Lammps_tutorial
* Lammps tutorial from https://www.lammps.org/workshops/Aug23/tutorial/
* Slightly modified to fix some bugs/problems in the environment setup and READMEs.
* Tested on Ubuntu 22.04.
## Download lammps and tutorial
```
git clone https://github.com/changhw/Lammps_tutorial.git
```
In the above step, both `lammps` and `tutorial` will be downloaded inside `Lammps_tutorial`.
## Set the environment
```
cd Lammps_tutorial/lammps/
source setenv.sh
cd ../
```
In above steps, the script `setenv.sh` is sourced, so that the required environment variables will be added to the system.
## Run the exercises
```
cd tutorial
```
Then please follow the `README.txt` in each exercise.