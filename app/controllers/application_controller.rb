class ApplicationController < ActionController::Base
  include DeviseWhitelist
  include TrackSource
  include CurrentUserConcern
end
