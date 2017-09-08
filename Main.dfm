object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 395
  ClientWidth = 482
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  OnCreate = UniFormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object UniPageControl1: TUniPageControl
    Left = 0
    Top = 0
    Width = 482
    Height = 395
    Hint = ''
    ActivePage = UniTabSheet1
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    ExplicitWidth = 797
    ExplicitHeight = 695
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'DVD rentals'
      ShowMaskBeforeActivate = True
      ExplicitWidth = 789
      ExplicitHeight = 667
    end
    object UniTabSheet2: TUniTabSheet
      Hint = ''
      Caption = 'Something Else'
      ExplicitWidth = 789
      ExplicitHeight = 667
      object UniToolBar1: TUniToolBar
        Left = 0
        Top = 0
        Width = 474
        Height = 41
        Hint = ''
        ButtonWidth = 81
        ShowCaptions = True
        ButtonAutoWidth = True
        Anchors = [akLeft, akTop, akRight]
        Align = alTop
        TabOrder = 0
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
          ExplicitLeft = 46
        end
        object UniToolButton4: TUniToolButton
          Left = 170
          Top = 0
          Hint = ''
          Caption = 'UniToolButton4'
          TabOrder = 4
          ExplicitLeft = 112
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
end
