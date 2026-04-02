unit Projekat;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  System.IOUtils,
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
    ID: string;
    Title: string;
    Description: string;
    Thumb: TBitmap;
    Image: TBitmap;
    constructor Create;
    destructor Destroy; override;
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
    tiHome: TTabItem;
    bgHome: TImage;
    newsBox: TScrollBox;
    ActionList1: TActionList;
    ChangeTabAction1: TChangeTabAction;
    ImageList1: TImageList;
    ChangeTabAction2: TChangeTabAction;
    ChangeTabAction3: TChangeTabAction;
    ChangeTabAction4: TChangeTabAction;
    backToUTimeSlots: TImage;
    ChangeTabAction5: TChangeTabAction;
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
    tiReservationView: TTabItem;
    bgReservationView: TImage;
    back5: TImage;
    reservationDate: TLabel;
    cancelButton: TCornerButton;
    hallName: TLabel;
    tiEquipment: TTabItem;
    bgEquipment: TImage;
    ChangeTabAction7: TChangeTabAction;
    backToEquip: TImage;
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
    Image81: TImage;
    ChangeTabAction14: TChangeTabAction;
    ChangeTabAction15: TChangeTabAction;
    ChangeTabAction16: TChangeTabAction;
    nameSpace: TEdit;
    surnameSpace: TEdit;
    phoneSpace: TEdit;
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
    tiAdminTS: TTabItem;
    tiAdminBg: TImage;
    TS6: TLabel;
    TS10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    tiAdminActivities: TTabItem;
    Image30: TImage;
    activityAddButton: TImage;
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
    userDelete: TCornerButton;
    Label6: TLabel;
    cancelDelete: TCornerButton;
    deleteArticleButton: TCornerButton;
    backToCal: TImage;
    reservationTitle: TLabel;
    reservationTime: TLabel;
    adminRegStart: TImage;
    Label23: TLabel;
    tiReservedTermins: TTabItem;
    Image83: TImage;
    reservedTerminsBox: TScrollBox;
    backToTicketss: TImage;
    tiReservedEquip: TTabItem;
    Image84: TImage;
    resEquipBox: TScrollBox;
    backFromEquip: TImage;
    tiViewResEquip: TTabItem;
    Image87: TImage;
    cancelResEquip: TCornerButton;
    yourOrder: TLabel;
    resEquipID: TLabel;
    instructions: TLabel;
    RoundRect9: TRoundRect;
    Image116: TImage;
    Image117: TImage;
    Image118: TImage;
    Image120: TImage;
    reservationDate1: TLabel;
    reserveEventBtn: TCornerButton;
    reservationHall1: TLabel;
    reservationTitle1: TLabel;
    reservationTime1: TLabel;
    check: TLabel;
    reserveTicQty: TEdit;
    HoverEffect: TGlowEffect;
    HomeMenuAnimation: TFloatAnimation;
    Image31: TImage;
    RoundRect8: TRoundRect;
    Image32: TImage;
    Image33: TImage;
    Image121: TImage;
    tiActivityType: TTabItem;
    Image122: TImage;
    gameButton: TImage;
    Label4: TLabel;
    backB: TImage;
    RoundRect11: TRoundRect;
    Image125: TImage;
    Image126: TImage;
    Image127: TImage;
    trainingButton: TImage;
    Label27: TLabel;
    otherButton: TImage;
    Label28: TLabel;
    deleteActivityButton: TCornerButton;
    Image34: TImage;
    Image123: TImage;
    reservedTicketCount: TLabel;
    tiAdminViewingUser: TTabItem;
    Image124: TImage;
    Image128: TImage;
    adminViewUserName: TLabel;
    Label31: TLabel;
    Image132: TImage;
    adminViewUserActivity: TCornerButton;
    adminViewUserEquipment: TCornerButton;
    adminDeleteUser: TCornerButton;
    tiAdminConfirmDelete: TTabItem;
    Image129: TImage;
    adminConfirmDelete: TCornerButton;
    Label32: TLabel;
    cancelDelete1: TCornerButton;
    tiAdminViewUserEquip: TTabItem;
    Image130: TImage;
    Image133: TImage;
    adminViewUserEquipBox: TScrollBox;
    tiAdminViewingUserEvents: TTabItem;
    Image38: TImage;
    Image39: TImage;
    adminViewUserEventBox: TScrollBox;
    ImageThumbnail: TImage;
    ImageArticle: TImage;
    adminViewUserID: TLabel;
    Image85: TImage;
    Image16: TImage;
    userPicture1: TImage;
    RoundRect7: TRoundRect;
    Image28: TImage;
    Image35: TImage;
    Image36: TImage;
    userPicture3: TImage;
    userPicture2: TImage;
    userPicture4: TImage;
    userPicture6: TImage;
    Image40: TImage;
    userProfile: TImage;
    userPicture7: TImage;
    Circle1: TCircle;
    btnShowLoginPass: TImage;
    btnShowRegPass: TImage;
    btnShowRepeatPass: TImage;
    btnShowAdminLoginPass: TImage;
    btnShowAdminRegPass: TImage;
    btnShowAdminRepeatPass: TImage;
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
    procedure backToEquipClick(Sender: TObject);
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
    procedure AddReservedActivityRectangle(const E: TEvent; ReservedQty: Integer);
    procedure LoadUserActivitiesFiltered(ADate: TDate; const ATimeSlot, AHall: string);
    procedure UserTimeSlotClick(Sender: TObject);
    procedure UserHallClick(Sender: TObject);
    procedure Image41Click(Sender: TObject);
    procedure LoadAdminEventsForSelection;
    procedure LoadUserEventsForSelection;
    procedure AddUserEventRectangle(const E: TEvent);
    procedure regAdminClick(Sender: TObject);
    procedure userPicture1Click(Sender: TObject);
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
    procedure MakeMemoTransparent(AMemo: TMemo);
    procedure SaveArticleToDB(const A: TArticle);
    procedure LoadArticlesFromDB;
    procedure deleteArticleButtonClick(Sender: TObject);
    procedure DeleteArticleFromDB(const ArticleID: string);
    procedure backToCalClick(Sender: TObject);
    procedure backToUTimeSlotsClick(Sender: TObject);
    procedure backToHallsClick(Sender: TObject);
    procedure OpenReservationView(const E: TEvent);
    procedure CancelCurrentReservation;
    procedure cancelButtonClick(Sender: TObject);
    procedure DeleteReservationFromDB(const ActivityID: string);
    procedure ReservedActivityRectangleClick(Sender: TObject);
    procedure adminRegStartClick(Sender: TObject);
    procedure backToTicketssClick(Sender: TObject);
    procedure backFromEquipClick(Sender: TObject);
    procedure ReservedEquipmentRectangleClick(Sender: TObject);
    procedure cancelResEquipClick(Sender: TObject);
    procedure DeleteEquipmentReservationFromDB(const EquipID: string);
    procedure reserveEventBtnClick(Sender: TObject);
    procedure back5Click(Sender: TObject);
    procedure userMenuImageMouseEnter(Sender: TObject);
    procedure userMenuImageMouseLeave(Sender: TObject);
    procedure AttachHoverEffectToImage(AImage: TImage);
    procedure Image31Click(Sender: TObject);
    procedure GameButtonClick(Sender: TObject);
    procedure TrainingButtonClick(Sender: TObject);
    procedure OtherButtonClick(Sender: TObject);
    procedure OpenCreateActivityForType(const AType: string; HasTickets: Boolean);
    procedure Image102Click(Sender: TObject);
    procedure deleteActivityButtonClick(Sender: TObject);
    procedure DeleteActivityFromDB(const ActivityID: string);
    procedure Image132Click(Sender: TObject);
    procedure cancelDelete1Click(Sender: TObject);
    procedure Image133Click(Sender: TObject);
    procedure UserCardClick(Sender: TObject);
    procedure OpenAdminUserView(const U: TUserInfo);
    procedure adminViewUserActivityClick(Sender: TObject);
    procedure adminViewUserEquipmentClick(Sender: TObject);
    procedure adminDeleteUserClick(Sender: TObject);
    procedure adminConfirmDeleteClick(Sender: TObject);
    procedure LoadAdminViewUserEvents;
    procedure LoadAdminViewUserEquipment;
    procedure AddAdminViewUserEventRectangle(const E: TEvent; ReservedQty: Integer);
    procedure AddAdminViewUserEquipmentRectangle(const EquipID, EquipName: string; Qty: Integer);
    procedure DeleteUserFromDB(const UserID: string);
    procedure userPictureClick(Sender: TObject);
    procedure adminPictureClick(Sender: TObject);
    procedure SaveCurrentProfilePictureToDB(const AFileName: string);
    procedure LoadBitmapFromBlobField(AField: TField; AImage: TImage);
    procedure ClearProfilePicture(AImage: TImage);
    procedure SyncProfilePicturesFromSource(ASource: TImage);
    procedure ClearAllProfilePictures;
    procedure MakeImageCircular(AImage: TImage);
    procedure SetupAllProfileImages;
    procedure TogglePasswordClick(Sender: TObject);
  private
  SelectedDate: TDateTime;
    SelectedTimeSlot: string;
    SelectedHall: string;
    SelectedActivityID: string;
    SelectedArticleID: string;
    SelectedReserveQty: Integer;
    SelectedActivityType: string;
    SelectedReservedTicketCount: Integer;
    SelectedAdminViewUserID: string;
    SelectedAdminViewUserName: string;

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
    function FindEquipmentByID(const EquipID: string; out E: TEquipment): Boolean;


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

  MakeMemoTransparent(memoDesc);
  MakeMemoTransparent(adminMemoDesc);
  MakeMemoTransparent(artDesc);

   OpenDialog1.Filter :=
    'Image files|*.png;*.jpg;*.jpeg;*.bmp|' +
    'PNG|*.png|' +
    'JPEG|*.jpg;*.jpeg|' +
    'Bitmap|*.bmp';

  btnShowLoginPass.TagObject := passwordSpace;
  btnShowRegPass.TagObject := regPasswordSpace;
  btnShowRepeatPass.TagObject := repeatPasswordSpace;
  btnShowAdminLoginPass.TagObject := adminPasswordSpace;
  btnShowAdminRegPass.TagObject := adminPassReg;
  btnShowAdminRepeatPass.TagObject := adminRepass;

  memoDesc.ApplyStyleLookup;
  if memoDesc.FindStyleResource('background') is TControl then
    TControl(memoDesc.FindStyleResource('background')).Visible := False;

  if Assigned(DataModule2) and Assigned(DataModule2.AktivnostQuery) then
    LoadActivitiesFromDB;
  if Assigned(DataModule2) and Assigned(DataModule2.ArtikliQuery) then
  LoadArticlesFromDB;
