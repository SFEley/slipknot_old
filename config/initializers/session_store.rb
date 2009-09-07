# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_slipknot_session',
  :secret      => '17582d7b98f90a94c21d01b6c5cb590d8a4eaaa8c80dedaefe35b2480e869a4740d4da2cc357dc3929a48393b15c6a86e3e282fe60f161290d3ceb96ac772e82'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
