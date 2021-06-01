/// Petición de almacenamiento de un evento en BBDD
Class User.Msg.reqEventoS Extends Ens.Request
{

Property evnt As %String;

Property tipo As %String;

Property valor As %Double;

Property diahora As %PosixTime [ InitialExpression = {##class(%PosixTime).CurrentTimeStamp()} ];

Storage Default
{
<Data name="reqEventoSDefaultData">
<Subscript>"reqEventoS"</Subscript>
<Value name="1">
<Value>evnt</Value>
</Value>
<Value name="2">
<Value>tipo</Value>
</Value>
<Value name="3">
<Value>valor</Value>
</Value>
<Value name="4">
<Value>diahora</Value>
</Value>
</Data>
<DefaultData>reqEventoSDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
