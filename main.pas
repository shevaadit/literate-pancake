unit main;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, cxGraphics, cxLookAndFeels,
  cxLookAndFeelPainters, Vcl.Menus, Vcl.StdCtrls, cxButtons, Data.DB, dxmdaset,
  W7Classes, W7Bars, AdvOfficeStatusBar, AdvOfficeStatusBarStylers, AdvMenus,
  AdvMenuStylers, cxControls, cxContainer, cxEdit, cxLabel, AdvNavBar,
  dxStatusBar, AdvOfficePager, AdvOfficePagerStylers, AdvSmoothMegaMenu,
  AdvAppStyler, cxClasses, dxLayoutContainer, dxLayoutControl, AdvSmoothButton,
  Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.ToolWin, dxNavBarBase, dxNavBarCollns,
  dxNavBar, dxGDIPlusClasses, cxPC, dxBarBuiltInMenu, dxTabbedMDI,
  AdvOfficeTabSet, AdvOfficeTabSetStylers, AdvTabSet, AdvSmoothTabPager,
  cxStyles, cxCustomData, cxFilter, cxData, cxDataStorage, cxNavigator,
  dxLayoutcxEditAdapters, dxLayoutControlAdapters, cxMemo, Vcl.WinXCtrls,
  cxGridLevel, cxGridCustomTableView, cxGridTableView, cxGridCustomView, cxGrid,
  cxMaskEdit, cxDropDownEdit, cxTextEdit, cxSplitter, AdvPageControl, gl_browse,
  gl_edit, gl_input, gl_posting, kb_edit, kb_input, kb_posting, u_gl_module;

type
  Tmainmenu = class(TForm)
    StatusBar1: TStatusBar;
    navbar_panel: TPanel;
    Splitter1: TSplitter;
    dxNavBar1: TdxNavBar;
    kas_bank: TdxNavBarGroup;
    Edit_kas: TdxNavBarItem;
    Input_kas: TdxNavBarItem;
    Posting_kas: TdxNavBarItem;
    View_kas: TdxNavBarItem;
    tabMDIMan: TdxTabbedMDIManager;
    general_ledger: TdxNavBarGroup;
    Input_GL: TdxNavBarItem;
    Edit_GL: TdxNavBarItem;
    Posting_GL: TdxNavBarItem;
    View_GL: TdxNavBarItem;
    report: TdxNavBarGroup;
    procedure Input_kasClick(Sender: TObject);
    procedure Posting_kasClick(Sender: TObject);
    procedure Edit_kasClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Input_GLClick(Sender: TObject);
    procedure Posting_GLClick(Sender: TObject);
    procedure Edit_GLClick(Sender: TObject);
    procedure View_GLClick(Sender: TObject);
    procedure View_kasClick(Sender: TObject);
  private
    { Private declarations }
//    procedure CreateChildForm(const childName: string);
  public
    { Public declarations }
  end;

var
  mainmenu: Tmainmenu;

implementation

{$R *.dfm}

procedure Tmainmenu.Edit_GLClick(Sender: TObject);
begin
  try
  finally

  end;
end;

procedure Tmainmenu.Edit_kasClick(Sender: TObject);
begin
  try
     //Tkb_editF.Create(self);
     kb_editF.Show;
  finally

  end;
end;

procedure Tmainmenu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
     Action := caFree;
end;

procedure Tmainmenu.Input_GLClick(Sender: TObject);
begin
  try
     //Tgl_inputF.Create(Self);
  finally

  end;
end;

procedure Tmainmenu.Input_kasClick(Sender: TObject);
begin
  try
     //Tkb_inputF.Create(self);
     kb_inputF.ShowModal;
  finally

  end;
end;

procedure Tmainmenu.Posting_GLClick(Sender: TObject);
begin
  try
     //Tgl_postingF.Create(self);
  finally

  end;
end;

procedure Tmainmenu.Posting_kasClick(Sender: TObject);
begin
  try
     //Tkb_postingF.Create(Self);
  finally

  end;
end;

procedure Tmainmenu.View_GLClick(Sender: TObject);
begin
  try

  finally

  end;
end;

procedure Tmainmenu.View_kasClick(Sender: TObject);

var tabsheet: TTabSheet;

begin
  try
//     tabsheet := tabsheet.Create(PageControl1);
//     tabsheet.Caption:= 'test';
//     tabsheet.PageControl:= PageControl1;
//     tabsheet.TabVisible:= true;
//     tabsheet.Visible:= true;

//     gl_browse_f.Parent:= tabsheet;
//     gl_browse_f.Show;
  finally

  end;
end;

end.
