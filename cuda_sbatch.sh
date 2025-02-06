#!/bin/bash
#SBATCH --account=def-spekkens
#SBATCH --gpus-per-node=v100l:4
#SBATCH --mem=0M                # memory (per node)
#SBATCH --time=0-00:30            # time (DD-HH:MM)

module --force purge
module use /project/rrg-kmsmith/shared/chord_env/modules/modulefiles/
module load chord/chord_pipeline/2023.06
module load cudacore/.12.2.2

cd /home/akanksha/chord/cuda_dirtymap_simulator
python /home/akanksha/chord/cuda_dirtymap_simulator/dm_simulator_wrapper.py 
#python /home/akanksha/chord/cuda_dirtymap_simulator/dm_simulator_semihealpix.py
