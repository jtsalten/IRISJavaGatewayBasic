Class User.Prod.Test Extends Ens.Production
{

XData ProductionDefinition
{
<Production Name="User.Prod.Test" TestingEnabled="true" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>2</ActorPoolSize>
  <Item Name="EnsLib.JavaGateway.Service" Category="" ClassName="EnsLib.JavaGateway.Service" PoolSize="1" Enabled="true" Foreground="true" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Host" Name="ClassPath">"C:\InterSystems\IH2020v1\dev\java\lib\JDK18\intersystems-jdbc-3.1.0.jar"</Setting>
    <Setting Target="Host" Name="JavaHome">C:\Program Files\AdoptOpenJDK\jdk-8.0.292.10-hotspot</Setting>
    <Setting Target="Host" Name="Logfile"></Setting>
    <Setting Target="Host" Name="Port">55555</Setting>
  </Item>
  <Item Name="User.BS.SQLInput" Category="" ClassName="User.BS.SQLInput" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Adapter" Name="DSN">jdbc:IRIS://127.0.0.1:51777/TEST</Setting>
    <Setting Target="Adapter" Name="JDBCDriver">com.intersystems.jdbc.IRISDriver</Setting>
    <Setting Target="Adapter" Name="JGService">EnsLib.JavaGateway.Service</Setting>
    <Setting Target="Adapter" Name="Credentials">jdbcUser</Setting>
    <Setting Target="Adapter" Name="Query">select ID, evento, tipo, valor from User_Input.Datos</Setting>
  </Item>
  <Item Name="User.BP.Orquesta" Category="" ClassName="User.BP.Orquesta" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="User.BO.EventLog" Category="" ClassName="User.BO.EventLog" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Adapter" Name="FilePath">c:\temp\inalsa</Setting>
  </Item>
  <Item Name="User.BO.Store" Category="" ClassName="User.BO.Store" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="true" Schedule="">
    <Setting Target="Adapter" Name="Credentials">jdbcUser</Setting>
    <Setting Target="Adapter" Name="DSN">jdbc:IRIS://127.0.0.1:51777/TEST</Setting>
    <Setting Target="Adapter" Name="JDBCDriver">com.intersystems.jdbc.IRISDriver</Setting>
    <Setting Target="Adapter" Name="JGService">EnsLib.JavaGateway.Service</Setting>
  </Item>
</Production>
}

}
