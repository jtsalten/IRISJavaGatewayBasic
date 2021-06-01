Class User.BO.EventLog Extends Ens.BusinessOperation [ Language = objectscript ]
{

Parameter ADAPTER = "EnsLib.File.OutboundAdapter";

Property Adapter As EnsLib.File.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method Log(pRequest As User.Msg.reqEventoLog, Output pResponse As Ens.Response) As %Status
{
	#dim jsonSerialized as %String = ""
	
	set tSC = pRequest.%JSONExportToString(.jsonSerialized)
	
	if tSC
	{
		do ..Adapter.PutLine("eventos.log", jsonSerialized)
	}
	
	return tSC
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="User.Msg.reqEventoLog"> 
		<Method>Log</Method>
	</MapItem>
</MapItems>
}

}
