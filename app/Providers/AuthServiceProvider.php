<?php

namespace App\Providers;

use Carbon\Carbon;
use Laravel\Passport\Passport;
use Illuminate\Support\Facades\Gate;
use Illuminate\Foundation\Support\Providers\AuthServiceProvider as ServiceProvider;
use App\Models\RoleScope_model;

class AuthServiceProvider extends ServiceProvider
{

    private $RoleScope_model;
    public function __construct(){
        $this->RoleScope_model = new RoleScope_model;
    }
    /**
     * The policy mappings for the application.
     *
     * @var array
     */
    protected $policies = [
        'App\Model' => 'App\Policies\ModelPolicy',
    ];

    /**
     * Register any authentication / authorization services.
     *
     * @return void
     */
    public function boot()
    {
        $this->registerPolicies();

        $scope = $this->RoleScope_model->getScope();
        
        Passport::tokensCan($scope);

        Passport::routes();

        Passport::tokensExpireIn(Carbon::now()->addMinutes(15));

        Passport::refreshTokensExpireIn(Carbon::now()->addDays(30));
    }
}
