echo "Starting CrunchBench..."
lscpu > cpuinfo.txt
echo "Running PyBench..."
python3 pybench.py > pybenchrun1.txt
python3 pybench.py > pybenchrun2.txt
python3 pybench.py > pybenchrun3.txt
echo "PyBench Finished. Cooling for 60 seconds."
sleep 60
echo "Running glmark2..."
glmark2 --annotate > glmark2run1.txt
glmark2 --annotate > glmark2run2.txt
glmark2 --annotate > glmark2run3.txt
echo "glmark2 finished. Cooling for 60 seconds."
sleep 60
echo "Running sysbench single thread..."
sysbench cpu --threads=1 --time=60 run > sysbenchsinglerun1.txt
sysbench cpu --threads=1 --time=60 run > sysbenchsinglerun2.txt
sysbench cpu --threads=1 --time=60 run > sysbenchsinglerun3.txt
echo "sysbench single thread finished. Cooling for 60 seconds."
sleep 60
echo "Running sysbench multi thread..."
sysbench cpu --threads=`nproc --all` --time=60 run > sysbenchmultirun1.txt
sysbench cpu --threads=`nproc --all` --time=60 run > sysbenchmultirun2.txt
sysbench cpu --threads=`nproc --all` --time=60 run > sysbenchmultirun3.txt
echo "sysbench multi thread finished."
echo "CrunchBench Finished!"
