FROM ubuntu

ENV MBT_VERSION=0.21.0

RUN apt update && apt -y install curl libssl1.0.0

RUN curl -L "https://dl.bintray.com/buddyspike/bin/mbt_linux_x86_64/${MBT_VERSION}/${MBT_VERSION}/mbt_linux_x86_64" -o /usr/bin/mbt && chmod +x /usr/bin/mbt

ENTRYPOINT ["/usr/bin/mbt"]

CMD ["version"]