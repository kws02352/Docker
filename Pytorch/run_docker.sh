docker run --gpus all -it -p 8889:8889 -v /home/sanghyun/jupyter:/home/sanghyun/jupyter \
	-v /srv/data/vital_amc:/srv/data/vital_amc \
	-v /mnt/data_generator/ABP_SV/shkim:/mnt/data_generator/ABP_SV/shkim \
	sanghyun:jupyter /bin/bash -c "\
        jupyter notebook \
	--ip='*' --port=8889 \
	--no-browser --allow-root"
