﻿unit project;
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
//Atver otro formu.
//TODO: pārsūtīt datus no textbox un combobox uz Form2.
Unit2.Form2.Show;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ComboBox1.AddItem('Kabineta nr.', nil);
  ComboBox1.AddItem('Skolotāja', nil);
  ComboBox1.AddItem('Atslēgvārdiem', nil);
  ComboBox1.AddItem('Priekšmeta',nil);
end;

end.