end;

constructor TArticle.Create;
begin
  inherited;
  Thumb := TBitmap.Create;
  Image := TBitmap.Create;
end;

destructor TArticle.Destroy;
begin
  Thumb.Free;
  Image.Free;
  inherited;
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



procedure TfMain.cancelDelete1Click(Sender: TObject);
begin
tcMain.ActiveTab := tiAdminViewingUser;
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


    tcMain.ActiveTab := tiHome;
  end;
end;

procedure TfMain.deleteArticleButtonClick(Sender: TObject);
var
  I: Integer;
begin

  DeleteArticleFromDB(SelectedArticleID);

  for I := Articles.Count - 1 downto 0 do
  begin
    if Articles[I].ID = SelectedArticleID then
    begin
      Articles.Delete(I);
      Break;
    end;
  end;

  SelectedArticleID := '';
  adminArticleTitle.Text := '';
  adminMemoDesc.Text := '';
  adminArtImg.Bitmap := nil;

  LoadArticlesFromDB;
  tcMain.ActiveTab := tiAdminHome;
end;

procedure TfMain.deleteEquipButtonClick(Sender: TObject);
var
  I: Integer;
begin

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

procedure TfMain.adminRegStartClick(Sender: TObject);
begin
tcMain.ActiveTab := tiAdminReg;
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

  if not TryStrToInt(Trim(adminPhoneReg.Text), telefon) then
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
  tcMain.ActiveTab := tiAdminSettings;
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
  postActivityButton.Enabled := (SelectedDate <> 0) and (SelectedTimeSlot <> '') and (SelectedHall <> '');

  LoadAdminEventsForSelection;
  tcMain.ActiveTab := tiAdminActivities;
end;

procedure TfMain.back3Click(Sender: TObject);
begin
tcMain.Previous;
end;

procedure TfMain.back5Click(Sender: TObject);
begin
tcMain.ActiveTab := tiReservedTermins;
end;

procedure TfMain.backFromEquipClick(Sender: TObject);
begin
tcMain.ActiveTab := tiUserProfile;
end;


procedure TfMain.reservedTerminsClick(Sender: TObject);
begin
  LoadReservedActivitiesForCurrentUser;
  tcMain.ActiveTab := tiReservedTermins;
end;


procedure TfMain.Image102Click(Sender: TObject);
begin
tcMain.ActiveTab := tiAdminActivities;
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

procedure TfMain.Image132Click(Sender: TObject);
begin
tcMain.ActiveTab := tiAdminUserView
end;

procedure TfMain.Image133Click(Sender: TObject);
begin
tcMain.ActiveTab := tiAdminViewingUser;
end;

procedure TfMain.Image16Click(Sender: TObject);
begin
Logout;
end;

procedure TfMain.Image31Click(Sender: TObject);
begin
tcMain.ActiveTab := tiAdminCalendar;
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
tcMain.ActiveTab := tiAdminHall;
end;

procedure TfMain.Image43Click(Sender: TObject);
begin
ChangeTabAction4.Execute;
end;

procedure TfMain.Image81Click(Sender: TObject);
begin
tcMain.ActiveTab := tiAdminTS;
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

procedure TfMain.backToEquipClick(Sender: TObject);
begin
tcMain.ActiveTab := tiTickets;
end;

procedure TfMain.backToCalClick(Sender: TObject);
begin
tcMain.ActiveTab := tiCalendar;
end;

procedure TfMain.backToHallsClick(Sender: TObject);
begin
tcMain.ActiveTab := tiHalls;
end;

procedure TfMain.backToTicketssClick(Sender: TObject);
begin
tcMain.ActiveTab := tiTickets;
end;

procedure TfMain.backToUTimeSlotsClick(Sender: TObject);
begin
tcMain.ActiveTab := tiTime;
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
  E: TEquipment;
begin
  if SelectedEquipmentID = '' then
  begin
    ShowMessage('Izaberite opremu.');
    Exit;
  end;

  if not TryStrToInt(Trim(reserveQtyEdit.Text), Qty) then
  begin
    ShowMessage('Unesite validnu količinu.');
    Exit;
  end;

  if Qty <= 0 then
  begin
    ShowMessage('Količina mora biti veća od 0.');
    Exit;
  end;

  if not FindEquipmentByID(SelectedEquipmentID, E) then
  begin
    ShowMessage('Oprema nije pronađena.');
    Exit;
  end;

  if Qty > E.Quantity then
  begin
    ShowMessage('Nema dovoljno opreme na stanju.');
    Exit;
  end;

  ReserveEquipmentF(SelectedEquipmentID, Qty);
  reserveQtyEdit.Text := '';
  tcMain.ActiveTab := tiTickets;
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
  TLabel(Sender).TextSettings.FontColor := TAlphaColorRec.Blue;
