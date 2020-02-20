Some initial notes about this entire process.

## Running flask in a development environment

Having used flask in the past, I noticed how the example code [would only bind to the localhost of the container itself.](https://github.com/seru1us/devops-exercise/blob/dffb219aaeb6580f43716cff9a0309ad8c1159b5/app/main.py#L54) This posed some problems when trying to debug it on my local machine. In the future, I would use a method to set the following:

```
if __name__ == "__main__":
    app.run(host='0.0.0.0')
```

In addition to the other network settings. This would be implemented using test parameters, so we could properly specify network bindings (if applicable) to the container.

Also, as I'm naturally interfacing directly with this api using something like curl or httpie, in a production environment this wouldn't be the case. There would be an internal network where traffic is proxied through a load balancer.

## Persistent Data and Docker-Compose

Naturally, in most instances with pure docker we would be [utilizing docker-compose and mounting volumes](https://docs.docker.com/storage/volumes/) as persistent storage. After glancing at the "data" folder, this *definitely* seems as if it qualifies as some kind of persistent data store. I don't have the luxury of asking the dev if the contents of this will change, but I would like to mount it as a volume as opposed to copying it out at each build.

## Documentation and comments

I am a huge proponent of verbose documentation and comments. Given the time constraint, I couldn't maintain my preferred level of verbosity. For examples of how I normally document code, [please refer to other "excersies" I have done for interviews.](https://github.com/seru1us/check-publics3)

