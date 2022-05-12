# Minimal jumphost to provide SSH access 

This very small (+/- 5MB) IOx application is meant to be run on Cisco routers running IOx
with an Intel-based CPU such as IR809 and IR829 gateways.

It exposes a Telnet server on standard port TCP 23 that can use used to
login with user "cisco" and password "cisco". Credentials can be changed by editing the
Dockerfile.

Telnet was chosen over SSH server to reduce the IOx application size.

Once logged in with Telnet, you'll be at this application bash shell with SSH client installed. This
can be handy to jump from here to another host.

This is only recommended to use when necessary, should not be left
running longer than needed, and should not use any production password as tetnet is not encrypted and your
password with be highly exposed.
 