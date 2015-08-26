# EupsPkg config file. Sourced by 'eupspkg'

CONFIGURE_OPTIONS="--prefix=$PREFIX --disable-examples --enable-verbose --with-cxxflags=-fPIC"

install()
{
	default_install

	# copy the supplied antlr.jar if it wasn't built (i.e., if javac is not present)
	if [[ ! -f ${PREFIX}/lib/antlr.jar ]]; then
		cp antlr.jar  ${PREFIX}/lib/
	fi
}
