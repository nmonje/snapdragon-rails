User.delete_all
Event.delete_all
Burst.delete_all

User.create(:username => 'example', :email => 'ex@mp.le', :password => 'example')
user = User.find_by_username('example')

Event.create(:title => "Truckin'",
							:description => "North Korea for some reason fascinates me.",
							:lat => -41,
							:long => 72,
							:start => Time.now,
							:end => Time.now + 1.hour,
							:radius => 0.01)

event = Event.find_by_title("Truckin'")

Snap.create(:image_url => 'http://i.imgur.com/K9nEh.jpg',
						:user_id => user.id,
						:datetime => Time.now,
						:lat => -41,
						:long => 72,
						:event_id => event.id)
