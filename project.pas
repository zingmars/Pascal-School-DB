unit project;
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    Function ReturnData : string;
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;

implementation
{$R *.dfm}

uses Unit2;

procedure TForm1.Button1Click(Sender: TObject);
begin
if ComboBox1.ItemIndex = -1 then
MessageBox(0, 'Klume', 'Ludzu noradiet meklesanas veidu', +mb_OK +mb_ICONWARNING)
//ShowMessage('')
else
begin
//Atver otro formu.
Application.CreateForm(TForm2, Form2);
Form2.Show;
Form1.Hide;
end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ComboBox1.AddItem('Kabineta nr.', nil);
  ComboBox1.AddItem('Skolotāja', nil);
  ComboBox1.AddItem('Atslēgvārdiem', nil);
  ComboBox1.AddItem('Priekšmeta',nil);
end;

function TForm1.ReturnData: string;
begin
//Rezultātu logs izsauc šo funkciju lai iegūtu informāciju.
Result := Edit1.Text;
end;

end.

