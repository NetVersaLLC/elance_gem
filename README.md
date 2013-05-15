# Elance Gem
Provides access to Elance's developer API.

## Requirements
awesome_print
httparty
base64
uri
active_support

### Installing
% gem install elance_gem
### Example
Instantiates a new Elance client (using a valid authentication token), and then uses 'freelancers.my' to retrieve a list of current contractors with open jobs. Outputs hours worked for each developer (per day and per week)

	client.freelancers.my do |freelancers|
	  freelancers['data']['agents'].each do |agent|
	    puts [agent['userId'], agent['userDisplayName'], agent['companyDisplayName'], agent['screenData']['bidData']['hourlyRate'], agent['hoursToday'], agent['hours'], agent['authorizedHours']].join("\t")
	  end
	end

### Methods
https://www.elance.com/q/api2

###Jobs
####jobs.all
Searches all jobs using the specified search parameters
####jobs.my
Returns all jobs created by or assigned to the currently authenticated user
####jobs.find(job_id)
Returns all details for the specified job
####jobs.proposals(job_id)
Returns all proposals associated with the specified job
### Project
####projects.create(params)
Submit a new job to Elance.
####projects.payment(params)
Submit a new ad-hoc payment for a job.
### Workroom
####workrooms.find(bid_id)
Requests detail information for a workrooms.
####workrooms.proposals(bid_id)
Requests a list of all outstanding actions for a workrooms.
####workrooms.contractors(bid_id)
Requests a list of all contractors who have access to this workrooms.
####workrooms.inbox(bid_id)
Requests the most recent unread messages and notifications in the Workroom, including new messages from other Workroom members and important project notifications.
####workrooms.messages(bid_id)
Requests a list of all messages sent between Workroom members.
####workrooms.proposal(bid_id)
Requests a description of the original bid on which the Workroom is based.
####workrooms.status_reports(bid_id)
Requests update reports filed by contractors against this projects.
####workrooms.timesheets(bid_id)
Requests reports on hours worked that have been filed by contractors against this projects.
####workrooms.users(bid_id)
Requests a list of all users who belong to this workrooms.
####workrooms.workview(bid_id, user_id)
Requests WorkView™ information for the specified user on the specified projects.
### Profiles
####profiles.profile
Requests private and public details from the public profile of the currently logged in contractor, relative to the specified category.
####profiles.profile_icon
Requests a small version of the picture that represents the currently logged in contractor on the Elance Web site.
####profiles.name_id(name_or_id)
Requests private and public details from the designated contractor's public profile, relative to the specified category.
####profiles.name_id_icon(name_or_id)
Requests a small version of the picture that represents the designated contractor on the Elance Web site.
### Freelancers
####contractors.search(keywords)
Executes a keyword search against the database of all Elance freelancers, and returns all matching results.
####contractors.my
Retrieves the list of all freelancers who have open jobs with the currently authenticated employer.
####contractors.watchlist
Retrieves summary information for all of the freelancers that an employer has added to her watchlist on the Elance site.
####contractors.find(user_id)
Retrieves detailed information for a specific freelancer.
### Groups
####groups.all
Returns a full list of all current groups on the Elance system.
####groups.find(group_id)
Requests information pertaining to the specified user community, including the group's name, description, and logo.
####groups.members(group_id)
Requests a list of all of the Elance members who have joined and been approved for membership in the specified user community.
####groups.jobs(group_id)
Requests a list of all open projects that might be of interest to people who belong to the specified group

## Copyright

(C) 2013 NetVersa, LLC.