end;

procedure TfMain.LabelMouseLeave(Sender: TObject);
begin
  TLabel(Sender).TextSettings.FontColor := TAlphaColorRec.White;
end;

procedure TfMain.thumbnailButtonClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
    ImageThumbnail.Bitmap.LoadFromFile(OpenDialog1.FileName);
end;



procedure TfMain.TS6Click(Sender: TObject);
begin
  SelectedTimeSlot := TLabel(Sender).Text;
  postActivityButton.Enabled := (SelectedDate <> 0) and (SelectedTimeSlot <> '') and (SelectedHall <> '');
  tcMain.ActiveTab := tiAdminHall;
end;

procedure TfMain.publishButtonClick(Sender: TObject);
var
  A: TArticle;
begin
  A := TArticle.Create;
  A.ID := GenerateRandomID;
  A.Title := artTitle.Text;
  A.Description := artDesc.Text;

  if Assigned(ImageThumbnail.Bitmap) and not ImageThumbnail.Bitmap.IsEmpty then
    A.Thumb.Assign(ImageThumbnail.Bitmap);

  if Assigned(ImageArticle.Bitmap) and not ImageArticle.Bitmap.IsEmpty then
    A.Image.Assign(ImageArticle.Bitmap);

  SaveArticleToDB(A);

  Articles.Add(A);
  AddArticleToHome(A);

  artTitle.Text := '';
  artDesc.Text := '';
  ImageThumbnail.Bitmap := nil;
  ImageArticle.Bitmap := nil;

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
  Card := TRectangle.Create(ABox.Content);
  Card.Parent := ABox.Content;
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

  MakeMemoTransparent(memoDesc);

  memoDesc.StyledSettings := [];
  memoDesc.TextSettings.FontColor := TAlphaColorRec.White;

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
  R.Fill.Color := TAlphaColorRec.DeepSkyBlue;
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
  tcMain.ActiveTab := tiActivityType;
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
  if Trim(activityTitle.Text) = '' then
  begin
    ShowMessage('Unesite naziv aktivnosti.');
    Exit;
  end;

  if Trim(activityDesc.Text) = '' then
  begin
    ShowMessage('Unesite opis aktivnosti.');
    Exit;
  end;

  if SelectedActivityType = 'Game' then
  begin
    if not TryStrToInt(Trim(activityTickets.Text), Tickets) then
    begin
      ShowMessage('Unesite validan broj karata.');
      Exit;
    end;
  end
  else
  begin
    Tickets := 0;
  end;

  E.ID := idActivity.Text;
  E.Title := Trim(activityTitle.Text);
  E.Description := Trim(activityDesc.Text);
  E.Tickets := Tickets;
  E.TimeSlot := SelectedTimeSlot;
  E.Hall := SelectedHall;
  E.ActivityType := SelectedActivityType;
  E.EventDate := DateOf(SelectedDate);

  SaveActivityToDB(E);

  if not EventsByDate.TryGetValue(DateOf(SelectedDate), EventList) then
  begin
    EventList := TList<TEvent>.Create;
    EventsByDate.Add(DateOf(SelectedDate), EventList);
  end;

  EventList.Add(E);

  tcMain.ActiveTab := tiAdminActivities;
  LoadAdminEventsForSelection;
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
  Name := Trim(nameEquipment.Text);

  if not TryStrToInt(Trim(quantityEquipment.Text), Qty) then
  begin
    ShowMessage('Unesite validnu količinu.');
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

  if Assigned(DataModule2) and Assigned(DataModule2.ArtikliQuery) then
    LoadArticlesFromDB;

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
begin
  SelectedEquipmentID := TControl(Sender).TagString;
  OpenEquipmentDetails(SelectedEquipmentID);
  tcMain.ActiveTab := tiAdminShowEquip;
end;

procedure TfMain.OpenEquipmentDetails(const EquipID: string);
var
  E: TEquipment;
begin
  if not FindEquipmentByID(EquipID, E) then
  begin
    ShowMessage('Oprema nije pronađena.');
    Exit;
  end;

  SelectedEquipmentID := EquipID;

  titleEquip.Text := E.Name;
  qtyEquip.Text := 'Količina: ' + IntToStr(E.Quantity);

  equipmentName.Text := E.Name;
  equipmentQuantity.Text := 'Količina: ' + IntToStr(E.Quantity);
  equipmentPrice.Text := 'Cena: ' + FormatFloat('0.00', E.Price);
  resEquipID.Text := 'ID: ' + E.ID;

  if Assigned(E.Image) then
  begin
    EquipmentThumbnail.Bitmap.Assign(E.Image);
    equipmentShow.Bitmap.Assign(E.Image);
  end
  else
  begin
    EquipmentThumbnail.Bitmap := nil;
    equipmentShow.Bitmap := nil;
  end;
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
  SelectedArticleID := A.ID;
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
    ShowMessage('Aktivnost nije pronađena.');
    Exit;
  end;

  SelectedActivityID := EventID;

  adminViewActivityTitle.Text := E.Title;
  adminViewActivityId.Text := 'ID: ' + E.ID;
  adminViewActivityDate.Text := 'Datum: ' + FormatDateTime('dd.mm.yyyy', E.EventDate);
  adminViewActivityHall.Text := 'Hala: ' + E.Hall;
  adminViewActivityTime.Text := 'Termin: ' + E.TimeSlot;
  adminViewActivityDesc.Text := E.Description;

  if SameText(E.ActivityType, 'Game') then
  begin
    adminViewActivityTickets.Visible := True;
    adminViewActivityTickets.Text := 'Slobodnih mesta: ' + IntToStr(E.Tickets);
  end
  else
  begin
    adminViewActivityTickets.Visible := False;
    adminViewActivityTickets.Text := '';
  end;

  tcMain.ActiveTab := tiAdminViewActivity;
end;

procedure TfMain.ReserveEquipmentF(EquipmentID: string; Quantity: Integer);
var
  I: Integer;
  E: TEquipment;
  NewQty: Integer;
begin
  for I := 0 to EquipmentList.Count - 1 do
  begin
    if EquipmentList[I].ID = EquipmentID then
    begin
      E := EquipmentList[I];

      if Quantity <= 0 then
      begin
        ShowMessage('Količina mora biti veća od 0.');
        Exit;
      end;

      if Quantity > E.Quantity then
      begin
        ShowMessage('Nema dovoljno opreme na stanju.');
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
          'UPDATE Oprema ' +
          'SET stanje = :stanje ' +
          'WHERE Id_Opreme = :id';

        ParamByName('stanje').AsInteger := NewQty;
        ParamByName('id').AsString := EquipmentID;
        ExecSQL;
      end;

      E.Quantity := NewQty;
      EquipmentList[I] := E;

      LoadEquipmentFromDB;
      LoadReservedEquipmentForCurrentUser;
      OpenEquipmentDetails(EquipmentID);
      Exit;
    end;
  end;

  ShowMessage('Oprema nije pronađena.');
end;

procedure TfMain.reserveEventBtnClick(Sender: TObject);
var
  Qty: Integer;
  E: TEvent;
  EventDate: TDate;
