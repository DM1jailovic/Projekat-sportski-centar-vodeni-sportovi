unit Projekat;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Graphics, FMX.Dialogs, FMX.Objects,
  FMX.TabControl, FMX.Controls.Presentation, FMX.StdCtrls, FMX.Edit, FMX.Layouts,
  FMX.Calendar, FMX.ActnList, System.Actions, System.ImageList, FMX.ImgList,
  FMX.MultiView, FMX.Effects, FMX.Grid, System.Rtti, FMX.Grid.Style,
  FMX.ScrollBox, Unit2, FMX.Memo.Types, FMX.Memo, System.Generics.Collections, System.DateUtils,
  Data.Db, FMX.Ani, System.Hash;

type

  TEvent = record
    ID: string;
    Title: string;
    Description: string;
    Tickets: Integer;
    TimeSlot: string;
    Hall: string;
    ActivityType: string;
    EventDate: TDate;
  end;

type
  TUserInfo = record
    ID: string;
    Ime: string;
    Prezime: string;
  end;

type

  TEquipmentReservation = record
    EquipmentID: string;
    UserID: string;
    Quantity: Integer;
  end;


type

  TArticle = class
  public
    Title: string;
    Description: string;
    Thumb: TBitmap;
    Image: TBitmap;
end;

type

  TEquipment = record
    ID: string;
    Name: string;
    EquipType: string;
    Price: Double;
    Quantity: Integer;
    Image: TBitmap;
  end;

