object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 695
  ClientWidth = 797
  Caption = 'MainForm'
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniPageControl1: TUniPageControl
    Left = 0
    Top = 0
    Width = 797
    Height = 695
    Hint = ''
    ActivePage = UniTabSheet1
    DeferredRender = True
    Align = alClient
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 0
    ExplicitLeft = 24
    ExplicitTop = 46
    ExplicitWidth = 665
    ExplicitHeight = 579
    object UniTabSheet1: TUniTabSheet
      Hint = ''
      Caption = 'DVD rentals 1'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 289
      ExplicitHeight = 193
      inline FrameDvdRentals1: TFrameDvdRentals
        Left = 0
        Top = 0
        Width = 789
        Height = 667
        Align = alClient
        Anchors = [akLeft, akTop, akRight, akBottom]
        TabOrder = 0
        ExplicitLeft = 293
        ExplicitTop = 307
        inherited UniPanel1: TUniPanel
          Width = 789
          ExplicitLeft = -168
          ExplicitTop = 25
          ExplicitWidth = 998
        end
        inherited UniPanel2: TUniPanel
          Width = 789
          Height = 642
          ExplicitLeft = 0
          ExplicitTop = 25
          ExplicitWidth = 998
          ExplicitHeight = 732
          inherited UniDBGrid1: TUniDBGrid
            Width = 463
            Height = 640
          end
          inherited UniPanel3: TUniPanel
            Left = 464
            Height = 640
            ExplicitLeft = 673
          end
        end
        inherited UniQuery2: TUniQuery
          inherited UniQuery2Name: TStringField
            OnGetText = nil
          end
        end
      end
    end
    object UniTabSheet2: TUniTabSheet
      Hint = ''
      Caption = 'DVD Rentals 2'
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 797
      ExplicitHeight = 695
    end
  end
end
