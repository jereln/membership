#Membership App

##Overview
Groups have people and people have groups. These associations are all reflected in a members table which also include a role and date joined. From the homepage you can either view the groups index or view the people index. Each index allows you to add or delete a group or person. Viewing a specific group will show a list of all members and also allows you to remove or add a member. Viewing a specific person will show a list of all the groups they are in and allows you to join or leave a group. The model also validates for uniqueness in the join table, preventing duplicate entries.

##Approach
I started off by scaffold generating three resources: groups, people, member(ship). I updated the models to reflect the has_many :through associations. I created partials for forms to create a membership in both the groups view and people view. I also updated the view to show list of members and list of groups a part of. I was able to add a conditional redirect for the member.delete method depending on where the request was coming from.

##Resources
http://www.seanbehan.com/validate-uniqueness-on-join-tables-in-rails  
http://guides.rubyonrails.org/association_basics.html