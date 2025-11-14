FROM debian:bookworm-slim

# Install LilyPond and dependencies
RUN apt-get update && \
    apt-get install -y \
    lilypond \
    timidity \
    && rm -rf /var/lib/apt/lists/*

# Set working directory
WORKDIR /music

# Copy music files
COPY . /music

# Compile all .ly files to PDF
CMD find /music -name "*.ly" -type f -exec lilypond --output=/music {} \;
