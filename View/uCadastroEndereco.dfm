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
            Left = 408
            Top = 0
            Width = 456
            Height = 41
            Align = alRight
            BevelOuter = bvNone
            TabOrder = 0
            DesignSize = (
              456
              41)
            object Imprimir: TSpeedButton
              Left = 380
              Top = 2
              Width = 74
              Height = 33
              Anchors = [akTop, akRight]
              Caption = 'Imprimir'
              Glyph.Data = {
                F6060000424DF606000000000000360000002800000018000000180000000100
                180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFF3F3F3EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
                EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4848480D0D0D111111111111111111
                1111111111111111111111111111111111111111110D0D0D484848FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF484848C2C2C2FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2C2C2
                484848FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF484848C2C2C2DFDFDF58585855555555555555555555555555555555555558
                5858DFDFDFC2C2C2484848FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF484848C2C2C2F5F5F5ACACACAAAAAAAAAAAAAAAAAAAAAA
                AAAAAAAAAAAAAAACACACF5F5F5C2C2C2484848FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFAAAAAA494949444444444444131313C2C2C2DADADA464646444444
                444444444444444444454545CDCDCDFFFFFFFFFFFFC2C2C21313134444444444
                44494949ABABABFFFFFFFBFBFB080808000000000000000000000000C2C2C2FA
                FAFABEBEBEBBBBBBBBBBBBBBBBBBBBBBBBBCBCBCF6F6F6FFFFFFFFFFFFC2C2C2
                000000000000000000000000090909FBFBFBF5F5F50000000000000000000000
                00000000C2C2C2D6D6D635353533333333333333333333333333333333333335
                3535D6D6D6C2C2C2000000000000000000000000000000F5F5F5F5F5F5000000
                000000000000000000000000C2C2C2FEFEFEDEDEDEDDDDDDDDDDDDDDDDDDDDDD
                DDDDDDDDDDDDDDDEDEDEFEFEFEC2C2C2000000000000000000000000000000F5
                F5F5F5F5F5000000000000000000000000000000757575999999999999999999
                9999999999999999999999999999999999999999997575750000000000000000
                00000000000000F5F5F5F5F5F500000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000F5F5F5F5F5F50000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000F5F5F5F5F5F5000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000050505707070252525000000000000F5
                F5F5F5F5F5000000000000000000000000000000000000000000000000000000
                000000000000000000000000000000000000000000000000393939FFFFFF9494
                94000000000000F5F5F5F5F5F500000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0101014B4B4B171717000000000000F5F5F5FAFAFA0505050000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000060606FAFAFAFFFFFF969696
                3737373333333333330E0E0E2727273333333333333333333333333333333333
                333333333333333333333333332727270E0E0E333333333333373737989898FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF484848C2C2C2FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2C2C2484848FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF484848C2C2C2FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2C2C2
                484848FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF484848C2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFC2C2C2484848FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFF484848C2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFC2C2C2484848FFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF484848C2C2C2FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC2C2C2484848FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF4848480D0D0D11
                11111111111111111111111111111111111111111111111111111111110D0D0D
                484848FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFF3F3F3EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
                EEEEEEEEEEEEEEEEF3F3F3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              ExplicitLeft = 627
            end
            object Sb_Limpar: TSpeedButton
              Left = 307
              Top = 2
              Width = 74
              Height = 33
              Anchors = [akTop, akRight]
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
            end
            object Sb_Excluir: TSpeedButton
              Left = 234
              Top = 2
              Width = 74
              Height = 33
              Anchors = [akTop, akRight]
              Caption = 'Excluir'
              Glyph.Data = {
                F6060000424DF606000000000000360000002800000018000000180000000100
                180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FF8D8D8D37373733333333333333333333333333333333333333333333333333
                33333333333737378E8E8EFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFDEDEDE0000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000DFDFDFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC000000000000000000000000000000
                000000000000000000000000000000000000000000000000000000CCCCCCFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC00000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCC
                CC00000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFCCCCCC0000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000CCCCCCFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC000000000000000000000000000000
                000000000000000000000000000000000000000000000000000000CCCCCCFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC00000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCC
                CC00000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFCCCCCC0000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000CCCCCCFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC000000000000000000000000000000
                000000000000000000000000000000000000000000000000000000CCCCCCFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCCCC00000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                000000CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCCCC
                CC00000000000000000000000000000000000000000000000000000000000000
                0000000000000000000000CCCCCCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFCCCCCC0000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000CCCCCCFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFE1E1E1666666666666666666666666666666
                666666666666666666666666666666666666666666666666666666E1E1E1FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5A5A
                5A33333333333333333333333333333333333333333333333333333333333333
                33333333333333333333335A5A5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF5959593333333333333333333333332020200000000000000000
                00000000202020333333333333333333333333595959FFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFE6E6E6
                6E6E6E6666666666666E6E6EE6E6E6FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              OnClick = Sb_ExcluirClick
              ExplicitLeft = 304
            end
            object SbGravar: TSpeedButton
              Left = 160
              Top = 2
              Width = 74
              Height = 33
              Anchors = [akTop, akRight]
              Caption = 'Gravar'
              Glyph.Data = {
                F6060000424DF606000000000000360000002800000018000000180000000100
                180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFF8F8F8EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
                EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
                EEF9F9F9FFFFFFFFFFFFFFFFFFFFFFFFB9B9B90909090000000000001A1A1A22
                2222222222222222222222222222222222222222222222222222222222222222
                1818180000000000000B0B0BC2C2C2FFFFFFFFFFFFFFFFFF6969691B1B1B8888
                88000000C2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFB7B7B70000008F8F8F151515747474FFFFFFFFFFFFFFFFFF
                6666660E0E0E444444000000C2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7B7B70000004747470A0A0A717171FF
                FFFFFFFFFFFFFFFF666666000000000000000000C2C2C2FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7B7B70000000000
                00000000717171FFFFFFFFFFFFFFFFFF666666000000000000000000C2C2C2FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                B7B7B7000000000000000000717171FFFFFFFFFFFFFFFFFF6666660000000000
                00000000C2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFB7B7B7000000000000000000717171FFFFFFFFFFFFFFFFFF
                666666000000000000000000C2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7B7B7000000000000000000717171FF
                FFFFFFFFFFFFFFFF666666000000000000000000C2C2C2FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFB7B7B70000000000
                00000000717171FFFFFFFFFFFFFFFFFF666666000000000000000000888888FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFE
                848484000000000000000000717171FFFFFFFFFFFFFFFFFF6666660000000000
                000000000000000E0E0E11111111111111111111111111111111111111111111
                11111111110D0D0D000000000000000000000000717171FFFFFFFFFFFFFFFFFF
                6666660000000000000000000000000000000000000000000000000000000000
                00000000000000000000000000000000000000000000000000000000717171FF
                FFFFFFFFFFFFFFFF666666000000000000000000000000000000000000000000
                0000000000000000000000000000000000000000000000000000000000000000
                00000000717171FFFFFFFFFFFFFFFFFF6666660000000000000000003E3E3E98
                9898999999999999999999999999999999999999999999999999989898404040
                000000000000000000000000717171FFFFFFFFFFFFFFFFFF6666660000000000
                00000000BCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCFCFCDDDDDDE2
                E2E2FFFFFFBFBFBF000000000000000000000000717171FFFFFFFFFFFFFFFFFF
                666666000000000000000000C2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFEBEBEB000000292929FFFFFFC2C2C2000000000000000000000000717171FF
                FFFFFFFFFFFFFFFF666666000000000000000000C2C2C2FFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFEBEBEB000000292929FFFFFFC2C2C20000000000000000
                00000000777777FFFFFFFFFFFFFFFFFF666666000000000000000000C2C2C2FF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEBEBEB000000292929FFFFFFC2C2C2
                000000000000000000282828E6E6E6FFFFFFFFFFFFFFFFFF6666660000000000
                00000000C2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF2F2F255555570
                7070FFFFFFC2C2C20000000000002C2C2CE9E9E9FFFFFFFFFFFFFFFFFFFFFFFF
                696969000000000000000000C2C2C2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFC2C2C20000002B2B2BE9E9E9FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFB9B9B90808080000000000001A1A1A222222222222222222
                2222222222222222222222222222222222222222221A1A1A2C2C2CE9E9E9FFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8EEEEEEEEEEEEEEEEEEEE
                EEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEEE
                FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              OnClick = SbGravarClick
              ExplicitLeft = 230
            end
            object SbAlterar: TSpeedButton
              Left = 85
              Top = 2
              Width = 74
              Height = 33
              Anchors = [akTop, akRight]
              Caption = 'Alterar'
              Glyph.Data = {
                F6060000424DF606000000000000360000002800000018000000180000000100
                180000000000C0060000C40E0000C40E00000000000000000000FFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFBEBEBE6666662A2A2A0D0D0D0B0B0B282828666666BF
                BFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF222222BFBFBFFFFFFFDBDBDB4343430000000000000000000000000000
                00000000000000000000404040DEDEDEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFF0000000B0B0B8F8F8F131313000000141414818181
                CECECEF2F2F2F4F4F4CECECE838383161616000000101010C7C7C7FFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF00000000000000000000000050
                5050EEEEEEFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF1F1F1545454000000
                111111DDDDDDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000
                00000000020202BDBDBDFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFCFCFC535353000000414141FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF0000000000000000000000000B0B0BBFBFBFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFEEEEEE171717000000C2C2C2FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFF3A3A3A000000000000000000000000222222FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8080800000006464
                64FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                CCCCCC0000002A2A2AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFCFCFC3434344A4A4AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFF4B4B4B2D2D2DFBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFF292929000000CDCDCDFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF616161000000838383FFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF212121000000000000
                0000000000003D3D3DFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBFBFBF0000
                00191919F0F0F0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBF
                BFBF0B0B0B000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFF3E3E3E000000575757FDFDFDFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFBDBDBD020202000000000000000000FFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFD9D9D90F0F0F000000575757F3F3F3FFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEF5151510000000000000000000000
                00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC4C4C40F0F0F00
                0000191919858585D1D1D1F4F4F4F3F3F3CECECE818181151515000000131313
                8E8E8E0B0B0B000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFDCDCDC3B3B3B00000000000000000000000000000000000000000000
                0000424242DADADAFFFFFFBFBFBF212121FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFBBBBBB6363632626260B0B0B0C0C
                0C292929656565BCBCBCFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
                FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
              OnClick = SbAlterarClick
              ExplicitLeft = 155
            end
            object SbNovo: TSpeedButton
              Left = 9
              Top = 2
              Width = 74
              Height = 33
              Anchors = [akTop, akRight]
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
          end
          object lbNome: TLabel
            Left = 96
            Top = 14
            Width = 31
            Height = 13
            Caption = 'Nome:'
          end
          object Label3: TLabel
            Left = 9
            Top = 69
            Width = 23
            Height = 13
            Caption = 'CEP:'
          end
          object sbConsultar: TSpeedButton
            Left = 123
            Top = 56
            Width = 62
            Height = 30
            Caption = 'Consultar'
            OnClick = sbConsultarClick
          end
          object Label2: TLabel
            Left = 9
            Top = 96
            Width = 62
            Height = 13
            Caption = 'Logradouro: '
          end
          object Label4: TLabel
            Left = 375
            Top = 96
            Width = 32
            Height = 13
            Caption = 'Bairro:'
          end
          object lbUF: TLabel
            Left = 567
            Top = 96
            Width = 17
            Height = 13
            Caption = 'UF:'
          end
          object Label5: TLabel
            Left = 3
            Top = 119
            Width = 57
            Height = 13
            Caption = 'Localidade: '
          end
          object edtNome: TEdit
            Left = 96
            Top = 27
            Width = 313
            Height = 21
            TabOrder = 0
          end
          object edtCodigo: TEdit
            Left = 3
            Top = 27
            Width = 78
            Height = 21
            Color = clBtnFace
            Enabled = False
            TabOrder = 1
          end
          object MaskEdtCEP: TMaskEdit
            Left = 38
            Top = 61
            Width = 79
            Height = 21
            EditMask = '00000\-9999;1;_'
            MaxLength = 10
            TabOrder = 2
            Text = '     -    '
          end
          object edtLogradouro: TEdit
            Left = 69
            Top = 92
            Width = 284
            Height = 21
            TabOrder = 3
          end
          object edtbairro: TEdit
            Left = 409
            Top = 92
            Width = 133
            Height = 21
            TabOrder = 4
          end
          object edtUF: TEdit
            Left = 601
            Top = 92
            Width = 133
            Height = 21
            TabOrder = 5
          end
          object edtLocalidade: TEdit
            Left = 69
            Top = 119
            Width = 284
            Height = 21
            TabOrder = 6
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
            Left = 499
            Top = 13
            Width = 146
            Height = 21
            Style = csDropDownList
            ItemIndex = 3
            TabOrder = 1
            Text = 'Todos os Registros'
            OnChange = cbPesquisaChange
            Items.Strings = (
              'Codigo do Endere'#231'o'
              'CEP'
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
              FieldName = 'PES_CODIGO'
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
              FieldName = 'PES_NOME'
              Title.Caption = 'Nome'
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
              FieldName = 'USUARIO'
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
    Left = 596
    Top = 232
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
