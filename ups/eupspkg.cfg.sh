# EupsPkg config file. Sourced by 'eupspkg'

PKGDIR=$PWD
CONFIGURE_OPTIONS="--disable-examples --prefix=$PREFIX"

install()
{
	default_install

	# do not erase antlr.jar if it has been successfully built
	echo "Copying ${PKGDIR}/antlr.jar  ${PREFIX}/antlr.jar"
	cp -n ${PKGDIR}/antlr.jar  ${PREFIX}/antlr.jar
}
