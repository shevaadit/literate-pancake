object kb_inputF: Tkb_inputF
  Left = 0
  Top = 0
  Caption = 'kb_inputF'
  ClientHeight = 559
  ClientWidth = 818
  Color = clBtnFace
  UseDockManager = True
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object kb_input_lc: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 818
    Height = 559
    Align = alClient
    TabOrder = 0
    object nogi_te: TcxTextEdit
      Left = 104
      Top = 97
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 6
      Width = 161
    end
    object post_dtp: TDateTimePicker
      Left = 332
      Top = 97
      Width = 121
      Height = 24
      Date = 43036.918529884260000000
      Time = 43036.918529884260000000
      TabOrder = 7
    end
    object drcr_cb: TcxComboBox
      Left = 533
      Top = 65
      AutoSize = False
      Properties.Items.Strings = (
        'Debit'
        'Kredit')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      Style.ButtonStyle = bts3D
      Style.PopupBorderStyle = epbsFrame3D
      TabOrder = 4
      Text = 'Debit'
      Height = 25
      Width = 121
    end
    object nodoc_TE: TcxTextEdit
      Left = 104
      Top = 65
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 2
      Width = 161
    end
    object kb_gr: TcxGrid
      Left = 26
      Top = 163
      Width = 766
      Height = 370
      TabOrder = 9
      object kb_grtv: TcxGridTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Visible = True
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        FilterRow.ApplyChanges = fracDelayed
        NewItemRow.Visible = True
        OptionsSelection.MultiSelect = True
        OptionsSelection.CellMultiSelect = True
        OptionsSelection.InvertSelect = False
        OptionsView.ColumnAutoWidth = True
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
        object kb_grtvColumn1: TcxGridColumn
          Caption = 'No GL'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'id_doc'
          Properties.ListColumns = <
            item
              FieldName = 'id_doc'
            end>
          Properties.ListSource = kb_input_ds
          Width = 110
        end
        object kb_grtvColumn2: TcxGridColumn
          Caption = 'Desc GL'
          Options.Editing = False
          Width = 184
        end
        object kb_grtvColumn3: TcxGridColumn
          Caption = 'Amount'
          Width = 185
        end
        object kb_grtvColumn4: TcxGridColumn
          Caption = 'Keterangan'
          Width = 234
        end
      end
      object kb_grl: TcxGridLevel
        GridView = kb_grtv
      end
    end
    object save_b: TcxButton
      Left = 661
      Top = 65
      Width = 90
      Height = 25
      Caption = 'Save New'
      TabOrder = 5
      OnClick = save_bClick
    end
    object cxTextEdit1: TcxTextEdit
      Left = 330
      Top = 33
      AutoSize = False
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 1
      Height = 25
      Width = 462
    end
    object doc_dtp: TDateTimePicker
      Left = 332
      Top = 65
      Width = 121
      Height = 25
      Date = 43036.918393321760000000
      Time = 43036.918393321760000000
      TabOrder = 3
    end
    object kb_sb: TSearchBox
      Left = 106
      Top = 35
      Width = 158
      Height = 21
      BevelInner = bvNone
      BevelKind = bkFlat
      BevelOuter = bvSpace
      BorderStyle = bsNone
      TabOrder = 0
      OnInvokeSearch = kb_sbInvokeSearch
    end
    object memo_m: TcxMemo
      Left = 533
      Top = 97
      Lines.Strings = (
        'memo_m')
      Style.BorderColor = clWindowFrame
      Style.BorderStyle = ebs3D
      Style.HotTrack = False
      TabOrder = 8
      Height = 24
      Width = 259
    end
    object kb_input_lcGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      ButtonOptions.Buttons = <>
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = kb_input_lcGroup_Root
      CaptionOptions.Text = 'Header Info'
      ButtonOptions.Buttons = <>
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = kb_input_lcGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Detail'
      ButtonOptions.Buttons = <>
      Index = 1
    end
    object dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      LayoutDirection = ldHorizontal
      Index = 1
      AutoCreated = True
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'No Giro'
      Control = nogi_te
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 161
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Post Date'
      Control = post_dtp
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 2
      AutoCreated = True
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Debit/Kredit'
      Control = drcr_cb
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'No Dokumen'
      Control = nodoc_TE
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 161
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'cxGrid1'
      CaptionOptions.Visible = False
      Control = kb_gr
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 250
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      CaptionOptions.Text = 'cxButton1'
      CaptionOptions.Visible = False
      Control = save_b
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 90
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Deskripsi'
      Control = cxTextEdit1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutGroup1
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 0
      AutoCreated = True
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Doc Date'
      Control = doc_dtp
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      CaptionOptions.Text = 'Kas / Bank'
      Control = kb_sb
      ControlOptions.OriginalHeight = 20
      ControlOptions.OriginalWidth = 158
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutAutoCreatedGroup3
      CaptionOptions.Text = 'Memo/Ket'
      Control = memo_m
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 259
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object kb_input_con: TFDConnection
    Params.Strings = (
      'Database=SKB_DEV'
      'User_Name=postgres'
      'Server=localhost'
      'Password=skbacmilan'
      'DriverID=PG')
    Connected = True
    Left = 88
    Top = 280
  end
  object kb_input_ds: TDataSource
    DataSet = kb_input_q
    Left = 264
    Top = 280
  end
  object kb_input_us: TFDUpdateSQL
    Connection = kb_input_con
    Left = 328
    Top = 280
  end
  object kb_input_q: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = kb_input_con
    UpdateObject = kb_input_us
    SQL.Strings = (
      'select id_doc from bkpf')
    Left = 200
    Top = 280
  end
  object kbi_bkpf_us: TFDUpdateSQL
    Connection = kb_input_con
    InsertSQL.Strings = (
      'INSERT INTO bkpf'
      '(id_doc, years, months, docdate, postdate, '
      '  username, enterat, changeat, posted)'
      
        'VALUES (:new_id_doc, :new_years, :new_months, :new_docdate, :new' +
        '_postdate, '
      '  :new_username, :new_enterat, :new_changeat, :new_posted)')
    ModifySQL.Strings = (
      'UPDATE bkpf'
      
        'SET id_doc = :new_id_doc, years = :new_years, months = :new_mont' +
        'hs, '
      
        '  docdate = :new_docdate, postdate = :new_postdate, username = :' +
        'new_username, '
      
        '  enterat = :new_enterat, changeat = :new_changeat, posted = :ne' +
        'w_posted'
      'WHERE id_doc = :old_id_doc')
    DeleteSQL.Strings = (
      'DELETE FROM bkpf'
      'WHERE id_doc = :old_id_doc')
    FetchRowSQL.Strings = (
      
        'SELECT id_doc, years, months, docdate, postdate, username, enter' +
        'at, '
      '  changeat, posted'
      'FROM bkpf'
      'WHERE id_doc = :id_doc')
    Left = 328
    Top = 344
  end
  object kbi_bkpf_ds: TDataSource
    DataSet = kbi_bkpf_q
    Left = 264
    Top = 344
  end
  object kbi_bkpf_q: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = kb_input_con
    UpdateObject = kbi_bkpf_us
    SQL.Strings = (
      'select * from bkpf where id_doc = :iddoc')
    Left = 200
    Top = 344
    ParamData = <
      item
        Name = 'IDDOC'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object kbi_bkpf_qid_doc: TWideStringField
      FieldName = 'id_doc'
      Origin = 'id_doc'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 50
    end
    object kbi_bkpf_qyears: TIntegerField
      FieldName = 'years'
      Origin = 'years'
    end
    object kbi_bkpf_qmonths: TSmallintField
      FieldName = 'months'
      Origin = 'months'
    end
    object kbi_bkpf_qdocdate: TDateField
      FieldName = 'docdate'
      Origin = 'docdate'
    end
    object kbi_bkpf_qpostdate: TDateField
      FieldName = 'postdate'
      Origin = 'postdate'
    end
    object kbi_bkpf_qenterby: TWideStringField
      FieldName = 'enterby'
      Origin = 'enterby'
      Size = 50
    end
    object kbi_bkpf_qenterat: TSQLTimeStampField
      FieldName = 'enterat'
      Origin = 'enterat'
    end
    object kbi_bkpf_qchangeat: TSQLTimeStampField
      FieldName = 'changeat'
      Origin = 'changeat'
    end
    object kbi_bkpf_qposted: TBooleanField
      FieldName = 'posted'
      Origin = 'posted'
    end
    object kbi_bkpf_qchangeby: TWideStringField
      FieldName = 'changeby'
      Origin = 'changeby'
      Size = 50
    end
    object kbi_bkpf_qdoctype: TWideStringField
      FieldName = 'doctype'
      Origin = 'doctype'
      Size = 2
    end
  end
  object kbi_bseg_q: TFDQuery
    Active = True
    CachedUpdates = True
    Connection = kb_input_con
    UpdateObject = kbi_bseg_us
    SQL.Strings = (
      'select * from bseg where id_doc = :iddoc')
    Left = 200
    Top = 408
    ParamData = <
      item
        Name = 'IDDOC'
        DataType = ftString
        ParamType = ptInput
        Value = Null
      end>
    object kbi_bseg_qidbseg: TIntegerField
      FieldName = 'idbseg'
      Origin = 'idbseg'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object kbi_bseg_qid_doc: TWideStringField
      FieldName = 'id_doc'
      Origin = 'id_doc'
      Size = 50
    end
    object kbi_bseg_qlineitem: TSmallintField
      FieldName = 'lineitem'
      Origin = 'lineitem'
    end
    object kbi_bseg_qaccgl: TWideStringField
      FieldName = 'accgl'
      Origin = 'accgl'
      Size = 15
    end
    object kbi_bseg_qdebit: TSingleField
      FieldName = 'debit'
      Origin = 'debit'
    end
    object kbi_bseg_qcredit: TSingleField
      FieldName = 'credit'
      Origin = 'credit'
    end
    object kbi_bseg_qketerangan: TWideMemoField
      FieldName = 'keterangan'
      Origin = 'keterangan'
      BlobType = ftWideMemo
    end
    object kbi_bseg_qgirocheque: TWideMemoField
      FieldName = 'girocheque'
      Origin = 'girocheque'
      BlobType = ftWideMemo
    end
    object kbi_bseg_qrefdoc: TWideStringField
      FieldName = 'refdoc'
      Origin = 'refdoc'
      Size = 50
    end
    object kbi_bseg_qvendor: TIntegerField
      FieldName = 'vendor'
      Origin = 'vendor'
    end
    object kbi_bseg_qcostumer: TIntegerField
      FieldName = 'costumer'
      Origin = 'costumer'
    end
  end
  object kbi_bseg_us: TFDUpdateSQL
    Connection = kb_input_con
    InsertSQL.Strings = (
      'INSERT INTO bseg'
      '(ttype, id_doc, lineitem, accgl, debit, '
      '  credit, keterangan, girocheque)'
      
        'VALUES (:new_ttype, :new_id_doc, :new_lineitem, :new_accgl, :new' +
        '_debit, '
      '  :new_credit, :new_keterangan, :new_girocheque)')
    ModifySQL.Strings = (
      'UPDATE bseg'
      
        'SET ttype = :new_ttype, id_doc = :new_id_doc, lineitem = :new_li' +
        'neitem, '
      '  accgl = :new_accgl, debit = :new_debit, credit = :new_credit, '
      '  keterangan = :new_keterangan, girocheque = :new_girocheque'
      'WHERE id_doc = :old_id_doc')
    DeleteSQL.Strings = (
      'DELETE FROM bseg'
      'WHERE id_doc = :old_id_doc')
    FetchRowSQL.Strings = (
      
        'SELECT idbseg, ttype, id_doc, lineitem, accgl, debit, credit, ke' +
        'terangan, '
      '  girocheque'
      'FROM bseg'
      'WHERE id_doc = :id_doc')
    Left = 328
    Top = 408
  end
  object kbi_bseg_ds: TDataSource
    DataSet = kbi_bseg_q
    Left = 264
    Top = 408
  end
end
