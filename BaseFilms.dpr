program BaseFilms;

uses
  Forms,
  Unit_glavn in 'Unit_glavn.pas' {Form_glavn},
  Unit_description in 'Unit_description.pas' {Form_desc};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.Title := 'База фильмов';
  Application.CreateForm(TForm_glavn, Form_glavn);
  Application.CreateForm(TForm_desc, Form_desc);
  Application.Run;
end.
