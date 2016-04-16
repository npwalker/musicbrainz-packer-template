sudo apt-get install bzip2
sudo mkdir -p /tmp/dumps/extracted
cd /tmp
sudo wget ftp://ftp.musicbrainz.org/pub/musicbrainz/data/fullexport/LATEST
cd /tmp/dumps
sudo wget ftp://ftp.musicbrainz.org/pub/musicbrainz/data/fullexport/`cat /tmp/LATEST`/mbdump-edit.tar.bz2 &&
sudo wget ftp://ftp.musicbrainz.org/pub/musicbrainz/data/fullexport/`cat /tmp/LATEST`/mbdump.tar.bz2 &&
sudo wget ftp://ftp.musicbrainz.org/pub/musicbrainz/data/fullexport/`cat /tmp/LATEST`/mbdump-derived.tar.bz2 &&
sudo wget ftp://ftp.musicbrainz.org/pub/musicbrainz/data/fullexport/`cat /tmp/LATEST`/mbdump-cover-art-archive.tar.bz2 &&
sudo wget ftp://ftp.musicbrainz.org/pub/musicbrainz/data/fullexport/`cat /tmp/LATEST`/mbdump-cdstubs.tar.bz2 &&
sudo wget ftp://ftp.musicbrainz.org/pub/musicbrainz/data/fullexport/`cat /tmp/LATEST`/mbdump-documentation.tar.bz2 &&
sudo wget ftp://ftp.musicbrainz.org/pub/musicbrainz/data/fullexport/`cat /tmp/LATEST`/mbdump-editor.tar.bz2 &&
sudo wget ftp://ftp.musicbrainz.org/pub/musicbrainz/data/fullexport/`cat /tmp/LATEST`/mbdump-stats.tar.bz2 &&
sudo wget ftp://ftp.musicbrainz.org/pub/musicbrainz/data/fullexport/`cat /tmp/LATEST`/mbdump-wikidocs.tar.bz2 
sudo /home/musicbrainz/musicbrainz-server/admin/InitDb.pl --createdb --import /tmp/dumps/mbdump*.tar.bz2 --echo --tmp-dir /tmp/dumps/extracted
sudo rm -rf /tmp/dumps/*
