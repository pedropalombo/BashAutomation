#m h dom mon dow    command
30 1 * * 5 /usr/local/bin/script
# \-> when the minute hits '30', the hour is '1', and it's a Friday (5th day of the week), it will run the command allocated on the given path
# \-> PS: DayOfMonth and Month don't matter, hence the '*'
# \-> PSS: make sure the script can be found on the given path