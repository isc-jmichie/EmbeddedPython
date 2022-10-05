Class PYTHON.SaveAsPDF Extends Ens.BusinessOperation
{

Parameter INVOCATION = "Queue";

Method StorePDF(pRequest As PYTHON.EmailContents, Output pResponse As Ens.Response) As %Status
{


	quit $$$OK
}

XData MessageMap
{
<MapItems>
	<MapItem MessageType="PYTHON.EmailContents"> 
		<Method>StorePDF</Method>
	</MapItem>
</MapItems>
}

}
