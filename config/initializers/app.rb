FACEBOOK_APP_KEY = "156840151158230"
FACEBOOK_APP_SECRET = "bbcee158ae340cfd1cbd6a09330da14e"
APP_URL = "https://apps.facebook.com/punchh_integration/"
OAUTH_URL = "https://facebook-integrity.herokuapp.com/authenticate_result"
CANVAS_URL = "https://facebook-integrity.herokuapp.com/welcome_on_app"

$oauth = Koala::Facebook::OAuth.new(FACEBOOK_APP_KEY,FACEBOOK_APP_SECRET,APP_URL)