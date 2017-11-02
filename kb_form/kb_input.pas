unit kb_input;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxContainer, cxEdit, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxNavigator, Data.DB, cxDBData, Vcl.Menus,
  dxLayoutcxEditAdapters, dxLayoutContainer, dxLayoutControlAdapters,
  Vcl.StdCtrls, cxButtons, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid,
  Vcl.ComCtrls, cxMaskEdit, cxDropDownEdit, cxTextEdit, dxLayoutControl,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Comp.Client, FireDAC.Phys.PG,
  FireDAC.Phys.PGDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, FireDAC.Comp.DataSet, Vcl.DBLookup,
  Vcl.WinXCtrls, cxMemo, cxLookupEdit, cxDBLookupEdit,
  cxDBLookupComboBox, gl_browse;

type
  Tkb_inputF = class(TForm)
    kb_input_lc: TdxLayoutControl;
    nogi_te: TcxTextEdit;
    post_dtp: TDateTimePicker;
    doc_dtp: TDateTimePicker;
    drcr_cb: TcxComboBox;
    nodoc_TE: TcxTextEdit;
    kb_gr: TcxGrid;
    kb_grl: TcxGridLevel;
    kb_input_lcGroup_Root: TdxLayoutGroup;
    dxLayoutGroup1: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutAutoCreatedGroup2: TdxLayoutAutoCreatedGroup;
    dxLayoutItem9: TdxLayoutItem;
    dxLayoutItem7: TdxLayoutItem;
    dxLayoutAutoCreatedGroup3: TdxLayoutAutoCreatedGroup;
    dxLayoutItem6: TdxLayoutItem;
    dxLayoutItem1: TdxLayoutItem;
    dxLayoutItem8: TdxLayoutItem;
    dxLayoutItem4: TdxLayoutItem;
    kb_grtv: TcxGridTableView;
    save_b: TcxButton;
    dxLayoutItem2: TdxLayoutItem;
    kb_grtvColumn1: TcxGridColumn;
    kb_grtvColumn2: TcxGridColumn;
    kb_grtvColumn3: TcxGridColumn;
    kb_grtvColumn4: TcxGridColumn;
    kb_input_con: TFDConnection;
    kb_input_ds: TDataSource;
    kb_input_us: TFDUpdateSQL;
    kb_input_q: TFDQuery;
    cxTextEdit1: TcxTextEdit;
    dxLayoutItem10: TdxLayoutItem;
    kb_sb: TSearchBox;
    dxLayoutItem11: TdxLayoutItem;
    dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup;
    kbi_bkpf_us: TFDUpdateSQL;
    kbi_bkpf_ds: TDataSource;
    kbi_bkpf_q: TFDQuery;
    kbi_bseg_q: TFDQuery;
    kbi_bseg_us: TFDUpdateSQL;
    kbi_bseg_ds: TDataSource;
    dxLayoutItem5: TdxLayoutItem;
    memo_m: TcxMemo;
    kbi_bkpf_qid_doc: TWideStringField;
    kbi_bkpf_qyears: TIntegerField;
    kbi_bkpf_qmonths: TSmallintField;
    kbi_bkpf_qdocdate: TDateField;
    kbi_bkpf_qpostdate: TDateField;
    kbi_bkpf_qenterby: TWideStringField;
    kbi_bkpf_qenterat: TSQLTimeStampField;
    kbi_bkpf_qchangeat: TSQLTimeStampField;
    kbi_bkpf_qposted: TBooleanField;
    kbi_bkpf_qchangeby: TWideStringField;
    kbi_bkpf_qdoctype: TWideStringField;
    kbi_bseg_qidbseg: TIntegerField;
    kbi_bseg_qid_doc: TWideStringField;
    kbi_bseg_qlineitem: TSmallintField;
    kbi_bseg_qaccgl: TWideStringField;
    kbi_bseg_qdebit: TSingleField;
    kbi_bseg_qcredit: TSingleField;
    kbi_bseg_qketerangan: TWideMemoField;
    kbi_bseg_qgirocheque: TWideMemoField;
    kbi_bseg_qrefdoc: TWideStringField;
    kbi_bseg_qvendor: TIntegerField;
    kbi_bseg_qcostumer: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure save_bClick(Sender: TObject);
    procedure kb_sbInvokeSearch(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    var desc_akun: string;
  end;

var
  kb_inputF: Tkb_inputF;

implementation

{$R *.dfm}

uses main,u_gl_module;


procedure Tkb_inputF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure Tkb_inputF.FormCreate(Sender: TObject);
begin
try
finally

end;
end;

procedure Tkb_inputF.kb_sbInvokeSearch(Sender: TObject);
var
i,recIdx: Integer;
begin
     try
         gl_browse_f.ShowModal;
         //i:=gl_browse_f.glb_grtv.DataController.GetSelectedCount;
         //recIdx:=gl_browse_f.glb_grtv.Controller.SelectedRecords[i].RecordIndex;
         //kb_sb.Text:= gl_browse_f.glb_grtv.DataController.Values[0,0];
     finally

     end;
end;

procedure Tkb_inputF.save_bClick(Sender: TObject);

var
 i,count: Integer;
 myYear,myMonth,myDay: Word;
 datenow: TDateTime;
 total: Double;

begin
  try
    if kb_input_q.Locate('id_doc',nodoc_TE.Text,[]) then
      begin
        ShowMessage('no sudah ada/fill kosong');
      end
    else
      begin
        DecodeDate(post_dtp.date,myYear,myMonth,myDay);
        datenow := now;
        if kb_grtv.DataController.RowCount <> 0 then begin
          total:= 0;
          count:=kb_grtv.DataController.RowCount+1;
          // fill BKPF table.
           try
            kbi_bkpf_q.Close;
            kbi_bkpf_q.Active := true;
            kbi_bkpf_q.Append;
            kbi_bkpf_q.FieldByName('id_doc').AsString := nodoc_TE.Text;
            kbi_bkpf_q.FieldByName('username').AsString := 'brian';
            kbi_bkpf_q.FieldByName('years').AsInteger := myYear;
            kbi_bkpf_q.FieldByName('months').AsInteger := myMonth;
            kbi_bkpf_q.FieldByName('docdate').AsDateTime := doc_dtp.Date;
            kbi_bkpf_q.FieldByName('postdate').AsDateTime := post_dtp.Date;
            kbi_bkpf_q.FieldByName('enterat').AsDateTime := datenow;
            kbi_bkpf_q.FieldByName('posted').AsBoolean := false;
            kbi_bkpf_q.Post;
            kbi_bkpf_q.ApplyUpdates;
            kbi_bkpf_q.CommitUpdates;
          //fill BSEG table part 1
            for i:=0 to kb_grtv.DataController.RowCount-1 do begin
              kbi_bseg_q.Close;
              kbi_bseg_q.Active := true;
              kbi_bseg_q.Append;
              kbi_bseg_q.FieldByName('id_doc').AsString := nodoc_TE.Text;
              kbi_bseg_q.FieldByName('accgl').AsString := kb_grtv.DataController.Values[i,0];
              if drcr_cb.SelectedItem = 0 then begin
                kbi_bseg_q.FieldByName('debit').AsFloat := 0;
                kbi_bseg_q.FieldByName('credit').AsFloat := kb_grtv.DataController.Values[i,2];
              end
              else if drcr_cb.SelectedItem = 1 then begin
                kbi_bseg_q.FieldByName('debit').AsFloat := kb_grtv.DataController.Values[i,2];
                kbi_bseg_q.FieldByName('credit').AsFloat := 0;
              end;
              kbi_bseg_q.FieldByName('lineitem').AsInteger:= count; count:=count-1;
              kbi_bseg_q.FieldByName('keterangan').AsString:= kb_grtv.DataController.Values[i,3];
              kbi_bseg_q.FieldByName('girocheque').AsString:= nogi_te.Text;
              kbi_bseg_q.Post;
              kbi_bseg_q.ApplyUpdates;
              kbi_bseg_q.CommitUpdates;
              total:= total+kb_grtv.DataController.Values[i,2];
            end;
          //fill BSEG table part 2
            kbi_bseg_q.Close;
            kbi_bseg_q.Active := true;
            kbi_bseg_q.Append;
            //kbi_bseg_q.ParamByName('iddoc').AsString := nodoc_TE.Text;
            kbi_bseg_q.FieldByName('id_doc').AsString := nodoc_TE.Text;
            kbi_bseg_q.FieldByName('accgl').AsString := kb_sb.Text;
            if drcr_cb.SelectedItem = 0 then begin
                kbi_bseg_q.FieldByName('debit').AsFloat := total;
                kbi_bseg_q.FieldByName('credit').AsFloat := 0;
            end
            else if drcr_cb.SelectedItem = 1 then begin
                kbi_bseg_q.FieldByName('debit').AsFloat := 0;
                kbi_bseg_q.FieldByName('credit').AsFloat := total;
            end;
            kbi_bseg_q.FieldByName('lineitem').AsInteger := 1;
            kbi_bseg_q.FieldByName('keterangan').AsString := memo_m.Text;
            kbi_bseg_q.FieldByName('girocheque').AsString := nogi_te.Text;
            kbi_bseg_q.Post;
            kbi_bseg_q.ApplyUpdates;
            kbi_bseg_q.CommitUpdates;
           except

           end;
          end
          else begin
                ShowMessage('testing');
          end;
      end;
        //ShowMessage('ada');

  finally

  end;
end;

end.
