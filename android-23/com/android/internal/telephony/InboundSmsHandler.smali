.class public abstract Lcom/android/internal/telephony/InboundSmsHandler;
.super Lcom/android/internal/util/StateMachine;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;,
        Lcom/android/internal/telephony/InboundSmsHandler$StartupState;,
        Lcom/android/internal/telephony/InboundSmsHandler$IdleState;,
        Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;,
        Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;,
        Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;,
        Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;,
        Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    }
.end annotation


# static fields
.field static final ADDRESS_COLUMN:I = 0x6

.field static final COUNT_COLUMN:I = 0x5

.field static final DATE_COLUMN:I = 0x3

.field protected static final DBG:Z = true

.field static final DESTINATION_PORT_COLUMN:I = 0x2

.field static final EVENT_BROADCAST_COMPLETE:I = 0x3

.field static final EVENT_BROADCAST_SMS:I = 0x2

.field public static final EVENT_INJECT_SMS:I = 0x8

.field public static final EVENT_NEW_SMS:I = 0x1

.field static final EVENT_RELEASE_WAKELOCK:I = 0x5

.field static final EVENT_RETURN_TO_IDLE:I = 0x4

.field static final EVENT_START_ACCEPTING_SMS:I = 0x6

.field static final EVENT_UPDATE_PHONE_OBJECT:I = 0x7

.field static final ID_COLUMN:I = 0x7

.field static final PDU_COLUMN:I = 0x0

