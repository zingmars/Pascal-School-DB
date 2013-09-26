unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.SqlExpr,
  Data.DBXSybaseASA;

type
  TForm2 = class(TForm)
    Button1: TButton;
    SQLConnection1: TSQLConnection;
    StaticText1: TStaticText;
    StaticText2: TStaticText;
    StaticText3: TStaticText;
    procedure FormCreate(Sender: TObject);
    procedure FormActivate(Sender: TObject);
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
      sSQL: String;

procedure TForm2.FormActivate(Sender: TObject);
begin
//Ðo palaiþ tad, kad tiek parâdîta forma. lolnavdokumentâcija.
//Application.MessageBox( 'lol It exists','You just suck', MB_OK )
slDBPath := ExtractFilepath(application.exename)
+ '\pascal.db';
sldb := TSQLiteDatabase.Create(slDBPath);
//sSQL := 'SELECT * FROM `prieksmeti` WHERE `id` = 1;';
//sSQL := 'SELECT * FROM dbname.sqlite_master WHERE type="table"';

sltb := slDb.GetTable('SELECT * FROM dbname.sqlite_master WHERE type="table"');
StaticText1.Caption := inttostr(sltb.FieldAsInteger(sltb.FieldIndex['textid']))
//sldb.ExecSQL(sSQL);
//StaticText1.Caption := '';
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
//Tiek izsaukts tad, kad tiek palaista programma.
//Application.MessageBox( 'It exists','You just suck', MB_OK )
end;

end.
