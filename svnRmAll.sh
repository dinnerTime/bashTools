svn status | grep '^!' | cut -c8- | while read f; do svn rm "$f"; done
