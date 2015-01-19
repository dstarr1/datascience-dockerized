
sh build-image.sh

# Pyspark:
docker run -i -t samklr/pyspark-notebook pyspark

# For scala:
docker run -i -t samklr/pyspark-notebook spark-shell

#   - get the local ip:
boot2docker ip

# runs ipython notebook in foreground:
#      docker run -it -p 8888:8888 samklr/pyspark-notebook ipython notebook --ipython-dir=/.ipython --profile=pyspark
#       # #########
#       # This is the repo:
#       http://192.168.59.103:8888


* runs the vm without ipython:
docker run -it -p 8888:8888 -v $(PWD):/mnt samklr/pyspark-notebook

* Run this seperately (kernel doesn't crap out as when a single command):
ipython notebook --ipython-dir=/.ipython --profile=pyspark



** Run linux commands:
apt-get install screen
** run ipython notebook:
screen -S ipynotebook
ipython notebook --ipython-dir=/.ipython --profile=pyspark
** run ipython to attach kernel
*** TODO How to have a kernel generated by notebook?

* TODO look to see if there is a kernel .json in the VM
** maybe I can connect if the FS is shared and ports are shared


# TODO for now just start a kernel
   - and then just connect to this externally
   - then maybe connect via 


* Ipython kernel stuff:
** first start up a kernel server:
ipython kernel
** Then connect:
ipython console --existing kernel-47897.json


# # # #
docker run -it -p 8888:8888 -v $(PWD):/mnt samklr/pyspark-notebook ipython notebook --ipython-dir=/.ipython --profile=pyspark



# # # #

* TODO maybe just get pyspark running (in local)
** and connect to this

* DONE Want to use ipython-notebook, 
** TODO attach to kernels
*** TODO could use external ipython to attach to kernel
** TODO attache to pyspark kernel

* TODO want to upgrade spark to 1.2:
    https://spark.apache.org/downloads.html




#######
* The kernel seems to crash when I try to create a new notebook

* TODO is there some directory which is attempting to be written to?


* TODO Can I just have a simple docker 


# This gives access to the vm:
docker run /bin/bash
 







============================================


######################


**Datascience-dockerized**

======================

Remote Hackathon

Data science Environment with IPython Notebooks, Spark Cluster via docker

Spins up a Container with Spark installed, and IPython Notebook server.

Clone


Get into pyspark-docker

Build your docker image  :    ** sh pyspark-docker/build-images **

Run the container with the notebook server : 
      
      **docker run -d -p 8888:8888 samklr/pyspark-notebook ipython notebook --profile=pyspark**
      
If you just want to play with spark from the command line :
      
      ** sudo docker run -i -t samklr/pyspark-notebook pyspark **
      ** sudo docker run -i -t samklr/pyspark-notebook spark-shell **


Head to your browser  :  * http://[your_IP_address or localhost]:8888 *


Next :
            *Full web app with embedded notebooks and control of environments.*
   
            *Support for Scala via iscala and Andy's spark notebook*
   
            *Full support for multiple clusters via Kubernetes (work in progress)*
   
            *Deploy Script to Mesos/Marathon*



Sam Bessalah

@samklr

