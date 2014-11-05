# puppet manifest run by vagrant on boot
node 'wdcweb1.cfpb.local' {
	include apache
	# notice { 'Running puppet provisioner' : }
}


#Why is the node not matching?