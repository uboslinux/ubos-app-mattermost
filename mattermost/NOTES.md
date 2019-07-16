# NOTES

Apparently Mattermost can now run at different context paths, not just
at the root of the site. However, it appears that it needs to make
certain changes to its HTML files, and we currently don't let it do that.

Even at the root path, there's an error message in the log, but it
appears to be harmless

