object dm: Tdm
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 209
  Width = 263
  object conexao: TSQLConnection
    ConnectionName = 'FBConnection'
    DriverName = 'Firebird'
    KeepConnection = False
    LoginPrompt = False
    Params.Strings = (
      'DriverName=Firebird'
      
        'Database=Master:d:\projetos\projetos desenvolvimento\dados\Bitby' +
        'te_PDV\Reestruturacao\Bitbyte_Server.FDB'
      'RoleName=RoleName'
      'User_Name=sysdba'
      'Password=masterkey'
      'ServerCharSet='
      'SQLDialect=3'
      'ErrorResourceFile='
      'LocaleCode=0000'
      'BlobSize=-1'
      'CommitRetain=False'
      'WaitOnLocks=True'
      'IsolationLevel=ReadCommitted'
      'Trim Char=False')
    Connected = True
    Left = 8
    Top = 48
  end
  object SqlConsulta: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      ''
      
        'select i.comanda, p.descricao, i.qtd, i.vr_unit, (i.vr_unit * i.' +
        'qtd) as total'
      'from tbcomanda_item i'
      '    left join tbprod p on p.codigo = i.codprod'
      'where i.comanda = 600')
    SQLConnection = conexao
    Left = 80
    Top = 8
  end
  object SqlAux: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      ''
      
        'select i.comanda, p.descricao, i.qtd, i.vr_unit, (i.vr_unit * i.' +
        'qtd) as total'
      'from tbcomanda_item i'
      '    left join tbprod p on p.codigo = i.codprod'
      'where i.comanda = 600')
    SQLConnection = conexao
    Left = 48
    Top = 8
  end
  object SqlAux2: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      ''
      
        'select i.comanda, p.descricao, i.qtd, i.vr_unit, (i.vr_unit * i.' +
        'qtd) as total'
      'from tbcomanda_item i'
      '    left join tbprod p on p.codigo = i.codprod'
      'where i.comanda = 600')
    SQLConnection = conexao
    Left = 16
    Top = 6
  end
  object SqlProduto: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQL.Strings = (
      ''
      
        'select i.comanda, p.descricao, i.qtd, i.vr_unit, (i.vr_unit * i.' +
        'qtd) as total'
      'from tbcomanda_item i'
      '    left join tbprod p on p.codigo = i.codprod'
      'where i.comanda = 600')
    SQLConnection = conexao
    Left = 120
    Top = 8
  end
  object sdsemp: TSQLDataSet
    CommandText = 'TBEMP'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 167
    Top = 8
  end
  object dspemp: TDataSetProvider
    DataSet = sdsemp
    Options = [poAutoRefresh]
    Left = 195
    Top = 8
  end
  object dsemp: TDataSource
    DataSet = tbemp
    Left = 195
    Top = 36
  end
  object tbemp: TClientDataSet
    Aggregates = <>
    PacketRecords = 1
    Params = <>
    ProviderName = 'dspemp'
    Left = 167
    Top = 36
    object tbempEMPRESA: TStringField
      FieldName = 'EMPRESA'
      Size = 30
    end
    object tbempCARTEIRA: TStringField
      FieldName = 'CARTEIRA'
      Size = 30
    end
    object tbempCODCED: TStringField
      FieldName = 'CODCED'
      Size = 30
    end
    object tbempDIGCODCED: TStringField
      FieldName = 'DIGCODCED'
      Size = 30
    end
    object tbempCODBAN: TStringField
      FieldName = 'CODBAN'
      Size = 30
    end
    object tbempCODAGE: TStringField
      FieldName = 'CODAGE'
      Size = 30
    end
    object tbempDIGAGE: TStringField
      FieldName = 'DIGAGE'
      Size = 30
    end
    object tbempDIGCONT: TStringField
      FieldName = 'DIGCONT'
      Size = 30
    end
    object tbempNUMCONT: TStringField
      FieldName = 'NUMCONT'
      Size = 30
    end
    object tbempNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object tbempCRIA_MENU: TIntegerField
      FieldName = 'CRIA_MENU'
    end
    object tbempRAZAO_SOCIAL: TStringField
      FieldName = 'RAZAO_SOCIAL'
      Size = 60
    end
    object tbempENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 60
    end
    object tbempNUMERO: TIntegerField
      FieldName = 'NUMERO'
    end
    object tbempBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 60
    end
    object tbempCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 60
    end
    object tbempESTADO: TStringField
      FieldName = 'ESTADO'
      Size = 2
    end
    object tbempCEP: TStringField
      FieldName = 'CEP'
      Size = 9
    end
    object tbempFONE: TStringField
      FieldName = 'FONE'
      Size = 15
    end
    object tbempFONE2: TStringField
      FieldName = 'FONE2'
      Size = 15
    end
    object tbempCNPJ: TStringField
      FieldName = 'CNPJ'
      Size = 18
    end
    object tbempINSC: TStringField
      FieldName = 'INSC'
    end
    object tbempCAMINHO_LOGO: TStringField
      FieldName = 'CAMINHO_LOGO'
      Size = 100
    end
  end
  object sdsconsulta1: TSQLDataSet
    GetMetadata = False
    CommandText = 
      'select a.codigo, a.descricao, a.utiliza_autoatendimento, a.utili' +
      'za_subgru_autoatendimento, a.utiliza_cardapio_digital, a.grupo_m' +
      'aster as cod_grupo_master, b.descricao as desc_grupo_master from' +
      ' tbgrupo a left join tbgrupo_master_prod b on b.codigo = a.grupo' +
      '_master'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 10
    Top = 98
  end
  object dspconsulta1: TDataSetProvider
    DataSet = sdsconsulta1
    Options = [poAutoRefresh, poAllowCommandText]
    Left = 46
    Top = 98
  end
  object dspesqcad: TDataSource
    DataSet = cdspesqcad
    Left = 118
    Top = 99
  end
  object cdspesqcad: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspconsulta1'
    Left = 78
    Top = 99
  end
  object sdsusuario: TSQLDataSet
    GetMetadata = False
    CommandText = 'TBUSUARIO'
    CommandType = ctTable
    DbxCommandType = 'Dbx.Table'
    MaxBlobSize = -1
    Params = <>
    SQLConnection = conexao
    Left = 183
    Top = 85
  end
  object dspusuario: TDataSetProvider
    DataSet = sdsusuario
    Options = [poAutoRefresh]
    Left = 211
    Top = 85
  end
  object dsusuario: TDataSource
    DataSet = tbusuario
    Left = 211
    Top = 117
  end
  object tbusuario: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspusuario'
    Left = 183
    Top = 117
    object tbusuarioUSU_CODIGO: TIntegerField
      FieldName = 'USU_CODIGO'
      Required = True
    end
    object tbusuarioUSU_NOME: TStringField
      FieldName = 'USU_NOME'
      Size = 40
    end
    object tbusuarioUSU_SENHA: TStringField
      FieldName = 'USU_SENHA'
      Size = 15
    end
    object tbusuarioUSU_GERENTE: TStringField
      FieldName = 'USU_GERENTE'
      FixedChar = True
      Size = 1
    end
    object tbusuarioNCARTAO: TStringField
      FieldName = 'NCARTAO'
      Size = 30
    end
    object tbusuarioNCAIXA: TStringField
      FieldName = 'NCAIXA'
      FixedChar = True
      Size = 2
    end
    object tbusuarioFUNCIONARIO: TStringField
      FieldName = 'FUNCIONARIO'
      Size = 5
    end
  end
end
