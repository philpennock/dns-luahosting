-- File: philpennock.net.lua
-- Zone: philpennock.net
-- SOA record is automatically generated
-- Variable _a is replaced with zone name
-- _a = "example.com"

local ttl = 300

local nl_services_ipv4 = '94.142.241.93'
local nl_services_ipv6 = '2a02:898:31::48:4558:5345:5256'

local subdomains_to_services = { 'www', 'cands', 'demo' }

for val in values(subdomains_to_services) do
  a_and_aaaa(val, nl_services_ipv4, nl_services_ipv6, ttl)
end

redirect('conf', 'http://abstractions.io/')
