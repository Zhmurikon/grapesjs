cd grapes-modules/plugins_2/
shopt -s nullglob
array=(*/)
shopt -u nullglob 
for item in ${array[*]}
do
    echo $item
done
exit 0







cd plugins
shopt -s nullglob
array=(*/)
shopt -u nullglob 
for item in ${array[*]}
do
    cd $item
    cd dist
    file=$(ls *.js)
    echo "<script src=\"./plugins/${item}dist/${file}\"></script>"
    cd ..
    cd ..
done

for item in ${array[*]}
do
    echo "\"${item}\","
done

for item in ${array[*]}
do
    cd $item
    cd dist
    file=$(ls *.js)
    echo "\"${item}\": {},"
    cd ..
    cd ..
done