/// 
Class User.BP.Orquesta Extends Ens.BusinessProcessBPL [ ClassType = persistent, DependsOn = User.BP.Orquesta.datosBP, ProcedureBlock ]
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='User.Msg.reqEvento' response='Ens.Response' contextsuperclass='User.BP.Orquesta.datosBP' height='2000' width='2000' >
<sequence xend='200' yend='650' >
<trace name='Entra' value='"Entra en el proceso"' xpos='200' ypos='250' />
<call name='Almacena en BBDD' target='User.BO.Store' async='0' timeout='"PT15S"' xpos='200' ypos='350' >
<request type='User.Msg.reqEventoS' >
<assign property="callrequest.diahora" value="context.tiempo" action="set" />
<assign property="callrequest.evnt" value="request.evnt" action="set" />
<assign property="callrequest.tipo" value="request.tipo" action="set" />
<assign property="callrequest.valor" value="request.valor" action="set" />
</request>
<response type='User.Msg.rspEventoS' >
<assign property="context.idEvento" value="callresponse.idRegEvt" action="set" />
</response>
</call>
<call name='Log' target='User.BO.EventLog' async='1' xpos='200' ypos='450' >
<request type='User.Msg.reqEventoLog' >
<assign property="callrequest.idEvento" value="context.idEvento" action="set" />
<assign property="callrequest.evtData" value="context.idEvento_&quot;##&quot;_context.tiempo_&quot;##&quot;_request.evnt_&quot;##&quot;_request.tipo_&quot;##&quot;_request.valor" action="set" />
</request>
<response type='Ens.Response' />
</call>
<trace name='DatosTest' value='request.evnt' xpos='200' ypos='550' />
</sequence>
</process>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
