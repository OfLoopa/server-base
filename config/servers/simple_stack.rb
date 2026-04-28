Server :simple_stack do
  host '89.124.114.155'
  tls_domain 'nfc-pantheon.ru'

  install :swarm
  install :traefik
  # install :oauth2_slim
  install :oauth2_yandex
  install :insight
  install :grafana
  install :registry_listener
  # install :registry

  # env AUTH_BOT: 'eksli_auth_bot'
  # env AUTH_VERIFY_KEY: 'ec0d80556d25240db37319db9f453887c970d8a3396928fe128de59e5c5310ff'
  env MAIN_DOMAIN: 'nfc-pantheon.ru'
  # env FORWARD_OAUTH_AUTH_URL: '/oauth_slim/authorize'
  # env CONSOLE_LEVEL: 'all'

  env INSIGHT_BASIC_AUTH: 'admin:admin'

  # oauth2_yandex — postgres session storage
  env POSTGRES_PASSWORD: 'changeme'   # TODO: set a secure password

  # oauth2_yandex — who is allowed in (at least one must be non-empty, or set YA_AUTH_DEV_ALLOW_ALL=true)
  env YA_AUTH_ALLOWED_EMAILS: ''         # TODO: comma-separated emails
  env YA_AUTH_ALLOWED_EMAIL_DOMAINS: ''  # TODO: e.g. 'example.com'
  env YA_AUTH_ALLOWED_LOGINS: ''         # TODO: comma-separated Yandex logins

  # env USERS_YAML: '/users.yaml'
  # config target: '/users.yaml', file_content: <<~YAML
  #   users:
  #     - admin: { Name: Fullname, role: admin, org: eksli, enabled: true, password: admin }
  #     # - admin: { Name: Fullname, role: admin, org: eksli, enabled: true, password: admin }
  # YAML

  env REGISTRY_HTPASSWD: "/home/loopa/Projects/server-base/config/servers/auth/htpasswd"
end
