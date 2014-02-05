require "instagram"

Instagram.configure do |config|
  config.client_id = "cec9eac77d90455ba281c823af15e97d"
  # config.access_token = "646600688.cec9eac.6d6f60f62eae42458380c20ced67c3d1"
end
# cec9eac77d90455ba281c823af15e97d
# curl -F 'client_id=cec9eac77d90455ba281c823af15e97d' -F 'client_secret=dff3eb8c70054083aa0dfed1f4f873f6' -F 'grant_type=authorization_code' -F 'redirect_uri=http://localhost:3000/?code=CODE' -F 'code=9a3f945fdaa94a30999e68f66e34d156' https://api.instagram.com/oauth/access_token