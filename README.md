## Create a user
REQUEST
```
POST {{URL}}/api/users

{
	"user": {
		"name": "Rob Dan",
		"email": "rob_test@petbooking.com.br",
		"password": "12345678"
	}
}
```
Headers: 
```
Content-Type: application/vnd.api+json
```




RESPONSE
```
{
    "name": "Rob Dan",
    "email": "rob_tests1@petbooking.com.br",
    "authentication_token": "xpTNirodkvuNKLRfrtpAbSWk"
}
```


## Create a session
REQUEST
```
POST {{URL}}/api/sessions

{
    "authentication_token": "A3M37KAgozF4uu1GbALdRFB2",
    "email": "rob_tests1@petbooking.com.br",
    "name": "Rob Dan"
}
```
Headers: 
```
Content-Type: application/vnd.api+json
```


RESPONSE
```
{
    "authentication_token": "A3M37KAgozF4uu1GbALdRFB2",
    "email": "rob_tests1@petbooking.com.br",
    "name": "Rob Dan"
}
```

## Destroy a session

REQUEST
```
DELETE {{URL}}/api/sessions/{{authentication_token}}
```



RESPONSE: 200 ok

