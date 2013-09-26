unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.SqlExpr;

type
  TForm2 = class(TForm)
    Button1: TButton;
    SQLConnection1: TSQLConnection;
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

uses SQLConnection1;

procedure TForm2.Button1Click(Sender: TObject);
begin
SQLConnection1.Params.Add('Database = %cd%\pascal.db');
try
   // Establish the connection.
    SQLConnection1.Connected := true;
    //executeButton.Enabled := true;
    //outputMemo.Text := 'Connection established!';
  except
    on E: EDatabaseError do
      ShowMessage('Exception raised with message' + E.Message);
  end;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
//Ðo palaiþ tad, kad tiek parâdîta forma. lolnavdokumentâcija.
//Application.MessageBox( 'lol It exists','You just suck', MB_OK )
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
//Tiek izsaukts tad, kad tiek palaista programma.
//Application.MessageBox( 'It exists','You just suck', MB_OK )
end;

end.
