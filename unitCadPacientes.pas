unit unitCadPacientes;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Mask, Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TformCadPacientes = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    txtID: TDBEdit;
    txtNome: TDBEdit;
    txtCelular: TDBEdit;
    txtDataCadastro: TDBEdit;
    txtCPF: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    gridPacientes: TDBGrid;
    txtBusca: TEdit;
    Label7: TLabel;
    procedure txtBuscaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadPacientes: TformCadPacientes;

implementation

{$R *.dfm}

uses unitDM;

procedure TformCadPacientes.FormCreate(Sender: TObject);
begin
    KeyPreview := True;
end;

procedure TformCadPacientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Key = VK_ESCAPE) then
    Close;
end;

procedure TformCadPacientes.txtBuscaChange(Sender: TObject);
begin
    DM.tbPaciente.Locate('nome', txtBusca.Text, [loPartialKey]);
end;

end.
