Class User.Remote.Almacen Extends (%Persistent, %Populate)
{

Property diahora As %PosixTime [ InitialExpression = {##class(%PosixTime).CurrentTimeStamp()} ];

Property evento As %String;

Property tipo As %String;

Property valor As %Double;

Storage Default
{
<Data name="AlmacenDefaultData">
<Value name="1">
<Value>%%CLASSNAME</Value>
</Value>
<Value name="2">
<Value>diahora</Value>
</Value>
<Value name="3">
<Value>evento</Value>
</Value>
<Value name="4">
<Value>tipo</Value>
</Value>
<Value name="5">
<Value>valor</Value>
</Value>
</Data>
<DataLocation>^User.Remote.AlmacenD</DataLocation>
<DefaultData>AlmacenDefaultData</DefaultData>
<ExtentSize>1</ExtentSize>
<IdLocation>^User.Remote.AlmacenD</IdLocation>
<IndexLocation>^User.Remote.AlmacenI</IndexLocation>
<Property name="%%CLASSNAME">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="%%ID">
<AverageFieldSize>1</AverageFieldSize>
<Selectivity>1</Selectivity>
</Property>
<Property name="diahora">
<AverageFieldSize>19</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="evento">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="tipo">
<AverageFieldSize>5</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<Property name="valor">
<AverageFieldSize>3</AverageFieldSize>
<Selectivity>100.0000%</Selectivity>
</Property>
<SQLMap name="IDKEY">
<BlockCount>-4</BlockCount>
</SQLMap>
<StreamLocation>^User.Remote.AlmacenS</StreamLocation>
<Type>%Storage.Persistent</Type>
}

}