begin
  if SelectedActivityID = '' then
  begin
    ShowMessage('Izaberite aktivnost.');
    Exit;
  end;

  if not FindEventByID(SelectedActivityID, E, EventDate) then
  begin
    ShowMessage('Aktivnost nije pronađena.');
    Exit;
  end;

  if SameText(E.ActivityType, 'Game') then
  begin
    if not TryStrToInt(Trim(reserveTicQty.Text), Qty) then
    begin
      ShowMessage('Unesite validan broj karata.');
      Exit;
    end;

    if Qty <= 0 then
    begin
      ShowMessage('Broj karata mora biti veci od 0.');
      Exit;
    end;
  end
  else
  begin
    Qty := 1;
  end;

  SelectedReserveQty := Qty;

  ReserveActivity(SelectedActivityID);

  reserveTicQty.Text := '';
  reservationTitle1.Text := '';
  reservationDate1.Text := '';
  reservationTime1.Text := '';
  reservationHall1.Text := '';
  check.Text := '';

  tcMain.ActiveTab := tiTickets;
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
begin
  SelectedEquipmentID := TControl(Sender).TagString;
  OpenEquipmentDetails(SelectedEquipmentID);
  reserveQtyEdit.Text := '1';
  tcMain.ActiveTab := tiEquipmentReservation;
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
  R.Fill.Color := TAlphaColorRec.DeepSkyblue;
  R.Stroke.Kind := TBrushKind.None;
  R.ClipChildren := True;
  R.TagString := U.ID;
  R.OnClick := UserCardClick;
  R.HitTest := True;

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
  SurnameLbl.HitTest := False;

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
  IDLbl.HitTest := False;
end;

procedure TfMain.Logout;
begin
  CurrentUserRole := urNone;
  CurrentUserID := '';

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
  EventDate: TDate;
  I: Integer;
  EventList: TList<TEvent>;
begin
  if not FindEventByID(ActivityID, E, EventDate) then
  begin
    ShowMessage('Aktivnost nije pronađena.');
    Exit;
  end;

  if SameText(E.ActivityType, 'Game') then
  begin
    if SelectedReserveQty <= 0 then
    begin
      ShowMessage('Unesite validan broj karata.');
      Exit;
    end;

    if SelectedReserveQty > E.Tickets then
    begin
      ShowMessage('Nema dovoljno slobodnih karata.');
      Exit;
    end;
  end
  else
  begin
    SelectedReserveQty := 1;
  end;

  with DataModule2.RezAktivnostiQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'INSERT INTO RezervacijaAktivnosti (ID_kor, ID_aktivnost, datum_rezervacije) ' +
      'VALUES (:kor, :aktivnost, :datum)';

    ParamByName('kor').AsString := CurrentUserID;
    ParamByName('aktivnost').AsString := ActivityID;
    ParamByName('datum').AsDateTime := Now;

    for I := 1 to SelectedReserveQty do
      ExecSQL;
  end;

  if SameText(E.ActivityType, 'Game') then
  begin
    if EventsByDate.TryGetValue(DateOf(EventDate), EventList) then
    begin
      for I := 0 to EventList.Count - 1 do
      begin
        if EventList[I].ID = ActivityID then
        begin
          E := EventList[I];
          E.Tickets := E.Tickets - SelectedReserveQty;
          EventList[I] := E;
          Break;
        end;
      end;
    end;

    with DataModule2.AktivnostQuery do
    begin
      Close;
      SQL.Clear;
      SQL.Text :=
        'UPDATE Aktivnost ' +
        'SET broj_mesta = :broj_mesta ' +
        'WHERE id_aktivnost = :id';

      ParamByName('broj_mesta').AsInteger := E.Tickets;
      ParamByName('id').AsString := ActivityID;
      ExecSQL;
    end;
  end;

  LoadActivitiesFromDB;
  LoadUserEventsForSelection;
  LoadReservedActivitiesForCurrentUser;
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
  R.Fill.Color := TAlphaColorRec.DeepSkyBlue;
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
  L.Text := E.Title;
  L.TextSettings.HorzAlign := TTextAlign.Leading;
  L.TextSettings.VertAlign := TTextAlign.Center;
  L.Margins.Left := 8;
  L.HitTest := False;
end;

procedure TfMain.UserActivityRectangleClick(Sender: TObject);
var
  E: TEvent;
  EventDate: TDate;
begin
  SelectedActivityID := TRectangle(Sender).TagString;

  if FindEventByID(SelectedActivityID, E, EventDate) then
  begin
    reservationTitle1.Text := E.Title;
    reservationDate1.Text := FormatDateTime('dd.mm.yyyy', E.EventDate);
    reservationTime1.Text := E.TimeSlot;
    reservationHall1.Text := E.Hall;

    if SameText(E.ActivityType, 'Game') then
    begin
      check.Visible := True;
      reserveTicQty.Visible := True;

      check.Text := 'Dostupno karata: ' + IntToStr(E.Tickets);
      reserveTicQty.Text := '1';
    end
    else
    begin
      check.Visible := False;
      reserveTicQty.Visible := False;

      check.Text := '';
      reserveTicQty.Text := '';
    end;

    tcMain.ActiveTab := tiCheck;
  end;
end;

procedure TfMain.LoadReservedActivitiesForCurrentUser;
var
  E: TEvent;
  D: TDate;
  EventID: string;
  ReservedQty: Integer;
begin
  if Assigned(reservedTerminsBox) and Assigned(reservedTerminsBox.Content) then
    ClearLayoutSafe(reservedTerminsBox.Content);

  with DataModule2.RezAktivnostiQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'SELECT R.ID_aktivnost, COUNT(*) AS Rezervisano ' +
      'FROM RezervacijaAktivnosti R ' +
      'WHERE R.ID_kor = :kor ' +
      'GROUP BY R.ID_aktivnost ' +
      'ORDER BY R.ID_aktivnost';

    ParamByName('kor').AsString := CurrentUserID;
    Open;

    while not Eof do
    begin
      EventID := FieldByName('ID_aktivnost').AsString;
      ReservedQty := FieldByName('Rezervisano').AsInteger;

      if FindEventByID(EventID, E, D) then
        AddReservedActivityRectangle(E, ReservedQty);

      Next;
    end;

    Close;
  end;
end;

procedure TfMain.AddReservedActivityRectangle(const E: TEvent; ReservedQty: Integer);
var
  R: TRectangle;
  L: TLabel;
begin
  R := TRectangle.Create(reservedTerminsBox);
  R.Parent := reservedTerminsBox;
  R.Align := TAlignLayout.Top;
  R.Height := 70;
  R.Margins.Top := 4;
  R.Margins.Bottom := 4;
  R.XRadius := 12;
  R.YRadius := 12;
  R.Fill.Color := TAlphaColorRec.DeepSkyBlue;
  R.Stroke.Color := TAlphaColorRec.DeepSkyBlue;

  R.TagString := E.ID;
  R.Tag := ReservedQty;
  R.OnClick := ReservedActivityRectangleClick;
  R.HitTest := True;

  L := TLabel.Create(R);
  L.Parent := R;
  L.Align := TAlignLayout.Client;
  L.WordWrap := true;
  L.Margins.Left := 10;
  L.Margins.Right := 10;
  L.TextSettings.HorzAlign := TTextAlign.Leading;
  L.TextSettings.VertAlign := TTextAlign.Center;
  L.HitTest := False;

  if SameText(E.ActivityType, 'Game') then
    L.Text := E.Title + sLineBreak +
          DateToStr(E.EventDate) + ' | ' + E.TimeSlot + sLineBreak +
          'Rezervisane karte: ' + IntToStr(ReservedQty)
  else
    L.Text := E.Title + sLineBreak +
          DateToStr(E.EventDate) + ' | ' + E.TimeSlot;
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
  tcMain.ActiveTab := tiHalls;
