unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdIcmpClient, ExtCtrls;

type
  TForm1 = class(TForm)
    Button1: TButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    RadioButton6: TRadioButton;
    RadioButton7: TRadioButton;
    RadioButton8: TRadioButton;
    RadioButton9: TRadioButton;
    RadioButton10: TRadioButton;
    RadioButton11: TRadioButton;
    RadioButton12: TRadioButton;
    RadioButton13: TRadioButton;
    RadioButton14: TRadioButton;
    RadioButton15: TRadioButton;
    RadioButton16: TRadioButton;
    RadioButton17: TRadioButton;
    RadioButton18: TRadioButton;
    RadioButton19: TRadioButton;
    RadioButton20: TRadioButton;
    RadioButton21: TRadioButton;
    RadioButton22: TRadioButton;
    RadioButton23: TRadioButton;
    RadioButton24: TRadioButton;
    RadioButton25: TRadioButton;
    RadioButton26: TRadioButton;
    RadioButton27: TRadioButton;
    RadioButton28: TRadioButton;
    RadioButton29: TRadioButton;
    RadioButton30: TRadioButton;
    RadioButton31: TRadioButton;
    RadioButton32: TRadioButton;
    RadioButton33: TRadioButton;
    RadioButton34: TRadioButton;
    RadioButton35: TRadioButton;
    RadioButton36: TRadioButton;
    RadioButton37: TRadioButton;
    RadioButton38: TRadioButton;
    RadioButton39: TRadioButton;
    RadioButton40: TRadioButton;
    RadioButton41: TRadioButton;
    RadioButton42: TRadioButton;
    RadioButton43: TRadioButton;
    RadioButton44: TRadioButton;
    RadioButton45: TRadioButton;
    Timer1: TTimer;
    procedure Button1Click(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

  TMyThread = class(TThread)
    private
    { Private declarations }
  protected
    procedure Execute; override;
  end;

var
  Form1: TForm1;
//Íóæíî ââåñòè ïåðåìåííóþ êëàññà TMyThread
  MyThread: TMyThread;
  SUI:integer;

implementation

{$R *.dfm}
procedure TMyThread.Execute;
var
IdIcmpClient: TIdIcmpClient;
Mycomponent:Tcomponent;
ip:string;
begin
//Çäåñü îïèñûâàåòñÿ êîä, êîòîðûé áóäåò âûïîëíÿòüñÿ â ïîòîêå
ip:='192.168.137.1';
SUI:=1;
IdIcmpClient:=TIdIcmpClient.Create(nil);
while SUI<>46 do
begin

try
IdIcmpClient.Host:=ip;
IdIcmpClient.Ping();

 MyComponent := form1.FindComponent('Radiobutton'+inttostr(SUI));
 if MyComponent <> nil then
   if idICMPClient.ReplyStatus.BytesReceived <> 0 then
begin
    Tradiobutton(Mycomponent).Color:=CLlime;
    end
    else
    begin
    Tradiobutton(Mycomponent).Color:=CLRED;
    end;
 Tradiobutton(Mycomponent).Hint:=IdIcmpClient.Host;
 Tradiobutton(Mycomponent).ShowHint:=true;
  SUI:=SUI+1;
  if SUI =2 then ip:='192.168.137.1';
  if SUI =3 then ip:='192.168.137.1';
  if SUI =4 then ip:='192.168.137.1';
  if SUI =5 then ip:='192.168.137.1';
  if SUI =6 then ip:='192.168.137.1';
  if SUI =7 then ip:='192.168.137.1';
  if SUI =8 then ip:='192.168.137.1';
  if SUI =9 then ip:='192.168.137.1';
  if SUI =10 then ip:='192.168.137.1';

  if SUI =11 then ip:='192.168.137.1';
  if SUI =12 then ip:='192.168.137.1';
  if SUI =13 then ip:='192.168.137.1';
  if SUI =14 then ip:='192.168.137.1';
  if SUI =15 then ip:='192.168.137.1';
  if SUI =16 then ip:='192.168.137.1';
  if SUI =17 then ip:='192.168.137.1';
  if SUI =18 then ip:='192.168.137.1';
  if SUI =19 then ip:='192.168.137.1';
  if SUI =20 then ip:='192.168.137.1';

  if SUI =21 then ip:='192.168.137.1';
  if SUI =22 then
  finally

end;
end;
IdIcmpClient.Destroy;
MyThread.Terminate;
end;




procedure TForm1.Button1Click(Sender: TObject);
begin
MyThread:=TMyThread.Create(False);
MyThread.Priority:=tpNormal;
MyThread.FreeOnTerminate:=true;

end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
button1.Click;
end;

procedure TForm1.FormActivate(Sender: TObject);
begin
button1.Click;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
MyThread.Terminate;
end;

end.
