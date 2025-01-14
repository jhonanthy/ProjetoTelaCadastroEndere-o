object frmCadastro: TfrmCadastro
  Left = 0
  Top = 0
  Caption = 'Cadastro de Endere'#231'os'
  ClientHeight = 479
  ClientWidth = 872
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 872
    Height = 479
    Align = alClient
    BevelOuter = bvNone
    TabOrder = 0
    object pgCadastroEndereco: TPageControl
      Left = 0
      Top = 0
      Width = 872
      Height = 479
      ActivePage = tbFicha
      Align = alClient
      TabOrder = 0
      object tbFicha: TTabSheet
        Caption = 'Ficha Cadastral'
        object pnlTop: TPanel
          Left = 0
          Top = 0
          Width = 864
          Height = 41
          Align = alTop
          BevelOuter = bvNone
          ParentBackground = False
          TabOrder = 0
          object Panel3: TPanel
            Left = 712
            Top = 0
            Width = 152
            Height = 41
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            object Sb_Limpar: TSpeedButton
              Left = 74
              Top = 0
              Width = 74
              Height = 41
              Align = alLeft
              Caption = 'Limpar'
              Glyph.Data = {
                F6060000424DF606000000000000360000002800000018000000180000000100
                180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEF5F5F5FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9090900505059B9B9BFFFFFFFFFFFF
                6767670C0C0CC5C5C5FFFFFFFFFFFFCFCFCF1C1C1C0303030000000000000000
                000000000D0D0DFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF48484800000052
                5252FFFFFFF0F0F0030303000000979797FFFFFFFFFFFF6969698D8D8DA1A1A1
                000000000000000000000000393939FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF484848000000525252FFFFFFB1B1B1000000000000D3D3D3FFFFFFFFFFFFA6
                A6A62020202626260000000000000000001D1D1DD1D1D1FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF484848000000525252FFFFFF707070000000161616FEFE
                FEFFFFFFFFFFFFFFFFFFD0D0D0AAAAAAAAAAAAAAAAAABEBEBEF4F4F4FFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4848480000005F5F5FF9F9F9282828
                000000575757FFFFFFFFFFFFFFFFFFDCDCDC2A2A2A444444444444D5D5D5FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF484848464646E5
                E5E5454545000000000000A0A0A0FFFFFFFFFFFFFFFFFF989898000000000000
                090909F7F7F7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFA1A1A1E1E1E1313131000000000000222222F9F9F9FFFFFFFFFFFFFFFFFF53
                5353000000000000494949FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D9
                C4C4C4FFFFFFFFFFFFE9E9E9212121000000000000000000A4A4A4FFFFFFFFFF
                FFFFFFFFFCFCFC121212000000161616CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFCFCFC131313000000BBBBBBFFFFFF7070700000000000000000002E2E2E
                FDFDFDFFFFFFFFFFFFFFFFFFCACACA0D0D0D7F7F7FF1F1F1FFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFF1D1D1D0000005D5D5DFFFFFF49494900000000
                0000000000666666FFFFFFFFFFFFFFFFFFFFFFFF8686867A7A7AFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6E6E6E000000111111FAFA
                FA484848000000000000000000666666F4F4F49090905E5E5E34343409090973
                7373FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC1C1C1
                000000000000A7A7A74848480000000000000000005757573838380000000000
                000000000000003E3E3EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFCFCFC1D1D1D0000000808081B1B1B000000000000000000000000
                0000000000002F2F2F5C5C5C868686E0E0E0FFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC9C9C910101000000000000000000000
                0000000000000000000000717171FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCECECE1313
                13000000000000000000000000000000707070FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFD0D0D02222220000000000000303037D7D7DFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F7F7C7C7C7BCBCBCE3E3E3FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEDEDEDC4
                C4C4F3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFCCCCCC1010100000001B1B1BE1E1E1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF5B5B5B0000000000000000007A7A7AFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF6B6B6B0000000000000000008A8A8A
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E63B3B3B04
                04044B4B4BF4F4F4FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              OnClick = Sb_LimparClick
              ExplicitLeft = 554
              ExplicitTop = 2
              ExplicitHeight = 33
            end
            object SbNovo: TSpeedButton
              Left = 0
              Top = 0
              Width = 74
              Height = 41
              Align = alLeft
              Caption = 'Novo'
              Glyph.Data = {
                F6060000424DF606000000000000360000002800000018000000180000000100
                180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFA
                FAFAABABAB5B5B5B2828280C0C0C0C0C0C2929295C5C5CABABABFAFAFAFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFAFAFAF24242400000000000000000000000000000000000000000000
                0000252525B0B0B0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFDFDFD7676760000000000002B2B2B8E8E8ED3D3D3F3F3F3F3F3
                F3D3D3D38D8D8D2A2A2A000000010101777777FDFDFDFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFF767676000000060606929292FCFCFCFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFB909090050505000000787878FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFAEAEAE000000060606BCBCBCFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBBBB
                050505010101B1B1B1FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F92323230000
                00939393FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFF909090000000252525FAFAFAFFFFFFFFFFFFFFFFFFFFFFFF
                A9A9A90000002B2B2BFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000
                00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFC2A2A2A000000ABABABFFFFFFFF
                FFFFFFFFFFFFFFFF5A5A5A0000008F8F8FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8C8C8C0000
                005D5D5DFFFFFFFFFFFFFFFFFFFFFFFF262626000000D5D5D5FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFD3D3D3000000272727FFFFFFFFFFFFFFFFFFFFFFFF0C0C0C000000F2F2
                F2FFFFFFFFFFFFFFFFFF00000000000000000000000000000000000000000000
                0000FFFFFFFFFFFFFFFFFFF1F1F10000000E0E0EFFFFFFFFFFFFFFFFFFFFFFFF
                0C0C0C000000F3F3F3FFFFFFFFFFFFFFFFFF0000000000000000000000000000
                00000000000000000000FFFFFFFFFFFFFFFFFFF2F2F20000000C0C0CFFFFFFFF
                FFFFFFFFFFFFFFFF262626000000D5D5D5FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFD3D3D30000
                00272727FFFFFFFFFFFFFFFFFFFFFFFF585858000000919191FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF8E8E8E0000005B5B5BFFFFFFFFFFFFFFFFFFFFFFFFA9A9A90000002C2C
                2CFCFCFCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFCFCFC2B2B2B000000ABABABFFFFFFFFFFFFFFFFFFFFFFFF
                F9F9F9222222000000959595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF929292000000242424FAFAFAFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFADADAD000000060606BDBDBDFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBCBCBC060606000000AFAF
                AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF75757500000006060695
                9595FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFC939393060606
                000000767676FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFDFD
                FD7575750000000000002C2C2C909090D4D4D4F4F4F4F4F4F4D4D4D49090902C
                2C2C000000000000767676FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFADADAD2222220000000000000000000000000000
                00000000000000000000232323AEAEAEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF9F9F9A9A9A9595959
                2727270B0B0B0B0B0B272727595959A9A9A9F9F9F9FFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              OnClick = SbNovoClick
              ExplicitLeft = 79
              ExplicitTop = 2
              ExplicitHeight = 33
            end
          end
        end
        object GroupBox1: TGroupBox
          Left = 0
          Top = 41
          Width = 864
          Height = 410
          Align = alClient
          Caption = 'Endere'#231'o'
          TabOrder = 1
          object Label1: TLabel
            Left = 4
            Top = 14
            Width = 27
            Height = 13
            Caption = 'Cod:.'
            Visible = False
          end
          object Label3: TLabel
            Left = 9
            Top = 141
            Width = 23
            Height = 13
            Caption = 'CEP:'
          end
          object sbConsultar: TSpeedButton
            Left = 123
            Top = 128
            Width = 62
            Height = 30
            Caption = 'Consultar'
            OnClick = sbConsultarClick
          end
          object Label2: TLabel
            Left = 9
            Top = 168
            Width = 62
            Height = 13
            Caption = 'Logradouro: '
          end
          object Label4: TLabel
            Left = 375
            Top = 168
            Width = 32
            Height = 13
            Caption = 'Bairro:'
          end
          object lbUF: TLabel
            Left = 375
            Top = 195
            Width = 17
            Height = 13
            Caption = 'UF:'
          end
          object Label5: TLabel
            Left = 10
            Top = 191
            Width = 40
            Height = 13
            Caption = 'Cidade: '
          end
          object edtCodigo: TEdit
            Left = 3
            Top = 27
            Width = 78
            Height = 21
            Color = clBtnFace
            Enabled = False
            TabOrder = 0
            Visible = False
          end
          object MaskEdtCEP: TMaskEdit
            Left = 38
            Top = 133
            Width = 79
            Height = 21
            EditMask = '00000\-9999;1;_'
            MaxLength = 10
            TabOrder = 1
            Text = '     -    '
          end
          object edtLogradouro: TEdit
            Left = 69
            Top = 164
            Width = 284
            Height = 21
            TabOrder = 2
          end
          object edtbairro: TEdit
            Left = 409
            Top = 164
            Width = 133
            Height = 21
            TabOrder = 3
          end
          object edtUF: TEdit
            Left = 408
            Top = 191
            Width = 25
            Height = 21
            TabOrder = 4
          end
          object edtLocalidade: TEdit
            Left = 71
            Top = 191
            Width = 282
            Height = 21
            TabOrder = 5
          end
          object GbTipoConsulta: TGroupBox
            Left = 592
            Top = 25
            Width = 217
            Height = 96
            Caption = 'Escolha uma Op'#231#227'o para tipo de consulta:'
            TabOrder = 6
            object RbConsultaviaXML: TRadioButton
              Left = 24
              Top = 55
              Width = 113
              Height = 17
              Caption = 'XML'
              TabOrder = 0
              OnClick = RbConsultaviaXMLClick
            end
            object RbConsultaviaJson: TRadioButton
              Left = 24
              Top = 32
              Width = 113
              Height = 17
              Caption = 'JSON'
              TabOrder = 1
              OnClick = RbConsultaviaJsonClick
            end
          end
          object Memo1: TMemo
            Left = 123
            Top = 27
            Width = 454
            Height = 100
            Enabled = False
            Lines.Strings = (
              'Caro usuario , seja bem vindo.'
              
                'Para iniciar a consulta clique no bot'#227'o Novo,  preencha o CEP ou' +
                ' o endere'#231'o completo e '
              'escolha o metodo de '
              'retorno da API.'
              'e Clique em Consulta.'
              'Desde j'#225' agradecemos a utiliza'#231#227'o de nossa aplica'#231#227'o.'
              ''
              'Att: Dev.')
            TabOrder = 7
          end
        end
      end
      object tbConsulta: TTabSheet
        Caption = 'Consulta Endere'#231'o'
        ImageIndex = 1
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 864
          Height = 49
          Align = alTop
          BevelOuter = bvNone
          TabOrder = 0
          object lbConsulta: TLabel
            Left = 3
            Top = 16
            Width = 46
            Height = 13
            Caption = 'Pesquisa:'
          end
          object edtConsulta: TEdit
            Left = 58
            Top = 13
            Width = 433
            Height = 21
            TabOrder = 0
            OnChange = edtConsultaChange
          end
          object cbPesquisa: TComboBox
            Left = 497
            Top = 13
            Width = 146
            Height = 21
            Style = csDropDownList
            ItemIndex = 2
            TabOrder = 1
            Text = 'Todos os Registros'
            OnChange = cbPesquisaChange
            Items.Strings = (
              'Codigo do Endere'#231'o'
              'Logradouro'
              'Todos os Registros')
          end
        end
        object DBGrid1: TDBGrid
          Left = 0
          Top = 49
          Width = 864
          Height = 402
          Align = alClient
          Color = clWhite
          DataSource = DataSource1
          DrawingStyle = gdsGradient
          GradientEndColor = clBlack
          GradientStartColor = clBlack
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          ParentFont = False
          TabOrder = 1
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Arial'
          TitleFont.Style = []
          OnDblClick = DBGrid1DblClick
          Columns = <
            item
              Expanded = False
              FieldName = 'END_CODIGO'
              Title.Caption = 'Codigo'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'END_CEP'
              Title.Caption = 'CEP'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'END_LOGRADOURO'
              Title.Caption = 'Logradouro'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Width = 278
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'END_BAIRRO'
              Title.Caption = 'Bairro'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Width = 156
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'END_LOCALIDADE'
              Title.Caption = 'Localidade'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Width = 64
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'END_UF'
              Title.Caption = 'UF'
              Title.Font.Charset = DEFAULT_CHARSET
              Title.Font.Color = clWhite
              Title.Font.Height = -11
              Title.Font.Name = 'Arial'
              Title.Font.Style = []
              Width = 64
              Visible = True
            end>
        end
      end
    end
  end
  object DataSource1: TDataSource
    DataSet = DMEndereco.FDQueryConsulta
    Left = 316
    Top = 120
  end
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <>
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 438
    Top = 369
  end
  object RESTClient1: TRESTClient
    Params = <>
    SynchronizedEvents = False
    Left = 366
    Top = 369
  end
  object RESTResponse1: TRESTResponse
    Left = 518
    Top = 369
  end
end
