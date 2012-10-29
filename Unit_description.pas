unit Unit_description;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, sMemo;

type
  TForm_desc = class(TForm)
    sMemo1: TsMemo;
    procedure sMemo1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_desc: TForm_desc;

implementation

uses Unit_glavn;

{$R *.dfm}

procedure TForm_desc.sMemo1DblClick(Sender: TObject);
begin
  Form_glavn.AlphaBlend := False;
  Close;
end;

end.
