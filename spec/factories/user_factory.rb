FactoryGirl.define do
    factory :user do
        name "username"
        password "hunter2"
        password_confirmation "hunter2"
        email "sample@example.com"

        factory :admin_user do
            admin true
        end
    end
end
