Class User.BO.Store Extends Ens.BusinessOperation [ Language = objectscript ]
{

Parameter ADAPTER = "EnsLib.SQL.OutboundAdapter";

Property Adapter As EnsLib.SQL.OutboundAdapter;

Parameter INVOCATION = "Queue";

Method registraEvt(pRequest As User.Msg.reqEventoS, Output pResponse As User.Msg.rspEventoS) As %Status
{
	#dim tRS as EnsLib.SQL.GatewayResultSet 
	#dim e as %Exception.General
	
	try
	{
	set pResponse = ##class(User.Msg.rspEventoS).%New()
	
	set tValues = 3
	set tValues(1)= pRequest.evnt
	set tValues(2)= pRequest.tipo
	set tValues(3)= pRequest.valor
	
	$$$THROWONERROR(tSC,..Adapter.ExecuteUpdateParmArray(.filas,"insert into User_Remote.Almacen (evento,tipo,valor) values (?,?,?)",.tValues))
	
	$$$THROWONERROR(tSC,..Adapter.ExecuteQuery(.tRS,"SELECT LAST_IDENTITY() as lastID FROM User_Remote.Almacen"))

	do tRS.Next(.tSC)
	
	set tIDEvt = tRS.Get("lastID")
	$$$TRACE("tSC: "_tSC_" -- ID del último evento: "_tIDEvt)
	
	set pResponse.idRegEvt = tRS.Get("lastID")

	}
	catch e
	{
		return e.AsStatus()
	}
	return 1
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="User.Msg.reqEventoS"> 
		<Method>registraEvt</Method>
	</MapItem>
</MapItems>
}

}
