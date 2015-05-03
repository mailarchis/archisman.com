for f in *;
do 
read -r file width height <<< $( convert $f -format "%f %w %h" info:)
echo -e ["\"$file\"",$width,$height],
done
