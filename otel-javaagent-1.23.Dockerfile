FROM busybox:1.36.0
WORKDIR /app
ENV AGENT_VERSION="1.23.0"
ENV AGENT_CHECKSUM="3980d3acbfa253e81236e353d0e26bdcfc243a59c0d0f3caa22ca483d1a84e9e"
RUN wget -O opentelemetry-javaagent.jar https://github.com/open-telemetry/opentelemetry-java-instrumentation/releases/download/v${AGENT_VERSION}/opentelemetry-javaagent.jar; \
    echo "${AGENT_CHECKSUM} /app/opentelemetry-javaagent.jar"; \
    echo "${AGENT_CHECKSUM} /app/opentelemetry-javaagent.jar" | sha256sum -c;
