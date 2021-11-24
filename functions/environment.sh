### ENVIRONMENT #########################################

if [[ -z "${1+x}" ]]
    then
        read -p "Please specify the desired environment: " ENVIRONMENT
    else
        ENVIRONMENT=$1
fi


if [[ $ENVIRONMENT != ubuntu ]] && [[ $ENVIRONMENT != mac ]]
    then
        echo -e "${COLOR_WARNING}The desired enivronment is not supported."
        echo -e "We do support \"ubuntu\" and \"mac\".${COLOR_CLOSE}"
        exit
fi