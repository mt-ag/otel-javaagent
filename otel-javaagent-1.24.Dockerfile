FROM alpine:3.17.2
WORKDIR /app

ENV AGENT_VERSION="1.24.0"
ENV AGENT_CHECKSUM="eb53af4f4ab00a8364d8b0fa50e0a0b8b72b4571d9c8e6295f6cc4e4e841d833"
RUN wget -O opentelemetry-javaagent.jar https://github.com/open-telemetry/opentelemetry-java-instrumentation/releases/download/v${AGENT_VERSION}/opentelemetry-javaagent.jar; \
    sha256sum /app/opentelemetry-javaagent.jar; \
    echo "${AGENT_CHECKSUM}  /app/opentelemetry-javaagent.jar" | sha256sum -c;
