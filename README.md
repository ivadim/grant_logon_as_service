Grant logon as a service right to windows accounts
========================

To manage logon as a serive rights just add cookbook as dependency and run in your cookbook

For local account
```
grant_logon_as_service 'Neo'
grant_logon_as_service 'Trinity'
```

For domain accounts
```
grant_logon_as_service 'AgentSmith' 
    domain 'Matrix'
end
```