red=`tput setaf 1`
green=`tput setaf 2`
yellow=`tput setaf 3`
idont=`tput setaf 6`
(make fclean -C ../ && make -C ../) > /dev/null
for i in {1..10}; do  echo "$yellow================= ${idont}TEST $i ${yellow}=================================";
    ARG="$(python random.numbers.py $1 | tr '\n' ' ' > ./test_files/test_$i.txt; cat ./test_files/test_$i.txt)";
if [ "$( ../push_swap $ARG | ./checker_Mac $ARG)" = "OK" ] ; then 
    echo "${green}R -->[OK]\nN --> $(../push_swap $ARG | wc -l | awk '{printf $1}')"
else
    echo "${red}R -->[KO]\nN ${red}--> $(../push_swap $ARG | wc -l | awk '{printf $1}')"
fi
sleep 0.5
done;
echo "${yellow}=================  ${red}END ${yellow}================================="
echo "\n"
echo "${red}NOTE 1: ${yellow}if you have ${red}KO ${yellow}you can check (./test_file) to see the example that we use to check your program"
echo "${red}NOTE 2: ${yellow}if you run the tester again without modifing your code and you get ${green}OK ${yellow}taht's because the \n\ttester generate a new numbres"
echo "${red}R     : ${yellow}result of your progamme ${green}OK ${yellow}your programme work SUCSESSFUL ${red}KO ${yellow}your program does not work SUCSESS"
echo "${red}N     : ${yellow}nembres of opereation by your program 
