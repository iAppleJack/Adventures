Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '126631011115245', 'db205fee14b99b1116a2f19bb0c6d1dd'
  provider :github,   '8b5acd65c760b7a72185', 'b7e9a33ac456c074ebf9eef4a18e46eb05ade82f'
end