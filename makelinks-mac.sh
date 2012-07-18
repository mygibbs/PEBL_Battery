#!/bin/sh
for i in *
  do

    echo "--=============------------"
    echo $i

   for j in `ls $i/*.pbl`
   do
    echo "--------------"
    echo $i
    echo $j
    k=`basename $j .pbl`
     echo $k

    fname=${i}/run-${k}-fullscreen.command
    echo $fname
    touch  $fname
    echo "#!/bin/sh" > "$fname"
    echo 'cd `dirname $0`' >> "$fname"
    echo /usr/local/bin/pebl	`basename $j` --fullscreen --language en>> "$fname"
    chmod u+x "$fname"

    fname=${i}/run-${k}-test.command
    echo $fname
    touch  $fname
    echo "#!/bin/sh" > "$fname"
    echo 'cd `dirname $0`' >> "$fname"
    echo /usr/local/bin/pebl	`basename $j` --windowed --language en>> "$fname"
    chmod u+x "$fname"


   done
  done
#objectjudgment
#--------------
#objectjudgment
#objectjudgment/objectjudgment-inv.pbl objectjudgment/objectjudgment.pbl objectjudgment/run-objectjudgment-inv.pbl
