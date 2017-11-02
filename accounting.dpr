program accounting;

uses
  Vcl.Forms,
  main in 'main.pas' {mainmenu},
  gl_edit in 'gl_form\gl_edit.pas' {gl_editF},
  gl_input in 'gl_form\gl_input.pas' {gl_inputF},
  gl_posting in 'gl_form\gl_posting.pas' {gl_postingF},
  kb_edit in 'kb_form\kb_edit.pas' {kb_editF},
  kb_input in 'kb_form\kb_input.pas' {kb_inputF},
  kb_posting in 'kb_form\kb_posting.pas' {kb_postingF},
  gl_browse in 'browse_form\gl_browse.pas' {gl_browse_f},
  u_gl_module in 'unit_module\u_gl_module.pas' {u_gl_moduleF},
  kb_browse in 'browse_form\kb_browse.pas' {kb_browseF};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tmainmenu, mainmenu);
  Application.CreateForm(Tu_gl_moduleF, u_gl_moduleF);
  Application.CreateForm(Tgl_browse_f, gl_browse_f);
  Application.CreateForm(Tgl_editF, gl_editF);
  Application.CreateForm(Tgl_inputF, gl_inputF);
  Application.CreateForm(Tgl_postingF, gl_postingF);
  Application.CreateForm(Tkb_editF, kb_editF);
  Application.CreateForm(Tkb_inputF, kb_inputF);
  Application.CreateForm(Tkb_postingF, kb_postingF);
  Application.CreateForm(Tkb_browseF, kb_browseF);
  Application.Run;
end.




















