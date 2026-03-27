# docker

FROM  - Should be the first instruction to refer the base OS

RUN - Used at the time of building the image

CMD  - Executed at the time of running the container . Used only 1 time in Dockerfile.

LABLE - Adds metadata to Image. Useful for filteration

EXPOSE - To display port information, doesn't really open port. Provides information only to users.

ENV - Used to provide environment variables to container

COPY - Copy the files from local to required location

ADD - Same as copy but has 2 extra capabilities.
1. It can fetch files from internet directly
2. It can UNTAR the content directky in image

ENTRYPOINT: Used to provide the command executed by the container when it is started.

CMD vs ENTRYPOINT : 
We can Override the command inside CMD instruction.

We cannot override ENTRYPOINT command, if you try to do so it will go and append..For best results we can always use both .

CMD can be used to provide the default arguments/inputs to ENTRYPOINT, if we waant out own arguments we can always override.


WORKDIR: cd /app doesnt work in docker .So to switch to a directory we have WORKDIR.

ENV vs ARG:

ENV provides variables to container. Can be accessed in container
ARG provides variable to image

ARG variables can't be accessed inside container, they are accessible only at the image building . 
