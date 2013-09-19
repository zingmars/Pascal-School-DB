unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
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
