unit gl_browse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, dxLayoutcxEditAdapters,
  dxLayoutContainer, cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage,
  cxNavigator, Data.DB, cxDBData, cxGridLevel, cxClasses, cxGridCustomView,
  cxGridCustomTableView, cxGridTableView, cxGridDBTableView, cxGrid, cxTextEdit,
  dxLayoutControl, FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.VCLUI.Wait, FireDAC.Comp.Client,
  u_gl_module;

type
  Tgl_browse_f = class(TForm)
    gl_browser_dlcGroup_Root: TdxLayoutGroup;
    gl_browser_dlc: TdxLayoutControl;
    dxLayoutGroup2: TdxLayoutGroup;
    glb_grtv: TcxGridDBTableView;
    glb_grl: TcxGridLevel;
    glb_gr: TcxGrid;
    dxLayoutItem3: TdxLayoutItem;
    glb_grtvaccount_code: TcxGridDBColumn;
    glb_grtvaccount_name: TcxGridDBColumn;
    glb_grtvname_company: TcxGridDBColumn;
    glb_grtvdivisi_name: TcxGridDBColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure glb_grtvCellDblClick(Sender: TcxCustomGridTableView;
      ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
      AShift: TShiftState; var AHandled: Boolean);
    procedure glb_grtvCanSelectRecord(Sender: TcxCustomGridTableView;
      ARecord: TcxCustomGridRecord; var AAllow: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
     dummy: string;
  end;

var
  gl_browse_f: Tgl_browse_f;

implementation

{$R *.dfm}

uses kb_input;

procedure Tgl_browse_f.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     u_gl_moduleF.glb_q.Active:= false;
     //Free;
end;

procedure Tgl_browse_f.FormShow(Sender: TObject);
begin
     u_gl_moduleF.glb_q.Active:= true;
end;

procedure Tgl_browse_f.glb_grtvCanSelectRecord(Sender: TcxCustomGridTableView;
  ARecord: TcxCustomGridRecord; var AAllow: Boolean);
begin
    try
      ShowMessage('can select');
    finally

    end;
end;

procedure Tgl_browse_f.glb_grtvCellDblClick(Sender: TcxCustomGridTableView;
  ACellViewInfo: TcxGridTableDataCellViewInfo; AButton: TMouseButton;
  AShift: TShiftState; var AHandled: Boolean);
var
i,recIdx: Integer;
begin
     try
        glb_grtv.DataController.DataSet.DisableControls;
        //get selected rows
        for i:=0 to sender.DataController.GetSelectedCount-1 do begin
             recIdx:= sender.Controller.SelectedRecords[i].RecordIndex;
             dummy := VarToStr(Sender.DataController.Values[recIdx,0]);
             kb_inputf.kb_sb.Text:= dummy;
        end;
        gl_browse_f.Close;
        //ShowMessage(IntToStr(recIdx));
     finally
        glb_grtv.DataController.DataSet.EnableControls;
        dummy:='';
     end;
end;

end.
