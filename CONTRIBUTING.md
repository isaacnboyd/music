## Contributing

This project is an experiment for me.

I would love to see any modifications or refinements
musicians on the web come up with, but my taste is of
course subjective. If you do fork this project, please
open a PR, cheers!

I will open issues for tech related stuff, especially
for automating the engraving on releases. Any
contributions to that work is more than welcome.
I would also welcome any contributions to the beautification
of the sheet music itself. Lilypond appears feature rich
and it will take me a while to learn it.

I've added
[notes on writing music to the `/etc/notes` directory](/etc/notes/writing-music.md).

## Release

To generate the PDFs from this repo, execute a release
by tagging the latest commit and pushing it upstream.
Github Actions will find `.ly` files and create PDFs.
These PDFs can be found in the release section.
```
git tag -a v1.0.1 -m "v1.0.1" 49b0903a27596f672d8b4f2b17a5d206aeb39bc9
git push upstream v1.0.1
```
## Converting MusicXML to LilyPond

To convert `.mxl` or `.xml` files to LilyPond format using Docker:

1. Build the Docker image (first time only):
```bash
cd etc/ci
docker build -t music-ci .
```

2. Convert using the script with relative paths from the repository root:
```bash
./etc/bin/musicxml2ly.sh style-musette-andre-verchuren.mxl style-musette.ly
```

The script automatically handles path conversion for Docker on Windows.

## PDF generation

There are markdown documents on this repo that I convert
to PDFs using pandoc.
For example:
```
pandoc cellist-wanted.md -o cellist-wanted.pdf --pdf-engine=pdflatex
```

## Updating music.isaacnboyd.com

To release changes in the `/site` directory to music.isaacnboyd.com,
simply open a PR to the main branch and merge it. Test changes locally
by executing `bundle install` and `bundle exec jekyll serve`.

## Updating music.isaacnboyd.com infrastructure

The Azure infrastructure is written in terraform. User needs to be
logged into azure, then `cd site/terraform`, `terraform init`,
and `terraform apply`.
