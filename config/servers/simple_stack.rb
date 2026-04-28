Server :simple_stack do
  host '89.124.114.155'
  tls_domain 'nfc-pantheon.ru'

  install :swarm
  install :traefik
  install :oauth2_slim
  install :insight
  install :grafana
  install :registry_listener

  env AUTH_BOT: 'eksli_auth_bot'
  env AUTH_VERIFY_KEY: 'change_me'
  env MAIN_DOMAIN: 'nfc-pantheon.ru'
  env FORWARD_OAUTH_AUTH_URL: '/oauth_slim/authorize'
  env CONSOLE_LEVEL: 'all'

  env INSIGHT_BASIC_AUTH: 'admin:password'
end