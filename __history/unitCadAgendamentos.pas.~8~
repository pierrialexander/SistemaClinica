unit unitCadAgendamentos;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.Mask,
  Vcl.ExtCtrls;

type
  TformCadAgendamentos = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    DBNavigator1: TDBNavigator;
    Label2: TLabel;
    Label4: TLabel;
    txtID: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    Label3: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    DBLookupComboBox2: TDBLookupComboBox;
    DBLookupComboBox3: TDBLookupComboBox;
    procedure FormCreate(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formCadAgendamentos: TformCadAgendamentos;

implementation

{$R *.dfm}

uses unitDM, unitCadEspecialidades, unitCadMedicos, unitCadPacientes;

procedure TformCadAgendamentos.FormCreate(Sender: TObject);
begin
     KeyPreview := True;
end;

procedure TformCadAgendamentos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
    if (Key = VK_ESCAPE) then
    Close;
end;

end.
