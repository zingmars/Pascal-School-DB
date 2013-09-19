unit SQLConnection1;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.SqlExpr;

type
  TSQLConnection1 = class(TSQLConnection)
  private
    { Private declarations }
  protected
    { Protected declarations }
  public
    { Public declarations }
  published
    { Published declarations }
  end;

procedure Register;

implementation

procedure Register;
begin
  RegisterComponents('Connected', [TSQLConnection1]);
  //
end;

end.
