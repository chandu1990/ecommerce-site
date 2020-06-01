class Admin::BaseController < ApplicationController

  http_basic_authenticate_with name: 'sharath', password: 'sharath123'

end
