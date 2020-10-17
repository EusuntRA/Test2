object FReceptie: TFReceptie
  Left = 0
  Top = 0
  Caption = 'Gestionare receptie'
  ClientHeight = 448
  ClientWidth = 890
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 890
    Height = 448
    ActivePage = UNITATE
    Align = alClient
    TabHeight = 30
    TabOrder = 0
    object RECEPTIE: TTabSheet
      Caption = 'RECEPTIE'
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 882
        Height = 57
        Align = alTop
        Color = clCream
        ParentBackground = False
        TabOrder = 0
        DesignSize = (
          882
          57)
        object Label1: TLabel
          Left = 8
          Top = 7
          Width = 66
          Height = 16
          Caption = 'Nr factura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label2: TLabel
          Left = 136
          Top = 7
          Width = 83
          Height = 16
          Caption = 'Data factura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label3: TLabel
          Left = 264
          Top = 7
          Width = 101
          Height = 16
          Caption = 'Emitent factura'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object ENr: TEdit
          Left = 8
          Top = 24
          Width = 105
          Height = 24
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
        end
        object EEmitent: TEdit
          Left = 264
          Top = 24
          Width = 612
          Height = 24
          Anchors = [akLeft, akTop, akRight]
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
        end
        object EDF: TDateTimePicker
          Left = 136
          Top = 24
          Width = 102
          Height = 24
          Date = 43945.801605243050000000
          Time = 43945.801605243050000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
        end
      end
      object Panel2: TPanel
        Left = 0
        Top = 57
        Width = 882
        Height = 310
        Align = alClient
        Color = clCream
        ParentBackground = False
        TabOrder = 1
        DesignSize = (
          882
          310)
        object Panel4: TPanel
          Left = 5
          Top = 6
          Width = 332
          Height = 295
          Anchors = [akLeft, akTop, akBottom]
          TabOrder = 0
          DesignSize = (
            332
            295)
          object Label4: TLabel
            Left = 8
            Top = 0
            Width = 45
            Height = 16
            Caption = 'Produs'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SpeedButton1: TSpeedButton
            Left = 292
            Top = 16
            Width = 36
            Height = 25
            Cursor = crHandPoint
            Caption = '...'
            OnClick = SpeedButton1Click
          end
          object Label5: TLabel
            Left = 8
            Top = 48
            Width = 127
            Height = 16
            Caption = 'Unitatea de masura'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SpeedButton2: TSpeedButton
            Left = 292
            Top = 65
            Width = 36
            Height = 25
            Cursor = crHandPoint
            Caption = '...'
            OnClick = SpeedButton2Click
          end
          object Label6: TLabel
            Left = 8
            Top = 95
            Width = 29
            Height = 16
            Caption = 'Stoc'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label7: TLabel
            Left = 8
            Top = 151
            Width = 77
            Height = 16
            Caption = 'Pret primire'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label8: TLabel
            Left = 165
            Top = 151
            Width = 125
            Height = 16
            Caption = 'Pret comercializare'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SpeedButton3: TSpeedButton
            Left = 8
            Top = 215
            Width = 145
            Height = 37
            Anchors = [akBottom]
            Caption = 'Executa'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = SpeedButton3Click
          end
          object SpeedButton4: TSpeedButton
            Left = 173
            Top = 213
            Width = 148
            Height = 37
            Anchors = [akBottom]
            Caption = 'Anuleaza/Iesire'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object SpeedButton8: TSpeedButton
            Left = 8
            Top = 256
            Width = 313
            Height = 37
            Anchors = [akBottom]
            Caption = 'Urmatoarea factura'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            OnClick = SpeedButton8Click
          end
          object EProdus: TEdit
            Left = 6
            Top = 18
            Width = 281
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
          end
          object EUM: TEdit
            Left = 8
            Top = 65
            Width = 281
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 1
          end
          object ESt: TEdit
            Left = 8
            Top = 113
            Width = 97
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 2
          end
          object EPrPr: TEdit
            Left = 8
            Top = 169
            Width = 136
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 3
          end
          object EPrCom: TEdit
            Left = 165
            Top = 169
            Width = 156
            Height = 24
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            TabOrder = 4
          end
        end
        object Panel5: TPanel
          Left = 343
          Top = 6
          Width = 534
          Height = 296
          Anchors = [akLeft, akTop, akRight, akBottom]
          Caption = 'Panel5'
          TabOrder = 1
          object DBGrid1: TDBGrid
            Left = 1
            Top = 1
            Width = 532
            Height = 294
            Align = alClient
            DataSource = dm.DSQReceptieF
            TabOrder = 0
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'Tahoma'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                Title.Alignment = taCenter
                Title.Caption = 'NR'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 28
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DENUMIRE'
                Title.Alignment = taCenter
                Title.Caption = 'PRODUS'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 197
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ABREVIERE'
                Title.Alignment = taCenter
                Title.Caption = 'U. M.'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 37
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'STOCK1'
                Title.Alignment = taCenter
                Title.Caption = 'CANTITATE'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 74
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRET_INTRARE'
                Title.Alignment = taCenter
                Title.Caption = 'PRET PRIM.'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 84
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'PRET_VANZ'
                Title.Alignment = taCenter
                Title.Caption = 'PRET COM.'
                Title.Font.Charset = DEFAULT_CHARSET
                Title.Font.Color = clWindowText
                Title.Font.Height = -13
                Title.Font.Name = 'Tahoma'
                Title.Font.Style = [fsBold]
                Width = 69
                Visible = True
              end>
          end
        end
      end
      object Panel3: TPanel
        Left = 0
        Top = 367
        Width = 882
        Height = 41
        Align = alBottom
        Color = clCream
        ParentBackground = False
        TabOrder = 2
        ExplicitTop = 365
        object Image2: TImage
          Left = 13
          Top = 1
          Width = 43
          Height = 38
          Cursor = crHandPoint
          Picture.Data = {
            0954506E67496D61676589504E470D0A1A0A0000000D494844520000002D0000
            002D08060000003A1AE29A0000086B4944415478DAD5997B7054D51DC77FE7EC
            DDDD3C36C9E6B1DB3C21EFA449CC40C248C53A43B1A6011102441168C7B6625B
            CBD84A6BFFD0EA308CD5D6E2686D8B540AD55A920EC50414121DAB94D18A4025
            688647484212813CDC8418F2D8E7DD7BFABD9B8759B21B924D5CDA9339B967CF
            BDE7773EE7777FE7F7FB9D5D46FF8785CDA6B04D671DEA2506355D080A638CAC
            68B7A0F66ECFD3FFEF406F3C6D53C51839D10208DB840F45A806547491823A88
            5A2788B6E3C3474288BEDD3785DE58E8EFD5DB3221E497A8AB212DD2EF8382FA
            015E8DFAD4CB85A1CD37047AFDA921E28C54E01D8CB1C5E892A6304C86A68F00
            FC414588E6CAF986E042AFAD1B8CC7E0975097D3B0294CB528803E84FAC3BD45
            86AEA042AFF968E00718FC029A21010CB703FAA7550B2276060D7AD9F1AB21B0
            8553F00EB9812E1ADEA541269A5FBB30CA1E14E8D20FFB1661E03FD10C0B141A
            C50A6DDFF1D62DC6A341815EF2C1E73FC6C0E7D1D4CD00DA09E8CD876F8D7E31
            28D0B7BDDFBB15031FA3A9790C7F4506F4D3EFDF16B32528D05F3B724505DE3A
            5368D42DC716C73E1D14E8A2C3DDEB71D94D81798ED1A26EC0FBEB96982A8302
            5DF88E2513BBFF249A91818C1F29FDF03EC5F5DF344F3B3A06049DFFB685CB42
            D9476AE80EBC544B8CDF7DA6C4AC04055A2D196F762EC146AA80C6E3A73D29A3
            2E4CBCE1C2D284C381CC1D30F4DCDACE10E40F0F23117A94A66726FD98F5D79C
            B1DF7DBA2C61DA816546D06A493CD411A228E21141623379F2E85171C287684F
            5FAFEADF39A7673B962705043C6368B598DF680F43E65606C3FC393ECE23DFC9
            936AB7F5B8B10D19E101CB8A24EB4CE69CB5938BF1C025090945A920763B1691
            4DC3EED00EC8464CF22EDA6FF5AD4A916763AE5981667F6C90A0DF7424D88B50
            D3D04E05AC016633081D5FC4625A713D81471BC58F729C370C9AEF00A886250B
            C64A01791F697826D3B03048D4C13D8C8F9432A065720B2B32E93698F6DFD057
            8B45B4291BB3025A4040D09A3F9D3702F8FB24B1EF90C40B002C792C994D220E
            BED1B317DD42017C036A0593C52E796396E54B85D6EE6CE48263B371F604E978
            09D3F0306F583651AA98D0183EBB28C28E94E90836C2536589FA130B23995296
            15ABCC3586288C4D8E356568DD9F9B2400973289EF603A9E0C4D7F01EBCBD309
            3FD247D855FBD1CB3285C8724F9270EC94843280AE5E75E3E6C4849EFECB9D59
            3DFEE0A704ADDFD528090D5B01E06D4CA749679C8D8CBC56A53E7DF384BE5074
            453BED14E5729249CF292D52072B63641972395BAFDABB64B7A837876B9FA958
            997D342E4C3F21CC5F173A6C5713092D2F675AF612A06360BF537D39133584D9
            8CC24DA9B28D8AA3F5B421DF44F9A670D27236B21C419D834EDA7FBE97DE68BA
            D2EB54C4F3B724453CF7ECEDE95E7EFDFAD0AF341731ADA60226913BAC617FB6
            305EA4F0318520031394255B6979B281D6E799282E6CF8E0E3702BD43EE0A0A4
            083DE9A11437366D4D732FEDFEA4AB1FE00F1D5E7FD31E988A72AD449FC5F06A
            CB1C26B11D5CC7E1D6107C67E0D5B5183B57B653499C967E529C48113ACDD8BD
            4317AED08B27BB6843818936E4993D7DF208F8F6BACEB3E65069DDFEF2BCFA51
            1B9F1423AAB2752BD3F2C7601692B73BBBD6567DED406F6D1BC94DF98A8D1E5F
            984439B1615ECFFEFB521F559CE9A69559B1549A113376CFE516F4C8BB2DCE0B
            7DF62797A647FFF6F1AFCF714E0A1DBDA7351B26F101D7F238E2330F9C29E4A2
            6F840B7AA83889C2C769D96275D2D96E2B750E39A8283E827262BC0FF8FBCFF7
            D0CBF55DB5A670DD7D07EFCEEBF10B1DF7F736F85FF60798C57711E586771E1B
            AF3D361C2CD8B8EBF87B5E6DF23C93251CB4263E84CA724CA4D57CF19A8FB7F7
            D3AE4F3AA963C049EBF2CD3091AF78B134F458E989F75ACF1AF5D25D6FDE5BD0
            E217DAB4F7D3455CE215D0722A9BA5942A4BB1D39AC4505A9611EB716FA3A5DF
            29D3BE733D74B0F90AADFDAA89D68DD8F468B9D067A32DEFB53547E9A53B6BD6
            E637FA844ED87751072D3FC325F63053DDDB2C41A72A0E2A89D6D0AA6C333C84
            B7D0034D3D5479C642E5B971744FAE37F4C796417AEEF8A5BA98506955EDDA82
            8B3EA1535E6F8F41EF7FE0DED2D9984BF6F1CA270D2613EF99858B0A99931E98
            974006ADF7370F079BBA69EFB96E5A9D13876AF21AFB8F739FD13BADBD95E9C6
            904D7B56E6F6F9844EADE948C69CFF626AAAC958E091E49A128EB42EC53E44E5
            69469A1F1FE9E58C6A9A7BE8B5060BADCC365159B669ACBFCF2ED36F8EB6F5BB
            1465F3CF6E4E7A65397213DFD0AFB7736C9CC5D0F436D87511F3C49399DB886A
            C6B1B283D26026E539664F20199DFE64E755FA101BF2E6C448D4284FDF106CBD
            FABC05F7060E2D4830DCFFFB928CB16CD0274D6AD5658EECAD50C3F95FB99615
            708E2530BF8F4FB9681111CDD0F61CAED0B7B0215322423C0A712122AA515187
            3DA47A1687ACD07E68FED467032DF106DDBA7DAB724F8C57DCA414695597E335
            1AF6A846CBBFCD352C460DE3EADFF02831C970E157BC16F722ED56D2D96C340F
            4126333A8C22F492E74DD85C38E6F4DBE978C755FBE736D7DB73A2F44F3E302F
            BEEE8EB468AFA4E9BAAACBA8BE6440045FC135FC17584021BC0AF7AC9A05AE77
            35B4E85D2ED2DAACC49D2ED2AB8B144271BA452FECB70EDEA526D1A0AB7EF5AE
            EC0ECC3DFD2C4F2D9955ED30108A03EC6A49C31E84D65351233D9AF7C04F6105
            62388B536391FA4F71E31820BB2D5C563E4E9494178A23944640DB3B071DFDA9
            5121F65F2D4EF57B089E96B2B2ABDAD511C9B0F125D0FA52402F423B190BE06C
            7C02389AD88C03F55445851576B75B9C561471D42D2B07DD6E3A8647065BEE4D
            9E3247406F38EBB5CB48FA9811B06608C885985BA1F43C48CB564FE160565D25
            BC10B42904B24BEA017003C04F81FD1880DB00DFD37C4F72F0BF619AB098BD97
            D5FDA49EC83D3F7E02D2A9FE7E88B6B3691A9A0C2A74B0CA7F01AFBC075B9CB8
            60C90000000049454E44AE426082}
        end
        object Label9: TLabel
          Left = 62
          Top = 6
          Width = 45
          Height = 16
          Caption = 'functie'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label10: TLabel
          Left = 62
          Top = 23
          Width = 96
          Height = 16
          Caption = 'nume prenume'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
      end
    end
    object PRODUS: TTabSheet
      Caption = 'PRODUS'
      ImageIndex = 1
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 882
        Height = 349
        Align = alClient
        Color = clCream
        ParentBackground = False
        TabOrder = 0
        object PageControl2: TPageControl
          Left = 1
          Top = 1
          Width = 880
          Height = 347
          ActivePage = SELECPROD
          Align = alClient
          TabHeight = 25
          TabOrder = 0
          object SELECPROD: TTabSheet
            Caption = 'SELECTEAZA PRODUS'
            object Panel8: TPanel
              Left = 0
              Top = 0
              Width = 872
              Height = 253
              Align = alClient
              Color = clCream
              ParentBackground = False
              TabOrder = 0
              object DBGrid2: TDBGrid
                Left = 1
                Top = 25
                Width = 870
                Height = 227
                Align = alClient
                DataSource = dm.DSQProdus
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                Columns = <
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'PRODUSE_ID'
                    Title.Alignment = taCenter
                    Title.Caption = 'NR'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -13
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 28
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'COD_PRODUS'
                    Title.Alignment = taCenter
                    Title.Caption = 'COD PRODUS'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -13
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 105
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'DENUMIRE'
                    Title.Alignment = taCenter
                    Title.Caption = 'PRODUS'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -13
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 694
                    Visible = True
                  end>
              end
              object CautProd: TEdit
                Left = 1
                Top = 1
                Width = 870
                Height = 24
                Align = alTop
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                TextHint = 'Cauta produs dupa cod'
                OnChange = CautProdChange
              end
            end
            object Panel9: TPanel
              Left = 0
              Top = 253
              Width = 872
              Height = 59
              Align = alBottom
              Color = clCream
              ParentBackground = False
              TabOrder = 1
              DesignSize = (
                872
                59)
              object SpeedButton5: TSpeedButton
                Left = 17
                Top = 6
                Width = 497
                Height = 43
                Anchors = [akBottom]
                Caption = 'SELECTEAZA'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                OnClick = SpeedButton5Click
                ExplicitLeft = 16
              end
              object SpeedButton6: TSpeedButton
                Left = 544
                Top = 6
                Width = 145
                Height = 43
                Anchors = [akBottom]
                Caption = 'GESTIONARE PRODUS'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitLeft = 543
              end
              object SpeedButton7: TSpeedButton
                Left = 719
                Top = 6
                Width = 148
                Height = 43
                Anchors = [akBottom]
                Caption = 'ANULEAZA'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                OnClick = SpeedButton7Click
                ExplicitLeft = 717
              end
            end
          end
          object GESTPROD: TTabSheet
            Caption = 'GESTIONARE PRODUS'
            ImageIndex = 1
          end
        end
      end
      object Panel7: TPanel
        Left = 0
        Top = 349
        Width = 882
        Height = 59
        Align = alBottom
        Color = clCream
        ParentBackground = False
        TabOrder = 1
      end
    end
    object UNITATE: TTabSheet
      Caption = 'UNITATE DE MASURA'
      ImageIndex = 2
      object Panel10: TPanel
        Left = 0
        Top = 0
        Width = 882
        Height = 349
        Align = alClient
        Color = clCream
        ParentBackground = False
        TabOrder = 0
        object PageControl3: TPageControl
          Left = 1
          Top = 1
          Width = 880
          Height = 347
          ActivePage = TabSheet2
          Align = alClient
          TabHeight = 25
          TabOrder = 0
          object TabSheet1: TTabSheet
            Caption = 'SELECTEAZA UNITATE MASURA'
            object Panel11: TPanel
              Left = 0
              Top = 0
              Width = 872
              Height = 253
              Align = alClient
              Color = clCream
              ParentBackground = False
              TabOrder = 0
              object DBGrid3: TDBGrid
                Left = 1
                Top = 25
                Width = 870
                Height = 227
                Align = alClient
                DataSource = dm.DSUM
                Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
                TabOrder = 0
                TitleFont.Charset = DEFAULT_CHARSET
                TitleFont.Color = clWindowText
                TitleFont.Height = -11
                TitleFont.Name = 'Tahoma'
                TitleFont.Style = []
                Columns = <
                  item
                    Alignment = taCenter
                    Expanded = False
                    FieldName = 'UNIT_MASURA_ID'
                    Title.Alignment = taCenter
                    Title.Caption = 'NR'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -13
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 28
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'ABREVIERE'
                    Title.Alignment = taCenter
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -13
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 105
                    Visible = True
                  end
                  item
                    Expanded = False
                    FieldName = 'NUME'
                    Title.Alignment = taCenter
                    Title.Caption = 'UNITATEA DE MASURA'
                    Title.Font.Charset = DEFAULT_CHARSET
                    Title.Font.Color = clWindowText
                    Title.Font.Height = -13
                    Title.Font.Name = 'Tahoma'
                    Title.Font.Style = [fsBold]
                    Width = 694
                    Visible = True
                  end>
              end
              object ECautUM: TEdit
                Left = 1
                Top = 1
                Width = 870
                Height = 24
                Align = alTop
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = []
                ParentFont = False
                TabOrder = 1
                TextHint = 'Cauta unitate masura dupa nume'
                OnChange = ECautUMChange
              end
            end
            object Panel12: TPanel
              Left = 0
              Top = 253
              Width = 872
              Height = 59
              Align = alBottom
              Color = clCream
              ParentBackground = False
              TabOrder = 1
              DesignSize = (
                872
                59)
              object SpeedButton9: TSpeedButton
                Left = 17
                Top = 6
                Width = 497
                Height = 43
                Anchors = [akBottom]
                Caption = 'SELECTEAZA'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                OnClick = SpeedButton9Click
                ExplicitLeft = 16
              end
              object SpeedButton10: TSpeedButton
                Left = 544
                Top = 6
                Width = 145
                Height = 43
                Anchors = [akBottom]
                Caption = 'GESTIONARE PRODUS'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                ExplicitLeft = 543
              end
              object SpeedButton11: TSpeedButton
                Left = 719
                Top = 6
                Width = 148
                Height = 43
                Anchors = [akBottom]
                Caption = 'ANULEAZA'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Height = -13
                Font.Name = 'Tahoma'
                Font.Style = [fsBold]
                ParentFont = False
                OnClick = SpeedButton11Click
                ExplicitLeft = 717
              end
            end
          end
          object TabSheet2: TTabSheet
            Caption = 'GESTIONARE UNITATE MASURA'
            ImageIndex = 1
          end
        end
      end
      object Panel13: TPanel
        Left = 0
        Top = 349
        Width = 882
        Height = 59
        Align = alBottom
        Color = clCream
        ParentBackground = False
        TabOrder = 1
      end
    end
  end
end
