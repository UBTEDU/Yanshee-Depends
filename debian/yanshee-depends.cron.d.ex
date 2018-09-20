#
# Regular cron jobs for the yanshee-depends package
#
0 4	* * *	root	[ -x /usr/bin/yanshee-depends_maintenance ] && /usr/bin/yanshee-depends_maintenance