.field private static final PDU_PROJECTION:[Ljava/lang/String;

.field private static final PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

.field static final REFERENCE_NUMBER_COLUMN:I = 0x4

.field static final SELECT_BY_ID:Ljava/lang/String; = "_id=?"

.field static final SELECT_BY_REFERENCE:Ljava/lang/String; = "address=? AND reference_number=? AND count=?"

.field static final SEQUENCE_COLUMN:I = 0x1

.field private static final VDBG:Z = false

.field private static final WAKELOCK_TIMEOUT:I = 0xbb8

.field private static final sRawUri:Landroid/net/Uri;


# instance fields
.field protected mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

.field protected final mContext:Landroid/content/Context;

.field final mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

.field final mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

.field mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field final mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSmsReceiveDisabled:Z

.field final mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

.field protected mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field private mUserManager:Landroid/os/UserManager;

.field final mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

.field final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWapPush:Lcom/android/internal/telephony/WapPushOverSms;


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/util/IState;
    .locals 1

    #@0
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getCurrentState()Lcom/android/internal/util/IState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->logv(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v2, 0x0

    #@2
    .line 106
    new-array v0, v3, [Ljava/lang/String;

    #@4
    .line 107
    const-string/jumbo v1, "pdu"

    #@7
    aput-object v1, v0, v2

    #@9
    .line 106
    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    #@b
    .line 111
    const/4 v0, 0x3

    #@c
    new-array v0, v0, [Ljava/lang/String;

    #@e
    .line 112
    const-string/jumbo v1, "pdu"

    #@11
    aput-object v1, v0, v2

    #@13
    .line 113
    const-string/jumbo v1, "sequence"

    #@16
    aput-object v1, v0, v3

    #@18
    .line 114
    const-string/jumbo v1, "destination_port"

    #@1b
    const/4 v2, 0x2

    #@1c
    aput-object v1, v0, v2

    #@1e
    .line 111
    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    #@20
    .line 157
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    #@22
    const-string/jumbo v1, "raw"

    #@25
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@28
    move-result-object v0

    #@29
    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    #@2b
    .line 101
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CellBroadcastHandler;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p4, "phone"    # Lcom/android/internal/telephony/PhoneBase;
    .param p5, "cellBroadcastHandler"    # Lcom/android/internal/telephony/CellBroadcastHandler;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    .line 204
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    #@4
    .line 169
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    #@6
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    #@9
    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    #@b
    .line 172
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    #@d
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    #@10
    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    #@12
    .line 175
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    #@14
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    #@17
    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    #@19
    .line 178
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    #@1b
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    #@1e
    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    #@20
    .line 181
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    #@22
    invoke-direct {v2, p0}, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    #@25
    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    #@27
    .line 206
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@29
    .line 207
    iput-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    #@2b
    .line 208
    iput-object p4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2d
    .line 209
    iput-object p5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    #@2f
    .line 210
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@32
    move-result-object v2

    #@33
    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    #@35
    .line 211
    new-instance v2, Lcom/android/internal/telephony/WapPushOverSms;

    #@37
    invoke-direct {v2, p2}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Landroid/content/Context;)V

    #@3a
    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    #@3c
    .line 213
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@3e
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@41
    move-result-object v2

    #@42
    .line 214
    const v4, 0x1120055

    #@45
    .line 213
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@48
    move-result v1

    #@49
    .line 215
    .local v1, "smsCapable":Z
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@4b
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@4e
    move-result-object v2

    #@4f
    .line 216
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@51
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    #@54
    move-result v4

    #@55
    .line 215
    invoke-virtual {v2, v4, v1}, Landroid/telephony/TelephonyManager;->getSmsReceiveCapableForPhone(IZ)Z

    #@58
    move-result v2

    #@59
    if-eqz v2, :cond_0

    #@5b
    const/4 v2, 0x0

    #@5c
    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    #@5e
    .line 218
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@60
    const-string/jumbo v4, "power"

    #@63
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@66
    move-result-object v0

    #@67
    check-cast v0, Landroid/os/PowerManager;

    #@69
    .line 219
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0, v3, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@6c
    move-result-object v2

    #@6d
    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@6f
    .line 220
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@71
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@74
    .line 221
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@76
    const-string/jumbo v3, "user"

    #@79
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@7c
    move-result-object v2

    #@7d
    check-cast v2, Landroid/os/UserManager;

    #@7f
    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    #@81
    .line 223
    const-string/jumbo v2, "deviceidle"

    #@84
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@87
    move-result-object v2

    #@88
    .line 222
    invoke-static {v2}, Landroid/os/IDeviceIdleController$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IDeviceIdleController;

    #@8b
    move-result-object v2

    #@8c
    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@8e
    .line 225
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    #@90
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;)V

    #@93
    .line 226
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    #@95
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    #@97
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@9a
    .line 227
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    #@9c
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    #@9e
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@a1
    .line 228
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    #@a3
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    #@a5
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@a8
    .line 229
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    #@aa
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    #@ac
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@af
    .line 231
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    #@b1
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->setInitialState(Lcom/android/internal/util/State;)V

    #@b4
    .line 232
    const-string/jumbo v2, "created InboundSmsHandler"

    #@b7
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@ba
    .line 203
    return-void

    #@bb
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    move v2, v3

    #@bc
    .line 215
    goto :goto_0
.end method

.method private addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;)I
    .locals 24
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    #@0
    .prologue
    .line 972
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    #@3
    move-result v2

    #@4
    const/4 v3, 0x1

    #@5
    if-eq v2, v3, :cond_3

    #@7
    .line 974
    const/4 v10, 0x0

    #@8
    .line 977
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSequenceNumber()I

    #@b
    move-result v22

    #@c
    .line 980
    .local v22, "sequence":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    #@f
    move-result-object v8

    #@10
    .line 981
    .local v8, "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    #@13
    move-result v2

    #@14
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@17
    move-result-object v18

    #@18
    .line 982
    .local v18, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    #@1b
    move-result v2

    #@1c
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1f
    move-result-object v9

    #@20
    .line 984
    .local v9, "count":Ljava/lang/String;
    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@23
    move-result-object v19

    #@24
    .line 987
    .local v19, "seqNumber":Ljava/lang/String;
    const/4 v2, 0x3

    #@25
    new-array v11, v2, [Ljava/lang/String;

    #@27
    const/4 v2, 0x0

    #@28
    aput-object v8, v11, v2

    #@2a
    const/4 v2, 0x1

    #@2b
    aput-object v18, v11, v2

    #@2d
    const/4 v2, 0x2

    #@2e
    aput-object v9, v11, v2

    #@30
    .line 988
    .local v11, "deleteWhereArgs":[Ljava/lang/String;
    const-string/jumbo v2, "address=? AND reference_number=? AND count=?"

    #@33
    move-object/from16 v0, p1

    #@35
    invoke-virtual {v0, v2, v11}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V

    #@38
    .line 991
    move-object/from16 v0, p0

    #@3a
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    #@3c
    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    #@3e
    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    #@40
    .line 992
    const-string/jumbo v5, "address=? AND reference_number=? AND count=? AND sequence=?"

    #@43
    .line 993
    const/4 v6, 0x4

    #@44
    new-array v6, v6, [Ljava/lang/String;

    #@46
    const/4 v7, 0x0

    #@47
    aput-object v8, v6, v7

    #@49
    const/4 v7, 0x1

    #@4a
    aput-object v18, v6, v7

    #@4c
    const/4 v7, 0x2

    #@4d
    aput-object v9, v6, v7

    #@4f
    const/4 v7, 0x3

    #@50
    aput-object v19, v6, v7

    #@52
    const/4 v7, 0x0

    #@53
    .line 991
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@56
    move-result-object v10

    #@57
    .line 996
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    #@5a
    move-result v2

    #@5b
    if-eqz v2, :cond_2

    #@5d
    .line 997
    new-instance v2, Ljava/lang/StringBuilder;

    #@5f
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@62
    const-string/jumbo v3, "Discarding duplicate message segment, refNumber="

    #@65
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@68
    move-result-object v2

    #@69
    move-object/from16 v0, v18

    #@6b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    .line 998
    const-string/jumbo v3, " seqNumber="

    #@72
    .line 997
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    move-object/from16 v0, v19

    #@78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@7f
    move-result-object v2

    #@80
    move-object/from16 v0, p0

    #@82
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@85
    .line 999
    const/4 v2, 0x0

    #@86
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@89
    move-result-object v16

    #@8a
    .line 1000
    .local v16, "oldPduString":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    #@8d
    move-result-object v17

    #@8e
    .line 1001
    .local v17, "pdu":[B
    invoke-static/range {v16 .. v16}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    #@91
    move-result-object v15

    #@92
    .line 1002
    .local v15, "oldPdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    #@95
    move-result-object v2

    #@96
    invoke-static {v15, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@99
    move-result v2

    #@9a
    if-nez v2, :cond_0

    #@9c
    .line 1003
    new-instance v2, Ljava/lang/StringBuilder;

    #@9e
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a1
    const-string/jumbo v3, "Warning: dup message segment PDU of length "

    #@a4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a7
    move-result-object v2

    #@a8
    move-object/from16 v0, v17

    #@aa
    array-length v3, v0

    #@ab
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ae
    move-result-object v2

    #@af
    .line 1004
    const-string/jumbo v3, " is different from existing PDU of length "

    #@b2
    .line 1003
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b5
    move-result-object v2

    #@b6
    .line 1004
    array-length v3, v15

    #@b7
    .line 1003
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@ba
    move-result-object v2

    #@bb
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@be
    move-result-object v2

    #@bf
    move-object/from16 v0, p0

    #@c1
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@c4
    .line 1006
    :cond_0
    const/4 v2, 0x5

    #@c5
    .line 1013
    if-eqz v10, :cond_1

    #@c7
    .line 1014
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@ca
    .line 1006
    :cond_1
    return v2

    #@cb
    .line 1008
    .end local v15    # "oldPdu":[B
    .end local v16    # "oldPduString":Ljava/lang/String;
    .end local v17    # "pdu":[B
    :cond_2
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->close()V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ce
    .line 1013
    if-eqz v10, :cond_3

    #@d0
    .line 1014
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@d3
    .line 1019
    .end local v8    # "address":Ljava/lang/String;
    .end local v9    # "count":Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v18    # "refNumber":Ljava/lang/String;
    .end local v19    # "seqNumber":Ljava/lang/String;
    .end local v22    # "sequence":I
    :cond_3
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getContentValues()Landroid/content/ContentValues;

    #@d6
    move-result-object v23

    #@d7
    .line 1022
    .local v23, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    #@d9
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    #@db
    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    #@dd
    move-object/from16 v0, v23

    #@df
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@e2
    move-result-object v14

    #@e3
    .line 1023
    .local v14, "newUri":Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    #@e5
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@e8
    const-string/jumbo v3, "URI of new row -> "

    #@eb
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ee
    move-result-object v2

    #@ef
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f2
    move-result-object v2

    #@f3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@f6
    move-result-object v2

    #@f7
    move-object/from16 v0, p0

    #@f9
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@fc
    .line 1026
    :try_start_2
    invoke-static {v14}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    #@ff
    move-result-wide v20

    #@100
    .line 1027
    .local v20, "rowId":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    #@103
    move-result v2

    #@104
    const/4 v3, 0x1

    #@105
    if-ne v2, v3, :cond_4

    #@107
    .line 1029
    const-string/jumbo v2, "_id=?"

    #@10a
    const/4 v3, 0x1

    #@10b
    new-array v3, v3, [Ljava/lang/String;

    #@10d
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@110
    move-result-object v4

    #@111
    const/4 v5, 0x0

    #@112
    aput-object v4, v3, v5

    #@114
    move-object/from16 v0, p1

    #@116
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    #@119
    .line 1031
    :cond_4
    const/4 v2, 0x1

    #@11a
    return v2

    #@11b
    .line 1009
    .end local v14    # "newUri":Landroid/net/Uri;
    .end local v20    # "rowId":J
    .end local v23    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v12

    #@11c
    .line 1010
    .local v12, "e":Landroid/database/SQLException;
    :try_start_3
    const-string/jumbo v2, "Can\'t access multipart SMS database"

    #@11f
    move-object/from16 v0, p0

    #@121
    invoke-virtual {v0, v2, v12}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    #@124
    .line 1011
    const/4 v2, 0x2

    #@125
    .line 1013
    if-eqz v10, :cond_5

    #@127
    .line 1014
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@12a
    .line 1011
    :cond_5
    return v2

    #@12b
    .line 1012
    .end local v12    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    #@12c
    .line 1013
    if-eqz v10, :cond_6

    #@12e
    .line 1014
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@131
    .line 1012
    :cond_6
    throw v2

    #@132
    .line 1032
    .restart local v14    # "newUri":Landroid/net/Uri;
    .restart local v23    # "values":Landroid/content/ContentValues;
    :catch_1
    move-exception v13

    #@133
    .line 1033
    .local v13, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    #@135
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@138
    const-string/jumbo v3, "error parsing URI for new row: "

    #@13b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13e
    move-result-object v2

    #@13f
    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@142
    move-result-object v2

    #@143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@146
    move-result-object v2

    #@147
    move-object/from16 v0, p0

    #@149
    invoke-virtual {v0, v2, v13}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@14c
    .line 1034
    const/4 v2, 0x2

    #@14d
    return v2
.end method

.method private static buildMessageBodyFromPdus([Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 5
    .param p0, "msgs"    # [Landroid/telephony/SmsMessage;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1341
    array-length v3, p0

    #@2
    const/4 v4, 0x1

    #@3
    if-ne v3, v4, :cond_0

    #@5
    .line 1343
    aget-object v2, p0, v2

    #@7
    invoke-virtual {v2}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    #@a
    move-result-object v2

    #@b
    invoke-static {v2}, Lcom/android/internal/telephony/InboundSmsHandler;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    #@e
    move-result-object v2

    #@f
    return-object v2

    #@10
    .line 1346
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    .line 1347
    .local v0, "body":Ljava/lang/StringBuilder;
    array-length v3, p0

    #@16
    :goto_0
    if-ge v2, v3, :cond_1

    #@18
    aget-object v1, p0, v2

    #@1a
    .line 1349
    .local v1, "msg":Landroid/telephony/SmsMessage;
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 1347
    add-int/lit8 v2, v2, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1351
    .end local v1    # "msg":Landroid/telephony/SmsMessage;
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@27
    move-result-object v2

    #@28
    invoke-static {v2}, Lcom/android/internal/telephony/InboundSmsHandler;->replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;

    #@2b
    move-result-object v2

    #@2c
    return-object v2
.end method

.method private getSystemAppForIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 9
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 809
    new-instance v5, Ljava/util/ArrayList;

    #@3
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 810
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b
    move-result-object v3

    #@c
    .line 811
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    #@f
    move-result-object v6

    #@10
    .line 812
    .local v6, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string/jumbo v0, "android.permission.CARRIER_FILTER_SMS"

    #@13
    .line 814
    .local v0, "carrierFilterSmsPerm":Ljava/lang/String;
    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@16
    move-result-object v2

    #@17
    .local v2, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    #@1a
    move-result v7

    #@1b
    if-eqz v7, :cond_2

    #@1d
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@20
    move-result-object v1

    #@21
    check-cast v1, Landroid/content/pm/ResolveInfo;

    #@23
    .line 815
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@25
    if-nez v7, :cond_1

    #@27
    .line 816
    new-instance v7, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v8, "Can\'t get service information from "

    #@2f
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v7

    #@33
    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v7

    #@37
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v7

    #@3b
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@3e
    goto :goto_0

    #@3f
    .line 819
    :cond_1
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@41
    iget-object v4, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@43
    .line 820
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    move-result v7

    #@47
    if-nez v7, :cond_0

    #@49
    .line 822
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4c
    .line 823
    new-instance v7, Ljava/lang/StringBuilder;

    #@4e
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    #@51
    const-string/jumbo v8, "getSystemAppForIntent: added package "

    #@54
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@57
    move-result-object v7

    #@58
    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5b
    move-result-object v7

    #@5c
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5f
    move-result-object v7

    #@60
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@63
    goto :goto_0

    #@64
    .line 826
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method static isCurrentFormat3gpp2()Z
    .locals 2

    #@0
    .prologue
    .line 1043
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    #@7
    move-result v0

    #@8
    .line 1044
    .local v0, "activePhone":I
    const/4 v1, 0x2

    #@9
    if-ne v1, v0, :cond_0

    #@b
    const/4 v1, 0x1

    #@c
    :goto_0
    return v1

    #@d
    :cond_0
    const/4 v1, 0x0

    #@e
    goto :goto_0
.end method

.method private static parseSmsMessage([Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 8
    .param p0, "msgs"    # [Landroid/telephony/SmsMessage;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1316
    aget-object v0, p0, v3

    #@3
    .line 1317
    .local v0, "sms":Landroid/telephony/SmsMessage;
    new-instance v2, Landroid/content/ContentValues;

    #@5
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    #@8
    .line 1318
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "address"

    #@b
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    #@e
    move-result-object v5

    #@f
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 1319
    const-string/jumbo v4, "body"

    #@15
    invoke-static {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->buildMessageBodyFromPdus([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 1320
    const-string/jumbo v4, "date_sent"

    #@1f
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getTimestampMillis()J

    #@22
    move-result-wide v6

    #@23
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@26
    move-result-object v5

    #@27
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@2a
    .line 1321
    const-string/jumbo v4, "date"

    #@2d
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    #@30
    move-result-wide v6

    #@31
    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    #@34
    move-result-object v5

    #@35
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    #@38
    .line 1322
    const-string/jumbo v4, "protocol"

    #@3b
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getProtocolIdentifier()I

    #@3e
    move-result v5

    #@3f
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@46
    .line 1323
    const-string/jumbo v4, "seen"

    #@49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@50
    .line 1324
    const-string/jumbo v4, "read"

    #@53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@5a
    .line 1325
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    .line 1326
    .local v1, "subject":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@61
    move-result v4

    #@62
    if-nez v4, :cond_0

    #@64
    .line 1327
    const-string/jumbo v4, "subject"

    #@67
    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@6a
    .line 1329
    :cond_0
    const-string/jumbo v4, "reply_path_present"

    #@6d
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->isReplyPathPresent()Z

    #@70
    move-result v5

    #@71
    if-eqz v5, :cond_1

    #@73
    const/4 v3, 0x1

    #@74
    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@77
    move-result-object v3

    #@78
    invoke-virtual {v2, v4, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@7b
    .line 1330
    const-string/jumbo v3, "service_center"

    #@7e
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    #@81
    move-result-object v4

    #@82
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@85
    .line 1331
    return-object v2
.end method

.method private static replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1357
    if-nez p0, :cond_0

    #@2
    const-string/jumbo v0, ""

    #@5
    :goto_0
    return-object v0

    #@6
    :cond_0
    const/16 v0, 0xc

    #@8
    const/16 v1, 0xa

    #@a
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    #@d
    move-result-object v0

    #@e
    goto :goto_0
.end method

.method private writeInboxMessage(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1281
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    #@4
    move-result-object v4

    #@5
    .line 1282
    .local v4, "messages":[Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_0

    #@7
    array-length v7, v4

    #@8
    const/4 v8, 0x1

    #@9
    if-ge v7, v8, :cond_1

    #@b
    .line 1283
    :cond_0
    const-string/jumbo v7, "Failed to parse SMS pdu"

    #@e
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@11
    .line 1284
    return-object v9

    #@12
    .line 1289
    :cond_1
    const/4 v7, 0x0

    #@13
    array-length v8, v4

    #@14
    :goto_0
    if-ge v7, v8, :cond_2

    #@16
    aget-object v5, v4, v7

    #@18
    .line 1291
    .local v5, "sms":Landroid/telephony/SmsMessage;
    :try_start_0
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 1289
    add-int/lit8 v7, v7, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1292
    :catch_0
    move-exception v1

    #@1f
    .line 1293
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v7, "NPE inside SmsMessage"

    #@22
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@25
    .line 1294
    return-object v9

    #@26
    .line 1297
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .end local v5    # "sms":Landroid/telephony/SmsMessage;
    :cond_2
    invoke-static {v4}, Lcom/android/internal/telephony/InboundSmsHandler;->parseSmsMessage([Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    #@29
    move-result-object v6

    #@2a
    .line 1298
    .local v6, "values":Landroid/content/ContentValues;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2d
    move-result-wide v2

    #@2e
    .line 1300
    .local v2, "identity":J
    :try_start_1
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@30
    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@33
    move-result-object v7

    #@34
    sget-object v8, Landroid/provider/Telephony$Sms$Inbox;->CONTENT_URI:Landroid/net/Uri;

    #@36
    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@39
    move-result-object v7

    #@3a
    .line 1304
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3d
    .line 1300
    return-object v7

    #@3e
    .line 1301
    :catch_1
    move-exception v0

    #@3f
    .line 1302
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v7, "Failed to persist inbox message"

    #@42
    invoke-virtual {p0, v7, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@45
    .line 1304
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@48
    .line 1306
    return-object v9

    #@49
    .line 1303
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    #@4a
    .line 1304
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4d
    .line 1303
    throw v7
.end method


# virtual methods
.method protected abstract acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
.end method

.method protected addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    const/4 v1, 0x1

    #@2
    .line 668
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;)I

    #@5
    move-result v0

    #@6
    sparse-switch v0, :sswitch_data_0

    #@9
    .line 678
    return v2

    #@a
    .line 670
    :sswitch_0
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    #@d
    .line 671
    return v1

    #@e
    .line 674
    :sswitch_1
    return v1

    #@f
    .line 668
    nop

    #@10
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V
    .locals 3
    .param p1, "deleteWhere"    # Ljava/lang/String;
    .param p2, "deleteWhereArgs"    # [Ljava/lang/String;

    #@0
    .prologue
    .line 882
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    #@2
    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    #@4
    invoke-virtual {v1, v2, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@7
    move-result v0

    #@8
    .line 883
    .local v0, "rows":I
    if-nez v0, :cond_0

    #@a
    .line 884
    const-string/jumbo v1, "No rows were deleted from raw table!"

    #@d
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@10
    .line 881
    :goto_0
    return-void

    #@11
    .line 886
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    #@13
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@16
    const-string/jumbo v2, "Deleted "

    #@19
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1c
    move-result-object v1

    #@1d
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    const-string/jumbo v2, " rows from raw table."

    #@24
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2b
    move-result-object v1

    #@2c
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@2f
    goto :goto_0
.end method

.method protected dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V
    .locals 19
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p6, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 840
    const/high16 v1, 0x8000000

    #@2
    move-object/from16 v0, p1

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@7
    .line 841
    move-object/from16 v0, p0

    #@9
    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@b
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    #@e
    move-result v1

    #@f
    move-object/from16 v0, p1

    #@11
    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    #@14
    .line 842
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@16
    move-object/from16 v0, p6

    #@18
    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    #@1b
    move-result v1

    #@1c
    if-eqz v1, :cond_5

    #@1e
    .line 844
    const/16 v18, 0x0

    #@20
    .line 846
    .local v18, "users":[I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@23
    move-result-object v1

    #@24
    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningUserIds()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@27
    move-result-object v18

    #@28
    .line 849
    .end local v18    # "users":[I
    :goto_0
    if-nez v18, :cond_0

    #@2a
    .line 850
    const/4 v1, 0x1

    #@2b
    new-array v0, v1, [I

    #@2d
    move-object/from16 v18, v0

    #@2f
    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    #@32
    move-result v1

    #@33
    const/4 v2, 0x0

    #@34
    aput v1, v18, v2

    #@36
    .line 854
    :cond_0
    move-object/from16 v0, v18

    #@38
    array-length v1, v0

    #@39
    add-int/lit8 v15, v1, -0x1

    #@3b
    .local v15, "i":I
    :goto_1
    if-ltz v15, :cond_6

    #@3d
    .line 855
    new-instance v3, Landroid/os/UserHandle;

    #@3f
    aget v1, v18, v15

    #@41
    invoke-direct {v3, v1}, Landroid/os/UserHandle;-><init>(I)V

    #@44
    .line 856
    .local v3, "targetUser":Landroid/os/UserHandle;
    aget v1, v18, v15

    #@46
    if-eqz v1, :cond_3

    #@48
    .line 858
    move-object/from16 v0, p0

    #@4a
    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    #@4c
    const-string/jumbo v2, "no_sms"

    #@4f
    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    #@52
    move-result v1

    #@53
    if-eqz v1, :cond_2

    #@55
    .line 854
    :cond_1
    :goto_2
    add-int/lit8 v15, v15, -0x1

    #@57
    goto :goto_1

    #@58
    .line 862
    :cond_2
    move-object/from16 v0, p0

    #@5a
    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    #@5c
    aget v2, v18, v15

    #@5e
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@61
    move-result-object v16

    #@62
    .line 863
    .local v16, "info":Landroid/content/pm/UserInfo;
    if-eqz v16, :cond_1

    #@64
    invoke-virtual/range {v16 .. v16}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@67
    move-result v1

    #@68
    if-nez v1, :cond_1

    #@6a
    .line 868
    .end local v16    # "info":Landroid/content/pm/UserInfo;
    :cond_3
    move-object/from16 v0, p0

    #@6c
    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@6e
    .line 869
    aget v2, v18, v15

    #@70
    if-nez v2, :cond_4

    #@72
    move-object/from16 v7, p5

    #@74
    .line 870
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    #@77
    move-result-object v8

    #@78
    const/4 v9, -0x1

    #@79
    const/4 v10, 0x0

    #@7a
    const/4 v11, 0x0

    #@7b
    move-object/from16 v2, p1

    #@7d
    move-object/from16 v4, p2

    #@7f
    move/from16 v5, p3

    #@81
    move-object/from16 v6, p4

    #@83
    .line 868
    invoke-virtual/range {v1 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@86
    goto :goto_2

    #@87
    .line 869
    :cond_4
    const/4 v7, 0x0

    #@88
    goto :goto_3

    #@89
    .line 873
    .end local v3    # "targetUser":Landroid/os/UserHandle;
    .end local v15    # "i":I
    :cond_5
    move-object/from16 v0, p0

    #@8b
    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@8d
    .line 874
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    #@90
    move-result-object v11

    #@91
    const/4 v12, -0x1

    #@92
    const/4 v13, 0x0

    #@93
    const/4 v14, 0x0

    #@94
    move-object/from16 v5, p1

    #@96
    move-object/from16 v6, p6

    #@98
    move-object/from16 v7, p2

    #@9a
    move/from16 v8, p3

    #@9c
    move-object/from16 v9, p4

    #@9e
    move-object/from16 v10, p5

    #@a0
    .line 873
    invoke-virtual/range {v4 .. v14}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@a3
    .line 839
    :cond_6
    return-void

    #@a4
    .line 847
    .restart local v18    # "users":[I
    :catch_0
    move-exception v17

    #@a5
    .local v17, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 1
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    #@0
    .prologue
    .line 549
    if-nez p1, :cond_0

    #@2
    .line 550
    const-string/jumbo v0, "dispatchSmsMessage: message is null"

    #@5
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@8
    .line 551
    const/4 v0, 0x2

    #@9
    return v0

    #@a
    .line 554
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    #@c
    if-eqz v0, :cond_1

    #@e
    .line 556
    const-string/jumbo v0, "Received short message on device which doesn\'t support receiving SMS. Ignored."

    #@11
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@14
    .line 558
    const/4 v0, 0x1

    #@15
    return v0

    #@16
    .line 561
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I

    #@19
    move-result v0

    #@1a
    return v0
.end method

.method protected abstract dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method protected dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 14
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    #@0
    .prologue
    .line 631
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    #@3
    move-result-object v13

    #@4
    .line 634
    .local v13, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    if-eqz v13, :cond_0

    #@6
    iget-object v1, v13, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    #@8
    if-nez v1, :cond_2

    #@a
    .line 636
    :cond_0
    const/4 v4, -0x1

    #@b
    .line 637
    .local v4, "destPort":I
    if-eqz v13, :cond_1

    #@d
    iget-object v1, v13, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 639
    iget-object v1, v13, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    #@13
    iget v4, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    #@15
    .line 640
    new-instance v1, Ljava/lang/StringBuilder;

    #@17
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1a
    const-string/jumbo v2, "destination port: "

    #@1d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@20
    move-result-object v1

    #@21
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@24
    move-result-object v1

    #@25
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@28
    move-result-object v1

    #@29
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@2c
    .line 643
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/InboundSmsTracker;

    #@2e
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    #@31
    move-result-object v1

    #@32
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    #@35
    move-result-wide v2

    #@36
    .line 644
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    #@39
    move-result v5

    #@3a
    const/4 v6, 0x0

    #@3b
    .line 643
    invoke-direct/range {v0 .. v6}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZZ)V

    #@3e
    .line 657
    .local v0, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;)I

    #@41
    move-result v1

    #@42
    return v1

    #@43
    .line 647
    .end local v0    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v4    # "destPort":I
    :cond_2
    iget-object v11, v13, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    #@45
    .line 648
    .local v11, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    iget-object v12, v13, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    #@47
    .line 649
    .local v12, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    if-eqz v12, :cond_3

    #@49
    iget v4, v12, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    #@4b
    .line 651
    .restart local v4    # "destPort":I
    :goto_1
    new-instance v0, Lcom/android/internal/telephony/InboundSmsTracker;

    #@4d
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    #@50
    move-result-object v1

    #@51
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    #@54
    move-result-wide v2

    #@55
    .line 652
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    #@58
    move-result v5

    #@59
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    #@5c
    move-result-object v6

    #@5d
    iget v7, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    #@5f
    .line 653
    iget v8, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    #@61
    iget v9, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    #@63
    const/4 v10, 0x0

    #@64
    .line 651
    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/InboundSmsTracker;-><init>([BJIZLjava/lang/String;IIIZ)V

    #@67
    .restart local v0    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    goto :goto_0

    #@68
    .line 649
    .end local v0    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    .end local v4    # "destPort":I
    :cond_3
    const/4 v4, -0x1

    #@69
    .restart local v4    # "destPort":I
    goto :goto_1
.end method

.method dispatchSmsDeliveryIntent([[BLjava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .locals 9
    .param p1, "pdus"    # [[B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 922
    new-instance v1, Landroid/content/Intent;

    #@3
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@6
    .line 923
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "pdus"

    #@9
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    #@c
    .line 924
    const-string/jumbo v0, "format"

    #@f
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@12
    .line 926
    const/4 v0, -0x1

    #@13
    if-ne p3, v0, :cond_2

    #@15
    .line 927
    const-string/jumbo v0, "android.provider.Telephony.SMS_DELIVER"

    #@18
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@1b
    .line 931
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@1d
    const/4 v2, 0x1

    #@1e
    invoke-static {v0, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    #@21
    move-result-object v7

    #@22
    .line 932
    .local v7, "componentName":Landroid/content/ComponentName;
    if-eqz v7, :cond_1

    #@24
    .line 934
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@27
    .line 935
    new-instance v0, Ljava/lang/StringBuilder;

    #@29
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@2c
    const-string/jumbo v2, "Delivering SMS to: "

    #@2f
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@32
    move-result-object v0

    #@33
    invoke-virtual {v7}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@36
    move-result-object v2

    #@37
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3a
    move-result-object v0

    #@3b
    .line 936
    const-string/jumbo v2, " "

    #@3e
    .line 935
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    .line 936
    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    .line 935
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@49
    move-result-object v0

    #@4a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4d
    move-result-object v0

    #@4e
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@51
    .line 942
    :goto_0
    invoke-static {}, Landroid/telephony/SmsManager;->getDefault()Landroid/telephony/SmsManager;

    #@54
    move-result-object v0

    #@55
    invoke-virtual {v0}, Landroid/telephony/SmsManager;->getAutoPersisting()Z

    #@58
    move-result v0

    #@59
    if-eqz v0, :cond_0

    #@5b
    .line 943
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->writeInboxMessage(Landroid/content/Intent;)Landroid/net/Uri;

    #@5e
    move-result-object v8

    #@5f
    .line 944
    .local v8, "uri":Landroid/net/Uri;
    if-eqz v8, :cond_0

    #@61
    .line 946
    const-string/jumbo v0, "uri"

    #@64
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@67
    move-result-object v2

    #@68
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@6b
    .line 956
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@6e
    move-result-object v0

    #@6f
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;

    #@72
    move-result-object v4

    #@73
    .line 957
    .local v4, "options":Landroid/os/Bundle;
    const-string/jumbo v2, "android.permission.RECEIVE_SMS"

    #@76
    .line 958
    sget-object v6, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    #@78
    const/16 v3, 0x10

    #@7a
    move-object v0, p0

    #@7b
    move-object v5, p4

    #@7c
    .line 957
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    #@7f
    .line 921
    return-void

    #@80
    .line 938
    .end local v4    # "options":Landroid/os/Bundle;
    .restart local v7    # "componentName":Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@83
    goto :goto_0

    #@84
    .line 950
    .end local v7    # "componentName":Landroid/content/ComponentName;
    :cond_2
    const-string/jumbo v0, "android.intent.action.DATA_SMS_RECEIVED"

    #@87
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@8a
    .line 951
    new-instance v0, Ljava/lang/StringBuilder;

    #@8c
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@8f
    const-string/jumbo v2, "sms://localhost:"

    #@92
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@95
    move-result-object v0

    #@96
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@99
    move-result-object v0

    #@9a
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@9d
    move-result-object v0

    #@9e
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    #@a1
    move-result-object v8

    #@a2
    .line 952
    .restart local v8    # "uri":Landroid/net/Uri;
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@a5
    .line 953
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@a8
    goto :goto_1
.end method

.method public dispose()V
    .locals 0

    #@0
    .prologue
    .line 239
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->quit()V

    #@3
    .line 238
    return-void
.end method

.method public getPhone()Lcom/android/internal/telephony/PhoneBase;
    .locals 1

    #@0
    .prologue
    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    return-object v0
.end method

.method handleInjectSms(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 518
    const/4 v3, 0x0

    #@1
    .line 520
    .local v3, "receivedIntent":Landroid/app/PendingIntent;
    :try_start_0
    iget-object v6, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    #@3
    move-object v0, v6

    #@4
    check-cast v0, Landroid/app/PendingIntent;

    #@6
    move-object v3, v0

    #@7
    .line 521
    .local v3, "receivedIntent":Landroid/app/PendingIntent;
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@9
    check-cast v5, Landroid/telephony/SmsMessage;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 522
    .local v5, "sms":Landroid/telephony/SmsMessage;
    if-nez v5, :cond_1

    #@d
    .line 523
    const/4 v4, 0x2

    #@e
    .line 532
    .end local v3    # "receivedIntent":Landroid/app/PendingIntent;
    .end local v5    # "sms":Landroid/telephony/SmsMessage;
    .local v4, "result":I
    :goto_0
    if-eqz v3, :cond_0

    #@10
    .line 534
    :try_start_1
    invoke-virtual {v3, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    #@13
    .line 516
    :cond_0
    :goto_1
    return-void

    #@14
    .line 525
    .end local v4    # "result":I
    .restart local v3    # "receivedIntent":Landroid/app/PendingIntent;
    .restart local v5    # "sms":Landroid/telephony/SmsMessage;
    :cond_1
    :try_start_2
    iget-object v6, v5, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@16
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    #@19
    move-result v4

    #@1a
    .restart local v4    # "result":I
    goto :goto_0

    #@1b
    .line 527
    .end local v3    # "receivedIntent":Landroid/app/PendingIntent;
    .end local v4    # "result":I
    .end local v5    # "sms":Landroid/telephony/SmsMessage;
    :catch_0
    move-exception v2

    #@1c
    .line 528
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v6, "Exception dispatching message"

    #@1f
    invoke-virtual {p0, v6, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@22
    .line 529
    const/4 v4, 0x2

    #@23
    .restart local v4    # "result":I
    goto :goto_0

    #@24
    .line 535
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    #@25
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_1
.end method

.method handleNewSms(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 490
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@3
    if-eqz v4, :cond_0

    #@5
    .line 491
    new-instance v4, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v5, "Exception processing incoming SMS: "

    #@d
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v4

    #@11
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@13
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@16
    move-result-object v4

    #@17
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1a
    move-result-object v4

    #@1b
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@1e
    .line 492
    return-void

    #@1f
    .line 497
    :cond_0
    :try_start_0
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@21
    check-cast v3, Landroid/telephony/SmsMessage;

    #@23
    .line 498
    .local v3, "sms":Landroid/telephony/SmsMessage;
    iget-object v4, v3, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@25
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@28
    move-result v2

    #@29
    .line 506
    .end local v3    # "sms":Landroid/telephony/SmsMessage;
    .local v2, "result":I
    :goto_0
    const/4 v4, -0x1

    #@2a
    if-eq v2, v4, :cond_1

    #@2c
    .line 507
    const/4 v4, 0x1

    #@2d
    if-ne v2, v4, :cond_2

    #@2f
    const/4 v1, 0x1

    #@30
    .line 508
    .local v1, "handled":Z
    :goto_1
    invoke-virtual {p0, v1, v2, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    #@33
    .line 489
    .end local v1    # "handled":Z
    :cond_1
    return-void

    #@34
    .line 499
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    #@35
    .line 500
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "Exception dispatching message"

    #@38
    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3b
    .line 501
    const/4 v2, 0x2

    #@3c
    .restart local v2    # "result":I
    goto :goto_0

    #@3d
    .line 507
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_2
    const/4 v1, 0x0

    #@3e
    .restart local v1    # "handled":Z
    goto :goto_1
.end method

.method handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 9
    .param p1, "target"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 893
    if-eqz p1, :cond_0

    #@3
    .line 894
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@6
    move-result-object v4

    #@7
    .line 895
    .local v4, "pkgName":Ljava/lang/String;
    const-string/jumbo v5, "sms-app"

    #@a
    .line 901
    .local v5, "reason":Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@c
    .line 902
    const/4 v7, 0x0

    #@d
    .line 901
    invoke-interface {v6, v4, v7, v5}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;ILjava/lang/String;)J

    #@10
    move-result-wide v2

    #@11
    .line 903
    .local v2, "duration":J
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    #@14
    move-result-object v0

    #@15
    .line 904
    .local v0, "bopts":Landroid/app/BroadcastOptions;
    invoke-virtual {v0, v2, v3}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    #@18
    .line 905
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result-object v6

    #@1c
    return-object v6

    #@1d
    .line 897
    .end local v0    # "bopts":Landroid/app/BroadcastOptions;
    .end local v2    # "duration":J
    .end local v4    # "pkgName":Ljava/lang/String;
    .end local v5    # "reason":Ljava/lang/String;
    :cond_0
    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@1f
    invoke-virtual {v6}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    #@22
    move-result-object v4

    #@23
    .line 898
    .restart local v4    # "pkgName":Ljava/lang/String;
    const-string/jumbo v5, "sms-broadcast"

    #@26
    .restart local v5    # "reason":Ljava/lang/String;
    goto :goto_0

    #@27
    .line 906
    :catch_0
    move-exception v1

    #@28
    .line 909
    .local v1, "e":Landroid/os/RemoteException;
    return-object v8
.end method

.method protected abstract is3gpp2()Z
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1252
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    .line 1251
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1261
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    .line 1260
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1271
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7
    .line 1270
    return-void
.end method

.method notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 606
    if-nez p1, :cond_0

    #@2
    .line 608
    new-instance v0, Landroid/content/Intent;

    #@4
    const-string/jumbo v1, "android.provider.Telephony.SMS_REJECTED"

    #@7
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@a
    .line 609
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "result"

    #@d
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@10
    .line 610
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@12
    const-string/jumbo v2, "android.permission.RECEIVE_SMS"

    #@15
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    #@18
    .line 612
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    #@1b
    .line 605
    return-void
.end method

.method protected onQuitting()V
    .locals 1

    #@0
    .prologue
    .line 254
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispose()V

    #@5
    .line 256
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@7
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 257
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@f
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@12
    goto :goto_0

    #@13
    .line 253
    :cond_0
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    #@0
    .prologue
    .line 592
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    .line 593
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@4
    iget-object v0, v0, Lcom/android/internal/telephony/PhoneBase;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    #@6
    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    #@8
    .line 594
    new-instance v0, Ljava/lang/StringBuilder;

    #@a
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@d
    const-string/jumbo v1, "onUpdatePhoneObject: phone="

    #@10
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@13
    move-result-object v0

    #@14
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@16
    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getClass()Ljava/lang/Class;

    #@19
    move-result-object v1

    #@1a
    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    #@1d
    move-result-object v1

    #@1e
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    move-result-object v0

    #@22
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@25
    move-result-object v0

    #@26
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@29
    .line 591
    return-void
.end method

.method processMessagePart(Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 30
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    #@0
    .prologue
    .line 690
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    #@3
    move-result v21

    #@4
    .line 692
    .local v21, "messageCount":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    #@7
    move-result v10

    #@8
    .line 694
    .local v10, "destPort":I
    const/4 v2, 0x1

    #@9
    move/from16 v0, v21

    #@b
    if-ne v0, v2, :cond_2

    #@d
    .line 696
    const/4 v2, 0x1

    #@e
    new-array v9, v2, [[B

    #@10
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    #@13
    move-result-object v2

    #@14
    const/4 v3, 0x0

    #@15
    aput-object v2, v9, v3

    #@17
    .line 750
    .local v9, "pdus":[[B
    :cond_0
    :goto_0
    new-instance v12, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    #@19
    move-object/from16 v0, p0

    #@1b
    move-object/from16 v1, p1

    #@1d
    invoke-direct {v12, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    #@20
    .line 752
    .local v12, "resultReceiver":Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    const/16 v2, 0xb84

    #@22
    if-ne v10, v2, :cond_b

    #@24
    .line 754
    new-instance v23, Ljava/io/ByteArrayOutputStream;

    #@26
    invoke-direct/range {v23 .. v23}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@29
    .line 755
    .local v23, "output":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    #@2a
    array-length v3, v9

    #@2b
    :goto_1
    if-ge v2, v3, :cond_9

    #@2d
    aget-object v24, v9, v2

    #@2f
    .line 757
    .local v24, "pdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    #@32
    move-result v4

    #@33
    if-nez v4, :cond_1

    #@35
    .line 758
    const-string/jumbo v4, "3gpp"

    #@38
    move-object/from16 v0, v24

    #@3a
    invoke-static {v0, v4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    #@3d
    move-result-object v22

    #@3e
    .line 759
    .local v22, "msg":Landroid/telephony/SmsMessage;
    invoke-virtual/range {v22 .. v22}, Landroid/telephony/SmsMessage;->getUserData()[B

    #@41
    move-result-object v24

    #@42
    .line 761
    .end local v22    # "msg":Landroid/telephony/SmsMessage;
    :cond_1
    move-object/from16 v0, v24

    #@44
    array-length v4, v0

    #@45
    const/4 v5, 0x0

    #@46
    move-object/from16 v0, v23

    #@48
    move-object/from16 v1, v24

    #@4a
    invoke-virtual {v0, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@4d
    .line 755
    add-int/lit8 v2, v2, 0x1

    #@4f
    goto :goto_1

    #@50
    .line 699
    .end local v9    # "pdus":[[B
    .end local v12    # "resultReceiver":Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    .end local v23    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v24    # "pdu":[B
    :cond_2
    const/16 v17, 0x0

    #@52
    .line 702
    .local v17, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    #@55
    move-result-object v13

    #@56
    .line 703
    .local v13, "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    #@59
    move-result v2

    #@5a
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5d
    move-result-object v26

    #@5e
    .line 704
    .local v26, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    #@61
    move-result v2

    #@62
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@65
    move-result-object v16

    #@66
    .line 707
    .local v16, "count":Ljava/lang/String;
    const/4 v2, 0x3

    #@67
    new-array v6, v2, [Ljava/lang/String;

    #@69
    const/4 v2, 0x0

    #@6a
    aput-object v13, v6, v2

    #@6c
    const/4 v2, 0x1

    #@6d
    aput-object v26, v6, v2

    #@6f
    const/4 v2, 0x2

    #@70
    aput-object v16, v6, v2

    #@72
    .line 708
    .local v6, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@74
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    #@76
    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    #@78
    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    #@7a
    .line 709
    const-string/jumbo v5, "address=? AND reference_number=? AND count=?"

    #@7d
    const/4 v7, 0x0

    #@7e
    .line 708
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@81
    move-result-object v17

    #@82
    .line 711
    .local v17, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@85
    move-result v18

    #@86
    .line 712
    .local v18, "cursorCount":I
    move/from16 v0, v18

    #@88
    move/from16 v1, v21

    #@8a
    if-ge v0, v1, :cond_4

    #@8c
    .line 718
    const/4 v2, 0x0

    #@8d
    .line 744
    if-eqz v17, :cond_3

    #@8f
    .line 745
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    #@92
    .line 718
    :cond_3
    return v2

    #@93
    .line 722
    :cond_4
    :try_start_1
    move/from16 v0, v21

    #@95
    new-array v9, v0, [[B

    #@97
    .line 723
    .restart local v9    # "pdus":[[B
    :cond_5
    :goto_2
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->moveToNext()Z

    #@9a
    move-result v2

    #@9b
    if-eqz v2, :cond_6

    #@9d
    .line 725
    const/4 v2, 0x1

    #@9e
    move-object/from16 v0, v17

    #@a0
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    #@a3
    move-result v2

    #@a4
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    #@a7
    move-result v3

    #@a8
    sub-int v20, v2, v3

    #@aa
    .line 727
    .local v20, "index":I
    const/4 v2, 0x0

    #@ab
    move-object/from16 v0, v17

    #@ad
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@b0
    move-result-object v2

    #@b1
    invoke-static {v2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    #@b4
    move-result-object v2

    #@b5
    aput-object v2, v9, v20

    #@b7
    .line 731
    if-nez v20, :cond_5

    #@b9
    const/4 v2, 0x2

    #@ba
    move-object/from16 v0, v17

    #@bc
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    #@bf
    move-result v2

    #@c0
    if-nez v2, :cond_5

    #@c2
    .line 732
    const/4 v2, 0x2

    #@c3
    move-object/from16 v0, v17

    #@c5
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    #@c8
    move-result v25

    #@c9
    .line 734
    .local v25, "port":I
    invoke-static/range {v25 .. v25}, Lcom/android/internal/telephony/InboundSmsTracker;->getRealDestPort(I)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@cc
    move-result v25

    #@cd
    .line 735
    const/4 v2, -0x1

    #@ce
    move/from16 v0, v25

    #@d0
    if-eq v0, v2, :cond_5

    #@d2
    .line 736
    move/from16 v10, v25

    #@d4
    goto :goto_2

    #@d5
    .line 744
    .end local v20    # "index":I
    .end local v25    # "port":I
    :cond_6
    if-eqz v17, :cond_0

    #@d7
    .line 745
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    #@da
    goto/16 :goto_0

    #@dc
    .line 740
    .end local v6    # "whereArgs":[Ljava/lang/String;
    .end local v9    # "pdus":[[B
    .end local v13    # "address":Ljava/lang/String;
    .end local v16    # "count":Ljava/lang/String;
    .end local v17    # "cursor":Landroid/database/Cursor;
    .end local v18    # "cursorCount":I
    .end local v26    # "refNumber":Ljava/lang/String;
    :catch_0
    move-exception v19

    #@dd
    .line 741
    .local v19, "e":Landroid/database/SQLException;
    :try_start_2
    const-string/jumbo v2, "Can\'t access multipart SMS database"

    #@e0
    move-object/from16 v0, p0

    #@e2
    move-object/from16 v1, v19

    #@e4
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@e7
    .line 742
    const/4 v2, 0x0

    #@e8
    .line 744
    if-eqz v17, :cond_7

    #@ea
    .line 745
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    #@ed
    .line 742
    :cond_7
    return v2

    #@ee
    .line 743
    .end local v19    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    #@ef
    .line 744
    if-eqz v17, :cond_8

    #@f1
    .line 745
    invoke-interface/range {v17 .. v17}, Landroid/database/Cursor;->close()V

    #@f4
    .line 743
    :cond_8
    throw v2

    #@f5
    .line 763
    .restart local v9    # "pdus":[[B
    .restart local v12    # "resultReceiver":Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    .restart local v23    # "output":Ljava/io/ByteArrayOutputStream;
    :cond_9
    move-object/from16 v0, p0

    #@f7
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    #@f9
    invoke-virtual/range {v23 .. v23}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@fc
    move-result-object v3

    #@fd
    move-object/from16 v0, p0

    #@ff
    invoke-virtual {v2, v3, v12, v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I

    #@102
    move-result v27

    #@103
    .line 764
    .local v27, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    #@105
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@108
    const-string/jumbo v3, "dispatchWapPdu() returned "

    #@10b
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10e
    move-result-object v2

    #@10f
    move/from16 v0, v27

    #@111
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@114
    move-result-object v2

    #@115
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@118
    move-result-object v2

    #@119
    move-object/from16 v0, p0

    #@11b
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@11e
    .line 766
    const/4 v2, -0x1

    #@11f
    move/from16 v0, v27

    #@121
    if-ne v0, v2, :cond_a

    #@123
    .line 767
    const/4 v2, 0x1

    #@124
    return v2

    #@125
    .line 769
    :cond_a
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    #@128
    move-result-object v2

    #@129
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    #@12c
    move-result-object v3

    #@12d
    move-object/from16 v0, p0

    #@12f
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;)V

    #@132
    .line 770
    const/4 v2, 0x0

    #@133
    return v2

    #@134
    .line 774
    .end local v23    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v27    # "result":I
    :cond_b
    const/4 v15, 0x0

    #@135
    .line 775
    .local v15, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    #@138
    move-result-object v2

    #@139
    move-object/from16 v0, p0

    #@13b
    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@13d
    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    #@140
    move-result v3

    #@141
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    #@144
    move-result-object v14

    #@145
    .line 776
    .local v14, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v14, :cond_c

    #@147
    .line 778
    move-object/from16 v0, p0

    #@149
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@14b
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@14e
    move-result-object v2

    #@14f
    .line 779
    new-instance v3, Landroid/content/Intent;

    #@151
    const-string/jumbo v4, "android.service.carrier.CarrierMessagingService"

    #@154
    invoke-direct {v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@157
    .line 777
    invoke-virtual {v14, v2, v3}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    #@15a
    move-result-object v15

    #@15b
    .line 785
    .end local v15    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_3
    new-instance v2, Landroid/content/Intent;

    #@15d
    const-string/jumbo v3, "android.service.carrier.CarrierMessagingService"

    #@160
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@163
    move-object/from16 v0, p0

    #@165
    invoke-direct {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->getSystemAppForIntent(Landroid/content/Intent;)Ljava/util/List;

    #@168
    move-result-object v29

    #@169
    .line 787
    .local v29, "systemPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v15, :cond_d

    #@16b
    invoke-interface {v15}, Ljava/util/List;->size()I

    #@16e
    move-result v2

    #@16f
    const/4 v3, 0x1

    #@170
    if-ne v2, v3, :cond_d

    #@172
    .line 788
    const-string/jumbo v2, "Found carrier package."

    #@175
    move-object/from16 v0, p0

    #@177
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@17a
    .line 789
    new-instance v7, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    #@17c
    .line 790
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    #@17f
    move-result-object v11

    #@180
    move-object/from16 v8, p0

    #@182
    .line 789
    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;[[BILjava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    #@185
    .line 791
    .local v7, "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    new-instance v28, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;

    #@187
    move-object/from16 v0, v28

    #@189
    move-object/from16 v1, p0

    #@18b
    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)V

    #@18e
    .line 792
    .local v28, "smsFilterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    const/4 v2, 0x0

    #@18f
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@192
    move-result-object v2

    #@193
    check-cast v2, Ljava/lang/String;

    #@195
    move-object/from16 v0, v28

    #@197
    invoke-virtual {v7, v2, v0}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->filterSms(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;)V

    #@19a
    .line 805
    .end local v7    # "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    .end local v28    # "smsFilterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    :goto_4
    const/4 v2, 0x1

    #@19b
    return v2

    #@19c
    .line 781
    .end local v29    # "systemPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v15    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_c
    const-string/jumbo v2, "UiccCard not initialized."

    #@19f
    move-object/from16 v0, p0

    #@1a1
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@1a4
    goto :goto_3

    #@1a5
    .line 793
    .end local v15    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v29    # "systemPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_d
    if-eqz v29, :cond_e

    #@1a7
    invoke-interface/range {v29 .. v29}, Ljava/util/List;->size()I

    #@1aa
    move-result v2

    #@1ab
    const/4 v3, 0x1

    #@1ac
    if-ne v2, v3, :cond_e

    #@1ae
    .line 794
    const-string/jumbo v2, "Found system package."

    #@1b1
    move-object/from16 v0, p0

    #@1b3
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@1b6
    .line 795
    new-instance v7, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    #@1b8
    .line 796
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    #@1bb
    move-result-object v11

    #@1bc
    move-object/from16 v8, p0

    #@1be
    .line 795
    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;[[BILjava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    #@1c1
    .line 797
    .restart local v7    # "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    new-instance v28, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;

    #@1c3
    move-object/from16 v0, v28

    #@1c5
    move-object/from16 v1, p0

    #@1c7
    invoke-direct {v0, v1, v7}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;)V

    #@1ca
    .line 798
    .restart local v28    # "smsFilterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    const/4 v2, 0x0

    #@1cb
    move-object/from16 v0, v29

    #@1cd
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@1d0
    move-result-object v2

    #@1d1
    check-cast v2, Ljava/lang/String;

    #@1d3
    move-object/from16 v0, v28

    #@1d5
    invoke-virtual {v7, v2, v0}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->filterSms(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;)V

    #@1d8
    goto :goto_4

    #@1d9
    .line 800
    .end local v7    # "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    .end local v28    # "smsFilterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    :cond_e
    new-instance v2, Ljava/lang/StringBuilder;

    #@1db
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1de
    const-string/jumbo v3, "Unable to find carrier package: "

    #@1e1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1e4
    move-result-object v2

    #@1e5
    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1e8
    move-result-object v2

    #@1e9
    .line 801
    const-string/jumbo v3, ", nor systemPackages: "

    #@1ec
    .line 800
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1ef
    move-result-object v2

    #@1f0
    move-object/from16 v0, v29

    #@1f2
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f5
    move-result-object v2

    #@1f6
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f9
    move-result-object v2

    #@1fa
    move-object/from16 v0, p0

    #@1fc
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->logv(Ljava/lang/String;)V

    #@1ff
    .line 802
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    #@202
    move-result-object v2

    #@203
    move-object/from16 v0, p0

    #@205
    invoke-virtual {v0, v9, v2, v10, v12}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchSmsDeliveryIntent([[BLjava/lang/String;ILandroid/content/BroadcastReceiver;)V

    #@208
    goto :goto_4
.end method

.method protected storeVoiceMailCount()V
    .locals 6

    #@0
    .prologue
    .line 1049
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@2
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubscriberId()Ljava/lang/String;

    #@5
    move-result-object v1

    #@6
    .line 1050
    .local v1, "imsi":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    #@8
    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getVoiceMessageCount()I

    #@b
    move-result v2

    #@c
    .line 1052
    .local v2, "mwi":I
    new-instance v4, Ljava/lang/StringBuilder;

    #@e
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@11
    const-string/jumbo v5, "Storing Voice Mail Count = "

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v4

    #@1c
    .line 1053
    const-string/jumbo v5, " for mVmCountKey = "

    #@1f
    .line 1052
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v4

    #@23
    .line 1053
    const-string/jumbo v5, "vm_count_key"

    #@26
    .line 1052
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v4

    #@2a
    .line 1054
    const-string/jumbo v5, " vmId = "

    #@2d
    .line 1052
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@30
    move-result-object v4

    #@31
    .line 1054
    const-string/jumbo v5, "vm_id_key"

    #@34
    .line 1052
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@37
    move-result-object v4

    #@38
    .line 1055
    const-string/jumbo v5, " in preferences."

    #@3b
    .line 1052
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@3e
    move-result-object v4

    #@3f
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@42
    move-result-object v4

    #@43
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@46
    .line 1057
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@48
    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    #@4b
    move-result-object v3

    #@4c
    .line 1058
    .local v3, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    #@4f
    move-result-object v0

    #@50
    .line 1059
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string/jumbo v4, "vm_count_key"

    #@53
    invoke-interface {v0, v4, v2}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    #@56
    .line 1060
    const-string/jumbo v4, "vm_id_key"

    #@59
    invoke-interface {v0, v4, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    #@5c
    .line 1061
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    #@5f
    .line 1047
    return-void
.end method

.method public updatePhoneObject(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    #@0
    .prologue
    .line 246
    const/4 v0, 0x7

    #@1
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    #@4
    .line 245
    return-void
.end method
