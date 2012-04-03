Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, '82H0Z7ownq7YIzGqVnmXA', 'mJD7Xp1PXFUVlhHRLT7ZOkQbSaUn2SDTiaPfeiyE'
  # provider :facebook, 'APP_ID', 'APP_SECRET'
  #  provider :linked_in, 'CONSUMER_KEY', 'CONSUMER_SECRET'
end