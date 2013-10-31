unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.SqlExpr,
  Data.DBXSybaseASA, Bde.DBTables, Vcl.ComCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    ListView1: TListView;
    Button2: TButton;

    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Button2Click(Sender: TObject);
  private
  public
  end;

var
  Form2: TForm2;


implementation

{$R *.dfm}

uses SQLite3, SQLiteTable3, project;
var   //SQL
      slDBpath: string;
      sSQL: String;
      sldb: TSQLiteDatabase;
      sltb: TSQLiteTable;
      sltb2: TSQLiteTable;

      //Logs
      error: boolean;
      Itm: TListItem;
      loop: integer;

procedure TForm2.Button1Click(Sender: TObject);
begin
  Unit2.Form2.Close;
  Form1.Show;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  Form1.Show;
  Form2.Close;
end;

//Aizveram programmu, jo mçs nemâkam properly tikt galâ ar logiem.
procedure TForm2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if Form1.Showing = false then
  Form1.Close;
end;

//Tiek izsaukts tad, kad tiek palaista forma.
procedure TForm2.FormCreate(Sender: TObject);
begin
//Datubâzes initializâcija
slDBPath := ExtractFilepath(application.exename) + '\pascal.db';
sldb := TSQLiteDatabase.Create(slDBPath);

//Pievienojam informâciju no datubâzes.
{
Kâ strâdâ:
Itm := ListView1.Items.Add;
Itm.Caption := <string>;
Item.SubItem.Add(<string); //pievieno datus nâkamajâ kolonâ. Iet pçc kârtas.
//Var pievienot tik substring, cik vajag, bet mums ir tikai 3 kolonas.
//Liekie subitems tiks ignorçti, un nebûs parâdîti.
}
case Form1.ComboBox1.ItemIndex of
  0: sSQL := 'select * from skolotaji where kabinets like ' + Form1.Edit1.Text;
  1: sSQL := 'select * from skolotaji where vards like "%' + Form1.Edit1.Text + '%"';
  2: sSQL := 'select * from skolotaji where prieksmets like "%' + Form1.Edit1.Text + '%"';
end;
sltb := slDb.GetTable(sSQL);

Try
  begin
    for loop := 0 to sltb.RowCount-1 do
      begin
        Itm := ListView1.Items.Add;
        Itm.Caption := sltb.FieldByName['vards'];
        sltb2 := slDb.GetTable('select nosaukums from prieksmeti where textid = "' + sltb.FieldByName['prieksmets'] + '"');
        Itm.SubItems.Add(sltb2.FieldByName['nosaukums']);
        Itm.SubItems.Add(sltb.FieldByName['kabinets']);
        error := true;
        sltb.Next
      end;
  end;
Except
MessageBox(0, 'This box should never be visible.', 'Catastrophic failure.', +mb_OK +mb_ICONWARNING)
end;

if not error then
  begin
    MessageBox(0, 'Nekas netika atrasts! Pârbaudi kveriju un mçìini velreiz!', 'Informâcija', +mb_OK +mb_ICONWARNING);
  end;
end;

end.
