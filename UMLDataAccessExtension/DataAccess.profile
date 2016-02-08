<?xml version="1.0" encoding="utf-8" ?>
<profile dslVersion="1.0.0.0"
       name="DataAccessProfile" displayName="Data access Profile"
       xmlns="http://schemas.microsoft.com/UML2.1.2/ProfileDefinition">
  <stereotypes>
    <stereotype name="persistentProperty" displayName="Persistent property">
      <metaclasses>
        <metaclassMoniker name="/DataAccessProfile/Microsoft.VisualStudio.Uml.Classes.IProperty" />
      </metaclasses>
      <properties>
        <property name="Precision" displayName="Size/Precision" defaultValue="0">
          <propertyType>
            <externalTypeMoniker name="/DataAccessProfile/System.Int32" />
          </propertyType>
        </property>
        <property name="Scale" displayName="Scale" >
          <propertyType>
            <externalTypeMoniker name="/DataAccessProfile/System.Int32" />
          </propertyType>
        </property>
        <property name="IsNullable" displayName="Is nullable?" >
          <propertyType>
            <externalTypeMoniker name="/DataAccessProfile/System.Boolean" />
          </propertyType>
        </property>
        <property name="IsIdentity" displayName="Is identity column?" defaultValue="false">
          <propertyType>
            <externalTypeMoniker name="/DataAccessProfile/System.Boolean" />
          </propertyType>
        </property>
        <property name="IsRequired" displayName="Content required?" defaultValue="false">
          <propertyType>
            <externalTypeMoniker name="/DataAccessProfile/System.Boolean" />
          </propertyType>
        </property>
        <property name="KeyGenerator" displayName="Key Generator" defaultValue="Autoinc" >
          <propertyType>
            <enumerationTypeMoniker name="/DataAccessProfile/KeyGenerator" />
          </propertyType>
        </property>
        <property name="FieldName" displayName="Database field name" >
          <propertyType>
            <externalTypeMoniker name="/DataAccessProfile/System.String" />
          </propertyType>
        </property>
        <property name="HasDefault" displayName="Has database default value?">
          <propertyType>
            <externalTypeMoniker name="/DataAccessProfile/System.Boolean" />
          </propertyType>
        </property>
        <property name="IsVersion" displayName="Is version field?">
          <propertyType>
            <externalTypeMoniker name="/DataAccessProfile/System.Boolean" />
          </propertyType>
        </property>
      </properties>
    </stereotype>
    <stereotype name="persistentClass" displayName="Persistent class">
      <metaclasses>
        <metaclassMoniker name="/DataAccessProfile/Microsoft.VisualStudio.Uml.Classes.IClass" />
      </metaclasses>
      <properties>
        <property name="TableName" displayName="Database table name" >
          <propertyType>
            <externalTypeMoniker name="/DataAccessProfile/System.String"/>
          </propertyType>
        </property>
        <property name="UseCascadeDelete" displayName="Use cascading delete?" >
          <propertyType>
            <enumerationTypeMoniker name="/DataAccessProfile/CascadeDelete" />
          </propertyType>
        </property>
        <property name="InheritanceStrategy" displayName="Inheritance strategy" >
          <propertyType>
            <enumerationTypeMoniker name="/DataAccessProfile/InheritanceStrategy" />
          </propertyType>
        </property>
        <property name="DataAccessKind" displayName="Kind of data access" defaultValue="Default" >
          <propertyType>
            <enumerationTypeMoniker name="/DataAccessProfile/DataAccessKind" />
          </propertyType>
        </property>
      </properties>
    </stereotype>
    <!-- persistent associations -->
    <stereotype name="persistentAssociation" displayName="Persistent association">
      <metaclasses>
        <metaclassMoniker name="/DataAccessProfile/Microsoft.VisualStudio.Uml.Classes.IAssociation" />
      </metaclasses>
      <properties>
        <property name="Constraint" displayName="HasConstraint expression" defaultValue="(d, m)=>d.FkId == m.Id">
          <propertyType>
            <externalTypeMoniker name="/DataAccessProfile/System.String" />
          </propertyType>
        </property>
        <property name="IsManaged" displayName="Is managed?" defaultValue="false">
          <propertyType>
            <externalTypeMoniker name="/DataAccessProfile/System.Boolean" />
          </propertyType>
        </property>
        <property name="IsDependent" displayName="Dependent role" defaultValue="None">
          <propertyType>
            <enumerationTypeMoniker name="/DataAccessProfile/DependentRole" />
          </propertyType>
        </property>
      </properties>
    </stereotype>
    <stereotype name="persistentPackage" displayName="Persistent package">
      <metaclasses>
        <metaclassMoniker name="/DataAccessProfile/Microsoft.VisualStudio.Uml.Classes.IPackage" />
      </metaclasses>
      <properties>
        <property name="ContextClass" displayName="Db context class" defaultValue="EntitiesModel">
          <propertyType>
            <externalTypeMoniker name="/DataAccessProfile/System.String" />
          </propertyType>
        </property>
        <property name="ConnectionString" displayName="Connection string name" defaultValue="EntitiesModelConnection">
          <propertyType>
            <externalTypeMoniker name="/DataAccessProfile/System.String" />
          </propertyType>
        </property>
      </properties>
    </stereotype>
  </stereotypes>
  <!-- All metaclasses referenced by a stereotype defined in this profile -->
  <metaclasses>
    <metaclass name="Microsoft.VisualStudio.Uml.Classes.IAssociation" />
    <metaclass name="Microsoft.VisualStudio.Uml.Classes.IClass" />
    <metaclass name="Microsoft.VisualStudio.Uml.Classes.IProperty" />
    <metaclass name="Microsoft.VisualStudio.Uml.Classes.IPackage" />
  </metaclasses>
  <!-- All property types referenced by a stereotype property defined in this profile -->
  <propertyTypes>
    <externalType name="System.String" />
    <externalType name="System.Boolean" />
    <externalType name="System.Int32" />
    <enumerationType name="InheritanceStrategy">
      <enumerationLiterals>
        <enumerationLiteral name="Vertical" displayName="Vertical" />
        <enumerationLiteral name="Horizontal" displayName="Horizontal" />
        <enumerationLiteral name="Flat" displayName="Flat" />
        <enumerationLiteral name="Default" displayName="Default" />
      </enumerationLiterals>
    </enumerationType>
    <enumerationType name="KeyGenerator">
      <enumerationLiterals>
        <enumerationLiteral name="Default" displayName="Default" />
        <enumerationLiteral name="Autoinc" displayName="Autoincrement" />
        <enumerationLiteral name="Guid" displayName="Guid" />
        <enumerationLiteral name="IncrementalGuid" displayName="Incremental Guid" />
        <enumerationLiteral name="HighLow" displayName="HighLow" />
      </enumerationLiterals>
    </enumerationType>
    <enumerationType name="DataAccessKind">
      <enumerationLiterals>
        <enumerationLiteral name="Default" displayName="Default" />
        <enumerationLiteral name="ReadWrite" displayName="Read/Write" />
        <enumerationLiteral name="InsertOnly" displayName="Insert Only" />
        <enumerationLiteral name="ReadOnly" displayName="Read Only" />
      </enumerationLiterals>
    </enumerationType>
    <enumerationType name="CascadeDelete">
      <enumerationLiterals>
        <enumerationLiteral name="Default" displayName="Default" />
        <enumerationLiteral name="No" displayName="No" />
        <enumerationLiteral name="Yes" displayName="Yes" />
      </enumerationLiterals>
    </enumerationType>
    <enumerationType name="DependentRole">
      <enumerationLiterals>
        <enumerationLiteral name="None" displayName="None" />
        <enumerationLiteral name="1st" displayName="First" />
        <enumerationLiteral name="2nd" displayName="Second" />
      </enumerationLiterals>
    </enumerationType>
  </propertyTypes>
</profile>
