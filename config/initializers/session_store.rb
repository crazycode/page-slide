# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_page-slide_session',
  :secret      => 'c3e540c7f138c475c4d54a34c523ea5c138f73b84953d128f7662dc74da739f1367a41faa26e6da42d85ac90a3363fbed23c41d60692c16437a616cbd99feaad'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
