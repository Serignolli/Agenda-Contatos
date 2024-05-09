unit UnitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TForm3 = class(TForm)
    Label1: TLabel;
    ContactName: TLabel;
    Phone: TDBEdit;
    ContactPhone: TLabel;
    Name: TDBEdit;
    blocked: TDBCheckBox;
    observations: TDBMemo;
    observationsLabel: TLabel;
    DateTimeLabel: TLabel;
    DateTime: TDBText;
    Include: TButton;
    Save: TButton;
    ContactsGrid: TDBGrid;
    Cancel: TButton;
    Exclude: TButton;
    procedure IncludeClick(Sender: TObject);
    procedure SaveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ExcludeClick(Sender: TObject);
    procedure CancelClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses UnitDM;

procedure TForm3.FormShow(Sender: TObject);
  begin
    DM.ClientDataSet.Close;
    DM.ClientDataSet.Open;
  end;

procedure TForm3.IncludeClick(Sender: TObject);
  var
    nContador : integer;
    date: TDateTime;
  begin
      DM.QryConsulta.Close;
      DM.QryConsulta.SQL.Text := 'select coalesce(max(id), 0) id from contacts';
      DM.QryConsulta.Open;
      nContador := DM.QryConsulta.FieldByName('id').AsInteger;
      nContador := nContador + 1;

      date := now;

      DM.ClientDataSet.Append;
      DM.ClientDataSet.FieldByName('id').AsInteger := nContador;
      DM.ClientDataSet.FieldByName('date').AsDateTime := date;

      DM.ClientDataSet.Post;
  end;

procedure TForm3.SaveClick(Sender: TObject);
  begin
    try
      DM.ClientDataSet.Post;
      DM.ClientDataSet.ApplyUpdates(0);
      DM.ClientDataSet.Refresh;
    except
    on e: Exception do
      ShowMessage('Erro ao salvar registro: ' + e.Message);
    end;

    DM.ClientDataSet.close;
    DM.ClientDataSet.open;

  end;

procedure TForm3.CancelClick(Sender: TObject);
  begin
    try
      DM.ClientDataSet.Cancel;
    except
    on e: Exception do
      ShowMessage('Erro ao cancelar registro: ' + e.Message);
    end;
  end;

procedure TForm3.ExcludeClick(Sender: TObject);
  begin
    try
      if not DM.ClientDataSet.IsEmpty then
      begin
        DM.ClientDataSet.Delete;
        DM.ClientDataSet.ApplyUpdates(0);
        DM.ClientDataSet.Refresh;
      end;
    except
    on e: Exception do
      ShowMessage('Erro ao excluir registro: ' + e.Message);
    end;
  end;

end.
