Some initial notes about this entire process.

## Running flask in a development environment

Having used flask in the past, I noticed how the example code [would only bind to the localhost of the container itself.](https://github.com/seru1us/devops-exercise/blob/dffb219aaeb6580f43716cff9a0309ad8c1159b5/app/main.py#L54) This posed some problems when trying to debug it on my local machine. In the future, I would use a method to set the following:

```
if __name__ == "__main__":
    app.run(host='0.0.0.0')
```

In addition to the other network settings. This would be implemented using test parameters, so we could properly specify network bindings (if applicable) to the container.

