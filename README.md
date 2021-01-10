# Wordpress on Traefik Proxy Network

Run Wordpress with mysql database and portainer docker manager and traefik proxy without ssl.

**Apps data** :
- wordpress
- mysql
- portainer

## How to Run on local (Linux)?

1. First set mask domain in your `hosts` file :

- windows = C:\Windows\System32\drivers\etc\hosts
- linux = /etc/hosts

Values need add (domain optimal you can change to another domain mask):

- `127.0.0.1 wp.net`
- `127.0.0.1 monitor.wp.net`
- `127.0.0.1 db.wp.net`
- `127.0.0.1 portainer.wp.net`

2. Create user and password for basic auth in traefik panel using `htpasswd` (apt install apache2-utils)

- input : `htpasswd -nb admin 12345`
- output : `admin:$apr1$Aqz/agCJ$Pp68dttOMDsEzSi7qp4r30`

3. Add output user/password for basic auth in `Configs/traefik/traefik_dynamic.toml`.

4. Update `.env` file values

5. Update `setup.sql` file user/password and database name.

6. Run `docker compose up -d`

- Wordpress path = http://wp.net
- phpmyadmin path = http://db.wp.net
- portainer path = http://portainer.wp.net
- traefik panel path = http://monitor.wp.net