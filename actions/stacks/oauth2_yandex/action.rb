Action :oauth2_yandex do
  apply { |_params| deploy_drs('oauth2_yandex.drs') }
end
