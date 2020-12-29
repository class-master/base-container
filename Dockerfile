# This is a baseline Dockerfile that should provide the software for 
# Computer Systems and Operating Systems courses

# We will start from a base Ubuntu 18.04
FROM ubuntu:18.04

ENV USER="$USER"

# Install baseline software
RUN apt-get update -qq --fix-missing && \
    apt-get install -qq -y build-essential tmux git gdb wget nano vim sudo

# Create user and add to sudo list

RUN echo $USER

RUN useradd -m -s /bin/bash $USER && \
    echo "$USER:goldenrams" | chpasswd && adduser $USER sudo
    
USER $USER
ENV PATH "/bin:/usr/bin:$PATH"
WORKDIR "/home/$USER"
CMD ["/bin/bash"]
