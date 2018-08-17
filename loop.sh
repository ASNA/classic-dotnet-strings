classicPath=\\Strings-Classic
dotnetPath=\\Strings-DotNet

echo $classicPath

# DotNet


# Classic 
for f in 
#file1 file2 file3 file4
do
    echo "Processing $f.annotated"
    # do something on $f
    # python ..\\..\\extract-source-from-vrf.py $f
    # pycco $f.annotated -d ..\\docs\\classic -l javascript     
done

cd .\\Strings-DotNET\\Strings-DotNET
# python ..\\..\\..\\replace-tabs.py formMain.vr
# pycco formMain.vr.annotated -d ..\\..\\docs\\dotnet -l javascript 

cd ..\\..\\Strings-Classic
python ..\\..\\extract-source-from-vrf.py formMain.vrf
pycco formMain.vrf.annotated -d ..\\docs\\classic -l javascript 