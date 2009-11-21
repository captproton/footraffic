# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_ratr_session',
  :secret      => 'ab784050c80b4206a6ba0f5c208d788a2aa567347c0fad3f32eb4e7f883d807acb8c0edd0815ff9ce27f945d3fc5f266aa34b1ad7d55abf6635cb9e2ec0c8ceb'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
