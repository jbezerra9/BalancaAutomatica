object fSelecionaProd: TfSelecionaProd
  Left = 0
  Top = 0
  Align = alClient
  Caption = 'Selecione o produto.'
  ClientHeight = 787
  ClientWidth = 1224
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMeio: TPanel
    Left = 0
    Top = 0
    Width = 1224
    Height = 787
    Align = alClient
    Color = 1093886
    ParentBackground = False
    TabOrder = 0
    object lbSelecione: TLabel
      Left = 400
      Top = 56
      Width = 403
      Height = 45
      Alignment = taCenter
      Caption = 'Selecione o prato do dia!'
      Color = clSkyBlue
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -37
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
    end
    object pnlProdutos: TPanel
      Left = 248
      Top = 142
      Width = 753
      Height = 483
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
    end
    object btAnterior: TButton
      Left = 400
      Top = 664
      Width = 177
      Height = 89
      Caption = '<<'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btAnteriorClick
    end
    object btProx: TButton
      Left = 640
      Top = 664
      Width = 177
      Height = 89
      Caption = '>>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -33
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btProxClick
    end
  end
  object sqlcon: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm.conexao
    Left = 1144
    Top = 16
  end
  object sqlaux: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm.conexao
    Left = 1184
    Top = 16
  end
end
