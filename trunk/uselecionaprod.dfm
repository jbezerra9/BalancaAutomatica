object fSelecionaProd: TfSelecionaProd
  Left = 0
  Top = 0
  Align = alClient
  BorderStyle = bsNone
  Caption = 'Selecione o produto.'
  ClientHeight = 826
  ClientWidth = 1240
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  WindowState = wsMaximized
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlMeio: TPanel
    Left = 0
    Top = 0
    Width = 1240
    Height = 826
    Align = alClient
    Color = 1093886
    ParentBackground = False
    TabOrder = 0
    ExplicitWidth = 1224
    ExplicitHeight = 787
    object lbSelecione: TLabel
      Left = 424
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
      Left = 280
      Top = 133
      Width = 713
      Height = 483
      Color = clWhite
      ParentBackground = False
      TabOrder = 0
    end
    object btAnterior: TButton
      Left = 424
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
    object pnlConfig: TPanel
      Left = 1008
      Top = 1
      Width = 231
      Height = 824
      Align = alRight
      BevelOuter = bvNone
      Color = 1093886
      ParentBackground = False
      TabOrder = 3
      ExplicitLeft = 992
      ExplicitHeight = 785
      object btConfig: TSpeedButton
        Left = 3
        Top = 6
        Width = 36
        Height = 54
        Flat = True
        Glyph.Data = {
          42100000424D4210000000000000420000002800000020000000200000000100
          20000300000000100000EC000000EC00000000000000000000000000FF0000FF
          0000FF0000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000030B0A09EF090808FB090808FB050504FA0000
          001A000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000003E2B2825FBA89C8DFFA89C8DFF49443DFE0505
          056D000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000110E0E6C0D0B0B770000
          000800000000000000001312109F605951FFA89C8DFFA89C8DFF7D7469FF1817
          14D60000000000000000000000020303035A11110F8800000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000D0D0B751D1B18FC3F3A35FD0F0E
          0DF20A07056B0A0A08800C0B0AFA948A7CFFA89C8DFFA89C8DFFA59A8BFF1110
          0FFC0F0D0C980000005912100EE8312D28FC2E2B27FD121211A8000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000110E0E6C1D1B18FC9A8F81FFA89C8DFF8E84
          77FF3E3934FD4A453EFE8F8578FFA89C8DFFA89C8DFFA89C8DFFA89C8DFF988D
          80FF565048FF36322EFC80776CFFA89C8DFFA39889FF312D29FD161513A00000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000B0B0B76413B36FDAEA192FFB1A496FFB2A5
          98FFB3A698FFB1A496FFAFA294FFAA9E8FFFA59A8BFFA39889FFA89C8DFFA89C
          8DFFA89C8DFFA89C8DFFA89C8DFFA89C8DFFA89C8DFF5D564FFF161411AF0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000080A0909EB9C9085FFBAAC9FFFBAAC
          9FFFBAAC9FFFB3A699FF635B54FF1C1A17FF0C0B09FF0D0C0AFF141210FF4C46
          3FFF9B9082FFA89C8DFFA89C8DFFA89C8DFFA09586FF100F0EF90000001D0000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000050502683E3935F1BAAC9FFFBAAC
          9FFFA3968BFF1D1A18FF332F28FF655C4CFF766C59FF766C59FF6A6150FF3D38
          2EFF13110FFF847B6FFFA89C8DFFA89C8DFF5B544CFF131110A2000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000404047C4E4943F5BAAC9FFFB3A5
          99FF1C1A17FF4D473AFF766C59FF6F6654FF534C3FFF4F483CFF6B6251FF766C
          59FF5C5445FF12100EFF958A7DFFA89C8DFF675F56FF151312BA000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000030000003E0C0A0996090807F49E9287FFBAAC9FFF625B
          53FF332F28FF766C59FF595243FF0E0D0BF9151511C1151411B60C0B0AF74C45
          39FF766C59FF453F34FF3C3731FFA89C8DFFA19687FF110F0EFB171513B20000
          004B000000080000000000000000000000000000000000000000000000000000
          000000000000070705E9282422EE6A625BFDA4988CFFBAAC9FFFBAAC9FFF1B19
          16FF655D4CFF6F6654FF0E0D0BF9000000300000000000000000000000180D0C
          0AF3635B4BFF736957FF0D0C0AFFA29688FFA89C8DFF9B9082FF696258FF3531
          2DFC090807F70000001C00000000000000000000000000000000000000000000
          000000000000060605F7BAAC9FFFBAAC9FFFBAAC9FFFBAAC9FFFB7A99DFF0C0B
          0AFF766C59FF534C3EFF151411C0000000000000000000000000000000000808
          0680403B31FF766C59FF201E19FF8A8074FFA89C8DFFA89C8DFFA89C8DFFA89C
          8DFF262320FA0000002C00000000000000000000000000000000000000000000
          000000000000060605F7BAAC9FFFBAAC9FFFBAAC9FFFBAAC9FFFB5A79BFF0D0C
          0BFF766C59FF4B4539FF1A1815AA000000000000000000000000000000000404
          04733D372EFF766C59FF23201CFF877D71FFA89C8DFFA89C8DFFA89C8DFFA89C
          8DFF262320FA0000002C00000000000000000000000000000000000000000000
          000000000000030303F74C4641F68A7F76FFB7A99DFFBAAC9FFFBAAC9FFF1412
          10FF6B6251FF736957FF7F7566BB000000000000000000000000000000070F0E
          0CE75B5345FF756B58FF0F0E0CFFA09588FFA89C8DFFA89C8DFFA89C8DFF857B
          70FE090908FA0000002400000000000000000000000000000000000000000000
          0000000000000000001A0202026B0F0E0DC90F0E0CF5A89C90FFBAAC9FFF524B
          45FF3E392FFF766C59FF716856FF131210EC0808067B040404720F0E0CE73A36
          2DFE766C59FF514A3DFF312E2AFFB1A496FFA59A8BFF1F1D1AFC635B55A25249
          491C000000260000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000090907935D5650F9BAAC9FFFAA9D
          91FF12110FFF5D5546FF766C59FF625A4AFF3C372EFF3C372EFE5B5344FF766C
          59FF69604FFF13110FFF968B80FFB4A699FF726A60FF151412CF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000005934302DF0BAAC9FFFBAAC
          9FFF90857BFF12100EFF474035FF736957FF766C59FF766C59FF756B58FF514A
          3DFF12110FFF787067FFBAAC9FFFB6A89BFF524C46FF0D0B0B8E000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020C0C0ADD8C8278FFBAAC9FFFBAAC
          9FFFBAAC9FFFA3968BFF3F3A36FF0E0C0BFF211E1AFF22201BFF0F0E0CFF312D
          29FF968A80FFBAAC9FFFBAAC9FFFB6A99BFF988D7FFF0D0C0BF8000000110000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000303035B2F2B28F1BAAC9FFFBAAC9FFFBAAC
          9FFFBAAC9FFFBAAC9FFFBAAC9FFFB2A598FF998E83FF968A80FFAEA195FFBAAC
          9FFFBAAC9FFFBAAC9FFFBAAC9FFFB4A799FFA89C8DFF4D4841FF111010920000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000A0A08832D2A27F4B5A79BFFBAAC9FFFB1A3
          97FF605952FA716961FEB3A599FFBAAC9FFFBAAC9FFFBAAC9FFFBAAC9FFFB7A9
          9DFF7E756CFF57504AF9A79A8FFFB1A496FFA89C8DFF47423CFE151411BE0000
          0000000000000000002800000066000000600000000200000000000000000000
          0000000000000000000000000000000000010B0B0A9F302C29F3665D56FB0C0C
          0AF30A0A0A9A0C0C0AB00E0C0BF5AC9F93FFBAAC9FFFBAAC9FFFB9AB9EFF1C1A
          18F30D0C0CC4060606890A0808F14F4943FD47423CFE141110D10000000F0000
          003400000000161512B9333029FF141210FB000000320000000C0000002E0000
          000000000000000000000000000000000000000000010C0C0A960C0C0BA50000
          001D00000000000000000E0C0BA8746B63FEBAAC9FFFBAAC9FFF958A7FFF0E0D
          0CD700000000000000000000001011100E92161312BD0000000F0B0909BD0A09
          08F70B0B0AB8090807F3897E6EFF48433AFF040404B30E0D0BF20C0C0AFA0303
          0352000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000004D332F2CEFBAAC9FFFBAAC9FFF58524CF90606
          067B0000000000000000000000000000000000000000000000350A0A09F7A398
          89FF655D54FB6C645AFDA69A8AFF8F8475FF4D463EFF7D7364FF625B4FFF1110
          0EDE000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000008060605F2272521ED272521ED080706F50000
          00270000000000000000000000000000000000000000000000000B0A0AB8655D
          54FBA89C8DFFA4988AFF7D7469FF8E8577FF9E9281FF988C7AFF191714FB0000
          003E000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000001F0000003300000033000000280000
          000000000000000000000000000000000000000000280D0D0AAE070606EF6C64
          5AFDA4988AFF1E1B19F20E0D0CC40A0A09E7665F55FB9D9180FF1F1D19FC1413
          11E1110F0D890000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000006E3A3631FB978C7FFFA89C
          8DFF7D7469FF0E0D0CC40000000000000023141311EFA89B8DFF998D7CFF796F
          61FF050504FD0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000006512110FF44D4841F89A8F
          81FF8E8477FF0A0A09E60000002203030366292622F0A89C8DFF786F64FF3935
          2EFC040404FA0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000200000032030301B0524C
          45FBA89C8DFF655E55FA141311EF282522F093887BFFA89C8DFF070606F70000
          005E000000170000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000A0A0908E9887F
          72FFA89C8DFFA89C8DFFA89C8DFFA89C8DFFA89C8DFFA89C8DFF3F3B36F50909
          0888000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000002F090908F46C64
          5BFF151412F21C1A18F3A59A8BFF787065FE060605F8413C36F54E4741FA0A0A
          09C7000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000030303500B0A
          08D30000003E0D0C0BD4867C70FF383530F10000005E080808880A0A09C70000
          0010000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000A080884040403FA030302F70000001800000000000000000000
          000000000000}
        OnClick = btConfigClick
      end
      object gbBalanca: TGroupBox
        Left = 39
        Top = 6
        Width = 185
        Height = 578
        Caption = 'Configura'#231#245'es de Balan'#231'a'
        Color = 15790320
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentBackground = False
        ParentColor = False
        ParentFont = False
        TabOrder = 0
        object lbQtdBalanca: TLabel
          Left = 6
          Top = 60
          Width = 169
          Height = 14
          Caption = 'Qtd. de Balan'#231'as  e  Layout da tela'
          Enabled = False
          Font.Charset = ANSI_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          ParentFont = False
        end
        object lbValorUnitarioTeste: TLabel
          Left = 11
          Top = 492
          Width = 118
          Height = 14
          Caption = 'Valor Unit'#225'rio para Teste'
          Enabled = False
        end
        object lbCompletarDig: TLabel
          Left = 107
          Top = 452
          Width = 69
          Height = 14
          Caption = 'Completar Dig.'
          Enabled = False
        end
        object lbQtdDigitos: TLabel
          Left = 11
          Top = 452
          Width = 55
          Height = 14
          Caption = 'Qtd. Digitos'
          Enabled = False
        end
        object lbComandoFinal: TLabel
          Left = 107
          Top = 412
          Width = 70
          Height = 14
          Caption = 'Comando Final'
          Enabled = False
        end
        object lbComandoInicial: TLabel
          Left = 11
          Top = 412
          Width = 74
          Height = 14
          Caption = 'Comando Inicial'
          Enabled = False
        end
        object rgUsaBalanca: TRadioGroup
          Left = 6
          Top = 15
          Width = 173
          Height = 41
          Caption = 'Utiliza Balan'#231'a venda'
          Columns = 2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          Items.Strings = (
            'SIM'
            'N'#195'O')
          ParentFont = False
          TabOrder = 0
          OnClick = rgUsaBalancaClick
        end
        object gbConfigBalanca: TGroupBox
          Left = 6
          Top = 94
          Width = 173
          Height = 291
          TabOrder = 2
          object lbBalanca: TLabel
            Left = 6
            Top = 18
            Width = 39
            Height = 14
            Caption = 'Balan'#231'a'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbModelo: TLabel
            Left = 6
            Top = 49
            Width = 34
            Height = 14
            Caption = 'Modelo'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbPortaSerial: TLabel
            Left = 6
            Top = 75
            Width = 55
            Height = 14
            Caption = 'Porta Serial'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbBaudRate: TLabel
            Left = 6
            Top = 101
            Width = 47
            Height = 14
            Caption = 'Baud rate'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbDataBits: TLabel
            Left = 6
            Top = 127
            Width = 43
            Height = 14
            Caption = 'Data Bits'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbParity: TLabel
            Left = 6
            Top = 153
            Width = 27
            Height = 14
            Caption = 'Parity'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbHandshaking: TLabel
            Left = 6
            Top = 205
            Width = 62
            Height = 14
            Caption = 'Handshaking'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbStopBits: TLabel
            Left = 6
            Top = 179
            Width = 43
            Height = 14
            Caption = 'Stop Bits'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object lbTimeOut: TLabel
            Left = 6
            Top = 231
            Width = 39
            Height = 14
            Caption = 'TimeOut'
            Enabled = False
            Font.Charset = ANSI_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            ParentFont = False
          end
          object edTimeOut3: TEdit
            Left = 76
            Top = 226
            Width = 89
            Height = 22
            Enabled = False
            TabOrder = 24
            Text = '2000'
          end
          object edTimeOut2: TEdit
            Left = 76
            Top = 226
            Width = 89
            Height = 22
            Enabled = False
            TabOrder = 23
            Text = '2000'
          end
          object cbStopBits3: TComboBox
            Left = 76
            Top = 174
            Width = 89
            Height = 19
            Style = csOwnerDrawFixed
            Enabled = False
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 18
            Text = 's1'
            Items.Strings = (
              's1'
              's1,5'
              's2'
              '')
          end
          object cbParity3: TComboBox
            Left = 76
            Top = 148
            Width = 89
            Height = 19
            Style = csOwnerDrawFixed
            Enabled = False
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 15
            Text = 'none'
            Items.Strings = (
              'none'
              'odd'
              'even'
              'mark'
              'space')
          end
          object cbHandShaking3: TComboBox
            Left = 76
            Top = 200
            Width = 89
            Height = 19
            Style = csOwnerDrawFixed
            Enabled = False
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 21
            Text = 'Nenhum'
            Items.Strings = (
              'Nenhum'
              'XON/XOFF'
              'RTS/CTS'
              'DTR/DSR')
          end
          object cbDataBits3: TComboBox
            Left = 76
            Top = 122
            Width = 89
            Height = 19
            Style = csOwnerDrawFixed
            Enabled = False
            ItemHeight = 13
            ItemIndex = 3
            TabOrder = 12
            Text = '8'
            Items.Strings = (
              '5'
              '6'
              '7'
              '8')
          end
          object cbBaudRate3: TComboBox
            Left = 76
            Top = 96
            Width = 89
            Height = 19
            Style = csOwnerDrawFixed
            Enabled = False
            ItemHeight = 13
            ItemIndex = 4
            TabOrder = 9
            Text = '2400'
            Items.Strings = (
              '110'
              '300'
              '600'
              '1200'
              '2400'
              '4800'
              '9600'
              '14400'
              '19200'
              '38400'
              '56000'
              '57600')
          end
          object cbPortaSerial3: TComboBox
            Left = 76
            Top = 70
            Width = 89
            Height = 19
            Style = csOwnerDrawFixed
            Enabled = False
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 6
            Text = 'COM1'
            Items.Strings = (
              'COM1'
              'COM2'
              'COM3'
              'COM4'
              'COM5'
              'COM6'
              'COM7'
              'COM8'
              'COM9')
          end
          object cbModelo3: TComboBox
            Left = 76
            Top = 44
            Width = 89
            Height = 19
            Style = csOwnerDrawFixed
            Enabled = False
            ItemHeight = 13
            ItemIndex = 2
            TabOrder = 3
            Text = 'Toledo'
            Items.Strings = (
              'Nenhuma'
              'Filizola'
              'Toledo'
              'Toledo2180'
              'Urano'
              'LucasTec'
              'Magna'
              'Magellan')
          end
          object cbHandShaking2: TComboBox
            Left = 76
            Top = 200
            Width = 89
            Height = 19
            Style = csOwnerDrawFixed
            Enabled = False
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 20
            Text = 'Nenhum'
            Items.Strings = (
              'Nenhum'
              'XON/XOFF'
              'RTS/CTS'
              'DTR/DSR')
          end
          object cbStopBits2: TComboBox
            Left = 76
            Top = 174
            Width = 89
            Height = 19
            Style = csOwnerDrawFixed
            Enabled = False
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 17
            Text = 's1'
            Items.Strings = (
              's1'
              's1,5'
              's2'
              '')
          end
          object cbParity2: TComboBox
            Left = 76
            Top = 148
            Width = 89
            Height = 19
            Style = csOwnerDrawFixed
            Enabled = False
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 14
            Text = 'none'
            Items.Strings = (
              'none'
              'odd'
              'even'
              'mark'
              'space')
          end
          object cbDataBits2: TComboBox
            Left = 76
            Top = 122
            Width = 89
            Height = 19
            Style = csOwnerDrawFixed
            Enabled = False
            ItemHeight = 13
            ItemIndex = 3
            TabOrder = 11
            Text = '8'
            Items.Strings = (
              '5'
              '6'
              '7'
              '8')
          end
          object cbBaudRate2: TComboBox
            Left = 76
            Top = 96
            Width = 89
            Height = 19
            Style = csOwnerDrawFixed
            Enabled = False
            ItemHeight = 13
            ItemIndex = 4
            TabOrder = 8
            Text = '2400'
            Items.Strings = (
              '110'
              '300'
              '600'
              '1200'
              '2400'
              '4800'
              '9600'
              '14400'
              '19200'
              '38400'
              '56000'
              '57600')
          end
          object cbPortaSerial2: TComboBox
            Left = 76
            Top = 70
            Width = 89
            Height = 19
            Style = csOwnerDrawFixed
            Enabled = False
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 5
            Text = 'COM1'
            Items.Strings = (
              'COM1'
              'COM2'
              'COM3'
              'COM4'
              'COM5'
              'COM6'
              'COM7'
              'COM8'
              'COM9')
          end
          object cbModelo2: TComboBox
            Left = 76
            Top = 44
            Width = 89
            Height = 19
            Style = csOwnerDrawFixed
            Enabled = False
            ItemHeight = 13
            ItemIndex = 2
            TabOrder = 2
            Text = 'Toledo'
            Items.Strings = (
              'Nenhuma'
              'Filizola'
              'Toledo'
              'Toledo2180'
              'Urano'
              'LucasTec'
              'Magna'
              'Magellan')
          end
          object cbBalanca: TComboBox
            Left = 76
            Top = 12
            Width = 89
            Height = 19
            Style = csOwnerDrawFixed
            Enabled = False
            ItemHeight = 13
            TabOrder = 0
            OnChange = cbBalancaChange
          end
          object Panel2: TPanel
            Left = 4
            Top = 36
            Width = 165
            Height = 2
            BevelOuter = bvLowered
            TabOrder = 25
          end
          object cbModelo1: TComboBox
            Left = 76
            Top = 44
            Width = 89
            Height = 19
            Style = csOwnerDrawFixed
            Enabled = False
            ItemHeight = 13
            ItemIndex = 2
            TabOrder = 1
            Text = 'Toledo'
            Items.Strings = (
              'Nenhuma'
              'Filizola'
              'Toledo'
              'Toledo2180'
              'Urano'
              'LucasTec'
              'Magna'
              'Magellan')
          end
          object cbPortaSerial1: TComboBox
            Left = 76
            Top = 70
            Width = 89
            Height = 19
            Style = csOwnerDrawFixed
            Enabled = False
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 4
            Text = 'COM1'
            Items.Strings = (
              'COM1'
              'COM2'
              'COM3'
              'COM4'
              'COM5'
              'COM6'
              'COM7'
              'COM8'
              'COM9')
          end
          object cbBaudRate1: TComboBox
            Left = 76
            Top = 96
            Width = 89
            Height = 19
            Style = csOwnerDrawFixed
            Enabled = False
            ItemHeight = 13
            ItemIndex = 4
            TabOrder = 7
            Text = '2400'
            Items.Strings = (
              '110'
              '300'
              '600'
              '1200'
              '2400'
              '4800'
              '9600'
              '14400'
              '19200'
              '38400'
              '56000'
              '57600')
          end
          object cbDataBits1: TComboBox
            Left = 76
            Top = 122
            Width = 89
            Height = 19
            Style = csOwnerDrawFixed
            Enabled = False
            ItemHeight = 13
            ItemIndex = 3
            TabOrder = 10
            Text = '8'
            Items.Strings = (
              '5'
              '6'
              '7'
              '8')
          end
          object cbHandShaking1: TComboBox
            Left = 76
            Top = 200
            Width = 89
            Height = 19
            Style = csOwnerDrawFixed
            Enabled = False
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 19
            Text = 'Nenhum'
            Items.Strings = (
              'Nenhum'
              'XON/XOFF'
              'RTS/CTS'
              'DTR/DSR')
          end
          object cbParity1: TComboBox
            Left = 76
            Top = 148
            Width = 89
            Height = 19
            Style = csOwnerDrawFixed
            Enabled = False
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 13
            Text = 'none'
            Items.Strings = (
              'none'
              'odd'
              'even'
              'mark'
              'space')
          end
          object cbStopBits1: TComboBox
            Left = 76
            Top = 174
            Width = 89
            Height = 19
            Style = csOwnerDrawFixed
            Enabled = False
            ItemHeight = 13
            ItemIndex = 0
            TabOrder = 16
            Text = 's1'
            Items.Strings = (
              's1'
              's1,5'
              's2'
              '')
          end
          object edTimeOut1: TEdit
            Left = 76
            Top = 226
            Width = 89
            Height = 22
            Enabled = False
            TabOrder = 22
            Text = '2000'
          end
          object Panel7: TPanel
            Left = 4
            Top = 252
            Width = 165
            Height = 2
            BevelOuter = bvLowered
            TabOrder = 26
          end
          object btTestePeso: TButton
            Left = 8
            Top = 259
            Width = 89
            Height = 25
            Caption = 'Testar Balan'#231'a'
            Enabled = False
            TabOrder = 27
          end
          object edTestePeso: TEdit
            Left = 104
            Top = 262
            Width = 61
            Height = 22
            Enabled = False
            TabOrder = 28
          end
        end
        object cbQtdBalanca: TComboBox
          Left = 6
          Top = 75
          Width = 41
          Height = 19
          Style = csOwnerDrawFixed
          Enabled = False
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 1
          Text = '1'
          Items.Strings = (
            '1'
            '2'
            '3')
        end
        object cbLayoutTelaBalanca: TComboBox
          Left = 66
          Top = 75
          Width = 111
          Height = 19
          Style = csOwnerDrawFixed
          Enabled = False
          ItemHeight = 13
          ItemIndex = 0
          TabOrder = 3
          Text = 'Balan'#231'a (padr'#227'o)'
          Items.Strings = (
            'Balan'#231'a (padr'#227'o)'
            'Lan'#231'amento')
        end
        object btTestarValorUnitario: TButton
          Left = 11
          Top = 540
          Width = 129
          Height = 25
          Caption = 'Testar Valor Unit'#225'rio'
          Enabled = False
          TabOrder = 4
          OnClick = btTestarValorUnitarioClick
        end
        object edValorUnitarioTeste: TEdit
          Left = 11
          Top = 508
          Width = 129
          Height = 22
          Enabled = False
          TabOrder = 5
          Text = '35,90'
        end
        object edCompletarDig: TEdit
          Left = 107
          Top = 468
          Width = 33
          Height = 22
          Enabled = False
          MaxLength = 1
          TabOrder = 6
          Text = '0'
        end
        object edQtdDigitos: TEdit
          Left = 11
          Top = 468
          Width = 33
          Height = 22
          Enabled = False
          MaxLength = 1
          TabOrder = 7
          Text = '6'
        end
        object edComandoFinal: TEdit
          Left = 107
          Top = 428
          Width = 33
          Height = 22
          Enabled = False
          MaxLength = 1
          TabOrder = 8
          Text = '3'
        end
        object edComandoInicial: TEdit
          Left = 11
          Top = 428
          Width = 33
          Height = 22
          Enabled = False
          MaxLength = 1
          TabOrder = 9
          Text = '2'
        end
        object cbEVrUnit: TCheckBox
          Left = 12
          Top = 391
          Width = 141
          Height = 17
          Caption = 'Enviar Valor Unit'#225'rio'
          Enabled = False
          TabOrder = 10
        end
      end
      object brSalvar: TButton
        Left = 80
        Top = 590
        Width = 89
        Height = 25
        Caption = '&Salvar'
        TabOrder = 1
        OnClick = brSalvarClick
      end
    end
  end
  object sqlcon: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm.conexao
    Left = 344
    Top = 16
  end
  object sqlaux: TSQLQuery
    MaxBlobSize = -1
    Params = <>
    SQLConnection = dm.conexao
    Left = 384
    Top = 16
  end
  object ACBrBAL: TACBrBAL
    Porta = 'COM1'
    Left = 1190
    Top = 511
  end
end
