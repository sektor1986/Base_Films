unit Unit_glavn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, DBCtrls, sDBMemo, GridsEh, DBGridEh, DBClient,
  pFIBClientDataSet, ExtCtrls, sPanel, sDBNavigator, Buttons, ExtDlgs, sDialogs,
  Menus, Clipbrd, EhLibCDS;

type
  TForm_glavn = class(TForm)
    DataSource1: TDataSource;
    DBGridEh1: TDBGridEh;
    sDBMemo1: TsDBMemo;
    sDBNavigator1: TsDBNavigator;
    DBImage1: TDBImage;
    sOpenPictureDialog1: TsOpenPictureDialog;
    BitBtn1: TBitBtn;
    PopupMenu1: TPopupMenu;
    N1: TMenuItem;
    MainMenu1: TMainMenu;
    ClientDataSet1: TClientDataSet;
    N2: TMenuItem;
    ClientDataSet1Name: TStringField;
    ClientDataSet1Director: TStringField;
    ClientDataSet1DateVihoda: TDateField;
    ClientDataSet1Type: TStringField;
    ClientDataSet1IMDB: TFloatField;
    ClientDataSet1Desc: TMemoField;
    ClientDataSet1Image: TGraphicField;
    N3: TMenuItem;
    N4: TMenuItem;
    procedure BitBtn1Click(Sender: TObject);
    procedure N1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure N2Click(Sender: TObject);
    procedure N4Click(Sender: TObject);
    procedure sDBMemo1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form_glavn: TForm_glavn;

implementation

uses Unit_description;

{$R *.dfm}

procedure TForm_glavn.BitBtn1Click(Sender: TObject);
begin
  ClientDataSet1.Edit;
  if sOpenPictureDialog1.Execute then
    DBImage1.Picture.LoadFromFile(sOpenPictureDialog1.FileName);
  ClientDataSet1.Post;
end;

procedure TForm_glavn.FormShow(Sender: TObject);
begin
  ClientDataSet1.Open;
  ClientDataSet1.LogChanges := False;
end;

procedure TForm_glavn.N1Click(Sender: TObject);
begin
  if ClientDataSet1.State in [dsEdit,dsInsert]  then
    ClientDataSet1.Post;
  try
    ClientDataSet1.Edit;
    DBImage1.Picture.LoadFromClipboardFormat(cf_BitMap, ClipBoard.GetAsHandle(cf_Bitmap), 0);
    ClientDataSet1.Post;
  except

  end;
end;

procedure TForm_glavn.N2Click(Sender: TObject);
begin
  if ClientDataSet1.Eof then
    Exit;
  if not (ClientDataSet1.State = dsEdit) then
    ClientDataSet1.Edit;
  ClientDataSet1Image.Clear;
  ClientDataSet1.Post;
end;

procedure TForm_glavn.N4Click(Sender: TObject);
begin
  Form_glavn.AlphaBlend := N4.Checked;
end;

procedure TForm_glavn.sDBMemo1DblClick(Sender: TObject);
begin
  Form_desc.sMemo1.Text := sDBMemo1.Text;
  AlphaBlend := True;
  Form_desc.ShowModal;
end;

end.
