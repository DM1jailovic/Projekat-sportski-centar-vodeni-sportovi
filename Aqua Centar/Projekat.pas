unit Projekat;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.TabControl, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, FMX.Layouts,
  FMX.Calendar, FMX.ActnList, System.Actions, System.ImageList, FMX.ImgList,
  FMX.MultiView, FMX.Effects, FMX.Grid, System.Rtti, FMX.Grid.Style,
  FMX.ScrollBox, Unit2;

type
  TfMain = class(TForm)
    tcMain: TTabControl;
    tiRegistration: TTabItem;
    tiLogin: TTabItem;
    bgLogin: TImage;
    bgRegistration: TImage;
    loginRectangle: TImage;
    passwordSpace: TEdit;
    question1: TLabel;
    loginButton: TCornerButton;
    StyleBook1: TStyleBook;
    register: TLabel;
    Logo: TImage;
    regRectangle: TImage;
    regPasswordSpace: TEdit;
    regButton: TCornerButton;
    regEmailSpace: TEdit;
    repeatPasswordSpace: TEdit;
    RegLabel: TLabel;
    tiWelcome: TTabItem;
    bgWelcome: TImage;
    logoWelcome: TImage;
    continueButton: TCornerButton;
    tiUser: TTabItem;
    bgUser: TImage;
    userPicture: TImage;
    userName: TLabel;
    user: TLabel;
    dateCreated: TLabel;
    emailSpace: TEdit;
    tiCalendar: TTabItem;
    bgCalendar: TImage;
    Calendar1: TCalendar;
    tiTime: TTabItem;
    bgTime: TImage;
    Image19: TImage;
    time1: TLabel;
    time2: TLabel;
    time3: TLabel;
    time4: TLabel;
    tiHalls: TTabItem;
    tiCheck: TTabItem;
    bgHall: TImage;
    Image24: TImage;
    hall1: TLabel;
    hall2: TLabel;
    hall3: TLabel;
    bgCheck: TImage;
    check: TLabel;
    reserveButton: TCornerButton;
    tiHome: TTabItem;
    bgHome: TImage;
    newsBox: TScrollBox;
    Image30: TImage;
    Image31: TImage;
    Image32: TImage;
    Image33: TImage;
    Image34: TImage;
    Label12: TLabel;
    TabItem6: TTabItem;
    RoundRect7: TRoundRect;
    Image38: TImage;
    Image39: TImage;
    Image40: TImage;
    ActionList1: TActionList;
    ChangeTabAction1: TChangeTabAction;
    ImageList1: TImageList;
    ChangeTabAction2: TChangeTabAction;
    ChangeTabAction3: TChangeTabAction;
    ChangeTabAction4: TChangeTabAction;
    RoundRect8: TRoundRect;
    Panel4: TPanel;
    Rectangle4: TRectangle;
    Image41: TImage;
    Panel5: TPanel;
    Rectangle5: TRectangle;
    Image42: TImage;
    Panel6: TPanel;
    Rectangle6: TRectangle;
    Image43: TImage;
    buttonMenu3: TRoundRect;
    Home4: TImage;
    Cal4: TImage;
    Ticket4: TImage;
    buttonMenu4: TRoundRect;
    Home5: TImage;
    Cal5: TImage;
    Ticket5: TImage;
    buttonMenu5: TRoundRect;
    Home6: TImage;
    Cal6: TImage;
    Ticket6: TImage;
    back3: TImage;
    back2: TImage;
    back1: TImage;
    SideBar: TMultiView;
    Menu: TImage;
    LoSB: TLayout;
    Rectangle1: TRectangle;
    Image35: TImage;
    Image36: TImage;
    Image37: TImage;
    Image44: TImage;
    Image45: TImage;
    Image46: TImage;
    Image51: TImage;
    nameSB: TLabel;
    roleSB: TLabel;
    Image52: TImage;
    Image47: TImage;
    Image48: TImage;
    Image49: TImage;
    Image50: TImage;
    ChangeTabAction5: TChangeTabAction;
    Image53: TImage;
    MultiView1: TMultiView;
    Layout1: TLayout;
    Rectangle2: TRectangle;
    Image54: TImage;
    Image55: TImage;
    Image56: TImage;
    Image57: TImage;
    Image58: TImage;
    Image59: TImage;
    Image60: TImage;
    Label18: TLabel;
    Label19: TLabel;
    Image61: TImage;
    Image62: TImage;
    Image63: TImage;
    Image64: TImage;
    Image65: TImage;
    Image66: TImage;
    MultiView2: TMultiView;
    Layout2: TLayout;
    Rectangle3: TRectangle;
    Image67: TImage;
    Image68: TImage;
    Image69: TImage;
    Image70: TImage;
    Image71: TImage;
    Image72: TImage;
    Image73: TImage;
    Label20: TLabel;
    Label21: TLabel;
    Image74: TImage;
    Image75: TImage;
    Image76: TImage;
    Image77: TImage;
    Image78: TImage;
    tiAdminCalendar: TTabItem;
    bgAdminCalendar: TImage;
    Calendar2: TCalendar;
    tiAdminHome: TTabItem;
    bgAdminHome: TImage;
    tiAdminSettings: TTabItem;
    bgAdminSettings: TImage;
    buttonMenu1: TRoundRect;
    Home2: TImage;
    Cal2: TImage;
    Ticket2: TImage;
    tiAdminUser: TTabItem;
    bgAdminUser: TImage;
    adminPicture: TImage;
    adminName: TLabel;
    adminLabel: TLabel;
    joinDate: TLabel;
    adminButtonMenu4: TRoundRect;
    tiTickets: TTabItem;
    bgTicket: TImage;
    GlowEffect1: TGlowEffect;
    RoundRect1: TRoundRect;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    reserveTermins: TImage;
    reserveEquipment: TImage;
    tiTermins: TTabItem;
    bgTermins: TImage;
    termin1: TImage;
    termin2: TImage;
    termin3: TImage;
    addTermin: TImage;
    back4: TImage;
    tiReservationView: TTabItem;
    bgReservationView: TImage;
    back5: TImage;
    reservationDate: TLabel;
    cancelButton: TCornerButton;
    hallName: TLabel;
    tiEquipment: TTabItem;
    bgEquipment: TImage;
    ChangeTabAction7: TChangeTabAction;
    back6: TImage;
    ChangeTabAction8: TChangeTabAction;
    equipment1: TImage;
    equipment6: TImage;
    equipment5: TImage;
    equipment4: TImage;
    equipment3: TImage;
    equipment2: TImage;
    tiEquipmentReservation: TTabItem;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    reserveEquipmentButton: TCornerButton;
    Image2: TImage;
    Image9: TImage;
    ChangeTabAction9: TChangeTabAction;
    ChangeTabAction10: TChangeTabAction;
    ChangeTabAction11: TChangeTabAction;
    RoundRect2: TRoundRect;
    Image10: TImage;
    Image11: TImage;
    Image12: TImage;
    RoundRect3: TRoundRect;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    nameSpace: TEdit;
    Image16: TImage;
    ChangeTabAction12: TChangeTabAction;
    adminHome3: TImage;
    adminSettings3: TImage;
    adminCal3: TImage;
    RoundRect4: TRoundRect;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    RoundRect5: TRoundRect;
    Image17: TImage;
    Image18: TImage;
    Image20: TImage;
    RoundRect6: TRoundRect;
    Image21: TImage;
    Image22: TImage;
    Image23: TImage;
    wrongCred: TLabel;
    rePassConfirm: TLabel;
    Image25: TImage;
    Image26: TImage;
    Image27: TImage;
    Image28: TImage;
    ChangeTabAction6: TChangeTabAction;
    tiEvent: TTabItem;
    Image29: TImage;
    Image79: TImage;
    Label3: TLabel;
    ChangeTabAction13: TChangeTabAction;
    tiAdminHall: TTabItem;
    Image80: TImage;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    TabItem1: TTabItem;
    Image85: TImage;
    Label7: TLabel;
    Image90: TImage;
    Label8: TLabel;
    Image86: TImage;
    Image81: TImage;
    procedure registerClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure regButtonClick(Sender: TObject);
    procedure Home1Click(Sender: TObject);
    procedure Image43Click(Sender: TObject);
    procedure Image38Click(Sender: TObject);
    procedure Image40Click(Sender: TObject);
    procedure Cal1Click(Sender: TObject);
    procedure Ticket1Click(Sender: TObject);
    procedure Home2Click(Sender: TObject);
    procedure Ticket2Click(Sender: TObject);
    procedure Cal2Click(Sender: TObject);
    procedure back3Click(Sender: TObject);
    procedure MenuClick(Sender: TObject);
    procedure Image52Click(Sender: TObject);
    procedure Image51Click(Sender: TObject);
    procedure back6Click(Sender: TObject);
    procedure reserveTerminsClick(Sender: TObject);
    procedure reserveEquipmentClick(Sender: TObject);
    procedure loginButtonClick(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure adminHome3Click(Sender: TObject);
    procedure adminSettings3Click(Sender: TObject);
    procedure adminCal3Click(Sender: TObject);
    procedure equipment1Click(Sender: TObject);
    procedure continueButtonClick(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure Image81Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMain: TfMain;

implementation

{$R *.fmx}

procedure TfMain.Cal2Click(Sender: TObject);
begin
ChangeTabAction4.Execute;
end;


procedure TfMain.continueButtonClick(Sender: TObject);
begin
with DataModule2 do
begin
userName.Text := UserTable['name'];
              nameSB.Text := UserTable['name'];
              roleSB.Text := UserTable['role'];
end;
end;

procedure TfMain.equipment1Click(Sender: TObject);
begin
tcMain.Next;
end;

procedure TfMain.regButtonClick(Sender: TObject);
var email , pass , repass, role, name: string;
begin
role := 'User';
name := nameSpace.Text;
email := regEmailSpace.Text;
pass := regPasswordSpace.Text;
repass := repeatPasswordSpace.Text;
if repass = pass then
   with DataModule2 do
   begin
     with UserQuery do
       begin
       Connection := FDConnection1;
       Active := False;
       SQL.Clear;
       SQL.Text := 'INSERT INTO Users ' + ' (Email,Password,role,name) ' + ' Values ' + ' (:email, :pass, :role, :name)';
       Params[0].AsString := email;
       Params[1].AsString := pass;
       Params[2].AsString := role;
       Params[3].AsString := name;
       ExecSql;
       end;
       rePassConfirm.Visible := False;
       tcMain.Next;
   end
else
begin
          rePassConfirm.Visible := True;
        end;
end;

procedure TfMain.FormCreate(Sender: TObject);
begin
tcMain.TabIndex := 0;
end;

procedure TfMain.Home1Click(Sender: TObject);
begin
ChangeTabAction3.Execute;
end;

procedure TfMain.Home2Click(Sender: TObject);
begin
ChangeTabAction3.Execute;
end;

procedure TfMain.adminHome3Click(Sender: TObject);
begin
ChangeTabAction9.Execute;
end;

procedure TfMain.adminSettings3Click(Sender: TObject);
begin
ChangeTabAction11.Execute;
end;

procedure TfMain.back3Click(Sender: TObject);
begin
tcMain.Previous;
end;

procedure TfMain.MenuClick(Sender: TObject);
begin
SideBar.ShowMaster;
end;

procedure TfMain.reserveTerminsClick(Sender: TObject);
begin
tcMain.Next;
end;

procedure TfMain.reserveEquipmentClick(Sender: TObject);
begin
ChangeTabAction8.Execute;
end;

procedure TfMain.Image16Click(Sender: TObject);
begin
ChangeTabAction12.Execute;
SideBar.HideMaster;
end;

procedure TfMain.Image38Click(Sender: TObject);
begin
ChangeTabAction3.Execute;
end;

procedure TfMain.adminCal3Click(Sender: TObject);
begin
ChangeTabAction10.Execute;
end;

procedure TfMain.Image40Click(Sender: TObject);
begin
ChangeTabAction2.Execute;
end;

procedure TfMain.Image43Click(Sender: TObject);
begin
ChangeTabAction4.Execute;
end;

procedure TfMain.Image51Click(Sender: TObject);
begin
with DataModule2 do
 if UserTable['Role'] = 'Admin' then
            begin
                  ChangeTabAction6.Execute;
            end
            else if UserTable['Role'] = 'User' then
            begin
              ChangeTabAction5.Execute;
            end;
end;

procedure TfMain.Image52Click(Sender: TObject);
begin
SideBar.HideMaster;
end;

procedure TfMain.Image81Click(Sender: TObject);
begin
ChangeTabAction10.Execute;
end;

procedure TfMain.Label12Click(Sender: TObject);
begin
ChangeTabAction13.Execute;
end;

procedure TfMain.loginButtonClick(Sender: TObject);
var
      email, pass : string;
begin
      email := emailSpace.Text;
      pass  := passwordSpace.Text;

      with DataModule2 do
      begin
        if UserTable.Locate('EMAIL', email, []) = true then
        begin
          if UserTable['PASSWORD'] = pass then
          begin
            if UserTable['Role'] = 'Admin' then
            begin
                  ChangeTabAction9.Execute;
                  adminName.Text := UserTable['name'];
                  nameSB.Text := UserTable['name'];
                  roleSB.Text := UserTable['role'];
                  wrongCred.Visible := False;
            end
            else if UserTable['Role'] = 'User' then
            begin
              ChangeTabAction3.Execute;
              userName.Text := UserTable['name'];
              nameSB.Text := UserTable['name'];
              roleSB.Text := UserTable['role'];
              wrongCred.Visible := False;
            end;

          end
          else
          begin
              wrongCred.Visible := True;
          end;

        end
        else
        begin
          wrongCred.Visible := True;
        end;
      end;
end;

procedure TfMain.back6Click(Sender: TObject);
begin
ChangeTabAction7.Execute;
end;

procedure TfMain.Cal1Click(Sender: TObject);
begin
ChangeTabAction4.Execute;
end;

procedure TfMain.registerClick(Sender: TObject);
begin
tcMain.Next;
end;


procedure TfMain.Ticket1Click(Sender: TObject);
begin
ChangeTabAction2.Execute;
end;

procedure TfMain.Ticket2Click(Sender: TObject);
begin
ChangeTabAction2.Execute;
end;

end.
