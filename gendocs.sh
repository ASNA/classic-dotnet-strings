# cd .\\OpnQryF-DotNET\\OpnQryF-DotNET
# python ..\\..\\..\\replace-tabs.py formMain.vr
# pycco formMain.vr.annotated -d ..\\..\\docs\\dotnet -l javascript 

cd ..\\..\\Strings-Classic
python ..\\..\\extract-source-from-vrf.py formMain.vrf
pycco formMain.vrf.annotated -d ..\\docs\\classic -l javascript 