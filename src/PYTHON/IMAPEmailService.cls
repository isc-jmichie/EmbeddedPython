/// IMAPEmailService to kick off some functionality every n seconds
Class PYTHON.IMAPEmailService Extends (Ens.BusinessService, Ens.Adapter)
{

/// Configuration item to which to send message
Property TargetConfigName As Ens.DataType.ConfigName;

Property IMAPServer As %String;

Property IMAPPort As %Integer;

Property Credentials As %String;

/// Make paramaters settable from the component UI
Parameter SETTINGS = "IMAPServer:Basic,IMAPPort:Basic,Credentials:Basic:selector?multiSelect=0&context={Ens.ContextSearch/Credentials},TargetConfigName:Basic:selector?multiSelect=0&context={Ens.ContextSearch/ProductionItems?targets=1&productionName=@productionId}";

/// this causes the adapter to have an interval timer
Parameter ADAPTER = "Ens.InboundAdapter";

Method OnProcessInput(pInput As %RegisteredObject, Output pOutput As %RegisteredObject) As %Status
{
    If '$IsObject(..%CredentialsObj) Do ..CredentialsSet(..Credentials) If '$IsObject(..%CredentialsObj) { Set tSC=$$$EnsError($$$EnsErrNoCredentials,..Credentials) Quit }

	#dim sc As %Status = $$$OK
    try {
		set pReq = ..SaveEmailContents()
    } catch ex {
    	set sc = ex.AsStatus()
    }
    quit sc
}

Method SaveEmailContents()
{
	quit $$$OK
}

}
