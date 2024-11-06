#!/usr/bin/bash
if [ $# -ne 1]
then
  echo "Attend un seul argument"
fi

typeentite=$1

bash ./compte_par_type.sh 2016 $typeentite
bash ./compte_par_type.sh 2017 $typeentite
bash ./compte_par_type.sh 2018 $typeentite
