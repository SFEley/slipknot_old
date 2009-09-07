# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_slipknot_session',
  :secret      => '846af0de2b7f374cf4103b8bba3d17b0eacdc58874d5956fdbc353d4d88f4e65d6a3548a45fe15f888c220900c0347394fe59726b24bc2cad2b14ab42f0bd305'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
