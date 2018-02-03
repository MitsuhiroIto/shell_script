git clone https://github.com/MitsuhiroIto/YAD2K.git ~/YAD2K
cd ~/YAD2K;
source activate tensorflow_p36;
wget http://pjreddie.com/media/files/yolo.weights
wget https://raw.githubusercontent.com/pjreddie/darknet/master/cfg/yolo.cfg
./yad2k.py yolo.cfg yolo.weights model_data/yolo.h5
./test_yolo.py model_data/yolo.h5  # output in images/out/
