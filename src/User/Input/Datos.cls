Class User.Input.Datos Extends (%Persistent, %Populate)
{

Property evento As %String;

Property valor As %Double;

Property tipo As %String(VALUELIST = ",warning,info,error,critical");

Storage Default
{
<Data name="DatosDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>evento</Value>
</Value>
<Value name="3">
<Value>valor</Value>
</Value>
<Value name="4">
<Value>tipo</Value>
</Value>
</Data>
<DataLocation>^User.Input.DatosD</DataLocation>
<DefaultData>DatosDefaultData</DefaultData>
<ExtentSize>20</ExtentSize>
<IdLocation>^User.Input.DatosD</IdLocation>
<IndexLocation>^User.Input.DatosI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>1.55</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="evento">
<AverageFieldSize>4.8</AverageFieldSize>
<Selectivity>5.0000%</Selectivity>
</Property>
<Property name="tipo">
<AverageFieldSize>6.05</AverageFieldSize>
<Selectivity>25.0000%</Selectivity>
</Property>
<Property name="valor">
<AverageFieldSize>3.85</AverageFieldSize>
<Selectivity>5.0000%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^User.Input.DatosS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
