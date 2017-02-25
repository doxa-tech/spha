role :app, %w{jstech@188.166.35.173}
role :web, %w{jstech@188.166.35.173}
role :db,  %w{jstech@188.166.35.173}

# Define server(s)
server '188.166.35.173', user: 'jstech', roles: %w{web app db}, primary: true

# SSH Options
# See the example commented out section in the file
# for more options.

# ask(:password, nil, echo: false)

set :ssh_options, {
    forward_agent: true,
    user: 'jstech',
    port: 77
}
