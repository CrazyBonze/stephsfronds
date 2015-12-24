namespace :event do
  desc "Creates an admin that can access the web interface."
  task :admin_create, [:email, :password, :password_confirmation] => :environment do |t, args|
    puts "email=>#{args.email}"
    puts "password=>#{args.password}"
    User.create!({
      :email => "#{args.email}",
      :password => "#{args.password}",
      :password_confirmation => "#{args.password_confirmation}"
    })
  end

end
