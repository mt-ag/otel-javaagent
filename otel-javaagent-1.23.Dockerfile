FROM alpine:3.17.2
WORKDIR /app

ENV AGENT_VERSION="1.23.0"
ENV AGENT_CHECKSUM="1a1d00ada18cc2ef884ab3c5d7525580ddf48ec0e9fee1f083bf03c370f5af34"
RUN wget -O opentelemetry-javaagent.jar https://github.com/open-telemetry/opentelemetry-java-instrumentation/releases/download/v${AGENT_VERSION}/opentelemetry-javaagent.jar; \
    echo "${AGENT_CHECKSUM} /app/opentelemetry-javaagent.jar" | sha256sum -c;
