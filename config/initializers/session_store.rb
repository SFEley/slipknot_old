# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_slipknot_session',
  :secret      => 'dbae6c0ef99f79091411cbee27e2231826e50165faf315c44ff7f26be7315af5f0ed5fbde938a67ba26365a4718437107b207a327c2aac3b22c7a59710d22ae9'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
