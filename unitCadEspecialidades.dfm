object formCadEspecialidades: TformCadEspecialidades
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cadastro de especialidades'
  ClientHeight = 410
  ClientWidth = 710
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 710
    Height = 81
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 32
      Top = 22
      Width = 199
      Height = 33
      Caption = 'Especialidades'
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
      DataSource = DM.dsPaciente
      TabOrder = 0
    end
  end
end
