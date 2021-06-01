# Basic Sample - Using IS IRIS JavaGateway Service
Basic sample of using IRIS JavaGateway to get/insert data from/to SQL repo

## Installation

Just clone the repository and Import&Compile all the classes in a namespace with interoperability enabled. Be sure to change the configuration parameter.

## Setup

Once the classes are loaded and compiled, go to the Production's configuration screen in your system management portal and check the configuration settings of all the elements. Adjust those settings according to your system:

1. Change path from file adapter to your own path...
2. Configure the `EnsLib.JavaGateway.Service` to use your own JVM and Java classes depending on the DDBB you want to connect to
3. Configure your `User.BS.SQLInput` and `User.BO.Almacen` to point to the source and target DDBB respectively... you'll likely have to change the connection URL and the JDBC controller class

> BE AWARE that JavaGateway couldn't support the latest JVM. Up of today, in InterSystems IRIS 2020.1 the last version is (Open)JDK 11, being 8 the minimum version supported.

## Run

Once you do your set up, just start the production and insert some sample random data in User.Input.Datos class... you can use:

```ObjectScript
do ##class(User.Input.Datos).Populate(10,1)
```

If everything goes well, you should see in message viewer new sessions and the traces of triggered messages to record data in target DDBB and eventlog file.

## Issues

IS IRIS JavaGateway depends on a third party software, a Java VM, and there could be situations: the server crashes, IS IRIS is forced down,... where the disconnection is not made correctly and the JVM keep the ports open (listening). If that happens the JG could fail trying to restart when that Production re-start... if that's the case, try to stop that connection with:

```ObjectScript
do ##class(EnsLib.JavaGateway.Service).StopGateway(55555)
```

where 55555 is the port that IRIS did open to communicate with the JVM.
