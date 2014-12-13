openssl genrsa 2048 > ca/ca.key
openssl req -new -x509 -config openssl.cnf -days 3653 -nodes -key ca/ca.key -out ca/ca.crt

openssl genrsa 2048 > certs/user.key
openssl req -new -config openssl.cnf -key certs/user.key -out certs/user.req
openssl ca -config openssl.cnf -in certs/user.req -cert ca/ca.crt -keyfile ca/ca.key -out certs/user.crt
