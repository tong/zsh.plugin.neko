
compctl -g "*.n" neko
compctl -g "*.nml" nekoml

__nekoc_complete() {
	if (( CURRENT == 2 )); then
		_arguments=(
			'-console':'Join several bytecode files into a single file'
			'-d':'Dump the bytecode from a compiled file'
			'-z':'Strip debug information from compiled bytecode'
			'-p':'Prettify source code'
			'-doc':'Build html documentation from neko source code'
			'-v':'Verbose output'
			'-link':'Start read-execute-print loop'
			`find . -type f -name "*.neko"`
		)
	fi
	_describe -t commands "nekoc subcommand" _arguments
}
compdef __nekoc_complete nekoc

__nekotools_complete() {
	if (( CURRENT == 2 )); then
		_arguments=(
			'server':'Start development http server'
			'boot':'Create standalone executable from neko bytecode'
		)
	fi
	_describe -t commands "nekotools subcommand" _arguments
}
compdef __nekotools_complete nekotools

#alias n='neko'
