Class User.BS.SQLInput Extends Ens.BusinessService
{

Parameter ADAPTER = "EnsLib.SQL.InboundAdapter";

Method OnProcessInput(pInput As EnsLib.SQL.Snapshot, Output pOutput As %RegisteredObject) As %Status
{
	#dim tSC as %Boolean = $$$OK
	
	// Aunque pInput es un Snapshot, está configurado de modo que se llame a OnProcessInput con una sola fila en el resultset
	
	$$$TRACE("Filas: "_pInput.RowCount)
	
	set msg = ##class(User.Msg.reqEvento).%New()
	
	set msg.evnt = pInput.Get("evento")
	set msg.tipo = pInput.Get("tipo")
	set msg.valor = pInput.Get("valor")
	
	$$$TRACE("Datos --> "_msg.evnt_" ** "_msg.tipo_" ** "_msg.valor)
	
	set tSC = ..SendRequestAsync("User.BP.Orquesta",msg)
		
	Quit $$$OK
}

}
