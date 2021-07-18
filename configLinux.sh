# coding=utf-8
# --------------------------------------------------------------------
#  .d8888b.        d8888  .d8888b.  8888888888 888b    888 
# d88P  Y88b      d88888 d88P  Y88b 888        8888b   888        CATEDRA DE ESTRUCTURAS AERONAUTICAS III    
# 888    888     d88P888 888    888 888        88888b  888        Y LABORATORIO DE ESTRUCTURAS  
# 888           d88P 888 888        8888888    888Y88b 888 
# 888          d88P  888 888  88888 888        888 Y88b888        UNIVERSIDAD TECNOLOGICA NACIONAL  
# 888    888  d88P   888 888    888 888        888  Y88888        FACULTAD REGIONAL HAEDO
# Y88b  d88P d8888888888 Y88b  d88P 888        888   Y8888 
#  "Y8888P" d88P     888  "Y8888P88 8888888888 888    Y888 
#
#--------------------------------------------------------------------------------------------------------------
# Script de configuracion de directorios
#--------------------------------------------------------------------------------------------------------------
# ATENCION! Se recomienda realizar la configuracion con ASTK, no con este script
# *****************************************************************************

## DECLARACIONES --------------------------

declare -r asterRootDir=/home/nico/codeAster14 

declare -r hostnameAster=$(hostname)

declare -r userAster=$(whoami)

declare -r currentAster=${PWD}

## SCRIPT ---------------------------------

cat ./frequencyFit/export | sed 's,ASTER_ROOT_DIR,'"$asterRootDir"',' | sed 's,HOSTNAME_ASTER,'"$hostnameAster"',' | sed 's,USER_ASTER,'"$userAster"',' | sed 's,CURRENT_ASTER,'"$currentAster"',' >./frequencyFit/caGenFrec.export

cat ./dampingFit/export | sed 's,ASTER_ROOT_DIR,'"$asterRootDir"',' | sed 's,HOSTNAME_ASTER,'"$hostnameAster"',' | sed 's,USER_ASTER,'"$userAster"',' | sed 's,CURRENT_ASTER,'"$currentAster"',' >./dampingFit/caGenDamp.export
