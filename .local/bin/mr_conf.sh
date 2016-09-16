#!/usr/bin/env bash

ESC="\033"
COLOR_RED="${ESC}[31m"
COLOR_GREEN="${ESC}[32m"
COLOR_RESET="${ESC}[0m"

parse()
{
   [[ "q" == "$1" ]] && exit 0
   if [[ "d" == "$1" ]]; then
      if [[ -n ${repos[$2]} ]]; then
         echo "deleting... ${repos[$2]}"
         rm -f $HOME/.config/mr/config.d/${repos[$2]}

         if [[ -d $HOME/.config/vcsh/repo.d/${repos[$2]%.*}.git ]]; then
            echo -n "delete installed files from ${repos[$2]} ? (N/y)"
            read -n1 input
            if [[ $input == "y" || $input == "Y" ]]; then (
               cd
               for f in $(vcsh ${repos[$2]%.*} ls); do
                  rm $f -vf
               done
               )
            fi
            rm -vf $HOME/.gitignore.d/${repos[$2]%.*}
            rm -f $HOME/.gitignore.d/${repos[$2]%.*}.bak
            rm -rf $HOME/.config/vcsh/repo.d/${repos[$2]%.*}.git
         fi
      else
         echo invalid...
      fi

   else
      if [[ -n ${repos[$1]} ]]; then
         echo "installing ${repos[$1]}"
         ln -s ../available.d/${repos[$1]} $HOME/.config/mr/config.d/
      else
         echo invalid...
      fi
   fi

}

declare -a repos
while true; do
   i=1
   for repo in $(ls -1 $HOME/.config/mr/available.d/); do
      repos[$i]=$repo
      if [[ -e $HOME/.config/mr/config.d/$repo ]]; then
         echo -en "$COLOR_GREEN"
      else
         echo -en "$COLOR_RED"
      fi
      echo $i: $repo
      let i++
   done
   echo -en "$COLOR_RESET"

   echo -n "install / delete [d <i>] following repo: "
   read input
   parse $input
done
