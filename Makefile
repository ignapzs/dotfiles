install:
	@${MAKE} install_required_software
	@${MAKE} setup_environment

install_required_software:
	@sh ./commands/install_sw

setup_environment:
	@sh ./commands/setup_environment