unit kb_browse;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxControls, cxLookAndFeels,
  cxLookAndFeelPainters, cxClasses, dxLayoutContainer, dxLayoutControl,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxEdit, cxNavigator,
  Data.DB, cxDBData, cxGridLevel, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid;

type
  Tkb_browseF = class(TForm)
    kb_browse_dlcGroup_Root: TdxLayoutGroup;
    kb_browse_dlc: TdxLayoutControl;
    dxLayoutGroup1: TdxLayoutGroup;
    cxGrid1DBTableView1: TcxGridDBTableView;
    cxGrid1Level1: TcxGridLevel;
    cxGrid1: TcxGrid;
    dxLayoutItem1: TdxLayoutItem;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  kb_browseF: Tkb_browseF;

implementation

{$R *.dfm}

end.
