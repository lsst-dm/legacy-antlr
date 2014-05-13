# EupsPkg config file. Sourced by 'eupspkg'

PKGDIR=$PWD
CONFIGURE_OPTIONS="--prefix=$PREFIX --disable-examples --enable-verbose --with-cxxflags=-fPIC"

install()
{
	default_install

	# do not erase lib/antlr.jar if it has been successfully built
	cp -n ${PKGDIR}/antlr.jar  ${PREFIX}/lib/
}
