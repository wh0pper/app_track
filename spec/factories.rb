FactoryBot.define do
  factory(:user) do
    email('user1@example.com')
    password('password')
  end
end
