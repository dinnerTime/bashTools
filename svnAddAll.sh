svn status | grep '^?' | cut -c8- | while read f; do svn add "$f"; done
