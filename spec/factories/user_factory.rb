FactoryGirl.define do
    sequence(:email) {|n| "user#{n}@example.com"}

    factory :user do
        name "username"
        password "hunter2"
        password_confirmation "hunter2"
        email {generate(:email)} 

        factory :admin_user do
            admin true
        end
    end
end
