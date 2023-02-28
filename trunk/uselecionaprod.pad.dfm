object fSelecionaProd: TfSelecionaProd
  Left = 0
  Top = 0
  Caption = 'fSelecionaProd'
  ClientHeight = 670
  ClientWidth = 790
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlProdutos: TPanel
    Left = 0
    Top = 0
    Width = 790
    Height = 670
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 56
    ExplicitTop = 192
    ExplicitWidth = 185
    ExplicitHeight = 41
    object Button1: TButton
      Left = 88
      Top = 184
      Width = 75
      Height = 25
      Caption = 'Button1'
      TabOrder = 0
    end
  end
  object sqlcon: TSQLQuery
    Params = <>
    Left = 680
    Top = 48
  end
  object cdsMesclar: TClientDataSet
    Aggregates = <>
    AggregatesActive = True
    Params = <>
    Left = 683
    Top = 20
    object cdsMesclarCodProd: TStringField
      FieldName = 'CodProd'
      Size = 6
    end
    object cdsMesclarDescProd: TStringField
      FieldName = 'DescProd'
      Size = 50
    end
    object cdsMesclarVrProd: TFloatField
      FieldName = 'VrProd'
    end
    object cdsMesclarValorMaior: TAggregateField
      FieldName = 'ValorMaior'
      Active = True
      DisplayName = ''
      Expression = 'max(VrProd)'
    end
  end
  object sqlaux: TSQLQuery
    Params = <>
    Left = 680
    Top = 96
  end
end
