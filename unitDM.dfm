object DM: TDM
  OldCreateOrder = False
  Height = 440
  Width = 647
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=clinica'
      'User_Name=root'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 48
    Top = 32
  end
  object tbPaciente: TFDTable
    Active = True
    AfterInsert = tbPacienteAfterInsert
    IndexFieldNames = 'id'
    Connection = Conexao
    UpdateOptions.UpdateTableName = 'clinica.paciente'
    TableName = 'clinica.paciente'
    Left = 168
    Top = 40
    object tbPacienteid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object tbPacientenome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 80
    end
    object tbPacientecelular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'celular'
      Origin = 'celular'
      EditMask = '(99) 99999-9999;1;_'
      Size = 16
    end
    object tbPacientedata_cadastro: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data_cadastro'
      Origin = 'data_cadastro'
    end
    object tbPacientecpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
      EditMask = '999.999.999-99;1;_'
      Size = 14
    end
  end
  object tbAgendamento: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Conexao
    UpdateOptions.UpdateTableName = 'clinica.agendamento'
    TableName = 'clinica.agendamento'
    Left = 264
    Top = 40
    object tbAgendamentoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
    end
    object tbAgendamentoid_paciente: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_paciente'
      Origin = 'id_paciente'
    end
    object tbAgendamentodata: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'data'
      Origin = 'data'
    end
    object tbAgendamentohora: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hora'
      Origin = 'hora'
      Size = 8
    end
    object tbAgendamentoespecialidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'especialidade'
      Origin = 'especialidade'
      Size = 30
    end
    object tbAgendamentomedico: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'medico'
      Origin = 'medico'
      Size = 30
    end
  end
  object dsPaciente: TDataSource
    DataSet = tbPaciente
    Left = 168
    Top = 112
  end
  object dsAgendamento: TDataSource
    DataSet = tbAgendamento
    Left = 264
    Top = 112
  end
end