require_relative 'config/environment'

use Rack::MethodOverride
use CreditcardsController
use BanksController
use BillsController
use UsersController
use SessionsController
run ApplicationController
