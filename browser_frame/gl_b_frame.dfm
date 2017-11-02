object glb_frame: Tglb_frame
  Left = 0
  Top = 0
  Width = 714
  Height = 419
  TabOrder = 0
  object gl_browser_dlc: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 714
    Height = 419
    Align = alClient
    TabOrder = 0
    ExplicitLeft = -400
    ExplicitTop = -177
    ExplicitWidth = 720
    ExplicitHeight = 417
    object glb_gr: TcxGrid
      Left = 22
      Top = 28
      Width = 670
      Height = 362
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object glb_grtv: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        DataController.DataSource = u_gl_moduleF.glb_ds
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.Visible = True
        FilterRow.ApplyChanges = fracImmediately
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object glb_grtvaccount_code: TcxGridDBColumn
          DataBinding.FieldName = 'account_code'
          Width = 119
        end
        object glb_grtvaccount_name: TcxGridDBColumn
          DataBinding.FieldName = 'account_name'
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.CharCase = ecUpperCase
          Width = 332
        end
        object glb_grtvname_company: TcxGridDBColumn
          DataBinding.FieldName = 'name_company'
          Width = 120
        end
        object glb_grtvdivisi_name: TcxGridDBColumn
          DataBinding.FieldName = 'divisi_name'
          Width = 91
        end
      end
      object glb_grl: TcxGridLevel
        GridView = glb_grtv
      end
    end
    object gl_browser_dlcGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Visible = False
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = gl_browser_dlcGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Search'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = glb_gr
      ControlOptions.OriginalHeight = 362
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
end
