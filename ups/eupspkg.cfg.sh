# EupsPkg config file. Sourced by 'eupspkg'

CONFIGURE_OPTIONS="--disable-examples --prefix=$PREFIX"

install()
{
	default_install

	# do not erase antlr.jar if it has been successfully built
	cp -n antlr.jar  $PREFIX/antlr.jar
}