end;

procedure TfMain.UserHallClick(Sender: TObject);
begin
  SelectedHall := TLabel(Sender).Text;

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
  R.Fill.Color := TAlphaColorRec.DeepSkyBlue;
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
  L.Text := E.Title;
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
        'SELECT Ime, Prezime, ProfilnaSlika ' +
        'FROM Korisnik ' +
        'WHERE ID_kor = :id';
      ParamByName('id').AsString := CurrentUserID;
      Open;

      if not IsEmpty then
      begin
        Ime := FieldByName('Ime').AsString;
        Prezime := FieldByName('Prezime').AsString;

        userFullName.Text := Ime + ' ' + Prezime;
        userRole.Text := 'Korisnik';

        LoadBitmapFromBlobField(FieldByName('ProfilnaSlika'), userPicture);
        SyncProfilePicturesFromSource(userPicture);
      end
      else
        ClearAllProfilePictures;

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
        'SELECT Ime, Prezime, ProfilnaSlika ' +
        'FROM Zaposleni ' +
        'WHERE ID_zap = :id';
      ParamByName('id').AsString := CurrentUserID;
      Open;

      if not IsEmpty then
      begin
        Ime := FieldByName('Ime').AsString;
        Prezime := FieldByName('Prezime').AsString;

        adminFullName.Text := Ime + ' ' + Prezime;
        adminRole.Text := 'Zaposleni';

        LoadBitmapFromBlobField(FieldByName('ProfilnaSlika'), adminPicture);
        SyncProfilePicturesFromSource(adminPicture);
      end
      else
        ClearAllProfilePictures;

      Close;
    end;
  end
  else
    ClearAllProfilePictures;
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
    ShowMessage('Nijedan korisnik nije ulogovan.');
  end;
end;

procedure TfMain.userPicture1Click(Sender: TObject);
begin
  OpenCurrentProfile;
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
  Logout;
end;

procedure TfMain.userViewResTerminsClick(Sender: TObject);
begin
  LoadReservedActivitiesForCurrentUser;
  tcMain.ActiveTab := tiReservedTermins;
end;

procedure TfMain.LoadReservedEquipmentForCurrentUser;
var
  EquipID, EquipName: string;
  Qty: Integer;
begin
  if Assigned(resEquipBox) and Assigned(resEquipBox.Content) then
    ClearLayoutSafe(resEquipBox.Content);

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
  R := TRectangle.Create(resEquipBox);
  R.Parent := resEquipBox;
  R.Height := 70;
  R.Align := TAlignLayout.Top;
  R.Fill.Color := TAlphaColorRec.DeepSkyBlue;
  R.Stroke.Kind := TBrushKind.Solid;
  R.Stroke.Color := TAlphaColorRec.Black;
  R.Margins.Top := 4;
  R.Margins.Bottom := 4;

  R.TagString := EquipID;
  R.OnClick := ReservedEquipmentRectangleClick;
  R.HitTest := True;

  L := TLabel.Create(R);
  L.Parent := R;
  L.Align := TAlignLayout.Client;
  L.WordWrap := True;
  L.StyledSettings := [];
  L.TextSettings.FontColor := TAlphaColorRec.White;
  L.Text :=
  EquipName + sLineBreak +
  'Broj računa: ' + EquipID + sLineBreak +
  'Količina: ' + IntToStr(Qty);
  L.TextSettings.HorzAlign := TTextAlign.Leading;
  L.TextSettings.VertAlign := TTextAlign.Center;
  L.Margins.Left := 8;
  L.HitTest := False;
end;

procedure TfMain.userViewResEquipClick(Sender: TObject);
begin
  LoadReservedEquipmentForCurrentUser;
  tcMain.ActiveTab := tiReservedEquip;
end;

procedure TfMain.userGoToDeleteClick(Sender: TObject);
begin
  TcMain.ActiveTab := tiUserDelete;
end;

procedure TfMain.MakeMemoTransparent(AMemo: TMemo);
var
  Obj: TFmxObject;
begin
  AMemo.ApplyStyleLookup;

  Obj := AMemo.FindStyleResource('background');
  if (Obj <> nil) and (Obj is TControl) then
    TControl(Obj).Visible := False;
end;

procedure TfMain.SaveArticleToDB(const A: TArticle);
var
  MSThumb, MSImage: TMemoryStream;
begin
  with DataModule2.ArtikliQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'INSERT INTO Artikli (ID_ARTIKLA, NASLOV, OPIS, THUMB, SLIKA) ' +
      'VALUES (:id, :naslov, :opis, :thumb, :slika)';

    ParamByName('id').AsString := A.ID;
    ParamByName('naslov').AsString := A.Title;
    ParamByName('opis').AsString := A.Description;

    MSThumb := TMemoryStream.Create;
    MSImage := TMemoryStream.Create;
    try
      if Assigned(A.Thumb) and not A.Thumb.IsEmpty then
      begin
        A.Thumb.SaveToStream(MSThumb);
        MSThumb.Position := 0;
        ParamByName('thumb').LoadFromStream(MSThumb, ftBlob);
      end
      else
        ParamByName('thumb').Clear;

      if Assigned(A.Image) and not A.Image.IsEmpty then
      begin
        A.Image.SaveToStream(MSImage);
        MSImage.Position := 0;
        ParamByName('slika').LoadFromStream(MSImage, ftBlob);
      end
      else
        ParamByName('slika').Clear;

      ExecSQL;
    finally
      MSThumb.Free;
      MSImage.Free;
    end;
  end;
end;

procedure TfMain.LoadArticlesFromDB;
var
  A: TArticle;
  MSThumb, MSImage: TMemoryStream;
  CountLoaded: Integer;
begin
  CountLoaded := 0;

  if Assigned(newsBox.Content) then
    ClearLayoutSafe(newsBox.Content);

  if Assigned(adminNewsBox.Content) then
    ClearLayoutSafe(adminNewsBox.Content);

  Articles.Clear;

  with DataModule2.ArtikliQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'SELECT ID_ARTIKLA, NASLOV, OPIS, THUMB, SLIKA ' +
      'FROM Artikli ' +
      'ORDER BY DATUM_OBJAVE DESC';
    Open;

    while not Eof do
    begin
      A := TArticle.Create;
      A.ID := FieldByName('ID_ARTIKLA').AsString;
      A.Title := FieldByName('NASLOV').AsString;
      A.Description := FieldByName('OPIS').AsString;

      if not FieldByName('THUMB').IsNull then
      begin
        MSThumb := TMemoryStream.Create;
        try
          TBlobField(FieldByName('THUMB')).SaveToStream(MSThumb);
          MSThumb.Position := 0;
          A.Thumb.LoadFromStream(MSThumb);
        finally
          MSThumb.Free;
        end;
      end;

      if not FieldByName('SLIKA').IsNull then
      begin
        MSImage := TMemoryStream.Create;
        try
          TBlobField(FieldByName('SLIKA')).SaveToStream(MSImage);
          MSImage.Position := 0;
          A.Image.LoadFromStream(MSImage);
        finally
          MSImage.Free;
        end;
      end;

      Articles.Add(A);
      AddArticleToHome(A);
      Inc(CountLoaded);
      Next;
    end;

    Close;
  end;

  if Assigned(newsBox.Content) then
    newsBox.Content.RecalcAbsolute;

  if Assigned(adminNewsBox.Content) then
    adminNewsBox.Content.RecalcAbsolute;
end;

