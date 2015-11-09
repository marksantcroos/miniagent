import os
import subprocess
import time

dvm_command = '/u/sciteam/marksant/openmpi/installation/bin/orte-dvm'
orte_logfile = open('orte-dvm.log', "w")
orte_vm_uri_filename = os.path.abspath("orte_vm_uri.txt")
dvm_process = subprocess.Popen(
	[dvm_command, "--debug-devel", "--report-uri", orte_vm_uri_filename,
        '--mca', 'oob_base_verbose', '100', '--mca', 'ess_base_verbose', '100'
	],
        stdout=orte_logfile, stderr=subprocess.STDOUT)

time.sleep(10)
dvm_process.terminate()
