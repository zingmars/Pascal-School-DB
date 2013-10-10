// nahuj bïad githubs nedod garumzîmes. Pizdjec bïad.
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
    ListView1: TListView;
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

uses SQLite3, SQLiteTable3, project;
var   slDBpath: string;
      sldb: TSQLiteDatabase;
      sltb: TSQLIteTable;
      sltb2: TSQLIteTable;
      sSQL: String;

      Col: TListColumn;
      Itm: TListItem;

      testing: integer;

procedure TForm2.Button1Click(Sender: TObject);
begin
Unit2.Form2.Hide;
Form1.Show;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
//Ðo palaiþ tad, kad tiek parâdîta forma. lolnavdokumentâcija.
//Piezîme - to palaiþ katru reizi, kad tiek fokusçts dotais logs.
//aka: TODO: Move to formcreate();
//Datubâze
slDBPath := ExtractFilepath(application.exename)
+ '\pascal.db';

//Pievienojam kolonas (BUG: Pirmâs kolonas nosaukums negrib centrçties)
//Vispâr tâ izskatâs labâk. Nelabot.
//Kolonas ir tâdâ kârtîbâ, kâdâ tu tâs pievieno.
{ Kâ strâdâ (jo dokumentâcija neeksistç):
Col := ListView1.Columns.add;
Col.Caption := <string>;
Col.Alignment := <integer>; //iespçjamie varianti: taLeftJustify, taRightJustify, taCenter.
Col.Width := <integer>; }
Col := ListView1.Columns.Add;
Col.Caption := 'Pasniedzçjs';
Col.Alignment := taCenter;
Col.Width := ListView1.Width div 3;

Col := ListView1.Columns.Add;
Col.Caption := 'Priekðmets';
Col.Alignment := taCenter;
Col.Width := ListView1.Width div 3;

Col := ListView1.Columns.Add;
Col.Caption := 'Kabinets';
Col.Alignment := taCenter;
Col.Width := ListView1.Width div 3;


//Pievienojam visu ko var pievienot. (TODO: Izvelkam SQL)
//BUG: Var iezîmçt tikai 1. kolonas datus. Vainoju Embarcadero. IDGAF.
{ Kâ strâdâ:
Itm := ListView1.Items.Add;
Itm.Caption := <string>;
Item.SubItem.Add(<string); //pievieno datus nâkamajâ kolonâ. Iet pçc kârtas.
//Var pievienot tik substring, cik vajag, bet mums ir tikai 3 kolonas.
//Liekie subitems tiks ignorçti, un nebûs parâdîti. }
Itm := ListView1.Items.Add;
Itm.Caption := 'test';

Itm := ListView1.Items.Add;
Itm.Caption := IntToStr(testing);
Itm.SubItems.Add('tester');
Itm.SubItems.Add('tester2');

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
//Tiek izsaukts tad, kad tiek palaista programma. Teorçtiski. Realitâtç ðî figòa nestrâdâ.
end;

end.
