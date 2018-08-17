# 
#
project=strings
dotnetfiles=()
classicfiles=(formMain.vrf)

# Annotate .NET project files.
cd .\\$project-DotNET\\$project-DotNET
for f in $dotnetfiles
do
	if [ -f $f ]; then
		echo "Annotating file $f"
		python ..\\..\\..\\replace-tabs.py $f
		pycco $f.annotated -d ..\\..\\docs\\dotnet -l javascript 
		rm $f.annotated		
    else
	    echo "File $f does not exist"
	fi	
done

# Annotate classic project files.
cd ..\\..\\$project-Classic
for f in $classicfiles
do
	if [ -f $f ]; then
		echo "Annotating file $f"
		python ..\\..\\extract-source-from-vrf.py $f
		pycco $f.annotated -d ..\\docs\\classic -l javascript 
		rm $f.annotated		
    else
	    echo "File $f does not exist"
	fi	
done