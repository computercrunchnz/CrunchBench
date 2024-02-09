echo "Starting CrunchBench..."
lscpu > cpuinfo.txt
echo "Running PyBench..."
cat /sys/class/thermal/thermal_zone*/temp > tempbeforepybench.txt
python3 pybench.py > pybenchrun1.txt
cat /sys/class/thermal/thermal_zone*/temp > temppybenchrun1.txt
python3 pybench.py > pybenchrun2.txt
cat /sys/class/thermal/thermal_zone*/temp > temppybenchrun2.txt
python3 pybench.py > pybenchrun3.txt
cat /sys/class/thermal/thermal_zone*/temp > temppybenchrun3.txt
echo "PyBench Finished. Cooling for 60 seconds."
sleep 60
cat /sys/class/thermal/thermal_zone*/temp > tempbeforeglmark2.txt
echo "Running glmark2..."
glmark2 --annotate > glmark2run1.txt
cat /sys/class/thermal/thermal_zone*/temp > tempglmark2run1.txt
glmark2 --annotate > glmark2run2.txt
cat /sys/class/thermal/thermal_zone*/temp > tempglmark2run2.txt
glmark2 --annotate > glmark2run3.txt
cat /sys/class/thermal/thermal_zone*/temp > tempglmark2run3.txt
echo "glmark2 finished. Cooling for 60 seconds."
sleep 60
cat /sys/class/thermal/thermal_zone*/temp > tempsysbenchsinglebefore.txt
echo "Running sysbench single thread..."
sysbench cpu --threads=1 --time=60 run > sysbenchsinglerun1.txt
cat /sys/class/thermal/thermal_zone*/temp > tempsysbenchsinglerun1.txt
sysbench cpu --threads=1 --time=60 run > sysbenchsinglerun2.txt
cat /sys/class/thermal/thermal_zone*/temp > tempsysbenchsinglerun2.txt
sysbench cpu --threads=1 --time=60 run > sysbenchsinglerun3.txt
cat /sys/class/thermal/thermal_zone*/temp > tempsysbenchsinglerun3.txt
echo "sysbench single thread finished. Cooling for 60 seconds."
sleep 60
cat /sys/class/thermal/thermal_zone*/temp > tempsysbenchmultibefore.txt
echo "Running sysbench multi thread..."
sysbench cpu --threads=`nproc --all` --time=60 run > sysbenchmultirun1.txt
cat /sys/class/thermal/thermal_zone*/temp > tempsysbenchmultirun1.txt
sysbench cpu --threads=`nproc --all` --time=60 run > sysbenchmultirun2.txt
cat /sys/class/thermal/thermal_zone*/temp > tempsysbenchmultirun2.txt
sysbench cpu --threads=`nproc --all` --time=60 run > sysbenchmultirun3.txt
cat /sys/class/thermal/thermal_zone*/temp > tempsysbenchmultirun3.txt
echo "sysbench multi thread finished."
echo "CrunchBench Finished!"