procedure TfMain.DeleteArticleFromDB(const ArticleID: string);
begin
  if Trim(ArticleID) = '' then
    Exit;

  with DataModule2.ArtikliQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'DELETE FROM Artikli WHERE ID_ARTIKLA = :id';
    ParamByName('id').AsString := ArticleID;
    ExecSQL;
  end;
end;

procedure TfMain.ReservedActivityRectangleClick(Sender: TObject);
var
  EventID: string;
  E: TEvent;
  D: TDate;
  ReservedQty: Integer;
begin
  EventID := TRectangle(Sender).TagString;
  ReservedQty := TRectangle(Sender).Tag;

  if not FindEventByID(EventID, E, D) then
  begin
    ShowMessage('Rezervacija nije pronađena.');
    Exit;
  end;

  SelectedReservedTicketCount := ReservedQty;
  OpenReservationView(E);
end;

procedure TfMain.OpenReservationView(const E: TEvent);
begin
  SelectedActivityID := E.ID;

  reservationTitle.Text := E.Title;
  reservationDate.Text := FormatDateTime('dd.mm.yyyy', E.EventDate);
  hallName.Text := E.Hall;
  reservationTime.Text := E.TimeSlot;

  if SameText(E.ActivityType, 'Game') then
  begin
    reservedTicketCount.Visible := True;
    reservedTicketCount.Text := 'Rezervisane karte: ' + IntToStr(SelectedReservedTicketCount);
  end
  else
  begin
    reservedTicketCount.Visible := False;
    reservedTicketCount.Text := '';
  end;

  tcMain.ActiveTab := tiReservationView;
end;

procedure TfMain.DeleteReservationFromDB(const ActivityID: string);
begin
  with DataModule2.RezAktivnostiQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'DELETE FROM RezervacijaAktivnosti ' +
      'WHERE ID_kor = :kor AND ID_aktivnost = :aktivnost';

    ParamByName('kor').AsString := CurrentUserID;
    ParamByName('aktivnost').AsString := ActivityID;
    ExecSQL;
  end;
end;

procedure TfMain.CancelCurrentReservation;
begin
  DeleteReservationFromDB(SelectedActivityID);

  with DataModule2.AktivnostQuery do
  begin
    Close;
    SQL.Clear;

    if SelectedReservedTicketCount > 0 then
      SQL.Text :=
        'UPDATE Aktivnost SET broj_mesta = broj_mesta + :qty ' +
        'WHERE id_aktivnost = :id'
    else
      SQL.Text :=
        'UPDATE Aktivnost SET broj_mesta = broj_mesta + 1 ' +
        'WHERE id_aktivnost = :id';

    if SelectedReservedTicketCount > 0 then
      ParamByName('qty').AsInteger := SelectedReservedTicketCount;

    ParamByName('id').AsString := SelectedActivityID;
    ExecSQL;
  end;

  LoadActivitiesFromDB;
  LoadReservedActivitiesForCurrentUser;

  SelectedActivityID := '';
  SelectedReservedTicketCount := 0;

  reservationTitle.Text := '';
  reservationDate.Text := '';
  hallName.Text := '';
  reservationTime.Text := '';
  reservedTicketCount.Text := '';

  tcMain.ActiveTab := tiReservedTermins;
end;

procedure TfMain.cancelButtonClick(Sender: TObject);
begin
  CancelCurrentReservation;
end;

procedure TfMain.ReservedEquipmentRectangleClick(Sender: TObject);
var
  EquipID: string;
begin
  EquipID := TRectangle(Sender).TagString;

  SelectedEquipmentID := EquipID;

  resEquipID.Text := EquipID;

  tcMain.ActiveTab := tiViewResEquip;
end;

procedure TfMain.cancelResEquipClick(Sender: TObject);
begin
  if SelectedEquipmentID = '' then Exit;

  DeleteEquipmentReservationFromDB(SelectedEquipmentID);

  SelectedEquipmentID := '';

  LoadReservedEquipmentForCurrentUser;

  tcMain.ActiveTab := tiReservedEquip;
end;

procedure TfMain.DeleteEquipmentReservationFromDB(const EquipID: string);
begin
  with DataModule2.RezOpremeQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'DELETE FROM RezervacijaOpreme ' +
      'WHERE ID_kor = :kor AND ID_opreme = :oprema';

    ParamByName('kor').AsString := CurrentUserID;
    ParamByName('oprema').AsString := EquipID;

    ExecSQL;
  end;
end;

procedure TfMain.userMenuImageMouseEnter(Sender: TObject);
begin
  if Sender is TImage then
  begin
    AttachHoverEffectToImage(TImage(Sender));

    HoverEffect.Opacity := 0.0;
    HoverEffect.GlowColor := TAlphaColorRec.Aqua;
    HoverEffect.Softness := 0.3;
    HoverEffect.Enabled := True;

    HomeMenuAnimation.Stop;
    HomeMenuAnimation.StartValue := 0;
    HomeMenuAnimation.StopValue := 1;
    HomeMenuAnimation.Start;
  end;
end;

procedure TfMain.userMenuImageMouseLeave(Sender: TObject);
begin
  HomeMenuAnimation.Stop;
  HoverEffect.Enabled := False;
end;

procedure TfMain.AttachHoverEffectToImage(AImage: TImage);
begin
  if not Assigned(AImage) then
    Exit;

  HoverEffect.Parent := AImage;
  HoverEffect.Enabled := True;

  HomeMenuAnimation.Parent := HoverEffect;
  HomeMenuAnimation.PropertyName := 'Opacity';
end;

procedure TfMain.GameButtonClick(Sender: TObject);
begin
  OpenCreateActivityForType('Game', True);
end;

procedure TfMain.TrainingButtonClick(Sender: TObject);
begin
  OpenCreateActivityForType('Training', False);
end;

procedure TfMain.OtherButtonClick(Sender: TObject);
begin
  OpenCreateActivityForType('Other', False);
end;

procedure TfMain.OpenCreateActivityForType(const AType: string; HasTickets: Boolean);
begin
  SelectedActivityType := AType;

  idActivity.Text := GenerateRandomID;
  activityTitle.Text := '';
  activityDesc.Text := '';
  activityTickets.Text := '';

  activityTickets.Visible := HasTickets;
  ticketNumber.Visible := HasTickets;

  if HasTickets then
    activityTickets.TextPrompt := 'Unesite broj karata'
  else
    activityTickets.Text := '0';

  tcMain.ActiveTab := tiCreateActivity;
end;

procedure TfMain.DeleteActivityFromDB(const ActivityID: string);
begin
  with DataModule2.AktivnostQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'DELETE FROM Aktivnost ' +
      'WHERE ID_aktivnost = :id';

    ParamByName('id').AsString := ActivityID;
    ExecSQL;
  end;
end;

procedure TfMain.deleteActivityButtonClick(Sender: TObject);
var
  EventList: TList<TEvent>;
  I: Integer;
  E: TEvent;
  EventDate: TDate;
begin
  if SelectedActivityID = '' then
  begin
    ShowMessage('Nijedna aktivnost nije izabrana.');
    Exit;
  end;

  if FindEventByID(SelectedActivityID, E, EventDate) then
  begin
    if EventsByDate.TryGetValue(DateOf(EventDate), EventList) then
    begin
      for I := EventList.Count - 1 downto 0 do
      begin
        if EventList[I].ID = SelectedActivityID then
        begin
          EventList.Delete(I);
          Break;
        end;
      end;

      if EventList.Count = 0 then
      begin
        EventList.Free;
        EventsByDate.Remove(DateOf(EventDate));
      end;
    end;
  end;

  DeleteActivityFromDB(SelectedActivityID);

  SelectedActivityID := '';
  adminViewActivityTitle.Text := '';
  adminViewActivityId.Text := '';
  adminViewActivityDesc.Text := '';
  adminViewActivityTime.Text := '';
  adminViewActivityDate.Text := '';
  adminViewActivityHall.Text := '';
  adminViewActivityTickets.Text := '';

  LoadActivitiesFromDB;
  LoadAdminEventsForSelection;
  tcMain.ActiveTab := tiAdminActivities;
