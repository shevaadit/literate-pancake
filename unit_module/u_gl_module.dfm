object u_gl_moduleF: Tu_gl_moduleF
  Left = 0
  Top = 0
  Caption = 'u_gl_moduleF'
  ClientHeight = 305
  ClientWidth = 573
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object acc_con: TFDConnection
    Params.Strings = (
      'ConnectionDef=PG')
    Connected = True
    Left = 56
    Top = 32
  end
  object glb_q: TFDQuery
    BeforeOpen = glb_qBeforeOpen
    CachedUpdates = True
    Connection = acc_con
    UpdateObject = glb_us
    SQL.Strings = (
      'select tca.account_code, tca.account_name, '
      
        '       tca.id_divisi, tca.id_company, tc.name_company, td.divisi' +
        '_name'
      'from tb_chart_of_account tca'
      'inner join tb_company tc on tc.id_company = tca.id_company'
      'inner join tb_divisi td on td.id_divisi = tca.id_divisi'
      'where tca.id_divisi=:idd and tca.id_company=:idc'
      
        '      and tca.is_parent=0 and tca.cd_coagroup in ('#39'1111'#39','#39'1112'#39',' +
        #39'1113'#39','#39'1114'#39')'
      'order by tca.account_code;')
    Left = 144
    Top = 32
    ParamData = <
      item
        Name = 'IDD'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end
      item
        Name = 'IDC'
        DataType = ftInteger
        ParamType = ptInput
        Value = Null
      end>
    object glb_qaccount_code: TWideStringField
      FieldName = 'account_code'
      Origin = 'account_code'
      FixedChar = True
      Size = 255
    end
    object glb_qaccount_name: TWideStringField
      FieldName = 'account_name'
      Origin = 'account_name'
      Size = 255
    end
    object glb_qname_company: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'name_company'
      Origin = 'name_company'
      Size = 64
    end
    object glb_qdivisi_name: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'divisi_name'
      Origin = 'divisi_name'
      Size = 50
    end
  end
  object glb_ds: TDataSource
    DataSet = glb_q
    Left = 200
    Top = 32
  end
  object glb_us: TFDUpdateSQL
    Connection = acc_con
    InsertSQL.Strings = (
      'INSERT INTO tb_chart_of_account'
      '(account_code, account_name, id_divisi, id_company)'
      
        'VALUES (:new_account_code, :new_account_name, :new_id_divisi, :n' +
        'ew_id_company)')
    ModifySQL.Strings = (
      'UPDATE tb_chart_of_account'
      
        'SET account_code = :new_account_code, account_name = :new_accoun' +
        't_name, '
      '  id_divisi = :new_id_divisi, id_company = :new_id_company'
      
        'WHERE account_code = :old_account_code AND account_name = :old_a' +
        'ccount_name AND '
      '  id_divisi = :old_id_divisi AND id_company = :old_id_company')
    DeleteSQL.Strings = (
      'DELETE FROM tb_chart_of_account'
      
        'WHERE account_code = :old_account_code AND account_name = :old_a' +
        'ccount_name AND '
      '  id_divisi = :old_id_divisi AND id_company = :old_id_company')
    FetchRowSQL.Strings = (
      
        'SELECT id_coa, account_code, account_name, is_parent, parent_id,' +
        ' account_type, '
      '  account_group, account_category, description, no_intern, '
      '  lvl, is_ap, ap_group, id_divisi, id_company, no_company, '
      '  id_coagroup, no_coagroup, cd_coagroup, no_level, cd_level'
      'FROM tb_chart_of_account'
      
        'WHERE account_code = :account_code AND account_name = :account_n' +
        'ame AND '
      '  id_divisi = :id_divisi AND id_company = :id_company')
    Left = 256
    Top = 32
  end
end
