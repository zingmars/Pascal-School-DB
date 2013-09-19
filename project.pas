﻿unit project;
interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, SQLConnection1;

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

procedure TForm1.Button1Click(Sender: TObject);
begin
//Application.MessageBox('Ķipa tu atradi','title',MB_OK);
  TSQLConnection1.Params.Add('Database=C:\pascal.db');
  try
    // Establish the connection.
    TSQLConnection1.Connected := true;
    Application.MessageBox('Sample Text','Connection established!',MB_OK)
  except
      ShowMessage('Exception raised with message');
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  ComboBox1.AddItem('Kabineta nr.', nil);
  ComboBox1.AddItem('Skolotāja', nil);
  ComboBox1.AddItem('Atslēgvārdiem', nil);
  ComboBox1.AddItem('Priekšmeta',nil);
end;

end.

