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
    Left = 152
    Top = 40
    object tbPacienteid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
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
  object dsPaciente: TDataSource
    DataSet = tbPaciente
    Left = 152
    Top = 112
  end
  object dsAgendamento: TDataSource
    DataSet = tbAgendamento
    Left = 256
    Top = 112
  end
  object tbEspecialidade: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Conexao
    UpdateOptions.UpdateTableName = 'clinica.especialidade'
    TableName = 'clinica.especialidade'
    Left = 368
    Top = 40
    object tbEspecialidadeid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object tbEspecialidadeepecialidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'epecialidade'
      Origin = 'epecialidade'
      Size = 80
    end
  end
  object dsEspecialidade: TDataSource
    DataSet = tbEspecialidade
    Left = 368
    Top = 112
  end
  object tbMedico: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Conexao
    UpdateOptions.UpdateTableName = 'clinica.medico'
    TableName = 'clinica.medico'
    Left = 472
    Top = 40
    object tbMedicoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
    end
    object tbMediconome: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'nome'
      Origin = 'nome'
      Size = 50
    end
    object tbMedicocpf: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cpf'
      Origin = 'cpf'
      EditMask = '999.999.999-99;1;_'
      Size = 16
    end
    object tbMedicorg: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'rg'
      Origin = 'rg'
      Size = 10
    end
    object tbMedicocep: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cep'
      Origin = 'cep'
      EditMask = '99.999-999;1;_'
      Size = 14
    end
    object tbMedicocidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'cidade'
      Origin = 'cidade'
      Size = 50
    end
    object tbMedicoestado: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'estado'
      Origin = 'estado'
      Size = 30
    end
    object tbMedicocelular: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'celular'
      Origin = 'celular'
      Size = 16
    end
    object tbMedicoemail: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'email'
      Origin = 'email'
      Size = 50
    end
    object tbMedicoidespecialidade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'idespecialidade'
      Origin = 'idespecialidade'
    end
    object tbMedicoespecialidade: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'especialidade'
      Origin = 'especialidade'
      Size = 80
    end
  end
  object dsMedico: TDataSource
    DataSet = tbMedico
    Left = 472
    Top = 112
  end
  object tbAgendamento: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = Conexao
    UpdateOptions.UpdateTableName = 'clinica.agendamento'
    TableName = 'clinica.agendamento'
    Left = 256
    Top = 40
    object tbAgendamentoid: TFDAutoIncField
      FieldName = 'id'
      Origin = 'id'
      ReadOnly = True
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
      EditMask = '!99/99/0000;1;_'
    end
    object tbAgendamentohora: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'hora'
      Origin = 'hora'
      EditMask = '!90:00;1;_'
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
    object tbAgendamentoid_especialidade: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_especialidade'
      Origin = 'id_especialidade'
    end
    object tbAgendamentoid_medico: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'id_medico'
      Origin = 'id_medico'
    end
  end
end
