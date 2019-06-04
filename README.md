# Transfuse

A small script to backup, compress, and restore your plasma user configurations

### Download:

```shell
git clone https://gitlab.com/cscs/transfuse.git
```
### Enter the directory:

```shell
cd transfuse
```

### Mark Executable:

```shell
chmod +x transfuse.sh
```

### How to use:

```shell
Possible commands:
 '-b USERNAME' or 'backup USERNAME'       to create a compressed backup
 '-BR' or 'backuproot'                    to backup root files and folders
 '-C USERNAME' or 'copy USERNAME'         to copy without compressing (useful for editing)
 '-c' or 'compress'                       to compress a transfusion folder (such as after using 'copy')
 '-h' or 'help' or '--help'               to display this help message
 '-r USERNAME' or 'restore USERNAME'      to restore a backup into a users home directory

For extra verbosity use the 'CHARTS=1' environment variable

Example usage:
 ./transfuse.sh -b manjaroo
```

> Note: transfuse.sh will now present you with a menu if no argument is used

### Donate  

Everything is free, but you can donate using these:  

<a href='https://ko-fi.com/X8X0VXZU' target='_blank'><img height='36' style='border:0px;height:36px;' src='https://az743702.vo.msecnd.net/cdn/kofi4.png?v=2' border='0' alt='Buy Me a Coffee at ko-fi.com' /></a> &nbsp; <a href='https://www.paypal.com/cgi-bin/webscr?cmd=_s-xclick&hosted_button_id=M2AWM9FUFTD52'><img height='36' style='border:0px;height:36px;' src='https://gitlab.com/cscs/resources/raw/master/paypalkofi.png' border='0' alt='Donate with Paypal' />  
