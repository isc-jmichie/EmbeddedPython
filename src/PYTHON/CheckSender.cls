/// 
Class PYTHON.CheckSender Extends Ens.BusinessProcessBPL [ ClassType = persistent, ProcedureBlock ]
{

/// BPL Definition
XData BPL [ XMLNamespace = "http://www.intersystems.com/bpl" ]
{
<process language='objectscript' request='PYTHON.EmailContents' response='Ens.Response' height='2000' width='2000' >
<sequence xend='410' yend='621' >
<if name='Check sender' condition='$FIND(request.Sender,"replace-by-mail-account")' xpos='361' ypos='218' xend='280' yend='527' >
<true>
<call name='Save As PDF' target='PYTHON.SaveAsPDF' async='1' xpos='188' ypos='336' >
<request type='PYTHON.EmailContents' >
<assign property="callrequest" value="request" action="set" />
</request>
<response type='Ens.Response' />
</call>
</true>
</if>
</sequence>
</process>
}

Storage Default
{
<Type>%Storage.Persistent</Type>
}

}
