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
    Function ReturnData : integer;
  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  Form1: TForm1;
  testint: integer;

implementation


{$R *.dfm}

uses Unit2;

procedure TForm1.Button1Click(Sender: TObject);
begin
//Atver otro formu.
//TODO: pārsūtīt datus no textbox un combobox uz Form2.
//Unit2.Form2.FormCreate(sender as TComponent, testint);
testint := 1337;

Application.CreateForm(TForm2, Form2);
Form2.Show;
//Pirmo formu neslēpjam, jo sanāks tā, ka šī programma visu laiku griezīsies fonā.
//Form1.Hide;
//TODO: Form1.Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ComboBox1.AddItem('Kabineta nr.', nil);
  ComboBox1.AddItem('Skolotāja', nil);
  ComboBox1.AddItem('Atslēgvārdiem', nil);
  ComboBox1.AddItem('Priekšmeta',nil);
end;

function TForm1.ReturnData: integer;
begin
//Rezultātu logs izsauc šo funkciju lai iegūtu informāciju.
Result := testint;
end;

end.

