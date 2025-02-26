# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include Flash
  include Pundit
  include Title

  helper_method :title
  helper_method :meta_tag_title

  before_action do
    title :base, scope: 'web'
  end
end
