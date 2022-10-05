Class PYTHON.EmailContents Extends Ens.Request
{

Property Sender As %String [ Required ];

Property MessageText As %String;

Storage Default
{
<Data name="EmailContentsDefaultData">
<Subscript>"EmailContents"</Subscript>
<Value name="1">
<Value>Sender</Value>
</Value>
<Value name="2">
<Value>MessageText</Value>
</Value>
</Data>
<DefaultData>EmailContentsDefaultData</DefaultData>
<Type>%Storage.Persistent</Type>
}

}
