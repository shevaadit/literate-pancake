unit gl_b_frame;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes,
  Vcl.Graphics, Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxStyles, cxCustomData, cxFilter,
  cxData, cxDataStorage, cxEdit, cxNavigator, Data.DB, cxDBData, cxTextEdit,
  dxLayoutContainer, cxGridLevel, cxGridCustomTableView, cxGridTableView,
  cxGridDBTableView, cxClasses, cxGridCustomView, cxGrid, dxLayoutControl;

type
  Tglb_frame = class(TFrame)
    gl_browser_dlc: TdxLayoutControl;
    glb_gr: TcxGrid;
    glb_grtv: TcxGridDBTableView;
    glb_grtvaccount_code: TcxGridDBColumn;
    glb_grtvaccount_name: TcxGridDBColumn;
    glb_grtvname_company: TcxGridDBColumn;
    glb_grtvdivisi_name: TcxGridDBColumn;
    glb_grl: TcxGridLevel;
    gl_browser_dlcGroup_Root: TdxLayoutGroup;
    dxLayoutGroup2: TdxLayoutGroup;
    dxLayoutItem3: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}

end.
