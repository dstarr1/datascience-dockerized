#!/bin/bash

#ipython profile create pyspark
ipython profile create --ipython-dir=/mnt/ipython pyspark

echo "c.IPKernelApp.pylab= 'inline' " >> /mnt/ipython/profile_pyspark/ipython_notebook_config.py
echo "c.NotebookApp.ip = '*' " >>/mnt/ipython/profile_pyspark/ipython_notebook_config.py
echo "c.NotebookApp.open_browser = False"  >> /mnt/ipython/profile_pyspark/ipython_notebook_config.py
echo "c.NotebookApp.port = 8888" >> /mnt/ipython/profile_pyspark/ipython_notebook_config.py

##### configure pyspark

echo "import os" >>/mnt/ipython/profile_pyspark/startup/00-pyspark-setup.py
echo "os.environ['SPARK_HOME'] = '/spark-1.1.1' " >> /mnt/ipython/profile_pyspark/startup/00-pyspark-setup.py
echo "" >> /mnt/ipython/profile_pyspark/startup/00-pyspark-setup.py

echo "import sys" >> /mnt/ipython/profile_pyspark/startup/00-pyspark-setup.py
echo "spark_home = os.environ.get('SPARK_HOME', None)"
echo "sys.path.insert(0, '/spark-1.1.1/python')" >> /mnt/ipython/profile_pyspark/startup/00-pyspark-setup.py
echo "sys.path.insert(0, os.path.join(spark_home, 'python/lib/py4j-0.8.2.1-src.zip'))" >> /mnt/ipython/profile_pyspark/startup/00-pyspark-setup.py
echo "execfile(os.path.join(spark_home, 'python/pyspark/shell.py'))" >> /mnt/ipython/profile_pyspark/startup/00-pyspark-setup.py

echo "CLUSTER_URL = 'local' " >> /mnt/ipython/profile_pyspark/startup/00-pyspark-setup.py
