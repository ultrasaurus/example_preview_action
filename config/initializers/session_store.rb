# Be sure to restart your server when you modify this file.

# Your secret key for verifying cookie session data integrity.
# If you change this key, all old sessions will become invalid!
# Make sure the secret is at least 30 characters and all random, 
# no regular words or you'll be exposed to dictionary attacks.
ActionController::Base.session = {
  :key         => '_controller_example_session',
  :secret      => 'efce7aabc75c1e726c52f45f2bc1770cb591e6a006060383e41eab2b714e2899c853dbf7f0839c475a9fde88db1377f8028b0e58854f680f468cfbefcc97428e'
}

# Use the database for sessions instead of the cookie-based default,
# which shouldn't be used to store highly confidential information
# (create the session table with "rake db:sessions:create")
# ActionController::Base.session_store = :active_record_store
