object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 669
  ClientWidth = 961
  Caption = 'MainForm'
  BorderStyle = bsNone
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniPageControl1: TUniPageControl
    AlignWithMargins = True
    Left = 131
    Top = 75
    Width = 828
    Height = 592
    Hint = ''
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    ActivePage = UniTabSheet2
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    OnChange = UniPageControl1Change
    ExplicitWidth = 812
    ExplicitHeight = 553
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      AlignmentControl = uniAlignmentClient
      ParentAlignmentControl = False
      Caption = 'DVD rentals'
      ExplicitWidth = 804
      ExplicitHeight = 525
    end
    object UniTabSheet2: TUniTabSheet
      Hint = ''
      AlignmentControl = uniAlignmentClient
      ParentAlignmentControl = False
      Caption = 'Something Else'
      ExplicitWidth = 804
      ExplicitHeight = 525
      object UniToolBar1: TUniToolBar
        Left = 0
        Top = 0
        Width = 820
        Height = 41
        Hint = ''
        ButtonWidth = 81
        ShowCaptions = True
        ButtonAutoWidth = True
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        TabOrder = 0
        ParentColor = False
        Color = clBtnFace
        ExplicitWidth = 804
        object UniToolButton1: TUniToolButton
          Left = 0
          Top = 0
          Hint = ''
          Caption = 'UniToolButton1'
          TabOrder = 1
        end
        object UniToolButton2: TUniToolButton
          Left = 81
          Top = 0
          Hint = ''
          Caption = 'UniToolButton2'
          TabOrder = 2
        end
        object UniToolButton3: TUniToolButton
          Left = 162
          Top = 0
          Width = 8
          Hint = ''
          Style = tbsSeparator
          Caption = 'UniToolButton3'
          TabOrder = 3
        end
        object UniToolButton4: TUniToolButton
          Left = 170
          Top = 0
          Hint = ''
          Caption = 'UniToolButton4'
          TabOrder = 4
        end
      end
      object UniTrackBar1: TUniTrackBar
        Left = 69
        Top = 40
        Width = 150
        Height = 45
        Hint = ''
        LineSize = 5
        TabOrder = 1
      end
    end
  end
  object pnlLeft: TUniPanel
    Left = 0
    Top = 73
    Width = 129
    Height = 596
    Hint = ''
    Align = alLeft
    Anchors = [akLeft, akTop, akBottom]
    TabOrder = 1
    BorderStyle = ubsNone
    Caption = ''
    Color = clSilver
    ExplicitHeight = 557
    object UniSpeedButton1: TUniSpeedButton
      AlignWithMargins = True
      Left = 3
      Top = 3
      Width = 123
      Height = 44
      Hint = ''
      GroupIndex = 1
      Caption = 'Butt1'
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      ParentColor = False
      Color = clWindow
      Images = UniImageList1
      ImageIndex = 0
      TabOrder = 1
      OnClick = UniSpeedButton1Click
    end
    object UniBitBtn1: TUniBitBtn
      AlignWithMargins = True
      Left = 3
      Top = 53
      Width = 123
      Height = 44
      Hint = ''
      Caption = 'Butt2'
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 2
      Images = UniImageList1
      ImageIndex = 0
      LayoutConfig.Margin = '0'
      OnClick = UniBitBtn1Click
    end
    object UniButton1: TUniButton
      AlignWithMargins = True
      Left = 3
      Top = 103
      Width = 123
      Height = 45
      Hint = ''
      Caption = 'Butt3'
      Anchors = [akLeft, akTop, akRight]
      Align = alTop
      TabOrder = 3
      Images = UniImageList1
      ImageIndex = 0
    end
    object UniMenuButton1: TUniMenuButton
      AlignWithMargins = True
      Left = 3
      Top = 154
      Width = 123
      Height = 47
      Hint = ''
      Caption = 'Butt4'
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 4
      Images = UniImageList1
      ImageIndex = 0
    end
    object pnlTool1: TUniPanel
      AlignWithMargins = True
      Left = 3
      Top = 207
      Width = 123
      Height = 50
      Hint = ''
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 5
      Caption = ''
      Color = clSkyBlue
      OnClick = pnlTool1Click
      object UniLabel1: TUniLabel
        Left = 34
        Top = 16
        Width = 38
        Height = 16
        Hint = ''
        Caption = 'Tool 1'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 1
      end
      object UniImage1: TUniImage
        Left = 1
        Top = 1
        Width = 27
        Height = 48
        Hint = ''
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
          00180806000000E0773DF8000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000000
          1974455874536F667477617265007061696E742E6E657420342E302E3137336E
          9F63000000844944415478DA63FCFFFF3F032D0123DD2C289765F82F22865F31
          48E99D9B0C9F677D65E023D9826E6386FF5A3A8435BC79CDC070F420F196906C
          01A9969065012996906D01B1965064013196506C01214BA862013E4BA866012E
          4BA86A01364B869605340D229A46324D93294D331A4D8B0A9A1676342DAEC9AE
          70685E65D20AD0DC020059B8E7D1DD4211160000000049454E44AE426082}
        Proportional = True
        Align = alLeft
        Anchors = [akLeft, akTop, akBottom]
        Transparent = True
      end
    end
    object pnlTool2: TUniPanel
      AlignWithMargins = True
      Left = 3
      Top = 263
      Width = 123
      Height = 50
      Hint = ''
      Align = alTop
      Anchors = [akLeft, akTop, akRight]
      TabOrder = 6
      Caption = ''
      Color = clSkyBlue
      OnClick = pnlTool2Click
      object UniLabel2: TUniLabel
        Left = 34
        Top = 16
        Width = 38
        Height = 16
        Hint = ''
        Caption = 'Tool 2'
        ParentFont = False
        Font.Height = -13
        Font.Style = [fsBold]
        TabOrder = 1
      end
      object UniImage2: TUniImage
        Left = 1
        Top = 1
        Width = 27
        Height = 48
        Hint = ''
        Center = True
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000180000
          00180806000000E0773DF8000000017352474200AECE1CE90000000467414D41
          0000B18F0BFC6105000000097048597300000EC300000EC301C76FA864000000
          1974455874536F667477617265007061696E742E6E657420342E302E3137336E
          9F63000000844944415478DA63FCFFFF3F032D0123DD2C289765F82F22865F31
          48E99D9B0C9F677D65E023D9826E6386FF5A3A8435BC79CDC070F420F196906C
          01A9969065012996906D01B1965064013196506C01214BA862013E4BA866012E
          4BA86A01364B869605340D229A46324D93294D331A4D8B0A9A1676342DAEC9AE
          70685E65D20AD0DC020059B8E7D1DD4211160000000049454E44AE426082}
        Proportional = True
        Align = alLeft
        Anchors = [akLeft, akTop, akBottom]
        Transparent = True
      end
    end
  end
  object pnlTop: TUniPanel
    Left = 0
    Top = 0
    Width = 961
    Height = 73
    Hint = ''
    Align = alTop
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
    BorderStyle = ubsNone
    Caption = ''
    Color = clSilver
    ExplicitWidth = 945
    object UniPanel1: TUniPanel
      Left = 0
      Top = 0
      Width = 129
      Height = 73
      Hint = ''
      Align = alLeft
      Anchors = [akLeft, akTop, akBottom]
      TabOrder = 1
      BorderStyle = ubsNone
      Caption = ''
      Color = clWhite
    end
  end
  object UniImageList1: TUniImageList
    Width = 24
    Height = 24
    DefaultOutputFormat = toPng
    Left = 464
    Top = 320
    Bitmap = {
      494C0101010014002C0018001800FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000600000001800000001002000000000000024
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF1B75FFFF31
      8AFFFF318AFFFF318AFFFF318AFFFF318AFFFF318AFFFF318AFFFF318AFFFF30
      89FFFF156CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF318AFFFF5D
      B4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5D
      B4FFFF48A0FFFF156CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF318AFFFF5D
      B4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5D
      B4FFFF5DB4FFFF48A0FFFF156CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF318AFFFF5D
      B4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5D
      B4FFFF5DB4FFFF5DB4FFFF48A0FFFF156CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF318AFFFF5D
      B4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5D
      B4FFFF5DB4FFFF5DB4FFFF5DB4FFFF48A0FFFF156CFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF318AFFFF5D
      B4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5D
      B4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF48A0FFFF156CFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF318AFFFF5D
      B4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5D
      B4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF48A0FFFF156CFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF318AFFFF5D
      B4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5D
      B4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF48A0FFFF15
      6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF318AFFFF5D
      B4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5D
      B4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF48
      A0FFFF156CFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF318AFFFF5D
      B4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5D
      B4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5D
      B4FFFF48A0FFFF156CFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF318AFFFF5D
      B4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5D
      B4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5D
      B4FFFF48A0FFFF156CFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF318AFFFF5D
      B4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5D
      B4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF48
      A0FFFF156CFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF318AFFFF5D
      B4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5D
      B4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF48A0FFFF15
      6CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF318AFFFF5D
      B4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5D
      B4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF48A0FFFF156CFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF318AFFFF5D
      B4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5D
      B4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF48A0FFFF156CFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF318AFFFF5D
      B4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5D
      B4FFFF5DB4FFFF5DB4FFFF5DB4FFFF48A0FFFF156CFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF318AFFFF5D
      B4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5D
      B4FFFF5DB4FFFF5DB4FFFF48A0FFFF156CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF318AFFFF5D
      B4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5D
      B4FFFF5DB4FFFF48A0FFFF156CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF318AFFFF5D
      B4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5DB4FFFF5D
      B4FFFF48A0FFFF156CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFF1B75FFFF31
      8AFFFF318AFFFF318AFFFF318AFFFF318AFFFF318AFFFF318AFFFF318AFFFF30
      89FFFF156CFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000060000000180000000100010000000000200100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
end
