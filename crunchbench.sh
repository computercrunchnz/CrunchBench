echo "Starting CrunchBench..."
echo "Running PyBench..."
python3 pybench.py
echo "CPU Temp:" 
cat /sys/class/thermal/thermal_zone*/temp
python3 pybench.py
echo "CPU Temp:" 
cat /sys/class/thermal/thermal_zone*/temp
python3 pybench.py
echo "CPU Temp:" 
cat /sys/class/thermal/thermal_zone*/temp
echo "PyBench Finished. Cooling for 60 seconds."
sleep 60
echo "CPU Temp:" 
cat /sys/class/thermal/thermal_zone*/temp
echo "Running glmark2..."
glmark2
echo "CPU Temp:" 
cat /sys/class/thermal/thermal_zone*/temp
glmark2
echo "CPU Temp:" 
cat /sys/class/thermal/thermal_zone*/temp
glmark2
echo "CPU Temp:" 
cat /sys/class/thermal/thermal_zone*/temp
echo "glmark2 finished. Cooling for 60 seconds."
sleep 60
echo "CPU Temp:" 
cat /sys/class/thermal/thermal_zone*/temp
echo "Running sysbench single thread..."
sysbench cpu --threads=1 --time=60 run
echo "CPU Temp:" 
cat /sys/class/thermal/thermal_zone*/temp
sysbench cpu --threads=1 --time=60 run
echo "CPU Temp:" 
cat /sys/class/thermal/thermal_zone*/temp
sysbench cpu --threads=1 --time=60 run
echo "CPU Temp:" 
cat /sys/class/thermal/thermal_zone*/temp
echo "sysbench single thread finished. Cooling for 60 seconds."
sleep 60
echo "CPU Temp:" 
cat /sys/class/thermal/thermal_zone*/temp'
echo "Running sysbench multi thread..."
sysbench cpu --threads=`nproc --all` --time=60 run
echo "CPU Temp:" 
cat /sys/class/thermal/thermal_zone*/temp
sysbench cpu --threads=`nproc --all` --time=60 run
echo "CPU Temp:" 
cat /sys/class/thermal/thermal_zone*/temp
sysbench cpu --threads=`nproc --all` --time=60 run
echo "CPU Temp:" 
cat /sys/class/thermal/thermal_zone*/temp
echo "sysbench multi thread finished."
echo "CrunchBench Finished!"