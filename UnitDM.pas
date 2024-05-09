unit UnitDM;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.SqlExpr, Data.DBXMSSQL,
  Data.FMTBcd, Datasnap.DBClient, Datasnap.Provider;

type
  TDM = class(TDataModule)
    SQLConnection: TSQLConnection;
    QryConsulta: TSQLQuery;
    SQLQuery: TSQLQuery;
    DataSetProvider: TDataSetProvider;
    DataSource: TDataSource;
    ClientDataSet: TClientDataSet;
    ClientDataSetid: TIntegerField;
    ClientDataSetname: TWideStringField;
    ClientDataSetphone: TWideStringField;
    ClientDataSetblocked: TBooleanField;
    ClientDataSetdate: TSQLTimeStampField;
    ClientDataSetobservations: TWideMemoField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
