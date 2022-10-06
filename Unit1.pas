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
//Нужно ввести переменную класса TMyThread
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
//Здесь описывается код, который будет выполняться в потоке
ip:='10.17.108.195';
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
  if SUI =2 then ip:='10.17.108.227';
  if SUI =3 then ip:='10.17.109.3';
  if SUI =4 then ip:='10.17.109.35';
  if SUI =5 then ip:='10.17.109.67';
  if SUI =6 then ip:='10.17.109.100';
  if SUI =7 then ip:='10.17.7.129';
  if SUI =8 then ip:='10.17.128.67';
  if SUI =9 then ip:='10.17.109.131';
  if SUI =10 then ip:='10.17.93.3';

  if SUI =11 then ip:='10.17.128.34';
  if SUI =12 then ip:='10.17.92.193';
  if SUI =13 then ip:='172.21.212.38';
  if SUI =14 then ip:='10.17.109.227';
  if SUI =15 then ip:='10.17.110.3';
  if SUI =16 then ip:='10.17.110.35';
  if SUI =17 then ip:='10.17.110.67';
  if SUI =18 then ip:='10.17.110.98';
  if SUI =19 then ip:='10.17.110.131';
  if SUI =20 then ip:='10.17.110.163';

  if SUI =21 then ip:='10.17.110.195';
  if SUI =22 then ip:='10.17.119.195';
  if SUI =23 then ip:='10.17.119.225';
  if SUI =24 then ip:='10.17.110.226';
  if SUI =25 then ip:='10.17.120.3';
  if SUI =26 then ip:='10.17.111.2';
  if SUI =27 then ip:='10.17.111.35';
  if SUI =28 then ip:='10.17.111.68';
  if SUI =29 then ip:='10.17.111.99';
  if SUI =30 then ip:='10.17.128.98';

  if SUI =31 then ip:='10.17.92.129';
  if SUI =32 then ip:='10.17.93.131';
  if SUI =33 then ip:='87.225.97.2';
  if SUI =34 then ip:='10.17.120.162';
  if SUI =35 then ip:='10.17.213.133';
  if SUI =36 then ip:='10.17.213.133';
  if SUI =37 then ip:='10.17.94.3';
  if SUI =38 then ip:='10.17.94.67';
  if SUI =39 then ip:='10.17.94.130';
  if SUI =40 then ip:='10.17.213.149';

  if SUI =41 then ip:='10.17.112.3';
  if SUI =42 then ip:='10.17.112.34';
  if SUI =43 then ip:='10.17.112.68';
  if SUI =44 then ip:='10.17.112.100';
  if SUI =45 then ip:='10.17.112.131';
  if SUI =46 then
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
