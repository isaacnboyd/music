FROM debian:bookworm-slim

# Install LilyPond and dependencies
RUN apt-get update && \
    apt-get install -y \
    lilypond \
    timidity \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /workspace

# Default command (can be overridden)
CMD ["lilypond", "--version"]
