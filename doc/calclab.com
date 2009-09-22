<VirtualHost *:80>
    ServerName calclab.com
    ServerAlias www.calclab.com
    RewriteEngine On
    DocumentRoot /home/dani/deploy/calclab/current/public

    RewriteRule ^/$ /cache/index.html [QSA]
    RewriteRule ^([^.]+)$ /cache/$1.html [QSA]

    <Directory /home/dani/deploy/calclab/current/public>
         Options FollowSymLinks
         Allow from all
         AllowOverride None
         Order allow,deny
    </Directory>
</VirtualHost>

