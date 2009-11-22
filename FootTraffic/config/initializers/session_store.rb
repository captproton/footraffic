# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_FootTraffic_session',
  :secret      => 'dbc95513d0b48e5b3d978a418c79ad413c4de3ad1c6269c69eed84c35c744c5769a3f776d0d408b842de516ff972ffe4bea22dfdf9ad69d529bc33b2726a402b'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
