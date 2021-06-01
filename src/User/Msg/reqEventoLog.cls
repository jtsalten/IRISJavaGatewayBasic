/// Peticion para registrar un log del evento almacenado
Class User.Msg.reqEventoLog Extends (Ens.Request, %JSON.Adaptor)
{

Property idEvento As %String;

Property evtData As %String;

Storage Default
{
<Data name="reqEventoLogDefaultData">
<Subscript>"reqEventoLog"</Subscript>
<Value name="1">
<Value>idEvento</Value>
</Value>
<Value name="2">
<Value>evtData</Value>
</Value>
</Data>
<DefaultData>reqEventoLogDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
