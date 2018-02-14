FROM ubuntu:16.04
RUN set -xe && \
    apt-get update && \
    DEBIAN_FRONTEND=noninteractive apt-get install -y \
      apache2 libapache2-mod-php7.0 php7.0-mysql python-mysqldb \
      mysql-client-5.7 \
      php7.0-mysql \
      php7.0-dba \
      php7.0-dev \
      php7.0-gmp \
      php7.0-readline \
      php7.0-xsl \
      php7.0-opcache \
      php7.0-mbstring \
      php7.0 \
      php7.0-cgi \
      php7.0-gd \
      php7.0-mcrypt \
      php7.0-curl \
      php7.0-cli \
      php7.0-pspell \
      php7.0-odbc \
      php7.0-phpdbg \
      php7.0-recode \
      php7.0-pgsql \
      php7.0-zip \
      php7.0-xmlrpc \
      php7.0-tidy \
      php7.0-sqlite3 \
      php7.0-imap \
      php7.0-json \
      php7.0-bcmath \
      php7.0-common \
      php7.0-xml \
      php7.0-intl \
      php7.0-bz2 \
      php7.0-soap && \
    a2enmod actions alias allowmethods asis auth_basic auth_digest auth_form \
      authn_anon authn_core authn_dbd authn_dbm authn_file authn_socache \
      authnz_fcgi authnz_ldap authz_core authz_dbd authz_dbm authz_groupfile \
      authz_host authz_owner authz_user autoindex buffer cache cache_disk \
      cache_socache cgi cgid charset_lite data dav dav_fs dav_lock dbd deflate \
      dialup dir dump_io echo env expires ext_filter file_cache filter headers \
      heartbeat heartmonitor ident include info lbmethod_bybusyness \
      lbmethod_byrequests lbmethod_bytraffic lbmethod_heartbeat ldap log_debug \
      log_forensic lua macro mime mime_magic negotiation php7.0 proxy \
      proxy_ajp proxy_balancer proxy_connect proxy_express proxy_fcgi \
      proxy_fdpass proxy_ftp proxy_html proxy_http proxy_scgi proxy_wstunnel \
      ratelimit reflector remoteip reqtimeout request rewrite sed session \
      session_cookie session_crypto session_dbd setenvif slotmem_plain \
      slotmem_shm socache_dbm socache_memcache socache_shmcb speling ssl \
      status substitute unique_id userdir usertrack vhost_alias xml2enc && \
    a2ensite default-ssl && \
    ln -svf /dev/stdout /var/log/apache2/access.log && \
    ln -svf /dev/stdout /var/log/apache2/other_vhosts_access.log && \
    ln -svf /dev/stderr /var/log/apache2/error.log && \
    rm -rvf /var/lib/apt/lists/*
EXPOSE 80/tcp 443/tcp
CMD ["/usr/sbin/apachectl","-DFOREGROUND"]
