# docker

FROM  - Should be the first instrusction to refer the base OS

RUN - Used at the time of building the image

CMD  - Executed at the time of running the container

LABLE - Adds metadata to Image. Useful for filteration

EXPOSE - to display port information, doesn't really open port. Provides information only to users.

ENV - Used to provide environment variables to container

COPY - Copy the files from local to required location

ADD - Same as copy but has 2 extra capabilities.
1. It can fetch files from internet directly
2. It can UNTAR the content directky in image

