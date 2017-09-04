unit frmLogin;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniGUIBaseClasses, uniButton,
  uniCalendar, Vcl.Imaging.pngimage, uniImage, uniLabel;

type
  TUniLoginForm1 = class(TUniLoginForm)
    UniButton1: TUniButton;
    UniButton2: TUniButton;
    UniImage1: TUniImage;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    procedure UniButton1Click(Sender: TObject);
    procedure UniButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

function UniLoginForm1: TUniLoginForm1;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication;

function UniLoginForm1: TUniLoginForm1;
begin
  Result := TUniLoginForm1(UniMainModule.GetFormInstance(TUniLoginForm1));
end;

procedure TUniLoginForm1.UniButton1Click(Sender: TObject);
begin
  ModalResult := mrOk;
end;

procedure TUniLoginForm1.UniButton2Click(Sender: TObject);
begin
  MessageDlg('Login Failed!', mtError, [mbAbort]);
end;

initialization
  RegisterAppFormClass(TUniLoginForm1);

end.
