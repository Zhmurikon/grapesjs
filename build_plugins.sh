cd plugins
shopt -s nullglob
array=(*/)
shopt -u nullglob 
for item in ${array[*]}
do
    echo $item
    cd $item
    npm i
    npm run build
    cd ..
done