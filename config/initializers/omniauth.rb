Rails.application.config.middleware.use OmniAuth::Builder do
  provider :twitter, '82H0Z7ownq7YIzGqVnmXA', 'mJD7Xp1PXFUVlhHRLT7ZOkQbSaUn2SDTiaPfeiyE'
  provider :facebook, '410180965688077', 'ed3f145172e6e6034d4acbcd37a1af54', :iframe => true, 
      :scope => 'email, user_about_me,user_activities,user_birthday,user_education_history,
                      user_events,user_groups,user_hometown,user_interests,user_likes, user_location,
                      user_religion_politics,
                      user_status,user_work_history,
                      publish_stream, offline_access,
                      friends_about_me'
  #  provider :linked_in, 'CONSUMER_KEY', 'CONSUMER_SECRET'
end