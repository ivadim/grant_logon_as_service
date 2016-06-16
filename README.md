Grant 'logon as a service' rights to windows accounts
========================

To manage 'logon as a serive' rights just add cookbook as dependency and add to recipe

For local accounts
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