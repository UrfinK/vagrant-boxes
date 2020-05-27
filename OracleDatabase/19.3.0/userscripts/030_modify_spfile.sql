shutdown immediate;

create spfile from pfile='/vagrant/userscripts/sources/template_dev_localvm_init.ora';

startup;

quit;