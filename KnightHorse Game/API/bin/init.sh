sqlite-utils insert ./var/users.db score --csv data.csv --detect-types --pk=username
sqlite-utils create-index ./var/users.db score username --unique
