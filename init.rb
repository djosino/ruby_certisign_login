require 'ruby_certisign_login'

# This is all duplication of what Railtie does, but is necessary because
# the initializer defined by the Railtie won't ever run when loaded as plugin.


if defined? ActionView::Base
  require 'ruby_certisign_login/view_helpers/action_view'
end

RubyCertisignLogin::Railtie.add_locale_path config