Class User.Msg.reqEvento Extends Ens.Request
{

Property evnt As %String;

Property tipo As %String;

Property valor As %Double;

Storage Default
{
<Data name="reqEventoDefaultData">
<Subscript>"reqEvento"</Subscript>
<Value name="1">
<Value>evnt</Value>
</Value>
<Value name="2">
<Value>tipo</Value>
</Value>
<Value name="3">
<Value>valor</Value>
</Value>
</Data>
<DefaultData>reqEventoDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
