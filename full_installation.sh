cd grapes-modules/plugins_2
git clone https://github.com/silexlabs/grapesjs-ui-suggest-classes.git
git clone https://github.com/silexlabs/grapesjs-fonts.git
git clone https://github.com/Ju99ernaut/grapesjs-plugin-toolbox.git
git clone https://github.com/Ju99ernaut/grapesjs-template-manager.git
git clone https://github.com/Ju99ernaut/grapesjs-rte-extensions.git
git clone https://github.com/Ju99ernaut/grapesjs-style-border.git
git clone https://github.com/Ju99ernaut/grapesjs-tailwind.git

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

for item in ${array[*]}
do
    cd $item
    cd dist
    file=$(ls *.js)
    echo "<script src=\"./plugins_2/${item}dist/${file}\"></script>"
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