FROM debian:bookworm-slim

# Install LilyPond and dependencies
RUN apt-get update && \
    apt-get install -y \
    lilypond \
    timidity \
    python3 \
    python3-pip \
    && rm -rf /var/lib/apt/lists/*

# Install python-ly which has a working musicxml2ly
RUN pip3 install --break-system-packages python-ly

# Set working directory
WORKDIR /workspace

# Default command (can be overridden)
CMD ["lilypond", "--version"]
