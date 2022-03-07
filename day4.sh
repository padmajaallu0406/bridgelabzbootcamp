for i in *
do
              n=`echo $i | awk -F. '{ print $1 }'`
              n1=`echo $i | awk -F. '{ print $2 }'`
                if [ -d $n ]
                then
                        echo "Inside IF Condition Success ..."
                        rm -rf $n
                fi
                        mkdir -p $n/$n1
                        cp -r $i $n/$n1
done