type
  TUserRole = (urNone, urUser, urAdmin);
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
    tiUserProfile: TTabItem;
    bgUser: TImage;
    userPicture: TImage;
    userFullName: TLabel;
    userRole: TLabel;
    emailSpace: TEdit;
    tiCalendar: TTabItem;
    bgCalendar: TImage;
    userCalendar: TCalendar;
    tiTime: TTabItem;
    tiHalls: TTabItem;
    tiCheck: TTabItem;
    bgHall: TImage;
    hall2: TLabel;
    hall3: TLabel;
    bgCheck: TImage;
    check: TLabel;
    reserveButton: TCornerButton;
    tiHome: TTabItem;
    bgHome: TImage;
    newsBox: TScrollBox;
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
    userProfile: TImage;
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
    adminCalendar: TCalendar;
    tiAdminHome: TTabItem;
    bgAdminHome: TImage;
    tiAdminSettings: TTabItem;
    bgAdminSettings: TImage;
    buttonMenu1: TRoundRect;
    Home2: TImage;
    Cal2: TImage;
    Ticket2: TImage;
    tiAdminProfile: TTabItem;
    bgAdminUser: TImage;
    adminPicture: TImage;
    adminFullName: TLabel;
    adminRole: TLabel;
    adminButtonMenu4: TRoundRect;
    tiTickets: TTabItem;
    bgTicket: TImage;
    GlowEffect1: TGlowEffect;
    RoundRect1: TRoundRect;
    Image6: TImage;
    Image7: TImage;
    Image8: TImage;
    reservedTermins: TImage;
    reserveEquipment: TImage;
    tiTermins: TTabItem;
    bgTermins: TImage;
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
    tiEquipmentReservation: TTabItem;
    Image1: TImage;
    reserveEquipmentButton: TCornerButton;
    Image2: TImage;
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
    tiViewAdminArticle: TTabItem;
    Image29: TImage;
    Image79: TImage;
    Label3: TLabel;
    ChangeTabAction13: TChangeTabAction;
    tiAdminHall: TTabItem;
    Image80: TImage;
    aHall2: TLabel;
    aHall3: TLabel;
    TabItem1: TTabItem;
    Image85: TImage;
    Label7: TLabel;
    F: TImage;
    Label8: TLabel;
    Image86: TImage;
    Image81: TImage;
    ChangeTabAction14: TChangeTabAction;
    ChangeTabAction15: TChangeTabAction;
    ChangeTabAction16: TChangeTabAction;
    RoundRect9: TRoundRect;
    Image83: TImage;
    Image84: TImage;
    Image87: TImage;
    Image88: TImage;
    nameSpace: TEdit;
    surnameSpace: TEdit;
    phoneSpace: TEdit;
    addToHomeBtn: TCornerButton;
    Image89: TImage;
    Label9: TLabel;
    adminLoginScreen: TImage;
    ChangeTabAction17: TChangeTabAction;
    tiAdminLogin: TTabItem;
    bgAdminLog: TImage;
    Image93: TImage;
    adminPasswordSpace: TEdit;
    adminLoginButton: TCornerButton;
    adminEmailSpace: TEdit;
    Label13: TLabel;
    tiAdminArticle: TTabItem;
    Image90: TImage;
    Image91: TImage;
    Label14: TLabel;
    artTitle: TEdit;
    artDesc: TMemo;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    publishButton: TImage;
    Label22: TLabel;
    OpenDialog1: TOpenDialog;
    tiViewArticle: TTabItem;
    bg: TImage;
    Image97: TImage;
    titleLabel: TLabel;
    memoDesc: TMemo;
    artImg: TImage;
    addPicButton: TButton;
    thumbnailButton: TButton;
    ImageThumbnail: TImage;
    ImageArticle: TImage;
    tiAdminTS: TTabItem;
    tiAdminBg: TImage;
    RoundRect8: TRoundRect;
    Image31: TImage;
    Image32: TImage;
    Image33: TImage;
    TS6: TLabel;
    TS10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    tiAdminActivities: TTabItem;
    Image30: TImage;
    Label4: TLabel;
    Image34: TImage;
    Label5: TLabel;
    Image41: TImage;
    tiCreateActivity: TTabItem;
    Image42: TImage;
    Image43: TImage;
    equipmentTitl: TLabel;
    activityTitle: TEdit;
    postActivityButton: TImage;
    Label25: TLabel;
    eventLayout: TScrollBox;
    activityTickets: TEdit;
    ticketNumber: TLabel;
    idActivity: TLabel;
    userView: TImage;
    equipCheck: TImage;
    Label10: TLabel;
    Label24: TLabel;
    tiAdminEquip: TTabItem;
    adminEquipBG: TImage;
    addEquip: TImage;
    Label26: TLabel;
    adminEquipmentBox: TScrollBox;
    tiAdminAddEquip: TTabItem;
    Image98: TImage;
    Image99: TImage;
    equipmentTitle: TLabel;
    nameEquipment: TEdit;
    Image100: TImage;
    Label29: TLabel;
    quantityEquipment: TEdit;
    quantityNumber: TLabel;
    idEquipment: TLabel;
    aEquipmentLayout: TGridPanelLayout;
    activityDesc: TMemo;
    activityDescInput: TLabel;
    addEquipImg: TButton;
    equipPreview: TImage;
    tiAdminShowEquip: TTabItem;
    Image9: TImage;
    Image101: TImage;
    titleEquip: TLabel;
    qtyEquip: TLabel;
    EquipmentThumbnail: TImage;
    priceEquipment: TEdit;
    equipPriceLbl: TLabel;
    equipTypeLbl: TLabel;
    typeEquipment: TEdit;
    deleteEquipButton: TCornerButton;
    RectAnimation1: TRectAnimation;
    Line1: TLine;
    adminNewsbox: TScrollBox;
    Image94: TImage;
    Image95: TImage;
    adminArticleTitle: TLabel;
    adminMemoDesc: TMemo;
    adminArtImg: TImage;
    Line2: TLine;
    Image96: TImage;
    Image102: TImage;
    Image103: TImage;
    Image104: TImage;
    Image105: TImage;
    Image106: TImage;
    Image82: TImage;
    Image107: TImage;
    tiAdminViewActivity: TTabItem;
    Image108: TImage;
    adminActivityImageView: TImage;
    adminViewActivityTitle: TLabel;
    adminViewActivityId: TLabel;
    adminViewActivityDesc: TLabel;
    adminViewActivityTime: TLabel;
    adminViewActivityDate: TLabel;
    adminViewActivityHall: TLabel;
    adminViewActivityTickets: TLabel;
    equipBox: TScrollBox;
    equipmentLayout: TGridPanelLayout;
    userLoginScreen: TImage;
    equipmentName: TLabel;
    equipmentQuantity: TLabel;
    reserveQtyEdit: TEdit;
    equipmentShow: TImage;
    equipmentPrice: TLabel;
    tiAdminUserView: TTabItem;
    Image109: TImage;
    userBox: TScrollBox;
    Image111: TImage;
    changePic: TLabel;
    hall1: TLabel;
    Image19: TImage;
    RoundRect10: TRoundRect;
    Image24: TImage;
    Image92: TImage;
    Image110: TImage;
    uTS6: TLabel;
    uTS10: TLabel;
    uTS8: TLabel;
    uTS4: TLabel;
    userEventLayout: TScrollBox;
    tiAdminReg: TTabItem;
    Image112: TImage;
    Label1: TLabel;
    Image113: TImage;
    adminPassReg: TEdit;
    regAdmin: TCornerButton;
    adminEmailReg: TEdit;
    adminRepass: TEdit;
    Label2: TLabel;
    adminNameReg: TEdit;
    adminSurnameReg: TEdit;
    adminPhoneReg: TEdit;
    GlowEffect2: TGlowEffect;
    Image114: TImage;
    aHall1: TLabel;
    userViewResTermins: TCornerButton;
    userViewResEquip: TCornerButton;
    userGoToDelete: TCornerButton;
    tiUserDelete: TTabItem;
    Image51: TImage;
    CornerButton1: TCornerButton;
    Label6: TLabel;
    cancelDelete: TCornerButton;
    Rectangle4: TRectangle;
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
    procedure back6Click(Sender: TObject);
    procedure reservedTerminsClick(Sender: TObject);
    procedure loginButtonClick(Sender: TObject);
    procedure Image16Click(Sender: TObject);
    procedure adminHome3Click(Sender: TObject);
    procedure adminSettings3Click(Sender: TObject);
    procedure adminCal3Click(Sender: TObject);
    procedure equipment1Click(Sender: TObject);
    procedure continueButtonClick(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure Image81Click(Sender: TObject);
    procedure time2Click(Sender: TObject);
    procedure hall1Click(Sender: TObject);
    procedure adminLoginButtonClick(Sender: TObject);
    procedure adminLoginScreenClick(Sender: TObject);
    procedure equipButton(Sender: TObject);
    procedure addPicButtonClick(Sender: TObject);
    procedure publishButtonClick(Sender: TObject);
    procedure AddArticleToHome(A: TArticle);
    procedure AddArticleCardToBox(A: TArticle; ABox: TScrollBox);
    procedure OpenArticle(A: TArticle);
    procedure LayoutClick(Sender: TObject);
    procedure Image89Click(Sender: TObject);
    procedure adminCalendarChange(Sender: TObject);
    procedure TS6Click(Sender: TObject);
    procedure HighlightSelectedLabel(Selected: TLabel);
    procedure LabelMouseEnter(Sender: TObject);
    procedure LabelMouseLeave(Sender: TObject);
    procedure aHall1Click(Sender: TObject);
    procedure AddEventRectangle(const E: TEvent);
    procedure ActivityAddClick(Sender: TObject);
    procedure SaveEventButtonClick(Sender: TObject);
    procedure AddEquipment(Name: string; Quantity: Integer);
    procedure EquipmentButtonClick(Sender: TObject);
    procedure publishEquipClick(Sender: TObject);
    procedure addEquipClick(Sender: TObject);
    procedure equipCheckClick(Sender: TObject);
    procedure LoadEquipmentFromDB;
    procedure SaveEquipmentToDB(const E: TEquipment);
    procedure AddEquipmentCard(const E: TEquipment);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure UpdateEquipmentGridSize;
    procedure EquipmentCardClick(Sender: TObject);
    procedure OpenEquipmentDetails(const EquipID: string);
    procedure deleteEquipButtonClick(Sender: TObject);
    procedure DeleteEquipmentFromDB(const EquipID: string);
    procedure thumbnailButtonClick(Sender: TObject);
    procedure OpenAdminArticle(A: TArticle);
    procedure Image103Click(Sender: TObject);
    procedure Image96Click(Sender: TObject);
    procedure Image104Click(Sender: TObject);
    procedure Image105Click(Sender: TObject);
    procedure Image106Click(Sender: TObject);
    procedure Image82Click(Sender: TObject);
    procedure UpdateEquipmentImageInDB(const EquipID, FileName: string);
    procedure ChangeEquipImageClick(Sender: TObject);
    procedure ActivityRectangleClick(Sender: TObject);
    procedure OpenActivityDetails(const EventID: string);
    function FindEventByID(const EventID: string; out E: TEvent; out EventDate: TDate): Boolean;
    procedure ReserveEquipmentF(EquipmentID: string; Quantity: Integer);
    procedure UserEquipmentCardClick(Sender: TObject);
    procedure reserveEquipmentClick(Sender: TObject);
    procedure userLoginScreenClick(Sender: TObject);
    procedure reserveEquipmentButtonClick(Sender: TObject);
    procedure LoadUsersFromDB;
    procedure AddUserCard(const U: TUserInfo);
    procedure userViewClick(Sender: TObject);
    procedure Logout;
    procedure SaveActivityToDB(const E: TEvent);
    procedure LoadActivitiesFromDB;
    procedure ReserveActivity(const ActivityID: string);
    procedure userCalendarChange(Sender: TObject);
    procedure LoadUserActivitiesForDate(ADate: TDate);
    procedure AddUserActivityRectangle(const E: TEvent);
    procedure UserActivityRectangleClick(Sender: TObject);
    procedure LoadReservedActivitiesForCurrentUser;
    procedure AddReservedActivityRectangle(const E: TEvent);
    procedure LoadUserActivitiesFiltered(ADate: TDate; const ATimeSlot, AHall: string);
    procedure UserTimeSlotClick(Sender: TObject);
    procedure UserHallClick(Sender: TObject);
    procedure Image41Click(Sender: TObject);
    procedure LoadAdminEventsForSelection;
    procedure LoadUserEventsForSelection;
    procedure AddUserEventRectangle(const E: TEvent);
    procedure regAdminClick(Sender: TObject);
    procedure userProfileClick(Sender: TObject);
    procedure OpenCurrentProfile;
    procedure LoadCurrentProfile;
    procedure DeleteCurrentUserAccount;
    procedure userViewResTerminsClick(Sender: TObject);
    procedure userViewResEquipClick(Sender: TObject);
    procedure userGoToDeleteClick(Sender: TObject);
    procedure LoadReservedEquipmentForCurrentUser;
    procedure AddReservedEquipmentRectangle(const EquipID, EquipName: string; Qty: Integer);
    procedure userDeleteClick(Sender: TObject);
    procedure cancelDeleteClick(Sender: TObject);
  private
  SelectedDate: TDateTime;
    SelectedTimeSlot: string;
    SelectedHall: string;
    SelectedActivityID: string;

    EventsByDate: TDictionary<TDate, TList<TEvent>>;

    CurrentUserRole: TUserRole;
    CurrentUserID: string;
    EquipmentUIIndex: Integer;
    SelectedEquipmentID: string;
    EquipmentReservations: TList<TEquipmentReservation>;


    function GenerateSalt(ALength: Integer = 16): string;
    function HashPassword(const APassword, ASalt: string): string;
    function VerifyPassword(const APassword, ASalt, AStoredHash: string): Boolean;
    procedure LoadEventsForDate;
    function GenerateRandomID: string;
    function GetEquipmentCardSize: Single;
    procedure SetupEquipmentGrid(AGrid: TGridPanelLayout; AParent: TScrollBox);
    procedure AddEquipmentCardToGrid(const E: TEquipment; AGrid: TGridPanelLayout;
    const ClickHandler: TNotifyEvent);
    procedure UpdateGridSize(AGrid: TGridPanelLayout);
    function GetGridCardSize(AGrid: TGridPanelLayout): Single;


    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMain: TfMain;
  Articles: TObjectList<TArticle>;
  EquipmentList: TList<TEquipment>;


implementation


{$R *.fmx}


procedure TfMain.FormCreate(Sender: TObject);
begin
  tcMain.TabIndex := 0;
  EventsByDate := TDictionary<TDate, TList<TEvent>>.Create;
  Articles := TObjectList<TArticle>.Create;
  Randomize;
  EquipmentList := TList<TEquipment>.Create;
  EquipmentReservations := TList<TEquipmentReservation>.Create;

  SetupEquipmentGrid(aEquipmentLayout, adminEquipmentBox);
  SetupEquipmentGrid(equipmentLayout, equipBox);

  memoDesc.ApplyStyleLookup;
  if memoDesc.FindStyleResource('background') is TControl then
    TControl(memoDesc.FindStyleResource('background')).Visible := False;

  if Assigned(DataModule2) and Assigned(DataModule2.AktivnostQuery) then
    LoadActivitiesFromDB;
end;
procedure ClearLayoutSafe(AParent: TFmxObject);
var
  I: Integer;
begin
  for I := AParent.ChildrenCount - 1 downto 0 do
    AParent.Children[I].Parent := nil;
end;

procedure TfMain.Cal2Click(Sender: TObject);
begin
ChangeTabAction4.Execute;
end;



procedure TfMain.cancelDeleteClick(Sender: TObject);
begin
  TcMain.ActiveTab := tiUserProfile;
end;

procedure TfMain.userCalendarChange(Sender: TObject);
begin
  SelectedDate := DateOf(userCalendar.Date);
  SelectedTimeSlot := '';
  SelectedHall := '';

  LoadActivitiesFromDB;

  tcMain.ActiveTab := tiTime;
end;


procedure TfMain.continueButtonClick(Sender: TObject);
var
  UserID, UserIme: string;
begin
  wrongCred.Visible := False;

  with DataModule2.KorisnikQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'SELECT ID_kor, Ime ' +
      'FROM Korisnik ' +
      'WHERE Email = :email';

    ParamByName('email').AsString := Trim(regEmailSpace.Text);
    Open;

    UserID := FieldByName('ID_kor').AsString;
    UserIme := FieldByName('Ime').AsString;

    CurrentUserRole := urUser;
    CurrentUserID := UserID;

    LoadCurrentProfile;

    nameSB.Text := UserIme;
    roleSB.Text := 'Korisnik';

    tcMain.ActiveTab := tiHome;
  end;
end;

procedure TfMain.deleteEquipButtonClick(Sender: TObject);
var
  I: Integer;
begin
  if Trim(SelectedEquipmentID) = '' then
  begin
    ShowMessage('No equipment selected.');
    Exit;
  end;

  DeleteEquipmentFromDB(SelectedEquipmentID);

  for I := EquipmentList.Count - 1 downto 0 do
  begin
    if EquipmentList[I].ID = SelectedEquipmentID then
    begin
      EquipmentList[I].Image.Free;
      EquipmentList.Delete(I);
      Break;
    end;
  end;

  SelectedEquipmentID := '';
  titleEquip.Text := '';
  qtyEquip.Text := '';
  EquipmentThumbnail.Bitmap := nil;

  LoadEquipmentFromDB;
  tcMain.ActiveTab := tiAdminEquip;

end;

procedure TfMain.adminLoginButtonClick(Sender: TObject);
var
  email, pass: string;
  StoredPlain, StoredHash, StoredSalt: string;
  AdminID, AdminIme: string;
  NewSalt, NewHash: string;
begin
  email := Trim(adminEmailSpace.Text);
  pass := Trim(adminPasswordSpace.Text);

  wrongCred.Visible := False;

  with DataModule2.ZaposleniQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'SELECT ID_ZAP, IME, "PASSWORD", PASSWORDHASH, PASSWORDSALT ' +
      'FROM ZAPOSLENI ' +
      'WHERE EMAIL = :EMAIL';

    ParamByName('EMAIL').AsString := email;
    Open;

    if IsEmpty then
    begin
      wrongCred.Visible := True;
      Exit;
    end;

    AdminID := FieldByName('ID_ZAP').AsString;
    AdminIme := FieldByName('IME').AsString;

    StoredPlain := Trim(FieldByName('PASSWORD').AsString);
    StoredHash := Trim(FieldByName('PASSWORDHASH').AsString);
    StoredSalt := Trim(FieldByName('PASSWORDSALT').AsString);

    if (Length(StoredHash) = 64) and (Length(StoredSalt) = 32) then
    begin
      if VerifyPassword(pass, StoredSalt, StoredHash) then
      begin
        CurrentUserRole := urAdmin;
        CurrentUserID := AdminID;
        LoadCurrentProfile;
        tcMain.ActiveTab := tiAdminHome;
        Exit;
      end;
    end;

    if (StoredPlain <> '') and (StoredPlain = pass) then
    begin
      NewSalt := GenerateSalt;
      NewHash := HashPassword(pass, NewSalt);

      Close;
      SQL.Clear;
      SQL.Text :=
        'UPDATE ZAPOSLENI ' +
        'SET PASSWORDHASH = :HASH, PASSWORDSALT = :SALT, "PASSWORD" = :PLAIN ' +
        'WHERE ID_ZAP = :ID';

      ParamByName('HASH').AsString := NewHash;
      ParamByName('SALT').AsString := NewSalt;
      ParamByName('PLAIN').AsString := '';
      ParamByName('ID').AsString := AdminID;
      ExecSQL;


      CurrentUserRole := urAdmin;
      CurrentUserID := AdminID;
      LoadCurrentProfile;
      tcMain.ActiveTab := tiAdminHome;
      Exit;
    end;

    wrongCred.Visible := True;
  end;
end;

procedure TfMain.adminLoginScreenClick(Sender: TObject);
begin
ChangeTabAction17.Execute;
end;

procedure TfMain.addPicButtonClick(Sender: TObject);
begin
if OpenDialog1.Execute then
    ImageArticle.Bitmap.LoadFromFile(OpenDialog1.FileName);
end;


procedure TfMain.equipment1Click(Sender: TObject);
begin
tcMain.Next;
end;

procedure TfMain.regAdminClick(Sender: TObject);
var
  email, pass, repass, ime, prezime: string;
  telefon: Integer;
  Salt, PassHash: string;
begin
  ime := Trim(adminNameReg.Text);
  prezime := Trim(adminSurnameReg.Text);
  email := Trim(adminEmailReg.Text);
  pass := Trim(adminPassReg.Text);
  repass := Trim(adminRepass.Text);

  if not TryStrToInt(Trim(phoneSpace.Text), telefon) then
  begin
    ShowMessage('Unesite validan broj telefona.');
    Exit;
  end;

  if repass <> pass then
  begin
    rePassConfirm.Visible := True;
    Exit;
  end;

  Salt := GenerateSalt;
  PassHash := HashPassword(pass, Salt);

  with DataModule2.ZaposleniQuery do
  begin
    Connection := DataModule2.ACConnection1;
    Active := False;
    SQL.Clear;

    SQL.Text :=
      'INSERT INTO Zaposleni ' +
      '(Ime, Prezime, Kontakt_Telefon, Email, PasswordHash, PasswordSalt) ' +
      'VALUES (:ime, :prezime, :telefon, :email, :passhash, :salt)';

    ParamByName('ime').AsString := ime;
    ParamByName('prezime').AsString := prezime;
    ParamByName('telefon').AsInteger := telefon;
    ParamByName('email').AsString := email;

    ParamByName('passhash').DataType := ftString;
    ParamByName('passhash').Size := 64;
    ParamByName('salt').DataType := ftString;
    ParamByName('salt').Size := 32;

    ParamByName('passhash').AsString := PassHash;
    ParamByName('salt').AsString := Salt;

    ExecSQL;
  end;
  DataModule2.ZaposleniTable.Close;
  DataModule2.ZaposleniTable.Open;

  rePassConfirm.Visible := False;
end;

procedure TfMain.regButtonClick(Sender: TObject);
var
  email, pass, repass, ime, prezime: string;
  telefon: Integer;
  Salt, PassHash: string;
begin
  ime := Trim(nameSpace.Text);
  prezime := Trim(surnameSpace.Text);
  email := Trim(regEmailSpace.Text);
  pass := Trim(regPasswordSpace.Text);
  repass := Trim(repeatPasswordSpace.Text);

  if not TryStrToInt(Trim(phoneSpace.Text), telefon) then
  begin
    ShowMessage('Unesite validan broj telefona.');
    Exit;
  end;

  if repass <> pass then
  begin
    rePassConfirm.Visible := True;
    Exit;
  end;

  Salt := GenerateSalt;
  PassHash := HashPassword(pass, Salt);

  with DataModule2.KorisnikQuery do
  begin
    Connection := DataModule2.ACConnection1;
    Active := False;
    SQL.Clear;

    SQL.Text :=
      'INSERT INTO Korisnik ' +
      '(Ime, Prezime, Kontakt_Telefon, Email, PasswordHash, PasswordSalt) ' +
      'VALUES (:ime, :prezime, :telefon, :email, :passhash, :salt)';

    ParamByName('ime').AsString := ime;
    ParamByName('prezime').AsString := prezime;
    ParamByName('telefon').AsInteger := telefon;
    ParamByName('email').AsString := email;

    ParamByName('passhash').DataType := ftString;
    ParamByName('passhash').Size := 64;
    ParamByName('salt').DataType := ftString;
    ParamByName('salt').Size := 32;

    ParamByName('passhash').AsString := PassHash;
    ParamByName('salt').AsString := Salt;

    ExecSQL;
  end;
  DataModule2.KorisnikTable.Close;
  DataModule2.KorisnikTable.Open;

  rePassConfirm.Visible := False;
  tcMain.Next;
end;


procedure TfMain.hall1Click(Sender: TObject);
begin
ChangeTabAction16.Execute;
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

procedure TfMain.aHall1Click(Sender: TObject);
begin
  SelectedHall := TLabel(Sender).Text;
  HighlightSelectedLabel(TLabel(Sender));
  postActivityButton.Enabled := (SelectedDate <> 0) and (SelectedTimeSlot <> '') and (SelectedHall <> '');

  LoadAdminEventsForSelection;
  tcMain.ActiveTab := tiAdminActivities;
end;

procedure TfMain.back3Click(Sender: TObject);
begin
tcMain.Previous;
end;

procedure TfMain.MenuClick(Sender: TObject);
begin
SideBar.ShowMaster;
end;


procedure TfMain.reservedTerminsClick(Sender: TObject);
begin
  LoadReservedActivitiesForCurrentUser;
  tcMain.ActiveTab := tiTermins;
end;



procedure TfMain.Image103Click(Sender: TObject);
begin
tcMain.ActiveTab := tiAdminSettings;
end;

procedure TfMain.Image104Click(Sender: TObject);
begin
tcMain.ActiveTab := tiAdminEquip;
end;

procedure TfMain.Image105Click(Sender: TObject);
begin
tcMain.ActiveTab := tiHome;
end;

procedure TfMain.Image106Click(Sender: TObject);
begin
tcMain.ActiveTab := tiAdminHome;
end;

procedure TfMain.Image16Click(Sender: TObject);
begin
Logout;
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

procedure TfMain.adminCalendarChange(Sender: TObject);
var
  NewDate: TDate;
begin
  NewDate := DateOf(adminCalendar.Date);

  if SelectedDate = NewDate then Exit;

  SelectedDate := NewDate;

  postActivityButton.Enabled :=
    (SelectedDate <> 0) and (SelectedTimeSlot <> '') and (SelectedHall <> '');

  if Assigned(eventLayout) and eventLayout.Visible then
    LoadEventsForDate;

  if Assigned(tcMain) and Assigned(tiAdminTS) then

  tcMain.ActiveTab := tiAdminTS;
end;

procedure TfMain.Image40Click(Sender: TObject);
begin
ChangeTabAction2.Execute;
end;

procedure TfMain.Image41Click(Sender: TObject);
begin
tcMain.ActiveTab := tiAdminHome;
end;

procedure TfMain.Image43Click(Sender: TObject);
begin
ChangeTabAction4.Execute;
end;

procedure TfMain.Image52Click(Sender: TObject);
begin
SideBar.HideMaster;
end;

procedure TfMain.Image81Click(Sender: TObject);
begin
ChangeTabAction10.Execute;
end;



procedure TfMain.Image82Click(Sender: TObject);
begin
tcMain.ActiveTab := tiAdminHome;
end;

procedure TfMain.Image89Click(Sender: TObject);
begin
tcMain.ActiveTab := tiAdminArticle;
end;

procedure TfMain.userViewClick(Sender: TObject);
begin
LoadUsersFromDB;
tcMain.ActiveTab := tiAdminUserView;
end;

procedure TfMain.Image96Click(Sender: TObject);
begin
tcMain.ActiveTab := tiAdminEquip;
end;

procedure TfMain.addEquipClick(Sender: TObject);
begin
SelectedEquipmentID := GenerateRandomID;
tcMain.ActiveTab := tiAdminAddEquip;
idEquipment.Text := SelectedEquipmentID;
end;

procedure TfMain.Label12Click(Sender: TObject);
begin
ChangeTabAction13.Execute;
end;

procedure TfMain.loginButtonClick(Sender: TObject);
var
  email, pass: string;
  StoredPlain, StoredHash, StoredSalt: string;
  UserID, UserIme: string;
begin
  email := Trim(emailSpace.Text);
  pass := Trim(passwordSpace.Text);

  wrongCred.Visible := False;

  with DataModule2.KorisnikQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'SELECT ID_kor, Ime, "PASSWORD", PasswordHash, PasswordSalt ' +
      'FROM Korisnik ' +
      'WHERE Email = :email';

    ParamByName('email').AsString := email;
    Open;

    if IsEmpty then
    begin
      wrongCred.Visible := True;
      Exit;
    end;

    UserID := FieldByName('ID_kor').AsString;
    UserIme := FieldByName('Ime').AsString;

    StoredPlain := Trim(FieldByName('PASSWORD').AsString);
    StoredHash := Trim(FieldByName('PasswordHash').AsString);
    StoredSalt := Trim(FieldByName('PasswordSalt').AsString);

    if (Length(StoredHash) = 64) and (Length(StoredSalt) = 32) then
    begin
      if VerifyPassword(pass, StoredSalt, StoredHash) then
      begin
        CurrentUserRole := urUser;
        CurrentUserID := UserID;
        LoadCurrentProfile;
        tcMain.ActiveTab := tiHome;
        Exit;
      end;
    end;

    if (StoredPlain <> '') and (StoredPlain = pass) then
    begin
      CurrentUserRole := urUser;
      CurrentUserID := UserID;
      LoadCurrentProfile;
      tcMain.ActiveTab := tiHome;
      Exit;
    end;

    ShowMessage(
  'Input pass = [' + pass + ']' + sLineBreak +
  'Salt = [' + StoredSalt + ']' + sLineBreak +
  'StoredHash = [' + StoredHash + ']' + sLineBreak +
  'CalcHash = [' + HashPassword(pass, StoredSalt) + ']' + sLineBreak +
  'HashLen = ' + IntToStr(Length(StoredHash)) + sLineBreak +
  'SaltLen = ' + IntToStr(Length(StoredSalt))
);

    wrongCred.Visible := True;
  end;
end;

procedure TfMain.back6Click(Sender: TObject);
begin
ChangeTabAction7.Execute;
end;

procedure TfMain.equipButton(Sender: TObject);
begin
if OpenDialog1.Execute then
    equipPreview.Bitmap.LoadFromFile(OpenDialog1.FileName);
end;



procedure TfMain.Cal1Click(Sender: TObject);
begin
ChangeTabAction4.Execute;
end;

procedure TfMain.registerClick(Sender: TObject);
begin
tcMain.Next;
end;


procedure TfMain.reserveEquipmentButtonClick(Sender: TObject);
var
  Qty: Integer;
begin
  if Trim(SelectedEquipmentID) = '' then
  begin
    ShowMessage('No equipment selected.');
    Exit;
  end;

  if not TryStrToInt(reserveQtyEdit.Text, Qty) then
  begin
    ShowMessage('Enter a valid quantity.');
    Exit;
  end;

  if Qty <= 0 then
  begin
    ShowMessage('Quantity must be greater than 0.');
    Exit;
  end;

  ReserveEquipmentF(SelectedEquipmentID, Qty);
end;

procedure TfMain.reserveEquipmentClick(Sender: TObject);
begin
  LoadEquipmentFromDB;
  UpdateGridSize(equipmentLayout);
  tcMain.ActiveTab := tiEquipment;
end;

procedure TfMain.Ticket1Click(Sender: TObject);
begin
ChangeTabAction2.Execute;
end;

procedure TfMain.Ticket2Click(Sender: TObject);
begin
ChangeTabAction2.Execute;
end;

procedure TfMain.time2Click(Sender: TObject);
begin
ChangeTabAction14.Execute;
end;

function TfMain.GetEquipmentCardSize: Single;
begin
  Result := (aEquipmentLayout.Width / 2) - 12;
  if Result < 120 then
    Result := 120;
end;

procedure TfMain.UpdateEquipmentGridSize;
var
  CardSize: Single;
  I: Integer;
begin
  CardSize := GetEquipmentCardSize;

  for I := 0 to aEquipmentLayout.RowCollection.Count - 1 do
  begin
    aEquipmentLayout.RowCollection[I].SizeStyle := TGridPanelLayout.TSizeStyle.Absolute;
    aEquipmentLayout.RowCollection[I].Value := CardSize;
  end;

  aEquipmentLayout.Height := aEquipmentLayout.RowCollection.Count * (CardSize + 12);
end;



procedure TfMain.HighlightSelectedLabel(Selected: TLabel);
var
  I: Integer;
begin
  for I := 0 to Selected.Parent.ChildrenCount - 1 do
    if Selected.Parent.Children[I] is TLabel then
      TLabel(Selected.Parent.Children[I]).TextSettings.FontColor := TAlphaColorRec.Black;

  Selected.TextSettings.FontColor := TAlphaColorRec.Blue;
end;

procedure TfMain.LabelMouseEnter(Sender: TObject);
begin
  TLabel(Sender).TextSettings.FontColor := TAlphaColorRec.Gray;
end;

procedure TfMain.LabelMouseLeave(Sender: TObject);
begin
  TLabel(Sender).TextSettings.FontColor := TAlphaColorRec.Black;
end;

procedure TfMain.thumbnailButtonClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    ImageThumbnail.Bitmap.LoadFromFile(OpenDialog1.FileName);
end;



procedure TfMain.TS6Click(Sender: TObject);
begin
  SelectedTimeSlot := TLabel(Sender).Text;
  HighlightSelectedLabel(TLabel(Sender));
  postActivityButton.Enabled := (SelectedDate <> 0) and (SelectedTimeSlot <> '') and (SelectedHall <> '');
  tcMain.ActiveTab := tiAdminHall;
end;

procedure TfMain.publishButtonClick(Sender: TObject);
var
  A: TArticle;
begin
  A := TArticle.Create;
  A.Title := artTitle.Text;
  A.Description := artDesc.Text;

  A.Thumb := TBitmap.Create;
  if Assigned(ImageThumbnail.Bitmap) and not ImageThumbnail.Bitmap.IsEmpty then
    A.Thumb.Assign(ImageThumbnail.Bitmap);

  A.Image := TBitmap.Create;
  if Assigned(ImageArticle.Bitmap) and not ImageArticle.Bitmap.IsEmpty then
    A.Image.Assign(ImageArticle.Bitmap);

  Articles.Add(A);
  AddArticleToHome(A);

  tcMain.ActiveTab := tiAdminHome;
end;

procedure TfMain.AddArticleToHome(A: TArticle);
begin
  AddArticleCardToBox(A, newsBox);
  AddArticleCardToBox(A, adminNewsBox);
end;

procedure TfMain.AddArticleCardToBox(A: TArticle; ABox: TScrollBox);
var
  Card: TRectangle;
  Img: TImage;
  Overlay: TRectangle;
  TitleLbl: TLabel;
begin
  Card := TRectangle.Create(ABox);
  Card.Parent := ABox;
  Card.Align := TAlignLayout.Top;
  Card.Height := 150;
  Card.Margins.Left := 12;
  Card.Margins.Right := 12;
  Card.Margins.Top := 10;
  Card.Margins.Bottom := 10;
  Card.Stroke.Kind := TBrushKind.None;
  Card.Fill.Color := TAlphaColorRec.Black;
  Card.ClipChildren := True;
  Card.HitTest := True;

  Card.TagObject := A;

  if ABox = newsBox then
    Card.TagString := 'user'
  else if ABox = adminNewsBox then
    Card.TagString := 'admin';

  Card.OnClick := LayoutClick;

  Img := TImage.Create(Card);
  Img.Parent := Card;
  Img.Align := TAlignLayout.Contents;
  Img.WrapMode := TImageWrapMode.Stretch;
  Img.HitTest := False;
  Img.SendToBack;

  if Assigned(A.Thumb) and not A.Thumb.IsEmpty then
    Img.Bitmap.Assign(A.Thumb);

  Overlay := TRectangle.Create(Card);
  Overlay.Parent := Card;
  Overlay.Align := TAlignLayout.Contents;
  Overlay.Fill.Color := $22000000;
  Overlay.Stroke.Kind := TBrushKind.None;
  Overlay.HitTest := False;
  Overlay.BringToFront;

  TitleLbl := TLabel.Create(Card);
  TitleLbl.Parent := Card;
  TitleLbl.Align := TAlignLayout.Contents;
  TitleLbl.Text := A.Title;
  TitleLbl.WordWrap := True;
  TitleLbl.AutoSize := False;
  TitleLbl.StyledSettings := [];
  TitleLbl.TextSettings.FontColor := TAlphaColorRec.White;
  TitleLbl.TextSettings.Font.Size := 22;
  TitleLbl.TextSettings.HorzAlign := TTextAlign.Leading;
  TitleLbl.TextSettings.VertAlign := TTextAlign.Leading;
  TitleLbl.Margins.Left := 12;
  TitleLbl.Margins.Top := 10;
  TitleLbl.Margins.Right := 12;
  TitleLbl.HitTest := False;
  TitleLbl.BringToFront;
end;

procedure TfMain.LayoutClick(Sender: TObject);
var
  A: TArticle;
  SourceBox: string;
begin
  A := TArticle(TFmxObject(Sender).TagObject);
  SourceBox := TFmxObject(Sender).TagString;

  if not Assigned(A) then
    Exit;

  if SourceBox = 'admin' then
    OpenAdminArticle(A)
  else
    OpenArticle(A);
end;

procedure TfMain.OpenArticle(A: TArticle);
begin
  titleLabel.Text := A.Title;
  memoDesc.Text := A.Description;
  artImg.Bitmap.Assign(A.Image);

  TcMain.ActiveTab := tiViewArticle;
end;

procedure TfMain.LoadEventsForDate;
begin
  LoadAdminEventsForSelection;
end;

procedure TfMain.AddEventRectangle(const E: TEvent);
var
  R: TRectangle;
  L: TLabel;
begin
  R := TRectangle.Create(eventLayout);
  R.Parent := eventLayout;
  R.Height := 60;
  R.Align := TAlignLayout.Top;
  R.Fill.Color := TAlphaColorRec.Blue;
  R.Stroke.Kind := TBrushKind.Solid;
  R.Stroke.Color := TAlphaColorRec.Black;
  R.Margins.Top := 2;
  R.Margins.Bottom := 2;

  R.TagString := E.ID;
  R.OnClick := ActivityRectangleClick;
  R.HitTest := True;

  L := TLabel.Create(R);
  L.Parent := R;
  L.Align := TAlignLayout.Client;
  L.WordWrap := True;
  L.StyledSettings := [];
  L.TextSettings.FontColor := TAlphaColorRec.White;
  L.Text :=
    FormatDateTime('dd.mm.yyyy', E.EventDate) + ' ' + E.TimeSlot + sLineBreak +
    E.Title;
  L.TextSettings.HorzAlign := TTextAlign.Leading;
  L.TextSettings.VertAlign := TTextAlign.Center;
  L.Margins.Left := 5;
  L.HitTest := False;
end;

procedure TfMain.ActivityAddClick(Sender: TObject);
begin
  idActivity.Text := GenerateRandomID;
  tcMain.ActiveTab := tiCreateActivity;
end;

function TfMain.GenerateRandomID: string;
begin
  Result := IntToStr(Random(9000) + 1000);
end;

procedure TfMain.SaveEventButtonClick(Sender: TObject);
var
  E: TEvent;
  EventList: TList<TEvent>;
  Tickets: Integer;
begin
  if SelectedDate = 0 then
  begin
    ShowMessage('Please select a date first.');
    Exit;
  end;

  if SelectedTimeSlot = '' then
  begin
    ShowMessage('Please select a time slot first.');
    Exit;
  end;

  if SelectedHall = '' then
  begin
    ShowMessage('Please select a hall first.');
    Exit;
  end;

  if not TryStrToInt(activityTickets.Text, Tickets) then
  begin
    ShowMessage('Please enter a valid number of tickets.');
    Exit;
  end;

  E.ID := idActivity.Text;
  E.Title := activityTitle.Text;
  E.Description := activityDesc.Text;
  E.Tickets := Tickets;
  E.TimeSlot := SelectedTimeSlot;
  E.Hall := SelectedHall;
  E.ActivityType := 'General';
  E.EventDate := DateOf(SelectedDate);

  SaveActivityToDB(E);

  if not EventsByDate.TryGetValue(DateOf(SelectedDate), EventList) then
  begin
    EventList := TList<TEvent>.Create;
    EventsByDate.Add(DateOf(SelectedDate), EventList);
  end;

  EventList.Add(E);

  tcMain.ActiveTab := tiAdminActivities;
  LoadEventsForDate;
end;

procedure TfMain.equipCheckClick(Sender: TObject);
begin
  LoadEquipmentFromDB;
  tcMain.ActiveTab := tiAdminEquip;
end;

procedure TfMain.EquipmentButtonClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    equipPreview.Bitmap.LoadFromFile(OpenDialog1.FileName);
end;

procedure TfMain.publishEquipClick(Sender: TObject);
var
  Name: string;
  Qty: Integer;
begin
  Name := nameEquipment.Text;

  if Name = '' then
  begin
    ShowMessage('Enter equipment name!');
    Exit;
  end;

  if not TryStrToInt(quantityEquipment.Text, Qty) then
  begin
    ShowMessage('Enter valid quantity!');
    Exit;
  end;

  AddEquipment(Name, Qty);

  nameEquipment.Text := '';
  quantityEquipment.Text := '';
  typeEquipment.Text := '';
  priceEquipment.Text := '';
  equipPreview.Bitmap := nil;

  tcMain.ActiveTab := tiAdminEquip;
end;

procedure TfMain.AddEquipment(Name: string; Quantity: Integer);
var
  E: TEquipment;
begin
  E.ID := idEquipment.Text;
  E.Name := Name;
  E.Quantity := Quantity;
  E.EquipType := typeEquipment.Text;
  E.Price := StrToFloat(priceEquipment.Text);

  E.Image := TBitmap.Create;
  try
    E.Image.Assign(EquipPreview.Bitmap);
    SaveEquipmentToDB(E);
  finally
    E.Image.Free;
  end;

  LoadEquipmentFromDB;
end;

procedure TfMain.LoadEquipmentFromDB;
var
  E: TEquipment;
  MS: TMemoryStream;
  oldE: TEquipment;
begin
  if not Assigned(DataModule2) then Exit;
  if not Assigned(DataModule2.OpremaQuery) then Exit;

  aEquipmentLayout.BeginUpdate;
  equipmentLayout.BeginUpdate;
  try
    ClearLayoutSafe(aEquipmentLayout);
    ClearLayoutSafe(equipmentLayout);

    aEquipmentLayout.RowCollection.Clear;
    equipmentLayout.RowCollection.Clear;

    for OldE in EquipmentList do
    OldE.Image.Free;
    EquipmentList.Clear;

    DataModule2.OpremaQuery.Close;
    DataModule2.OpremaQuery.SQL.Clear;
    DataModule2.OpremaQuery.SQL.Text :=
      'SELECT Id_Opreme, Naziv, tip, cena, stanje, OpSlika FROM Oprema ORDER BY Id_Opreme';
    DataModule2.OpremaQuery.Open;

    while not DataModule2.OpremaQuery.Eof do
    begin
      E.ID := DataModule2.OpremaQuery.FieldByName('Id_Opreme').AsString;
      E.Name := DataModule2.OpremaQuery.FieldByName('Naziv').AsString;
      E.EquipType := DataModule2.OpremaQuery.FieldByName('tip').AsString;
      E.Price := DataModule2.OpremaQuery.FieldByName('cena').AsFloat;
      E.Quantity := DataModule2.OpremaQuery.FieldByName('stanje').AsInteger;

      E.Image := TBitmap.Create;

      if not DataModule2.OpremaQuery.FieldByName('OpSlika').IsNull then
      begin
        MS := TMemoryStream.Create;
        try
          TBlobField(DataModule2.OpremaQuery.FieldByName('OpSlika')).SaveToStream(MS);
          MS.Position := 0;
          E.Image.LoadFromStream(MS);
        finally
          MS.Free;
        end;
      end;

      EquipmentList.Add(E);

      AddEquipmentCardToGrid(E, aEquipmentLayout, EquipmentCardClick);
      AddEquipmentCardToGrid(E, equipmentLayout, UserEquipmentCardClick);

      DataModule2.OpremaQuery.Next;
    end;

    DataModule2.OpremaQuery.Close;
  finally
    aEquipmentLayout.EndUpdate;
    equipmentLayout.EndUpdate;
  end;
end;

procedure TfMain.SaveEquipmentToDB(const E: TEquipment);
var
  MS: TMemoryStream;
begin
  with DataModule2.OpremaQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'INSERT INTO Oprema (Id_Opreme, Naziv, tip, cena, stanje, OpSlika) ' +
      'VALUES (:id, :naziv, :tip, :cena, :stanje, :slika)';

    ParamByName('id').AsString := E.ID;
    ParamByName('naziv').AsString := E.Name;
    ParamByName('tip').AsString := E.EquipType;
    ParamByName('cena').AsFloat := E.Price;
    ParamByName('stanje').AsInteger := E.Quantity;

    MS := TMemoryStream.Create;
    try
      if Assigned(E.Image) and not E.Image.IsEmpty then
      begin
        E.Image.SaveToStream(MS);
        MS.Position := 0;
        ParamByName('slika').LoadFromStream(MS, ftBlob);
      end
      else
        ParamByName('slika').Clear;

      ExecSQL;
    finally
      MS.Free;
    end;
  end;
end;

procedure TfMain.AddEquipmentCard(const E: TEquipment);
begin
  AddEquipmentCardToGrid(E, aEquipmentLayout, EquipmentCardClick);
end;

procedure TfMain.FormShow(Sender: TObject);
begin
  if Assigned(DataModule2) and Assigned(DataModule2.OpremaQuery) then
    LoadEquipmentFromDB;
  if Assigned(DataModule2) and Assigned(DataModule2.AktivnostQuery) then
    LoadActivitiesFromDB;

  UpdateGridSize(aEquipmentLayout);
  UpdateGridSize(equipmentLayout);
end;

procedure TfMain.FormDestroy(Sender: TObject);
var
  E: TEquipment;
begin
  for E in EquipmentList do
    E.Image.Free;

  EquipmentList.Free;
  Articles.Free;
  EventsByDate.Free;
end;

procedure TfMain.EquipmentCardClick(Sender: TObject);
var
  EquipID: string;
begin
  EquipID := TLayout(Sender).TagString;
  OpenEquipmentDetails(EquipID);
end;

procedure TfMain.OpenEquipmentDetails(const EquipID: string);
var
  E: TEquipment;
begin
  SelectedEquipmentID := EquipID;

  for E in EquipmentList do
  begin
    if E.ID = EquipID then
    begin
      titleEquip.Text := E.Name;
      qtyEquip.Text := 'Quantity: ' + IntToStr(E.Quantity) + '   Price: ' + FloatToStr(E.Price);

      if Assigned(E.Image) and not E.Image.IsEmpty then
        EquipmentThumbnail.Bitmap.Assign(E.Image)
      else
        EquipmentThumbnail.Bitmap := nil;

      tcMain.ActiveTab := tiAdminShowEquip;
      Exit;
    end;
  end;

  ShowMessage('Equipment not found.');
end;

procedure TfMain.DeleteEquipmentFromDB(const EquipID: string);
begin
  if Trim(EquipID) = '' then
    Exit;

  with DataModule2.OpremaQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'DELETE FROM Oprema WHERE Id_Opreme = :id';
    ParamByName('id').AsString := EquipID;
    ExecSQL;
  end;
end;

procedure TfMain.OpenAdminArticle(A: TArticle);
begin
  adminArticleTitle.Text := A.Title;
  adminMemoDesc.Text := A.Description;
  adminArtImg.Bitmap.Assign(A.Image);

  tcMain.ActiveTab := tiViewAdminArticle;
end;

procedure TfMain.UpdateEquipmentImageInDB(const EquipID, FileName: string);
var
  MS: TMemoryStream;
  Bmp: TBitmap;
begin
  if (Trim(EquipID) = '') or (Trim(FileName) = '') then
    Exit;

  Bmp := TBitmap.Create;
  MS := TMemoryStream.Create;
  try
    Bmp.LoadFromFile(FileName);
    Bmp.SaveToStream(MS);
    MS.Position := 0;

    with DataModule2.OpremaQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Text := 'UPDATE Oprema SET OpSlika = :slika WHERE Id_Opreme = :id';
      ParamByName('id').AsString := EquipID;
      ParamByName('slika').LoadFromStream(MS, ftBlob);
      ExecSQL;
    end;
  finally
    MS.Free;
    Bmp.Free;
  end;
end;

procedure TfMain.changeEquipImageClick(Sender: TObject);
begin
  if Trim(SelectedEquipmentID) = '' then
  begin
    ShowMessage('No equipment selected.');
    Exit;
  end;

  if OpenDialog1.Execute then
  begin
    UpdateEquipmentImageInDB(SelectedEquipmentID, OpenDialog1.FileName);
    LoadEquipmentFromDB;
    OpenEquipmentDetails(SelectedEquipmentID);
  end;
end;

procedure TfMain.ActivityRectangleClick(Sender: TObject);
var
  EventID: string;
begin
  EventID := TRectangle(Sender).TagString;
  OpenActivityDetails(EventID);
end;

function TfMain.FindEventByID(const EventID: string; out E: TEvent; out EventDate: TDate): Boolean;
var
  Pair: TPair<TDate, TList<TEvent>>;
  I: Integer;
begin
  Result := False;

  for Pair in EventsByDate do
  begin
    for I := 0 to Pair.Value.Count - 1 do
    begin
      if Pair.Value[I].ID = EventID then
      begin
        E := Pair.Value[I];
        EventDate := Pair.Key;
        Exit(True);
      end;
    end;
  end;
end;

procedure TfMain.OpenActivityDetails(const EventID: string);
var
  E: TEvent;
  D: TDate;
begin
  if not FindEventByID(EventID, E, D) then
  begin
    ShowMessage('Activity not found.');
    Exit;
  end;

  adminViewActivityTitle.Text := E.Title;
  adminViewActivityDate.Text := 'Datum: ' + DateToStr(D);
  adminViewActivityHall.Text := '' + E.Hall;
  adminViewActivityTime.Text := 'Termin: ' + E.TimeSlot;
  adminViewActivityDesc.Text := '' + E.Description;
  adminViewActivityTickets.Text := 'Slobodnih mesta: ' + IntToStr(E.Tickets);



  tcMain.ActiveTab := tiAdminViewActivity;
end;

procedure TfMain.ReserveEquipmentF(EquipmentID: string; Quantity: Integer);
var
  E: TEquipment;
  E2: TEquipment;
  NewQty: Integer;
begin
  for E in EquipmentList do
  begin
    if E.ID = EquipmentID then
    begin
      if E.Quantity < Quantity then
      begin
        ShowMessage('Not enough equipment available!');
        Exit;
      end;

      NewQty := E.Quantity - Quantity;

      with DataModule2.RezOpremeQuery do
      begin
        Close;
        SQL.Clear;
        SQL.Text :=
          'INSERT INTO RezervacijaOpreme (ID_kor, ID_opreme, Kolicina, Datum_vreme) ' +
          'VALUES (:kor, :oprema, :kolicina, :datumvreme)';

        ParamByName('kor').AsString := CurrentUserID;
        ParamByName('oprema').AsString := EquipmentID;
        ParamByName('kolicina').AsInteger := Quantity;
        ParamByName('datumvreme').AsDateTime := Now;

        ExecSQL;
      end;

      with DataModule2.OpremaQuery do
      begin
        Close;
        SQL.Clear;
        SQL.Text :=
          'UPDATE Oprema SET stanje = :stanje WHERE Id_Opreme = :id';

        ParamByName('stanje').AsInteger := NewQty;
        ParamByName('id').AsString := EquipmentID;

        ExecSQL;
      end;

      LoadEquipmentFromDB;

      for E2 in EquipmentList do
      begin
        if E2.ID = EquipmentID then
        begin
          equipmentName.Text := E2.Name;
          equipmentQuantity.Text := 'Available: ' + IntToStr(E.Quantity);
          equipmentPrice.Text := 'Price: ' + FloatToStr(E.Price);

          if Assigned(E2.Image) and not E2.Image.IsEmpty then
          equipmentShow.Bitmap.Assign(E2.Image)
          else
          equipmentShow.Bitmap := nil;

          Break;
          end;
      end;

      ShowMessage('Equipment reserved successfully!');
      Exit;
    end;
  end;

  ShowMessage('Equipment not found!');
end;

function TfMain.GetGridCardSize(AGrid: TGridPanelLayout): Single;
begin
  Result := (AGrid.Width / 2) - 12;
  if Result < 120 then
    Result := 120;
end;

procedure TfMain.UpdateGridSize(AGrid: TGridPanelLayout);
var
  CardSize: Single;
  I: Integer;
begin
  CardSize := GetGridCardSize(AGrid);

  for I := 0 to AGrid.RowCollection.Count - 1 do
  begin
    AGrid.RowCollection[I].SizeStyle := TGridPanelLayout.TSizeStyle.Absolute;
    AGrid.RowCollection[I].Value := CardSize;
  end;

  AGrid.Height := AGrid.RowCollection.Count * (CardSize + 12);
end;

procedure TfMain.SetupEquipmentGrid(AGrid: TGridPanelLayout; AParent: TScrollBox);
begin
  AGrid.Parent := AParent;
  AGrid.Align := TAlignLayout.Top;

  AGrid.RowCollection.Clear;
  AGrid.ColumnCollection.Clear;

  AGrid.ColumnCollection.Add;
  AGrid.ColumnCollection.Add;

  AGrid.ColumnCollection[0].SizeStyle := TGridPanelLayout.TSizeStyle.Percent;
  AGrid.ColumnCollection[1].SizeStyle := TGridPanelLayout.TSizeStyle.Percent;

  AGrid.ColumnCollection[0].Value := 50;
  AGrid.ColumnCollection[1].Value := 50;

  AGrid.Height := 250;
end;

procedure TfMain.AddEquipmentCardToGrid(const E: TEquipment; AGrid: TGridPanelLayout;
  const ClickHandler: TNotifyEvent);
var
  Img: TImage;
  ItemLayout: TLayout;
  InfoLabel: TLabel;
  RowIndex: Integer;
  CardSize: Single;
  ItemCount: Integer;
begin
  CardSize := GetGridCardSize(AGrid);
  ItemCount := AGrid.ControlsCount;
  RowIndex := ItemCount div 2;

  if AGrid.RowCollection.Count <= RowIndex then
  begin
    with AGrid.RowCollection.Add do
    begin
      SizeStyle := TGridPanelLayout.TSizeStyle.Absolute;
      Value := CardSize;
    end;
  end;

  ItemLayout := TLayout.Create(AGrid);
ItemLayout.Parent := AGrid;

ItemLayout.Align := TAlignLayout.None;
ItemLayout.Width := CardSize;
ItemLayout.Height := CardSize;

ItemLayout.Position.X := (AGrid.Width / 2) * (ItemCount mod 2);
ItemLayout.Position.Y := RowIndex * CardSize;
  ItemLayout.Margins.Rect := TRectF.Create(6, 6, 6, 6);
  ItemLayout.TagString := E.ID;
  ItemLayout.OnClick := ClickHandler;
  ItemLayout.HitTest := True;
  ItemLayout.ClipChildren := True;

  Img := TImage.Create(ItemLayout);
  Img.Parent := ItemLayout;
  Img.Align := TAlignLayout.Client;
  Img.WrapMode := TImageWrapMode.Fit;
  Img.HitTest := False;

  if Assigned(E.Image) and not E.Image.IsEmpty then
    Img.Bitmap.Assign(E.Image);

  InfoLabel := TLabel.Create(ItemLayout);
  InfoLabel.Parent := ItemLayout;
  InfoLabel.Align := TAlignLayout.Bottom;
  InfoLabel.Height := 36;
  InfoLabel.Text := E.Name + ' (' + IntToStr(E.Quantity) + ')';
  InfoLabel.TextSettings.HorzAlign := TTextAlign.Center;
  InfoLabel.TextSettings.VertAlign := TTextAlign.Center;
  InfoLabel.TextSettings.FontColor := TAlphaColorRec.White;
  InfoLabel.StyledSettings := [];
  InfoLabel.HitTest := False;
  InfoLabel.BringToFront;

  AGrid.AddObject(ItemLayout);
  UpdateGridSize(AGrid);
end;


procedure TfMain.UserEquipmentCardClick(Sender: TObject);
var
  EquipID: string;
  E: TEquipment;
begin
  EquipID := TLayout(Sender).TagString;

  for E in EquipmentList do
  begin
    if E.ID = EquipID then
    begin
      SelectedEquipmentID := E.ID;

      equipmentName.Text := E.Name;
      equipmentQuantity.Text :=
        'Available: ' + IntToStr(E.Quantity) +
        '    Price: ' + FloatToStr(E.Price);

      if Assigned(E.Image) and not E.Image.IsEmpty then
        equipmentShow.Bitmap.Assign(E.Image)
      else
        equipmentShow.Bitmap := nil;

      tcMain.ActiveTab := tiEquipmentReservation;
      Exit;
    end;
  end;

  ShowMessage('Equipment not found.');
end;

procedure TfMain.userLoginScreenClick(Sender: TObject);
begin
tcMain.ActiveTab := tiLogin;
end;

procedure TfMain.LoadUsersFromDB;
var
  U: TUserInfo;
begin
  if not Assigned(DataModule2) then Exit;
  if not Assigned(DataModule2.KorisnikQuery) then Exit;

  userBox.BeginUpdate;
  try
    if Assigned(userBox.Content) then
      ClearLayoutSafe(userBox.Content);

    DataModule2.KorisnikQuery.Close;
    DataModule2.KorisnikQuery.SQL.Clear;
    DataModule2.KorisnikQuery.SQL.Text :=
      'SELECT ID_kor, Ime, Prezime FROM Korisnik ORDER BY ID_kor';
    DataModule2.KorisnikQuery.Open;

    while not DataModule2.KorisnikQuery.Eof do
    begin
      U.ID := DataModule2.KorisnikQuery.FieldByName('ID_kor').AsString;
      U.Ime := DataModule2.KorisnikQuery.FieldByName('Ime').AsString;
      U.Prezime := DataModule2.KorisnikQuery.FieldByName('Prezime').AsString;

      AddUserCard(U);

      DataModule2.KorisnikQuery.Next;
    end;

    DataModule2.KorisnikQuery.Close;
  finally
    userBox.EndUpdate;
  end;
end;

procedure TfMain.AddUserCard(const U: TUserInfo);
var
  R: TRectangle;
  NameLbl: TLabel;
  SurnameLbl: TLabel;
  IDLbl: TLabel;
begin
  R := TRectangle.Create(userBox);
  R.Parent := userBox;
  R.Align := TAlignLayout.Top;
  R.Height := 90;
  R.Margins.Left := 10;
  R.Margins.Right := 10;
  R.Margins.Top := 6;
  R.Margins.Bottom := 6;
  R.XRadius := 12;
  R.YRadius := 12;
  R.Fill.Color := TAlphaColorRec.Lightblue;
  R.Stroke.Kind := TBrushKind.None;
  R.ClipChildren := True;

  NameLbl := TLabel.Create(R);
  NameLbl.Parent := R;
  NameLbl.Position.X := 12;
  NameLbl.Position.Y := 8;
  NameLbl.Width := 250;
  NameLbl.Height := 22;
  NameLbl.StyledSettings := [];
  NameLbl.TextSettings.Font.Size := 16;
  NameLbl.TextSettings.FontColor := TAlphaColorRec.Black;
  NameLbl.Text := 'Ime: ' + U.Ime;

  SurnameLbl := TLabel.Create(R);
  SurnameLbl.Parent := R;
  SurnameLbl.Position.X := 12;
  SurnameLbl.Position.Y := 32;
  SurnameLbl.Width := 250;
  SurnameLbl.Height := 22;
  SurnameLbl.StyledSettings := [];
  SurnameLbl.TextSettings.Font.Size := 16;
  SurnameLbl.TextSettings.FontColor := TAlphaColorRec.Black;
  SurnameLbl.Text := 'Prezime: ' + U.Prezime;

  IDLbl := TLabel.Create(R);
  IDLbl.Parent := R;
  IDLbl.Position.X := 12;
  IDLbl.Position.Y := 56;
  IDLbl.Width := 250;
  IDLbl.Height := 22;
  IDLbl.StyledSettings := [];
  IDLbl.TextSettings.Font.Size := 15;
  IDLbl.TextSettings.FontColor := TAlphaColorRec.Black;
  IDLbl.Text := 'ID: ' + U.ID;
end;

procedure TfMain.Logout;
begin
  CurrentUserRole := urNone;
  CurrentUserID := '';


  nameSB.Text := '';
  roleSB.Text := '';

  userFullName.Text := '';
  userRole.Text := '';
  adminFullName.Text := '';
  adminRole.Text := '';

  emailSpace.Text := '';
  passwordSpace.Text := '';
  adminEmailSpace.Text := '';
  adminPasswordSpace.Text := '';

  SelectedDate := 0;
  SelectedTimeSlot := '';
  SelectedHall := '';
  SelectedEquipmentID := '';

  wrongCred.Visible := False;
  rePassConfirm.Visible := False;

  tcMain.ActiveTab := tiLogin;
end;

procedure TfMain.SaveActivityToDB(const E: TEvent);
begin
  with DataModule2.AktivnostQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'INSERT INTO Aktivnost ' +
      '(id_aktivnost, naziv, tip_aktivnosti, opis, broj_mesta, termin, hala, datum) ' +
      'VALUES (:id, :naziv, :tip, :opis, :mesta, :termin, :hala, :datum)';

    ParamByName('id').AsString := E.ID;
    ParamByName('naziv').AsString := E.Title;
    ParamByName('tip').AsString := E.ActivityType;
    ParamByName('opis').AsString := E.Description;
    ParamByName('mesta').AsInteger := E.Tickets;
    ParamByName('termin').AsString := E.TimeSlot;
    ParamByName('hala').AsString := E.Hall;
    ParamByName('datum').AsDate := E.EventDate;

    ExecSQL;
  end;
end;

procedure TfMain.LoadActivitiesFromDB;
var
  E: TEvent;
  EventList: TList<TEvent>;
  D: TDate;
  Pair: TPair<TDate, TList<TEvent>>;
begin
  for Pair in EventsByDate do
    Pair.Value.Free;
  EventsByDate.Clear;

  with DataModule2.AktivnostQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'SELECT id_aktivnost, naziv, tip_aktivnosti, opis, broj_mesta, termin, hala, datum ' +
      'FROM Aktivnost ORDER BY datum, termin';
    Open;

    while not Eof do
    begin
      E.ID := FieldByName('id_aktivnost').AsString;
      E.Title := FieldByName('naziv').AsString;
      E.ActivityType := FieldByName('tip_aktivnosti').AsString;
      E.Description := FieldByName('opis').AsString;
      E.Tickets := FieldByName('broj_mesta').AsInteger;
      E.TimeSlot := FieldByName('termin').AsString;
      E.Hall := FieldByName('hala').AsString;
      E.EventDate := FieldByName('datum').AsDateTime;

      D := DateOf(E.EventDate);

      if not EventsByDate.TryGetValue(D, EventList) then
      begin
        EventList := TList<TEvent>.Create;
        EventsByDate.Add(D, EventList);
      end;

      EventList.Add(E);
      Next;
    end;

    Close;
  end;
end;

procedure TfMain.ReserveActivity(const ActivityID: string);
var
  E: TEvent;
  D: TDate;
begin
  if not FindEventByID(ActivityID, E, D) then
  begin
    ShowMessage('Activity not found.');
    Exit;
  end;

  if E.Tickets <= 0 then
  begin
    ShowMessage('No free places left.');
    Exit;
  end;

  with DataModule2.RezAktivnostiQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'INSERT INTO RezervacijaAktivnosti (id_kor, id_aktivnost, datum_rezervacije) ' +
      'VALUES (:kor, :aktivnost, :datumvreme)';

    ParamByName('kor').AsString := CurrentUserID;
    ParamByName('aktivnost').AsString := ActivityID;
    ParamByName('datumvreme').AsDateTime := Now;

    ExecSQL;
  end;

  with DataModule2.AktivnostQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'UPDATE Aktivnost SET broj_mesta = broj_mesta - 1 ' +
      'WHERE id_aktivnost = :id AND broj_mesta > 0';

    ParamByName('id').AsString := ActivityID;
    ExecSQL;
  end;

  LoadActivitiesFromDB;
  ShowMessage('Activity reserved successfully!');
end;

procedure TfMain.LoadUserActivitiesForDate(ADate: TDate);
var
  E: TEvent;
begin
  if Assigned(userEventLayout) and Assigned(userEventLayout.Content) then
    ClearLayoutSafe(userEventLayout.Content);

  with DataModule2.AktivnostQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'SELECT id_aktivnost, naziv, tip_aktivnosti, opis, broj_mesta, termin, hala, datum ' +
      'FROM Aktivnost ' +
      'WHERE datum = :datum ' +
      'ORDER BY termin';

    ParamByName('datum').AsDate := ADate;
    Open;

    while not Eof do
    begin
      E.ID := FieldByName('id_aktivnost').AsString;
      E.Title := FieldByName('naziv').AsString;
      E.ActivityType := FieldByName('tip_aktivnosti').AsString;
      E.Description := FieldByName('opis').AsString;
      E.Tickets := FieldByName('broj_mesta').AsInteger;
      E.TimeSlot := FieldByName('termin').AsString;
      E.Hall := FieldByName('hala').AsString;
      E.EventDate := FieldByName('datum').AsDateTime;

      AddUserActivityRectangle(E);
      Next;
    end;

    Close;
  end;
end;

procedure TfMain.AddUserActivityRectangle(const E: TEvent);
var
  R: TRectangle;
  L: TLabel;
begin
  R := TRectangle.Create(userEventLayout);
  R.Parent := userEventLayout;
  R.Height := 70;
  R.Align := TAlignLayout.Top;
  R.Fill.Color := TAlphaColorRec.Blue;
  R.Stroke.Kind := TBrushKind.Solid;
  R.Stroke.Color := TAlphaColorRec.Black;
  R.Margins.Top := 4;
  R.Margins.Bottom := 4;

  R.TagString := E.ID;
  R.OnClick := UserActivityRectangleClick;
  R.HitTest := True;

  L := TLabel.Create(R);
  L.Parent := R;
  L.Align := TAlignLayout.Client;
  L.WordWrap := True;
  L.StyledSettings := [];
  L.TextSettings.FontColor := TAlphaColorRec.White;
  L.Text :=
    FormatDateTime('dd.mm.yyyy', E.EventDate) + ' ' + E.TimeSlot + sLineBreak +
    E.Title;
  L.TextSettings.HorzAlign := TTextAlign.Leading;
  L.TextSettings.VertAlign := TTextAlign.Center;
  L.Margins.Left := 8;
  L.HitTest := False;
end;

procedure TfMain.UserActivityRectangleClick(Sender: TObject);
var
  ActivityID: string;
begin
  ActivityID := TRectangle(Sender).TagString;
  SelectedActivityID := ActivityID;
  ReserveActivity(ActivityID);

  LoadUserActivitiesForDate(DateOf(userCalendar.Date));
end;

procedure TfMain.LoadReservedActivitiesForCurrentUser;
var
  E: TEvent;
begin
  if Assigned(userEventLayout) and Assigned(userEventLayout.Content) then
    ClearLayoutSafe(userEventLayout.Content);

  with DataModule2.RezAktivnostiQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'SELECT A.id_aktivnost, A.naziv, A.tip_aktivnosti, A.opis, ' +
      'A.broj_mesta, A.termin, A.hala, A.datum ' +
      'FROM RezervacijaAktivnosti R ' +
      'INNER JOIN Aktivnost A ON A.id_aktivnost = R.id_aktivnost ' +
      'WHERE R.id_kor = :kor ' +
      'ORDER BY A.datum, A.termin';

    ParamByName('kor').AsString := CurrentUserID;
    Open;

    while not Eof do
    begin
      E.ID := FieldByName('id_aktivnost').AsString;
      E.Title := FieldByName('naziv').AsString;
      E.ActivityType := FieldByName('tip_aktivnosti').AsString;
      E.Description := FieldByName('opis').AsString;
      E.Tickets := FieldByName('broj_mesta').AsInteger;
      E.TimeSlot := FieldByName('termin').AsString;
      E.Hall := FieldByName('hala').AsString;
      E.EventDate := FieldByName('datum').AsDateTime;

      AddReservedActivityRectangle(E);
      Next;
    end;

    Close;
  end;
end;

procedure TfMain.AddReservedActivityRectangle(const E: TEvent);
var
  R: TRectangle;
  L: TLabel;
begin
  R := TRectangle.Create(userEventLayout);
  R.Parent := userEventLayout;
  R.Height := 70;
  R.Align := TAlignLayout.Top;
  R.Fill.Color := TAlphaColorRec.Blue;
  R.Stroke.Kind := TBrushKind.Solid;
  R.Stroke.Color := TAlphaColorRec.Black;
  R.Margins.Top := 4;
  R.Margins.Bottom := 4;

  L := TLabel.Create(R);
  L.Parent := R;
  L.Align := TAlignLayout.Client;
  L.WordWrap := True;
  L.StyledSettings := [];
  L.TextSettings.FontColor := TAlphaColorRec.White;
  L.Text :=
    DateToStr(E.EventDate) + ' | ' +
    E.Title + ' | ' + E.TimeSlot + ' | ' + E.Hall;
  L.TextSettings.HorzAlign := TTextAlign.Leading;
  L.TextSettings.VertAlign := TTextAlign.Center;
  L.Margins.Left := 8;
  L.HitTest := False;
end;

procedure TfMain.LoadUserActivitiesFiltered(ADate: TDate; const ATimeSlot, AHall: string);
var
  E: TEvent;
begin
  if Assigned(userEventLayout) and Assigned(userEventLayout.Content) then
    ClearLayoutSafe(userEventLayout.Content);

  with DataModule2.AktivnostQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'SELECT id_aktivnost, naziv, tip_aktivnosti, opis, broj_mesta, termin, hala, datum ' +
      'FROM Aktivnost ' +
      'WHERE datum = :datum AND termin = :termin AND hala = :hala ' +
      'ORDER BY naziv';

    ParamByName('datum').AsDate := ADate;
    ParamByName('termin').AsString := ATimeSlot;
    ParamByName('hala').AsString := AHall;
    Open;

    while not Eof do
    begin
      E.ID := FieldByName('id_aktivnost').AsString;
      E.Title := FieldByName('naziv').AsString;
      E.ActivityType := FieldByName('tip_aktivnosti').AsString;
      E.Description := FieldByName('opis').AsString;
      E.Tickets := FieldByName('broj_mesta').AsInteger;
      E.TimeSlot := FieldByName('termin').AsString;
      E.Hall := FieldByName('hala').AsString;
      E.EventDate := FieldByName('datum').AsDateTime;

      AddUserActivityRectangle(E);
      Next;
    end;

    Close;
  end;
end;

procedure TfMain.UserTimeSlotClick(Sender: TObject);
begin
  SelectedTimeSlot := TLabel(Sender).Text;
  HighlightSelectedLabel(TLabel(Sender));
  tcMain.ActiveTab := tiHalls;
end;

procedure TfMain.UserHallClick(Sender: TObject);
begin
  SelectedHall := TLabel(Sender).Text;
  HighlightSelectedLabel(TLabel(Sender));

  LoadUserEventsForSelection;
  tcMain.ActiveTab := tiTermins;
end;

procedure ClearScrollBoxItems(AScroll: TScrollBox);
var
  I: Integer;
begin
  if not Assigned(AScroll) or not Assigned(AScroll.Content) then
    Exit;

  for I := AScroll.Content.ChildrenCount - 1 downto 0 do
    AScroll.Content.Children[I].DisposeOf;
end;

procedure TfMain.LoadAdminEventsForSelection;
var
  EventList: TList<TEvent>;
  E: TEvent;
begin
  ClearScrollBoxItems(eventLayout);

  if EventsByDate.TryGetValue(DateOf(SelectedDate), EventList) then
  begin
    for E in EventList do
    begin
      if (E.TimeSlot = SelectedTimeSlot) and (E.Hall = SelectedHall) then
        AddEventRectangle(E);
    end;
  end;
end;

procedure TfMain.LoadUserEventsForSelection;
var
  EventList: TList<TEvent>;
  E: TEvent;
begin
  ClearScrollBoxItems(userEventLayout);

  if EventsByDate.TryGetValue(DateOf(SelectedDate), EventList) then
  begin
    for E in EventList do
    begin
      if (E.TimeSlot = SelectedTimeSlot) and (E.Hall = SelectedHall) then
        AddUserEventRectangle(E);
    end;
  end;
end;

procedure TfMain.AddUserEventRectangle(const E: TEvent);
var
  R: TRectangle;
  L: TLabel;
begin
  R := TRectangle.Create(userEventLayout);
  R.Parent := userEventLayout;
  R.Height := 70;
  R.Align := TAlignLayout.Top;
  R.Fill.Color := TAlphaColorRec.Blue;
  R.Stroke.Kind := TBrushKind.Solid;
  R.Stroke.Color := TAlphaColorRec.Black;
  R.Margins.Top := 4;
  R.Margins.Bottom := 4;

  R.TagString := E.ID;
  R.OnClick := UserActivityRectangleClick;
  R.HitTest := True;

  L := TLabel.Create(R);
  L.Parent := R;
  L.Align := TAlignLayout.Client;
  L.Text :=
    E.Title + ' | ' + E.TimeSlot + ' | ' + E.Hall +
    ' | Free places: ' + IntToStr(E.Tickets);
  L.TextSettings.HorzAlign := TTextAlign.Leading;
  L.TextSettings.VertAlign := TTextAlign.Center;
  L.Margins.Left := 8;
  L.HitTest := False;
end;

function TfMain.GenerateSalt(ALength: Integer = 16): string;
const
  HexChars: PChar = '0123456789ABCDEF';
var
  I: Integer;
  B: Byte;
begin
  Result := '';
  for I := 1 to ALength do
  begin
    B := Random(256);
    Result := Result + HexChars[(B shr 4) and $F] + HexChars[B and $F];
  end;
end;

function TfMain.HashPassword(const APassword, ASalt: string): string;
begin
  Result := THashSHA2.GetHashString(APassword + ASalt);
end;

function TfMain.VerifyPassword(const APassword, ASalt, AStoredHash: string): Boolean;
begin
  Result := SameText(HashPassword(APassword, ASalt), AStoredHash);
end;

procedure TfMain.LoadCurrentProfile;
var
  Ime, Prezime: string;
begin
  if CurrentUserRole = urUser then
  begin
    with DataModule2.KorisnikQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Text :=
        'SELECT Ime, Prezime FROM Korisnik WHERE ID_kor = :id';
      ParamByName('id').AsString := CurrentUserID;
      Open;

      if not IsEmpty then
      begin
        Ime := FieldByName('Ime').AsString;
        Prezime := FieldByName('Prezime').AsString;

        nameSB.Text := Ime + ' ' + Prezime;
        roleSB.Text := 'Korisnik';

        UserFullName.Text := Ime + ' ' + Prezime;
        UserRole.Text := 'Korisnik';
      end;

      Close;
    end;
  end
  else if CurrentUserRole = urAdmin then
  begin
    with DataModule2.ZaposleniQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Text :=
        'SELECT Ime, Prezime FROM Zaposleni WHERE ID_zap = :id';
      ParamByName('id').AsString := CurrentUserID;
      Open;

      if not IsEmpty then
      begin
        Ime := FieldByName('Ime').AsString;
        Prezime := FieldByName('Prezime').AsString;

        nameSB.Text := Ime + ' ' + Prezime;
        roleSB.Text := 'Zaposleni';


        adminFullName.Text := Ime + ' ' + Prezime;
        adminRole.Text := 'Zaposleni';
      end;

      Close;
    end;
  end
  else
  begin
    nameSB.Text := '';
    roleSB.Text := '';
  end;
end;

procedure TfMain.OpenCurrentProfile;
begin
  LoadCurrentProfile;

  case CurrentUserRole of
    urUser:
      tcMain.ActiveTab := tiUserProfile;
    urAdmin:
      tcMain.ActiveTab := tiAdminProfile;
  else
    ShowMessage('No user is currently logged in.');
  end;
end;

procedure TfMain.userProfileClick(Sender: TObject);
begin
  OpenCurrentProfile;
  SideBar.HideMaster;
end;


procedure TfMain.userDeleteClick(Sender: TObject);
begin
  DeleteCurrentUserAccount;
end;

procedure TfMain.DeleteCurrentUserAccount;
begin
  with DataModule2.RezAktivnostiQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'DELETE FROM RezervacijaAktivnosti WHERE ID_kor = :id';
    ParamByName('id').AsString := CurrentUserID;
    ExecSQL;
  end;

  with DataModule2.RezOpremeQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'DELETE FROM RezervacijaOpreme WHERE ID_kor = :id';
    ParamByName('id').AsString := CurrentUserID;
    ExecSQL;
  end;

  with DataModule2.KorisnikQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'DELETE FROM Korisnik WHERE ID_kor = :id';
    ParamByName('id').AsString := CurrentUserID;
    ExecSQL;
  end;

  ShowMessage('Account deleted successfully.');
  Logout;
end;

procedure TfMain.userViewResTerminsClick(Sender: TObject);
begin
  LoadReservedActivitiesForCurrentUser;
  tcMain.ActiveTab := tiTermins;
end;

procedure TfMain.LoadReservedEquipmentForCurrentUser;
var
  EquipID, EquipName: string;
  Qty: Integer;
begin
  if Assigned(userEventLayout) and Assigned(userEventLayout.Content) then
    ClearLayoutSafe(userEventLayout.Content);

  with DataModule2.RezOpremeQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'SELECT O.Id_Opreme, O.Naziv, R.Kolicina ' +
      'FROM RezervacijaOpreme R ' +
      'INNER JOIN Oprema O ON O.Id_Opreme = R.ID_opreme ' +
      'WHERE R.ID_kor = :kor ' +
      'ORDER BY O.Naziv';

    ParamByName('kor').AsString := CurrentUserID;
    Open;

    while not Eof do
    begin
      EquipID := FieldByName('Id_Opreme').AsString;
      EquipName := FieldByName('Naziv').AsString;
      Qty := FieldByName('Kolicina').AsInteger;

      AddReservedEquipmentRectangle(EquipID, EquipName, Qty);
      Next;
    end;

    Close;
  end;
end;

procedure TfMain.AddReservedEquipmentRectangle(const EquipID, EquipName: string; Qty: Integer);
var
  R: TRectangle;
  L: TLabel;
begin
  R := TRectangle.Create(userEventLayout);
  R.Parent := userEventLayout;
  R.Height := 70;
  R.Align := TAlignLayout.Top;
  R.Fill.Color := TAlphaColorRec.Blue;
  R.Stroke.Kind := TBrushKind.Solid;
  R.Stroke.Color := TAlphaColorRec.Black;
  R.Margins.Top := 4;
  R.Margins.Bottom := 4;

  R.TagString := EquipID;
  R.HitTest := False;

  L := TLabel.Create(R);
  L.Parent := R;
  L.Align := TAlignLayout.Client;
  L.WordWrap := True;
  L.StyledSettings := [];
  L.TextSettings.FontColor := TAlphaColorRec.White;
  L.Text :=
  EquipName + sLineBreak +
  'Broj računa: ' + EquipID + sLineBreak +
  'Quantity: ' + IntToStr(Qty);
  L.TextSettings.HorzAlign := TTextAlign.Leading;
  L.TextSettings.VertAlign := TTextAlign.Center;
  L.Margins.Left := 8;
  L.HitTest := False;
end;

procedure TfMain.userViewResEquipClick(Sender: TObject);
begin
  LoadReservedEquipmentForCurrentUser;
  tcMain.ActiveTab := tiTermins;
end;

procedure TfMain.userGoToDeleteClick(Sender: TObject);
begin
  TcMain.ActiveTab := tiUserDelete;
end;

end.