end;

function TfMain.FindEquipmentByID(const EquipID: string; out E: TEquipment): Boolean;
var
  I: Integer;
begin
  Result := False;
  for I := 0 to EquipmentList.Count - 1 do
  begin
    if EquipmentList[I].ID = EquipID then
    begin
      E := EquipmentList[I];
      Exit(True);
    end;
  end;
end;

procedure TfMain.UserCardClick(Sender: TObject);
var
  U: TUserInfo;
  I: Integer;
  UserID: string;
begin
  UserID := TRectangle(Sender).TagString;

  for I := 0 to userBox.Content.ChildrenCount - 1 do
  begin
  end;

  with DataModule2.KorisnikQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'SELECT ID_kor, Ime, Prezime ' +
      'FROM Korisnik ' +
      'WHERE ID_kor = :id';

    ParamByName('id').AsString := UserID;
    Open;

    if IsEmpty then
    begin
      ShowMessage('Korisnik nije pronađen.');
      Exit;
    end;

    U.ID := FieldByName('ID_kor').AsString;
    U.Ime := FieldByName('Ime').AsString;
    U.Prezime := FieldByName('Prezime').AsString;
  end;

  OpenAdminUserView(U);
end;

procedure TfMain.OpenAdminUserView(const U: TUserInfo);
begin
  SelectedAdminViewUserID := U.ID;
  SelectedAdminViewUserName := U.Ime + ' ' + U.Prezime;

  adminViewUserName.Text := SelectedAdminViewUserName;
  adminViewUserID.Text := 'ID: ' + U.ID;

  tcMain.ActiveTab := tiAdminViewingUser;
end;

procedure TfMain.adminViewUserActivityClick(Sender: TObject);
begin
  LoadAdminViewUserEvents;
  tcMain.ActiveTab := tiAdminViewingUserEvents;
end;

procedure TfMain.LoadAdminViewUserEvents;
var
  E: TEvent;
  D: TDate;
  EventID: string;
  ReservedQty: Integer;
begin
  if Assigned(adminViewUserEventBox) and Assigned(adminViewUserEventBox.Content) then
    ClearLayoutSafe(adminViewUserEventBox.Content);

  with DataModule2.RezAktivnostiQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'SELECT ID_aktivnost, COUNT(*) AS Rezervisano ' +
      'FROM RezervacijaAktivnosti ' +
      'WHERE ID_kor = :kor ' +
      'GROUP BY ID_aktivnost ' +
      'ORDER BY ID_aktivnost';

    ParamByName('kor').AsString := SelectedAdminViewUserID;
    Open;

    while not Eof do
    begin
      EventID := FieldByName('ID_aktivnost').AsString;
      ReservedQty := FieldByName('Rezervisano').AsInteger;

      if FindEventByID(EventID, E, D) then
        AddAdminViewUserEventRectangle(E, ReservedQty);

      Next;
    end;
  end;
end;

procedure TfMain.AddAdminViewUserEventRectangle(const E: TEvent; ReservedQty: Integer);
var
  R: TRectangle;
  L: TLabel;
begin
  R := TRectangle.Create(adminViewUserEventBox);
  R.Parent := adminViewUserEventBox;
  R.Align := TAlignLayout.Top;
  R.Height := 90;
  R.Margins.Top := 4;
  R.Margins.Bottom := 4;
  R.XRadius := 12;
  R.YRadius := 12;
  R.Fill.Color := TAlphaColorRec.DeepSkyBlue;
  R.Stroke.Color := TAlphaColorRec.DeepSkyBlue;

  L := TLabel.Create(R);
  L.Parent := R;
  L.Align := TAlignLayout.Client;
  L.Margins.Left := 10;
  L.Margins.Right := 10;
  L.WordWrap := True;
  L.TextSettings.HorzAlign := TTextAlign.Leading;
  L.TextSettings.VertAlign := TTextAlign.Center;
  L.HitTest := False;

  if SameText(E.ActivityType, 'Game') then
    L.Text := E.Title + sLineBreak +
              'Datum: ' + DateToStr(E.EventDate) + ' | Termin: ' + E.TimeSlot + sLineBreak +
              'Rezervisane karte: ' + IntToStr(ReservedQty)
  else
    L.Text := E.Title + sLineBreak +
              'Datum: ' + DateToStr(E.EventDate) + ' | Termin: ' + E.TimeSlot;
end;

procedure TfMain.adminViewUserEquipmentClick(Sender: TObject);
begin
  LoadAdminViewUserEquipment;
  tcMain.ActiveTab := tiAdminViewUserEquip;
end;

procedure TfMain.LoadAdminViewUserEquipment;
begin
  if Assigned(adminViewUserEquipBox) and Assigned(adminViewUserEquipBox.Content) then
    ClearLayoutSafe(adminViewUserEquipBox.Content);

  with DataModule2.RezOpremeQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text :=
      'SELECT R.ID_opreme, O.Naziv, R.Kolicina ' +
      'FROM RezervacijaOpreme R ' +
      'JOIN Oprema O ON O.Id_Opreme = R.ID_opreme ' +
      'WHERE R.ID_kor = :kor ' +
      'ORDER BY O.Naziv';

    ParamByName('kor').AsString := SelectedAdminViewUserID;
    Open;

    while not Eof do
    begin
      AddAdminViewUserEquipmentRectangle(
        FieldByName('ID_opreme').AsString,
        FieldByName('Naziv').AsString,
        FieldByName('Kolicina').AsInteger
      );
      Next;
    end;
  end;
end;

procedure TfMain.AddAdminViewUserEquipmentRectangle(const EquipID, EquipName: string; Qty: Integer);
var
  R: TRectangle;
  L: TLabel;
begin
  R := TRectangle.Create(adminViewUserEquipBox);
  R.Parent := adminViewUserEquipBox;
  R.Align := TAlignLayout.Top;
  R.Height := 70;
  R.Margins.Top := 4;
  R.Margins.Bottom := 4;
  R.XRadius := 12;
  R.YRadius := 12;
  R.Fill.Color := TAlphaColorRec.DeepSkyBlue;
  R.Stroke.Color := TAlphaColorRec.DeepSkyBlue;

  L := TLabel.Create(R);
  L.Parent := R;
  L.Align := TAlignLayout.Client;
  L.Margins.Left := 10;
  L.Margins.Right := 10;
  L.WordWrap := True;
  L.TextSettings.HorzAlign := TTextAlign.Leading;
  L.TextSettings.VertAlign := TTextAlign.Center;
  L.HitTest := False;
  L.Text := EquipName + sLineBreak +
            'ID: ' + EquipID + ' | Rezervisana količina: ' + IntToStr(Qty);
end;

procedure TfMain.adminDeleteUserClick(Sender: TObject);
begin
  tcMain.ActiveTab := tiAdminConfirmDelete;
end;

