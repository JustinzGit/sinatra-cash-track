require_relative 'config/environment'

use Rack::MethodOverride
use BillsController
use UsersController
use SessionsController
run ApplicationController
