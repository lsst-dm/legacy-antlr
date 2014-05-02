# EupsPkg config file. Sourced by 'eupspkg'

PKGDIR=$PWD
CONFIGURE_OPTIONS="--disable-examples --prefix=$PREFIX"

install()
{
	default_install

	# do not erase lib/antlr.jar if it has been successfully built
	cp -n ${PKGDIR}/antlr.jar  ${PREFIX}/lib/
}