procedure TfMain.DeleteUserFromDB(const UserID: string);
begin
  with DataModule2.RezAktivnostiQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'DELETE FROM RezervacijaAktivnosti WHERE ID_kor = :id';
    ParamByName('id').AsString := UserID;
    ExecSQL;
  end;

  with DataModule2.RezOpremeQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'DELETE FROM RezervacijaOpreme WHERE ID_kor = :id';
    ParamByName('id').AsString := UserID;
    ExecSQL;
  end;

  with DataModule2.KorisnikQuery do
  begin
    Close;
    SQL.Clear;
    SQL.Text := 'DELETE FROM Korisnik WHERE ID_kor = :id';
    ParamByName('id').AsString := UserID;
    ExecSQL;
  end;
end;

procedure TfMain.adminConfirmDeleteClick(Sender: TObject);
begin
  if SelectedAdminViewUserID = '' then
  begin
    ShowMessage('Korisnik nije izabran.');
    Exit;
  end;

  DeleteUserFromDB(SelectedAdminViewUserID);

  SelectedAdminViewUserID := '';
  SelectedAdminViewUserName := '';
  adminViewUserName.Text := '';
  adminViewUserID.Text := '';

  LoadUsersFromDB;
  tcMain.ActiveTab := tiAdminUserView;
end;

procedure TfMain.userPictureClick(Sender: TObject);
begin
  if CurrentUserRole <> urUser then
    Exit;

  if OpenDialog1.Execute then
  begin
    userPicture.Bitmap.LoadFromFile(OpenDialog1.FileName);
    SyncProfilePicturesFromSource(userPicture);
    SaveCurrentProfilePictureToDB(OpenDialog1.FileName);
  end;
end;

procedure TfMain.adminPictureClick(Sender: TObject);
begin
  if CurrentUserRole <> urAdmin then
    Exit;

  if OpenDialog1.Execute then
  begin
    adminPicture.Bitmap.LoadFromFile(OpenDialog1.FileName);
    SyncProfilePicturesFromSource(adminPicture);
    SaveCurrentProfilePictureToDB(OpenDialog1.FileName);
  end;
end;

procedure TfMain.SaveCurrentProfilePictureToDB(const AFileName: string);
var
  MS: TMemoryStream;
  Bmp: TBitmap;
begin
  if (CurrentUserID = '') or (not FileExists(AFileName)) then
    Exit;

  MS := TMemoryStream.Create;
  Bmp := TBitmap.Create;
  try
    Bmp.LoadFromFile(AFileName);
    Bmp.SaveToStream(MS);
    MS.Position := 0;

    if CurrentUserRole = urUser then
    begin
      with DataModule2.KorisnikQuery do
      begin
        Close;
        SQL.Clear;
        SQL.Text :=
          'UPDATE Korisnik ' +
          'SET ProfilnaSlika = :slika ' +
          'WHERE ID_kor = :id';

        ParamByName('id').AsString := CurrentUserID;
        ParamByName('slika').LoadFromStream(MS, ftBlob);
        ExecSQL;
      end;
    end
    else if CurrentUserRole = urAdmin then
    begin
      with DataModule2.ZaposleniQuery do
      begin
        Close;
        SQL.Clear;
        SQL.Text :=
          'UPDATE Zaposleni ' +
          'SET ProfilnaSlika = :slika ' +
          'WHERE ID_zap = :id';

        ParamByName('id').AsString := CurrentUserID;
        ParamByName('slika').LoadFromStream(MS, ftBlob);
        ExecSQL;
      end;
    end;
  finally
    Bmp.Free;
    MS.Free;
  end;
end;

procedure TfMain.LoadBitmapFromBlobField(AField: TField; AImage: TImage);
var
  MS: TMemoryStream;
begin
  if not Assigned(AImage) then
    Exit;

  if not Assigned(AField) or AField.IsNull then
  begin
    ClearProfilePicture(AImage);
    Exit;
  end;

  MS := TMemoryStream.Create;
  try
    TBlobField(AField).SaveToStream(MS);
    MS.Position := 0;
    AImage.Bitmap.LoadFromStream(MS);
  finally
    MS.Free;
  end;
end;

procedure TfMain.ClearProfilePicture(AImage: TImage);
begin
  if Assigned(AImage) then
    AImage.Bitmap := nil;
end;

procedure TfMain.SyncProfilePicturesFromSource(ASource: TImage);
begin
  if not Assigned(ASource) or not Assigned(ASource.Bitmap) or ASource.Bitmap.IsEmpty then
  begin
    ClearAllProfilePictures;
    Exit;
  end;

  if Assigned(userPicture) then
    userPicture.Bitmap.Assign(ASource.Bitmap);

  if Assigned(adminPicture) then
    adminPicture.Bitmap.Assign(ASource.Bitmap);

  if Assigned(userProfile) then
    userProfile.Bitmap.Assign(ASource.Bitmap);

  if Assigned(userPicture1) then
    userPicture1.Bitmap.Assign(ASource.Bitmap);

  if Assigned(userPicture2) then
    userPicture2.Bitmap.Assign(ASource.Bitmap);

  if Assigned(userPicture3) then
    userPicture3.Bitmap.Assign(ASource.Bitmap);

  if Assigned(userPicture4) then
    userPicture4.Bitmap.Assign(ASource.Bitmap);

  if Assigned(userPicture6) then
    userPicture6.Bitmap.Assign(ASource.Bitmap);

  if Assigned(userPicture7) then
    userPicture7.Bitmap.Assign(ASource.Bitmap);
end;

procedure TfMain.ClearAllProfilePictures;
begin
  if Assigned(userPicture) then
    ClearProfilePicture(userPicture);

  if Assigned(adminPicture) then
    ClearProfilePicture(adminPicture);

  if Assigned(userProfile) then
    ClearProfilePicture(userProfile);

  if Assigned(userPicture1) then
    ClearProfilePicture(userPicture1);

  if Assigned(userPicture2) then
    ClearProfilePicture(userPicture2);

  if Assigned(userPicture3) then
    ClearProfilePicture(userPicture3);

  if Assigned(userPicture4) then
    ClearProfilePicture(userPicture4);

  if Assigned(userPicture6) then
    ClearProfilePicture(userPicture6);

  if Assigned(userPicture7) then
    ClearProfilePicture(userPicture7);
end;

procedure TfMain.MakeImageCircular(AImage: TImage);
var
  Circle: TCircle;
begin
  if not Assigned(AImage) then Exit;

  Circle := TCircle.Create(AImage.Parent);
  Circle.Parent := AImage.Parent;
  Circle.Width := AImage.Width;
  Circle.Height := AImage.Height;
  Circle.Position.Point := AImage.Position.Point;
  Circle.ClipChildren := True;
  Circle.Stroke.Kind := TBrushKind.None;
  Circle.Fill.Kind := TBrushKind.None;

  AImage.Parent := Circle;
  AImage.Align := TAlignLayout.Client;
end;

procedure TfMain.SetupAllProfileImages;
begin
  MakeImageCircular(userPicture);
  MakeImageCircular(adminPicture);
  MakeImageCircular(userProfile);
  MakeImageCircular(userPicture1);
  MakeImageCircular(userPicture2);
  MakeImageCircular(userPicture3);
  MakeImageCircular(userPicture4);
  MakeImageCircular(userPicture6);
  MakeImageCircular(userPicture7);
end;

procedure TfMain.TogglePasswordClick(Sender: TObject);
var
  Btn: TFmxObject;
  EditBox: TEdit;
begin
  if not (Sender is TFmxObject) then
    Exit;

  Btn := TFmxObject(Sender);

  if not (Btn.TagObject is TEdit) then
    Exit;

  EditBox := TEdit(Btn.TagObject);
  EditBox.Password := not EditBox.Password;
end;

end.
