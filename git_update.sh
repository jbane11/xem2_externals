usage()
{
    echo "usage: You may select which dir to update -a all -e externals"
}


while [ "$1" != "" ]; do
    case $1 in
        -a | --all ) 					shift
                              mode="all"
                              ;;
        -e | -ext  )          shift
                              mode=$mode+"ext"
                              ;;
       * )                     usage

  esac
  shift
done
 echo $mode



if [ $mode == "all" ]
then
  echo "adding"
  git add *.sh
  got add *.f
  git add *.py
  git add *.ipynb
  git add INP/*kin*.inp
  gti add TARG/TARG*
  git add *.sh
  got add *.f
  git add *.py
  git add *.ipynb
  git add RUNPLAN/*kin*.inp

  #git commit -m "Auto update! "
  #git push  https://jbane11:!2255Ball!@github.com/jbane11/XEM2 master

fi


git status --short | grep '^[MARCD]'
