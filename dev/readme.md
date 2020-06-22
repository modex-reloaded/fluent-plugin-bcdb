# Fluentd:

## 1. Installation steps
---
### **Install Ruby environment**

1. Go to [JRuby download location]https://rubyinstaller.org/downloads/)

1. Install from file JRuby with Dev tools as a bundle

### **Install Fluentd**
1. Go to [Fluentd download location]https://www.fluentd.org/download)

2. Add Fluentd /usr/sbin folder to your PATH variable

### **Use plugin**

1. Build the custom plugin  

    ```bash
    gem build fluent-plugin-bcdb
    ```

2. Install custom plugin to logstash  

    ```bash
    gem install fluent-plugin-bcdb.gem
    ```

3. Verify installed gem plugins
    ```bash
    gem list
    ```

4. Edit fluent.conf with the configuration appropriate to your BCDB endpoints:
    ```   
    <match **>
             @type bcdb
             base_url        "http://<your_domain_or_hostIP:port>/services/core/v1/api" # Api endpoint like https://bcdb.modex.tech/node-03/services/core/v1/api
             auth_url        "http://<your_domain_or_hostIP:port>/token" # OAuth token endpoint like https://bcdb.modex.tech/oauth/token
             bcdb_entity     "log"  # default: logline
             ssl_no_verify   false  # default: false
             rate_limit_msec 100    # default: 0 = no rate limiting
             raise_on_error  true   # default: true
             recoverable_status_codes 5000, 400 # default: 503
             cacert_file     /etc/ssl/endpoint1.cert   # default: ''
             client_cert_path /path/to/client_cert.crt # default: ''
             private_key_path /path/to/private_key.key # default: ''
             private_key_passphrase yourpassphrase     # default: ''
             username        <username> # ex. bcdb.admin@modex.tech default: ''
             password        <password> # ex. admin default: '', secret: true
             client_id       0x01      # default: ''. BDCB client_id
             client_secret   0x000001  # default: ''. BDCB client_secret
             buffered        true     # default: false. Switch non-buffered/buffered mode
             compress_request false    # default: false. Send compressed events
             @log_level trace
           </match>
    ```
    
5. Execute logstash based on logstash.conf 

    ```bash
    fluentd -c <absolute-path>/fluent.conf
    ```
