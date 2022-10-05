Class PYTHON.PYTHONProduction Extends Ens.Production [ Not ProcedureBlock ]
{

XData ProductionDefinition
{
<Production Name="PYTHON.PYTHONProduction" LogGeneralTraceEvents="false">
  <Description></Description>
  <ActorPoolSize>1</ActorPoolSize>
  <Item Name="PYTHON.IMAPEmailService" Category="" ClassName="PYTHON.IMAPEmailService" PoolSize="1" Enabled="false" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
    <Setting Target="Host" Name="Credentials">MailService</Setting>
    <Setting Target="Host" Name="IMAPPort">993</Setting>
    <Setting Target="Host" Name="IMAPServer">outlook.office365.com</Setting>
    <Setting Target="Adapter" Name="CallInterval">30</Setting>
    <Setting Target="Host" Name="TargetConfigName">PYTHON.CheckSender</Setting>
  </Item>
  <Item Name="PYTHON.SaveAsPDF" Category="" ClassName="PYTHON.SaveAsPDF" PoolSize="1" Enabled="false" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
  <Item Name="PYTHON.CheckSender" Category="" ClassName="PYTHON.CheckSender" PoolSize="1" Enabled="true" Foreground="false" Comment="" LogTraceEvents="false" Schedule="">
  </Item>
</Production>
}

}
