#!/bin/bash

RUNPATH="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"
if [ -e $RUNPATH/venv ]; then
    source $RUNPATH/venv/bin/activate
fi

export LSF_SERVERDIR="/usr/local/lsf/10.1/linux3.10-glibc2.17-x86_64/etc"
export MODULES_RUN_QUARANTINE="LD_LIBRARY_PATH LD_PRELOAD"
export LSF_LIBDIR="/usr/local/lsf/10.1/linux3.10-glibc2.17-x86_64/lib"
export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:"/usr/local/lsf/10.1/linux3.10-glibc2.17-x86_64/lib"
export LSF_BINDIR="/usr/local/lsf/10.1/linux3.10-glibc2.17-x86_64/bin"
export LSF_ENVDIR="/usr/local/lsf/conf"
export PATH=/usr/local/apps/apptainer/1.2.2-1/bin:/usr/share/Modules/bin:/usr/local/lsf/10.1/linux3.10-glibc2.17-x86_64/etc:/usr/local/lsf/10.1/linux3.10-glibc2.17-x86_64/bin:/usr/local/bin:/usr/bin:/usr/local/sbin:/usr/sbin:/usr/lpp/mmfs/bin


export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$RUNPATH/SuperBuild/install/lib
export DYLD_LIBRARY_PATH=$RUNPATH/SuperBuild/install/lib
python3 $RUNPATH/run.py "$@"