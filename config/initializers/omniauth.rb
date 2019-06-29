Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :facebook,
#     Rails.application.secrets.facebook_client_id,
#     Rails.application.secrets.facebook_client_secret,
#     scope: 'email', display: 'popup', local: 'ja_JP', info_fields: "id, name"
# end

# Rails.application.config.middleware.use OmniAuth::Builder do
#   provider :google_oauth2,
#     Rails.application.secrets.google_client_id,
#     Rails.application.secrets.google_client_secret,
#     {
#       scope: "https://www.googleapis.com/auth/userinfo.email,
#               https://www.googleapis.com/auth/userinfo.profile,
#               https://www.googleapis.com/auth/calendar",
#       prompt: "select_account",
#       access_type: "offline"
#     }
end
