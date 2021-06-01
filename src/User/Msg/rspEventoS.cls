/// Respuesta del BO tras almacenar el evento en BBDD
Class User.Msg.rspEventoS Extends Ens.Response [ Language = objectscript ]
{

Property idRegEvt As %String;

Storage Default
{
<Data name="rspEventoSDefaultData">
<Subscript>"rspEventoS"</Subscript>
<Value name="1">
<Value>idRegEvt</Value>
</Value>
</Data>
<DefaultData>rspEventoSDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
