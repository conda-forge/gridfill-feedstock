#!/bin/bash
#
# Run the test suite in its own directory.
#

mkdir gftests && cd gftests || exit 1
nosetests -sv gridfill
stat=$?
cd .. && rm -rf gftests || exit 2
exit $stat
