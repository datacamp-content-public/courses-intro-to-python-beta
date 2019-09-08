# If bash command fails, build should error out
set -e


# Install specific package versions with pip
# Check the latest version using https://pypi.org/search

pip3 install pandas
pip3 install matplotlib
# pip3 install scikit-learn==0.19.2
pip3 install numpy
pip3 install seaborn
pip3 install patsy
pip3 install statsmodels
pip3 install sklearn
# pip3 install bokeh==0.13.0



# Include datasets in the image

DATADIR=/usr/local/share/datasets
mkdir -p $DATADIR
wget -O $DATADIR/iris.csv http://s3.amazonaws.com/assets.datacamp.com/staging/course_2406/datasets/iris.csv
