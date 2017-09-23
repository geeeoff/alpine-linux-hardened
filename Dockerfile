FROM alpine:3.6 AS alpine-linux

LABEL maintainer=gyaworski@sparksoftwa.re \
	  version=1.0 \
      re.sparksoftwa.alpineLinuxVersion=3.6
      
ADD harden.sh ./harden.sh
RUN chmod o+x ./harden.sh \
    && sh ./harden.sh \
    && rm ./harden.sh