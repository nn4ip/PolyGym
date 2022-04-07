rm -rf /tmp/procs_out
mkdir /tmp/procs_out

# PolyEnv
POLYITEDIR=/home/xluo/RL4Poly LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/xluo/RL4Poly/polyite/scala-isl-utils/libs OMP_NUM_THREADS=6 taskset -c 0-5   python3 ./train_random.py --out_dir /tmp/out_bias_select_dep --with_polyenv --stop_at 1000 --with_polyenv_sampling_bias bias_select_dep >> /tmp/procs_out/0.out 2>&1 &
POLYITEDIR=/home/xluo/RL4Poly LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/xluo/RL4Poly/polyite/scala-isl-utils/libs OMP_NUM_THREADS=6 taskset -c 6-11  python3 ./train_random.py --out_dir /tmp/out_bias_select_dep --with_polyenv --stop_at 1000 --with_polyenv_sampling_bias bias_select_dep >> /tmp/procs_out/1.out 2>&1 &
POLYITEDIR=/home/xluo/RL4Poly LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/xluo/RL4Poly/polyite/scala-isl-utils/libs OMP_NUM_THREADS=6 taskset -c 12-17 python3 ./train_random.py --out_dir /tmp/out_bias_select_dep --with_polyenv --stop_at 1000 --with_polyenv_sampling_bias bias_select_dep >> /tmp/procs_out/2.out 2>&1 &
POLYITEDIR=/home/xluo/RL4Poly LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/xluo/RL4Poly/polyite/scala-isl-utils/libs OMP_NUM_THREADS=6 taskset -c 18-23 python3 ./train_random.py --out_dir /tmp/out_bias_select_dep --with_polyenv --stop_at 1000 --with_polyenv_sampling_bias bias_select_dep >> /tmp/procs_out/3.out 2>&1 &
wait

# Baselines
# POLYITEDIR=/home/xluo/RL4Poly LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/xluo/RL4Poly/polyite/scala-isl-utils/libs OMP_NUM_THREADS=6 taskset -c 0-5   python ./train_random.py --out_dir /tmp/out --with_baselines >> /tmp/procs_out/0.out 2>&1 &
# POLYITEDIR=/home/xluo/RL4Poly LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/xluo/RL4Poly/polyite/scala-isl-utils/libs OMP_NUM_THREADS=6 taskset -c 6-11  python ./train_random.py --out_dir /tmp/out --with_baselines >> /tmp/procs_out/1.out 2>&1 &
# POLYITEDIR=/home/xluo/RL4Poly LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/xluo/RL4Poly/polyite/scala-isl-utils/libs OMP_NUM_THREADS=6 taskset -c 12-17 python ./train_random.py --out_dir /tmp/out --with_baselines >> /tmp/procs_out/2.out 2>&1 &
# POLYITEDIR=/home/xluo/RL4Poly LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/home/xluo/RL4Poly/polyite/scala-isl-utils/libs OMP_NUM_THREADS=6 taskset -c 18-23 python ./train_random.py --out_dir /tmp/out --with_baselines >> /tmp/procs_out/3.out 2>&1 &
# wait
