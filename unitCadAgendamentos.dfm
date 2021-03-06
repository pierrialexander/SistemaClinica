object formCadAgendamentos: TformCadAgendamentos
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cadastro de Agendamentos'
  ClientHeight = 400
  ClientWidth = 700
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  OnKeyDown = FormKeyDown
  PixelsPerInch = 96
  TextHeight = 13
  object Label2: TLabel
    Left = 41
    Top = 109
    Width = 13
    Height = 13
    Caption = 'ID'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 124
    Top = 109
    Width = 89
    Height = 13
    Caption = 'Nome Completo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 41
    Top = 165
    Width = 27
    Height = 13
    Caption = 'Data'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 142
    Top = 165
    Width = 27
    Height = 13
    Caption = 'Hora'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 41
    Top = 229
    Width = 76
    Height = 13
    Caption = 'Especialidade'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 41
    Top = 285
    Width = 92
    Height = 13
    Caption = 'Nome do M'#233'dico'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 700
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 22
      Width = 197
      Height = 33
      Caption = 'Agendamentos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clGray
      Font.Height = -24
      Font.Name = 'Arial Black'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBNavigator1: TDBNavigator
      Left = 392
      Top = 24
      Width = 270
      Height = 33
      DataSource = DM.dsAgendamento
      TabOrder = 0
    end
  end
  object txtID: TDBEdit
    Left = 41
    Top = 128
    Width = 65
    Height = 21
    DataField = 'id'
    DataSource = DM.dsAgendamento
    TabOrder = 1
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 124
    Top = 128
    Width = 205
    Height = 21
    DataField = 'id_paciente'
    DataSource = DM.dsAgendamento
    KeyField = 'id'
    ListField = 'nome'
    ListSource = DM.dsPaciente
    TabOrder = 2
  end
  object DBEdit1: TDBEdit
    Left = 41
    Top = 184
    Width = 88
    Height = 21
    DataField = 'data_cadastro'
    DataSource = DM.dsPaciente
    TabOrder = 3
  end
  object DBEdit2: TDBEdit
    Left = 140
    Top = 184
    Width = 89
    Height = 21
    DataField = 'hora'
    DataSource = DM.dsAgendamento
    MaxLength = 5
    TabOrder = 4
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 41
    Top = 248
    Width = 248
    Height = 21
    DataField = 'id_especialidade'
    DataSource = DM.dsAgendamento
    KeyField = 'id'
    ListField = 'epecialidade'
    ListSource = DM.dsEspecialidade
    TabOrder = 5
  end
  object DBLookupComboBox3: TDBLookupComboBox
    Left = 41
    Top = 304
    Width = 248
    Height = 21
    DataField = 'id_medico'
    DataSource = DM.dsAgendamento
    KeyField = 'id'
    ListField = 'nome'
    ListSource = DM.dsMedico
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 351
    Top = 128
    Width = 327
    Height = 225
    DataSource = DM.dsAgendamento
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'data'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'hora'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'especialidade'
        Visible = True
      end>
  end
end
