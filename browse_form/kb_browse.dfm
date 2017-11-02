object kb_browseF: Tkb_browseF
  Left = 0
  Top = 0
  Caption = 'kb_browseF'
  ClientHeight = 509
  ClientWidth = 795
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object kb_browse_dlc: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 795
    Height = 509
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 184
    ExplicitTop = 64
    ExplicitWidth = 300
    ExplicitHeight = 250
    object cxGrid1: TcxGrid
      Left = 22
      Top = 28
      Width = 751
      Height = 459
      Align = alClient
      TabOrder = 0
      object cxGrid1DBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
      end
      object cxGrid1Level1: TcxGridLevel
        GridView = cxGrid1DBTableView1
      end
    end
    object kb_browse_dlcGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = kb_browse_dlcGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = cxGrid1
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
end
