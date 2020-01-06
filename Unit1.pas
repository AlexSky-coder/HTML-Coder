unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.OleCtrls, SHDocVw,
  Vcl.StdCtrls, Vcl.ComCtrls, Vcl.Menus,shellapi;

type
  TForm1 = class(TForm)
    Memo1: TMemo;
    Panel1: TPanel;
    TrackBar1: TTrackBar;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    MainMenu1: TMainMenu;
    N1: TMenuItem;
    Button6: TButton;
    SaveDialog1: TSaveDialog;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Button7: TButton;
    FD1: TFontDialog;
    Button8: TButton;
    ColorDialog1: TColorDialog;
    Button9: TButton;
    Button10: TButton;
    Button11: TButton;
    procedure TrackBar1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N3Click(Sender: TObject);
    procedure N6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  ms0,ms1:integer;
  htmlfile:string;
implementation

{$R *.dfm}

procedure TForm1.Button10Click(Sender: TObject);
var s:string;
begin
  s:=memo1.SelText;
  if s='' then memo1.SelText:=
    #13+#10+' <form action="http://mysyte.html" target="_blank">'+
    #13+#10+'<button>Нажми сюда!</button>'+
    #13+#10+'</form>'+#13+#10
  else memo1.SelText:=
    #13+#10+' <form action="http://mysyte.html" target="_blank">'+
    #13+#10+'<button>'+s+'</button>'+
    #13+#10+'</form>'+#13+#10;
  s:='';
end;

procedure TForm1.Button11Click(Sender: TObject);
var s,ss:string;
begin
  ss:=memo1.SelText;
  if ss='' then ss:='Столбец 2';
  s:='<table width="100%">'+#13+#10
  +'<tr>'+#13+#10
  +'<td width="20%">Столбец 1'+'</td>'+#13+#10
  +'<td width="60%">'+ss+'</td>'+#13+#10
  +'<td width="20%">Столбец 3'+'</td>'+#13+#10
  +'</tr>' +#13+#10
  +'</table>'+#13+#10
  ;
  memo1.SelText:=s;
end;

procedure TForm1.Button1Click(Sender: TObject);
var s:string;
begin
if Memo1.SelText='' then begin
  if opendialog1.Execute then
  begin
    s:=extractfilepath(paramstr(0))+extractfilename(opendialog1.FileName);
    if (s<>opendialog1.FileName) then copyfile(pchar(opendialog1.FileName),pchar(s),true);
    memo1.SelText:='<img src="'+extractfilename(opendialog1.FileName)+'" width="200" height="200">';
  end;
end else
  begin
    memo1.SelText:='<img src="'+Memo1.SelText+'" width="200" height="200">';
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  memo1.SelText:='<b>'+memo1.SelText+'</b>';
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  memo1.SelText:='<I>'+memo1.SelText+'</I>';
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  memo1.SelText:='<div>'+memo1.SelText+'</div>';
end;

procedure TForm1.Button5Click(Sender: TObject);
var s:string;
begin
  s:=memo1.SelText;
  if s='' then s:='Нажми сюда!';
  memo1.SelText:='<a href="www.mysite.html">'+s+'</a>';
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
  memo1.SelText:='<del>'+memo1.SelText+'</<del>';
end;

procedure TForm1.Button7Click(Sender: TObject);
var s:string;
begin
  if FD1.Execute then begin
    s:='<font size="'+inttostr(FD1.Font.Size)+'" color="#'+
    inttohex(FD1.Font.Color)+'" bold="'+FD1.Font.Name+'">';
    memo1.SelText:=s+memo1.SelText+'</font>';
  end;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
memo1.SelText:='<U>'+memo1.SelText+'</U>';
end;

procedure TForm1.Button9Click(Sender: TObject);
begin
if colordialog1.Execute then
  begin
  memo1.SelText:='#'+inttohex(colordialog1.Color);
  end;
end;

procedure TForm1.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
case MessageBox(Handle,pchar('Сохранить файл ?'),pchar(htmlfile),35) of
2:CanClose:=false;
6:begin
  OpenDialog1.FileName:=htmlfile;
  if OpenDialog1.Execute then memo1.Lines.SaveToFile(htmlfile);
  end;
end;

end;

procedure TForm1.FormCreate(Sender: TObject);
begin
htmlfile:=paramstr(1);
if htmlfile<>'' then memo1.Lines.LoadFromFile(htmlfile) else
htmlfile:=ExtractFilePath(ParamStr(0))+'mysyte.html';
form1.Caption:=htmlfile;
end;

procedure TForm1.N2Click(Sender: TObject);
begin
  if opendialog1.Execute then begin
    htmlfile:=opendialog1.FileName;
    memo1.Lines.LoadFromFile(htmlfile);
    form1.Caption:=htmlfile;
  end;
end;

procedure TForm1.N3Click(Sender: TObject);
begin
  if savedialog1.Execute then begin
    htmlfile:=savedialog1.FileName;
    memo1.Lines.SaveToFile(htmlfile);
    form1.Caption:=htmlfile;
  end;
end;

procedure TForm1.N6Click(Sender: TObject);
begin
  if htmlfile='' then
    begin
      htmlfile:=extractfilepath(paramstr(0))+'mysyte.html';
      form1.Caption:=htmlfile;
    end;
  memo1.Lines.SaveToFile(htmlfile);
  ShellExecute (Form1.Handle, nil, pchar(htmlfile),'', nil, SW_show);
end;

procedure TForm1.TrackBar1Change(Sender: TObject);
begin
  memo1.Font.Size:=TrackBar1.Position;
end;

end.
