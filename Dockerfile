# Rohollah A. Pour
# Docker image for AI Hands on courses
# This Docker Image is baed on jupyter and Python libraries needed
#

# latest Ubuntu version
FROM jupyter/base-notebook:latest

# information about maintainer
#MAINTAINER jupyter
USER root
# add the bash script
ADD install.sh /
# change rights for the script
RUN chmod u+x /install.sh
# RUN sudo chmod a+x /install.sh
# run the bash script
RUN /install.sh
# prepend the new path
ENV PATH /root/miniconda3/bin:$PATH

# execute IPython when container is run
# CMD ["ipython"]
# CMD [ "jupyter lab --port=5001 --allow-root" ]