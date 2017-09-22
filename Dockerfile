ARG alpineLinuxVersion=3.6
FROM alpine:${alpineLinuxVersion} AS alpine-linux
ADD harden.sh ./harden.sh
RUN chmod o+x ./harden.sh \
    && sh ./harden.sh \
    && rm ./harden.sh