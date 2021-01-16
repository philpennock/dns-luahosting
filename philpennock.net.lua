-- File: philpennock.net.lua
-- Zone: philpennock.net
-- SOA record is automatically generated
-- Variable _a is replaced with zone name
-- _a = "example.com"

local ttl = 600

local nl_services_ipv4 = '94.142.241.93'
local nl_services_ipv6 = '2a02:898:31::48:4558:5345:5256'

local subdomains_to_services = { 'www', 'demo' }

for val in values(subdomains_to_services) do
  a(val, nl_services_ipv4, ttl)
  aaaa(val, nl_services_ipv6, ttl)
end

-- alias purely for testing
alias('bridge', 'bridge.grumpy-troll.org')

-- redirect('conf', 'http://abstractions.io/')

caa('', 'letsencrypt.org', 'issue')
caa('', 'amazonaws.com', 'issue')
caa('', 'globnix.net', 'issue')
caa('', ';', 'issuewild')
