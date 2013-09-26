unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.SqlExpr,
  Data.DBXSybaseASA, Bde.DBTables, Vcl.ComCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    SQLConnection1: TSQLConnection;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    ListView1: TListView;
    ListView2: TListView;
    ListView3: TListView;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;


implementation

{$R *.dfm}

uses SQLite3, SQLiteTable3;
var   slDBpath: string;
      sldb: TSQLiteDatabase;
      sltb: TSQLIteTable;
      sltb2: TSQLIteTable;
      sSQL: String;
      dieHardFix: String;

procedure TForm2.Button1Click(Sender: TObject);
begin
Unit2.Form2.Hide
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
//Ðo palaiþ tad, kad tiek parâdîta forma. lolnavdokumentâcija.
//Application.MessageBox( 'lol It exists','You just suck', MB_OK )
slDBPath := ExtractFilepath(application.exename)
+ '\pascal.db';
{
sldb := TSQLiteDatabase.Create(slDBPath);
sltb := slDb.GetTable('SELECT * FROM `skolotaji` WHERE `id` = 1');
StaticText1.Caption := sltb.FieldByName['vards'] + ' ' + sltb.FieldByName['uzvards'];
dieHardFix := sltb.FieldByName['prieksmets'];
StaticText3.Caption := sltb.FieldByName['kabinets'];
sltb2 := slDb.GetTable('SELECT * FROM `prieksmeti` WHERE `textid` = "'+ dieHardFix +'"');

StaticText2.Caption := sltb2.FieldByName['nosaukums'];
end;
}

end;
procedure TForm2.FormCreate(Sender: TObject);
begin
//Tiek izsaukts tad, kad tiek palaista programma.
//Application.MessageBox( 'It exists','You just suck', MB_OK )
end;

end.
