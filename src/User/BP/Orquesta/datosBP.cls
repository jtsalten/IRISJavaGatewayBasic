Class User.BP.Orquesta.datosBP Extends Ens.BP.Context
{

Property tiempo As %PosixTime [ InitialExpression = {##class(%PosixTime).CurrentTimeStamp()} ];

Property idEvento As %Integer;

Storage Default
{
<Data name="datosBPDefaultData">
<Subscript>"datosBP"</Subscript>
<Value name="1">
<Value>tiempo</Value>
</Value>
<Value name="2">
<Value>idEvento</Value>
</Value>
</Data>
<DefaultData>datosBPDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
