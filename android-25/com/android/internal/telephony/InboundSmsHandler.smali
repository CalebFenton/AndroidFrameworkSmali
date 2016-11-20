.class public abstract Lcom/android/internal/telephony/InboundSmsHandler;
.super Lcom/android/internal/util/StateMachine;
.source "InboundSmsHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;,
        Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;,
        Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;,
        Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;,
        Lcom/android/internal/telephony/InboundSmsHandler$IdleState;,
        Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;,
        Lcom/android/internal/telephony/InboundSmsHandler$StartupState;,
        Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;
    }
.end annotation


# static fields
.field public static final ADDRESS_COLUMN:I = 0x6

.field public static final COUNT_COLUMN:I = 0x5

.field public static final DATE_COLUMN:I = 0x3

.field protected static final DBG:Z = true

.field public static final DESTINATION_PORT_COLUMN:I = 0x2

.field private static final EVENT_BROADCAST_COMPLETE:I = 0x3

.field public static final EVENT_BROADCAST_SMS:I = 0x2

.field public static final EVENT_INJECT_SMS:I = 0x8

.field public static final EVENT_NEW_SMS:I = 0x1

.field private static final EVENT_RELEASE_WAKELOCK:I = 0x5

.field private static final EVENT_RETURN_TO_IDLE:I = 0x4

.field public static final EVENT_START_ACCEPTING_SMS:I = 0x6

.field private static final EVENT_UPDATE_PHONE_OBJECT:I = 0x7

.field public static final ID_COLUMN:I = 0x7

.field public static final MESSAGE_BODY_COLUMN:I = 0x8

.field private static final NOTIFICATION_ID_NEW_MESSAGE:I = 0x1

.field private static final NOTIFICATION_TAG:Ljava/lang/String; = "InboundSmsHandler"

.field public static final PDU_COLUMN:I = 0x0

.field private static final PDU_PROJECTION:[Ljava/lang/String;

.field private static final PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

.field public static final REFERENCE_NUMBER_COLUMN:I = 0x4

.field public static final SELECT_BY_ID:Ljava/lang/String; = "_id=?"

.field public static final SELECT_BY_REFERENCE:Ljava/lang/String; = "address=? AND reference_number=? AND count=? AND deleted=0"

.field public static final SEQUENCE_COLUMN:I = 0x1

.field private static final VDBG:Z = false

.field private static final WAKELOCK_TIMEOUT:I = 0xbb8

.field protected static final sRawUri:Landroid/net/Uri;

.field protected static final sRawUriPermanentDelete:Landroid/net/Uri;


# instance fields
.field private final DELETE_PERMANENTLY:I

.field private final MARK_DELETED:I

.field protected mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

.field protected final mContext:Landroid/content/Context;

.field private final mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

.field private final mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

.field mDeviceIdleController:Landroid/os/IDeviceIdleController;

.field private final mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

.field protected mPhone:Lcom/android/internal/telephony/Phone;

.field private final mResolver:Landroid/content/ContentResolver;

.field private final mSmsReceiveDisabled:Z

.field private final mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

.field protected mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field private mUserManager:Landroid/os/UserManager;

.field private final mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

.field private final mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWapPush:Lcom/android/internal/telephony/WapPushOverSms;


# direct methods
.method static synthetic -get0(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$IdleState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    #@2
    return-object v0
.end method

.method static synthetic -get2(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    #@2
    return-object v0
.end method

.method static synthetic -get3(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    #@0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 1
    .param p1, "target"    # Landroid/content/ComponentName;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap1(Lcom/android/internal/telephony/InboundSmsHandler;I)Z
    .locals 1
    .param p1, "callbackResult"    # I

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->isSkipNotifyFlagSet(I)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap10(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->logv(Ljava/lang/String;)V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->showNewMessageNotification()V

    #@3
    return-void
.end method

.method static synthetic -wrap12(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
    .locals 0
    .param p1, "destState"    # Lcom/android/internal/util/IState;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->transitionTo(Lcom/android/internal/util/IState;)V

    #@3
    return-void
.end method

.method static synthetic -wrap2(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 1
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->processMessagePart(Lcom/android/internal/telephony/InboundSmsTracker;)Z

    #@3
    move-result v0

    #@4
    return v0
.end method

.method static synthetic -wrap3(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/util/IState;
    .locals 1

    #@0
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getCurrentState()Lcom/android/internal/util/IState;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method static synthetic -wrap4(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/Message;)V
    .locals 0
    .param p1, "msg"    # Landroid/os/Message;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->deferMessage(Landroid/os/Message;)V

    #@3
    return-void
.end method

.method static synthetic -wrap5(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 0
    .param p1, "deleteWhere"    # Ljava/lang/String;
    .param p2, "deleteWhereArgs"    # [Ljava/lang/String;
    .param p3, "deleteType"    # I

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    #@3
    return-void
.end method

.method static synthetic -wrap6(Lcom/android/internal/telephony/InboundSmsHandler;[[BLjava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .locals 0
    .param p1, "pdus"    # [[B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    #@0
    .prologue
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchSmsDeliveryIntent([[BLjava/lang/String;ILandroid/content/BroadcastReceiver;)V

    #@3
    return-void
.end method

.method static synthetic -wrap7(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V
    .locals 0
    .param p1, "receiver"    # Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->dropSms(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->handleInjectSms(Landroid/os/AsyncResult;)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->handleNewSms(Landroid/os/AsyncResult;)V

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
    .line 108
    new-array v0, v3, [Ljava/lang/String;

    #@4
    .line 109
    const-string/jumbo v1, "pdu"

    #@7
    aput-object v1, v0, v2

    #@9
    .line 108
    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    #@b
    .line 113
    const/4 v0, 0x3

    #@c
    new-array v0, v0, [Ljava/lang/String;

    #@e
    .line 114
    const-string/jumbo v1, "pdu"

    #@11
    aput-object v1, v0, v2

    #@13
    .line 115
    const-string/jumbo v1, "sequence"

    #@16
    aput-object v1, v0, v3

    #@18
    .line 116
    const-string/jumbo v1, "destination_port"

    #@1b
    const/4 v2, 0x2

    #@1c
    aput-object v1, v0, v2

    #@1e
    .line 113
    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    #@20
    .line 166
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
    .line 168
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    #@2d
    const-string/jumbo v1, "raw/permanentDelete"

    #@30
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@33
    move-result-object v0

    #@34
    .line 167
    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUriPermanentDelete:Landroid/net/Uri;

    #@36
    .line 103
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Lcom/android/internal/telephony/CellBroadcastHandler;)V
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "storageMonitor"    # Lcom/android/internal/telephony/SmsStorageMonitor;
    .param p4, "phone"    # Lcom/android/internal/telephony/Phone;
    .param p5, "cellBroadcastHandler"    # Lcom/android/internal/telephony/CellBroadcastHandler;

    #@0
    .prologue
    const/4 v3, 0x1

    #@1
    const/4 v4, 0x0

    #@2
    .line 220
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    #@5
    .line 180
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    #@7
    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;)V

    #@a
    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    #@c
    .line 183
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    #@e
    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$StartupState;)V

    #@11
    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    #@13
    .line 186
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    #@15
    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$IdleState;)V

    #@18
    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    #@1a
    .line 189
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    #@1c
    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;)V

    #@1f
    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    #@21
    .line 192
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    #@23
    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;)V

    #@26
    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    #@28
    .line 208
    iput v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->DELETE_PERMANENTLY:I

    #@2a
    .line 210
    const/4 v2, 0x2

    #@2b
    iput v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->MARK_DELETED:I

    #@2d
    .line 222
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@2f
    .line 223
    iput-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    #@31
    .line 224
    iput-object p4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    #@33
    .line 225
    iput-object p5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    #@35
    .line 226
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@38
    move-result-object v2

    #@39
    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    #@3b
    .line 227
    new-instance v2, Lcom/android/internal/telephony/WapPushOverSms;

    #@3d
    invoke-direct {v2, p2}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Landroid/content/Context;)V

    #@40
    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    #@42
    .line 229
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@44
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@47
    move-result-object v2

    #@48
    .line 230
    const v4, 0x112005d

    #@4b
    .line 229
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@4e
    move-result v1

    #@4f
    .line 231
    .local v1, "smsCapable":Z
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@51
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@54
    move-result-object v2

    #@55
    .line 232
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    #@57
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@5a
    move-result v4

    #@5b
    .line 231
    invoke-virtual {v2, v4, v1}, Landroid/telephony/TelephonyManager;->getSmsReceiveCapableForPhone(IZ)Z

    #@5e
    move-result v2

    #@5f
    if-eqz v2, :cond_0

    #@61
    const/4 v2, 0x0

    #@62
    :goto_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    #@64
    .line 234
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@66
    const-string/jumbo v4, "power"

    #@69
    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6c
    move-result-object v0

    #@6d
    check-cast v0, Landroid/os/PowerManager;

    #@6f
    .line 235
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0, v3, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@72
    move-result-object v2

    #@73
    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@75
    .line 236
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@77
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@7a
    .line 237
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@7c
    const-string/jumbo v3, "user"

    #@7f
    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@82
    move-result-object v2

    #@83
    check-cast v2, Landroid/os/UserManager;

    #@85
    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    #@87
    .line 238
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@8a
    move-result-object v2

    #@8b
    invoke-virtual {v2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getIDeviceIdleController()Landroid/os/IDeviceIdleController;

    #@8e
    move-result-object v2

    #@8f
    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@91
    .line 240
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    #@93
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;)V

    #@96
    .line 241
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    #@98
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    #@9a
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@9d
    .line 242
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    #@9f
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    #@a1
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@a4
    .line 243
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    #@a6
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    #@a8
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@ab
    .line 244
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    #@ad
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    #@af
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@b2
    .line 246
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    #@b4
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->setInitialState(Lcom/android/internal/util/State;)V

    #@b7
    .line 247
    const-string/jumbo v2, "created InboundSmsHandler"

    #@ba
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@bd
    .line 219
    return-void

    #@be
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    move v2, v3

    #@bf
    .line 231
    goto :goto_0
.end method

.method private addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;Z)I
    .locals 14
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "deDup"    # Z

    #@0
    .prologue
    .line 1210
    if-eqz p2, :cond_0

    #@2
    .line 1212
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->duplicateExists(Lcom/android/internal/telephony/InboundSmsTracker;)Z
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    #@5
    move-result v10

    #@6
    if-eqz v10, :cond_1

    #@8
    .line 1213
    const/4 v10, 0x5

    #@9
    return v10

    #@a
    .line 1215
    :catch_0
    move-exception v3

    #@b
    .line 1216
    .local v3, "e":Landroid/database/SQLException;
    const-string/jumbo v10, "Can\'t access SMS database"

    #@e
    invoke-virtual {p0, v10, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@11
    .line 1217
    const/4 v10, 0x2

    #@12
    return v10

    #@13
    .line 1220
    .end local v3    # "e":Landroid/database/SQLException;
    :cond_0
    const-string/jumbo v10, "Skipped message de-duping logic"

    #@16
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->logd(Ljava/lang/String;)V

    #@19
    .line 1223
    :cond_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    #@1c
    move-result-object v0

    #@1d
    .line 1224
    .local v0, "address":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    #@20
    move-result v10

    #@21
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@24
    move-result-object v6

    #@25
    .line 1225
    .local v6, "refNumber":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    #@28
    move-result v10

    #@29
    invoke-static {v10}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@2c
    move-result-object v1

    #@2d
    .line 1226
    .local v1, "count":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getContentValues()Landroid/content/ContentValues;

    #@30
    move-result-object v7

    #@31
    .line 1229
    .local v7, "values":Landroid/content/ContentValues;
    iget-object v10, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    #@33
    sget-object v11, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    #@35
    invoke-virtual {v10, v11, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@38
    move-result-object v5

    #@39
    .line 1230
    .local v5, "newUri":Landroid/net/Uri;
    new-instance v10, Ljava/lang/StringBuilder;

    #@3b
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@3e
    const-string/jumbo v11, "URI of new row -> "

    #@41
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@44
    move-result-object v10

    #@45
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@48
    move-result-object v10

    #@49
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@4c
    move-result-object v10

    #@4d
    invoke-virtual {p0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@50
    .line 1233
    :try_start_1
    invoke-static {v5}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    #@53
    move-result-wide v8

    #@54
    .line 1234
    .local v8, "rowId":J
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    #@57
    move-result v10

    #@58
    const/4 v11, 0x1

    #@59
    if-ne v10, v11, :cond_2

    #@5b
    .line 1236
    const-string/jumbo v10, "_id=?"

    #@5e
    const/4 v11, 0x1

    #@5f
    new-array v11, v11, [Ljava/lang/String;

    #@61
    invoke-static {v8, v9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@64
    move-result-object v12

    #@65
    const/4 v13, 0x0

    #@66
    aput-object v12, v11, v13

    #@68
    invoke-virtual {p1, v10, v11}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V

    #@6b
    .line 1242
    :goto_0
    const/4 v10, 0x1

    #@6c
    return v10

    #@6d
    .line 1239
    :cond_2
    const/4 v10, 0x3

    #@6e
    new-array v2, v10, [Ljava/lang/String;

    #@70
    const/4 v10, 0x0

    #@71
    aput-object v0, v2, v10

    #@73
    const/4 v10, 0x1

    #@74
    aput-object v6, v2, v10

    #@76
    const/4 v10, 0x2

    #@77
    aput-object v1, v2, v10

    #@79
    .line 1240
    .local v2, "deleteWhereArgs":[Ljava/lang/String;
    const-string/jumbo v10, "address=? AND reference_number=? AND count=? AND deleted=0"

    #@7c
    invoke-virtual {p1, v10, v2}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@7f
    goto :goto_0

    #@80
    .line 1243
    .end local v2    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v8    # "rowId":J
    :catch_1
    move-exception v4

    #@81
    .line 1244
    .local v4, "e":Ljava/lang/Exception;
    new-instance v10, Ljava/lang/StringBuilder;

    #@83
    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    #@86
    const-string/jumbo v11, "error parsing URI for new row: "

    #@89
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@8c
    move-result-object v10

    #@8d
    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@90
    move-result-object v10

    #@91
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@94
    move-result-object v10

    #@95
    invoke-virtual {p0, v10, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@98
    .line 1245
    const/4 v10, 0x2

    #@99
    return v10
.end method

.method private static buildMessageBodyFromPdus([Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 5
    .param p0, "msgs"    # [Landroid/telephony/SmsMessage;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1571
    array-length v3, p0

    #@2
    const/4 v4, 0x1

    #@3
    if-ne v3, v4, :cond_0

    #@5
    .line 1573
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
    .line 1576
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    .line 1577
    .local v0, "body":Ljava/lang/StringBuilder;
    array-length v3, p0

    #@16
    :goto_0
    if-ge v2, v3, :cond_1

    #@18
    aget-object v1, p0, v2

    #@1a
    .line 1579
    .local v1, "msg":Landroid/telephony/SmsMessage;
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 1577
    add-int/lit8 v2, v2, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1581
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

.method static cancelNewMessageNotification(Landroid/content/Context;)V
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    #@0
    .prologue
    .line 898
    const-string/jumbo v1, "notification"

    #@3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/app/NotificationManager;

    #@9
    .line 899
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    const-string/jumbo v1, "InboundSmsHandler"

    #@c
    .line 900
    const/4 v2, 0x1

    #@d
    .line 899
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    #@10
    .line 896
    return-void
.end method

.method private deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 4
    .param p1, "deleteWhere"    # Ljava/lang/String;
    .param p2, "deleteWhereArgs"    # [Ljava/lang/String;
    .param p3, "deleteType"    # I

    #@0
    .prologue
    .line 1058
    const/4 v2, 0x1

    #@1
    if-ne p3, v2, :cond_0

    #@3
    sget-object v1, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUriPermanentDelete:Landroid/net/Uri;

    #@5
    .line 1059
    .local v1, "uri":Landroid/net/Uri;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    #@7
    invoke-virtual {v2, v1, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    .line 1060
    .local v0, "rows":I
    if-nez v0, :cond_1

    #@d
    .line 1061
    const-string/jumbo v2, "No rows were deleted from raw table!"

    #@10
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@13
    .line 1057
    :goto_1
    return-void

    #@14
    .line 1058
    .end local v0    # "rows":I
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    #@16
    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_0

    #@17
    .line 1063
    .restart local v0    # "rows":I
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@19
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@1c
    const-string/jumbo v3, "Deleted "

    #@1f
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@22
    move-result-object v2

    #@23
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    const-string/jumbo v3, " rows from raw table."

    #@2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2d
    move-result-object v2

    #@2e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@31
    move-result-object v2

    #@32
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@35
    goto :goto_1
.end method

.method private dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 4
    .param p1, "smsb"    # Lcom/android/internal/telephony/SmsMessageBase;

    #@0
    .prologue
    const/4 v3, 0x2

    #@1
    .line 564
    if-nez p1, :cond_0

    #@3
    .line 565
    const-string/jumbo v2, "dispatchSmsMessage: message is null"

    #@6
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@9
    .line 566
    return v3

    #@a
    .line 569
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 571
    const-string/jumbo v2, "Received short message on device which doesn\'t support receiving SMS. Ignored."

    #@11
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@14
    .line 573
    const/4 v2, 0x1

    #@15
    return v2

    #@16
    .line 577
    :cond_1
    const/4 v1, 0x0

    #@17
    .line 579
    .local v1, "onlyCore":Z
    :try_start_0
    const-string/jumbo v2, "package"

    #@1a
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    #@1d
    move-result-object v2

    #@1e
    invoke-static {v2}, Landroid/content/pm/IPackageManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/pm/IPackageManager;

    #@21
    move-result-object v2

    #@22
    invoke-interface {v2}, Landroid/content/pm/IPackageManager;->isOnlyCoreApps()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@25
    move-result v1

    #@26
    .line 583
    .end local v1    # "onlyCore":Z
    :goto_0
    if-eqz v1, :cond_2

    #@28
    .line 585
    const-string/jumbo v2, "Received a short message in encrypted state. Rejecting."

    #@2b
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@2e
    .line 586
    return v3

    #@2f
    .line 589
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I

    #@32
    move-result v2

    #@33
    return v2

    #@34
    .line 581
    .restart local v1    # "onlyCore":Z
    :catch_0
    move-exception v0

    #@35
    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private dispatchSmsDeliveryIntent([[BLjava/lang/String;ILandroid/content/BroadcastReceiver;)V
    .locals 9
    .param p1, "pdus"    # [[B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "destPort"    # I
    .param p4, "resultReceiver"    # Landroid/content/BroadcastReceiver;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1099
    new-instance v1, Landroid/content/Intent;

    #@3
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@6
    .line 1100
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "pdus"

    #@9
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    #@c
    .line 1101
    const-string/jumbo v0, "format"

    #@f
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@12
    .line 1103
    const/4 v0, -0x1

    #@13
    if-ne p3, v0, :cond_2

    #@15
    .line 1104
    const-string/jumbo v0, "android.provider.Telephony.SMS_DELIVER"

    #@18
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@1b
    .line 1108
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@1d
    const/4 v2, 0x1

    #@1e
    invoke-static {v0, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    #@21
    move-result-object v7

    #@22
    .line 1109
    .local v7, "componentName":Landroid/content/ComponentName;
    if-eqz v7, :cond_1

    #@24
    .line 1111
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@27
    .line 1112
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
    .line 1113
    const-string/jumbo v2, " "

    #@3e
    .line 1112
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    .line 1113
    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    .line 1112
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
    .line 1119
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
    .line 1120
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->writeInboxMessage(Landroid/content/Intent;)Landroid/net/Uri;

    #@5e
    move-result-object v8

    #@5f
    .line 1121
    .local v8, "uri":Landroid/net/Uri;
    if-eqz v8, :cond_0

    #@61
    .line 1123
    const-string/jumbo v0, "uri"

    #@64
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@67
    move-result-object v2

    #@68
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@6b
    .line 1133
    .end local v7    # "componentName":Landroid/content/ComponentName;
    .end local v8    # "uri":Landroid/net/Uri;
    :cond_0
    :goto_1
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    #@6e
    move-result-object v0

    #@6f
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;

    #@72
    move-result-object v4

    #@73
    .line 1134
    .local v4, "options":Landroid/os/Bundle;
    const-string/jumbo v2, "android.permission.RECEIVE_SMS"

    #@76
    .line 1135
    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@78
    const/16 v3, 0x10

    #@7a
    move-object v0, p0

    #@7b
    move-object v5, p4

    #@7c
    .line 1134
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    #@7f
    .line 1098
    return-void

    #@80
    .line 1115
    .end local v4    # "options":Landroid/os/Bundle;
    .restart local v7    # "componentName":Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@83
    goto :goto_0

    #@84
    .line 1127
    .end local v7    # "componentName":Landroid/content/ComponentName;
    :cond_2
    const-string/jumbo v0, "android.intent.action.DATA_SMS_RECEIVED"

    #@87
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@8a
    .line 1128
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
    .line 1129
    .restart local v8    # "uri":Landroid/net/Uri;
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@a5
    .line 1130
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@a8
    goto :goto_1
.end method

.method private dropSms(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V
    .locals 3
    .param p1, "receiver"    # Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    #@0
    .prologue
    .line 1464
    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->-get0(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->-get1(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)[Ljava/lang/String;

    #@7
    move-result-object v1

    #@8
    const/4 v2, 0x2

    #@9
    invoke-direct {p0, v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    #@c
    .line 1465
    const/4 v0, 0x3

    #@d
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(I)V

    #@10
    .line 1462
    return-void
.end method

.method private duplicateExists(Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 19
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    #@0
    .prologue
    .line 1145
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    #@3
    move-result-object v8

    #@4
    .line 1147
    .local v8, "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    #@7
    move-result v2

    #@8
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@b
    move-result-object v16

    #@c
    .line 1148
    .local v16, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    #@f
    move-result v2

    #@10
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@13
    move-result-object v9

    #@14
    .line 1150
    .local v9, "count":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSequenceNumber()I

    #@17
    move-result v18

    #@18
    .line 1151
    .local v18, "sequence":I
    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1b
    move-result-object v17

    #@1c
    .line 1152
    .local v17, "seqNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    #@1f
    move-result-wide v2

    #@20
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@23
    move-result-object v11

    #@24
    .line 1153
    .local v11, "date":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageBody()Ljava/lang/String;

    #@27
    move-result-object v12

    #@28
    .line 1155
    .local v12, "messageBody":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    #@2b
    move-result v2

    #@2c
    const/4 v3, 0x1

    #@2d
    if-ne v2, v3, :cond_2

    #@2f
    .line 1156
    const-string/jumbo v5, "address=? AND reference_number=? AND count=? AND sequence=? AND date=? AND message_body=?"

    #@32
    .line 1166
    .local v5, "where":Ljava/lang/String;
    :goto_0
    const/4 v10, 0x0

    #@33
    .line 1169
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    move-object/from16 v0, p0

    #@35
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    #@37
    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    #@39
    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    #@3b
    .line 1170
    const/4 v6, 0x6

    #@3c
    new-array v6, v6, [Ljava/lang/String;

    #@3e
    const/4 v7, 0x0

    #@3f
    aput-object v8, v6, v7

    #@41
    const/4 v7, 0x1

    #@42
    aput-object v16, v6, v7

    #@44
    const/4 v7, 0x2

    #@45
    aput-object v9, v6, v7

    #@47
    const/4 v7, 0x3

    #@48
    aput-object v17, v6, v7

    #@4a
    const/4 v7, 0x4

    #@4b
    aput-object v11, v6, v7

    #@4d
    const/4 v7, 0x5

    #@4e
    aput-object v12, v6, v7

    #@50
    .line 1171
    const/4 v7, 0x0

    #@51
    .line 1169
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@54
    move-result-object v10

    #@55
    .line 1174
    .local v10, "cursor":Landroid/database/Cursor;
    if-eqz v10, :cond_3

    #@57
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    #@5a
    move-result v2

    #@5b
    if-eqz v2, :cond_3

    #@5d
    .line 1175
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
    move-object/from16 v0, v16

    #@6b
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    .line 1176
    const-string/jumbo v3, " seqNumber="

    #@72
    .line 1175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@75
    move-result-object v2

    #@76
    move-object/from16 v0, v17

    #@78
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v2

    #@7c
    .line 1176
    const-string/jumbo v3, " count="

    #@7f
    .line 1175
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@82
    move-result-object v2

    #@83
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@86
    move-result-object v2

    #@87
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@8a
    move-result-object v2

    #@8b
    move-object/from16 v0, p0

    #@8d
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@90
    .line 1181
    const/4 v2, 0x0

    #@91
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@94
    move-result-object v14

    #@95
    .line 1182
    .local v14, "oldPduString":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    #@98
    move-result-object v15

    #@99
    .line 1183
    .local v15, "pdu":[B
    invoke-static {v14}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    #@9c
    move-result-object v13

    #@9d
    .line 1184
    .local v13, "oldPdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    #@a0
    move-result-object v2

    #@a1
    invoke-static {v13, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@a4
    move-result v2

    #@a5
    if-nez v2, :cond_0

    #@a7
    .line 1185
    new-instance v2, Ljava/lang/StringBuilder;

    #@a9
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ac
    const-string/jumbo v3, "Warning: dup message segment PDU of length "

    #@af
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@b2
    move-result-object v2

    #@b3
    array-length v3, v15

    #@b4
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b7
    move-result-object v2

    #@b8
    .line 1186
    const-string/jumbo v3, " is different from existing PDU of length "

    #@bb
    .line 1185
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@be
    move-result-object v2

    #@bf
    .line 1186
    array-length v3, v13

    #@c0
    .line 1185
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c3
    move-result-object v2

    #@c4
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c7
    move-result-object v2

    #@c8
    move-object/from16 v0, p0

    #@ca
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@cd
    .line 1188
    :cond_0
    const/4 v2, 0x1

    #@ce
    .line 1191
    if-eqz v10, :cond_1

    #@d0
    .line 1192
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@d3
    .line 1188
    :cond_1
    return v2

    #@d4
    .line 1162
    .end local v5    # "where":Ljava/lang/String;
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v13    # "oldPdu":[B
    .end local v14    # "oldPduString":Ljava/lang/String;
    .end local v15    # "pdu":[B
    :cond_2
    const-string/jumbo v5, "address=? AND reference_number=? AND count=? AND sequence=? AND ((date=? AND message_body=?) OR deleted=0)"

    #@d7
    .restart local v5    # "where":Ljava/lang/String;
    goto/16 :goto_0

    #@d9
    .line 1191
    .restart local v10    # "cursor":Landroid/database/Cursor;
    :cond_3
    if-eqz v10, :cond_4

    #@db
    .line 1192
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@de
    .line 1196
    :cond_4
    const/4 v2, 0x0

    #@df
    return v2

    #@e0
    .line 1190
    .end local v10    # "cursor":Landroid/database/Cursor;
    :catchall_0
    move-exception v2

    #@e1
    .line 1191
    if-eqz v10, :cond_5

    #@e3
    .line 1192
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@e6
    .line 1190
    :cond_5
    throw v2
.end method

.method private filterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)Z
    .locals 10
    .param p1, "pdus"    # [[B
    .param p2, "destPort"    # I
    .param p3, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p4, "resultReceiver"    # Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    .param p5, "userUnlocked"    # Z

    #@0
    .prologue
    .line 923
    const/4 v7, 0x0

    #@1
    .line 924
    .local v7, "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    #@4
    move-result-object v1

    #@5
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    #@7
    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@a
    move-result v2

    #@b
    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard(I)Lcom/android/internal/telephony/uicc/UiccCard;

    #@e
    move-result-object v6

    #@f
    .line 925
    .local v6, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v6, :cond_0

    #@11
    .line 927
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@13
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@16
    move-result-object v1

    #@17
    .line 928
    new-instance v2, Landroid/content/Intent;

    #@19
    const-string/jumbo v3, "android.service.carrier.CarrierMessagingService"

    #@1c
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1f
    .line 926
    invoke-virtual {v6, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    #@22
    move-result-object v7

    #@23
    .line 933
    .end local v7    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    if-eqz v7, :cond_1

    #@25
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@28
    move-result v1

    #@29
    const/4 v2, 0x1

    #@2a
    if-ne v1, v2, :cond_1

    #@2c
    .line 934
    const-string/jumbo v1, "Found carrier package."

    #@2f
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@32
    .line 935
    new-instance v0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    #@34
    .line 936
    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    #@37
    move-result-object v4

    #@38
    move-object v1, p0

    #@39
    move-object v2, p1

    #@3a
    move v3, p2

    #@3b
    move-object v5, p4

    #@3c
    .line 935
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;[[BILjava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    #@3f
    .line 937
    .local v0, "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    new-instance v8, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;

    #@41
    invoke-direct {v8, p0, v0, p5}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;Z)V

    #@44
    .line 939
    .local v8, "smsFilterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    const/4 v1, 0x0

    #@45
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@48
    move-result-object v1

    #@49
    check-cast v1, Ljava/lang/String;

    #@4b
    invoke-virtual {v0, v1, v8}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->filterSms(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;)V

    #@4e
    .line 940
    const/4 v1, 0x1

    #@4f
    return v1

    #@50
    .line 930
    .end local v0    # "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    .end local v8    # "smsFilterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    .restart local v7    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v1, "UiccCard not initialized."

    #@53
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@56
    goto :goto_0

    #@57
    .line 946
    .end local v7    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    new-instance v1, Landroid/content/Intent;

    #@59
    const-string/jumbo v2, "android.service.carrier.CarrierMessagingService"

    #@5c
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@5f
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->getSystemAppForIntent(Landroid/content/Intent;)Ljava/util/List;

    #@62
    move-result-object v9

    #@63
    .line 948
    .local v9, "systemPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v9, :cond_2

    #@65
    invoke-interface {v9}, Ljava/util/List;->size()I

    #@68
    move-result v1

    #@69
    const/4 v2, 0x1

    #@6a
    if-ne v1, v2, :cond_2

    #@6c
    .line 949
    const-string/jumbo v1, "Found system package."

    #@6f
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@72
    .line 950
    new-instance v0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    #@74
    .line 951
    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    #@77
    move-result-object v4

    #@78
    move-object v1, p0

    #@79
    move-object v2, p1

    #@7a
    move v3, p2

    #@7b
    move-object v5, p4

    #@7c
    .line 950
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;[[BILjava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    #@7f
    .line 952
    .restart local v0    # "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    new-instance v8, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;

    #@81
    invoke-direct {v8, p0, v0, p5}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;Z)V

    #@84
    .line 954
    .restart local v8    # "smsFilterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    const/4 v1, 0x0

    #@85
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@88
    move-result-object v1

    #@89
    check-cast v1, Ljava/lang/String;

    #@8b
    invoke-virtual {v0, v1, v8}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->filterSms(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;)V

    #@8e
    .line 955
    const/4 v1, 0x1

    #@8f
    return v1

    #@90
    .line 957
    .end local v0    # "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    .end local v8    # "smsFilterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    #@92
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@95
    const-string/jumbo v2, "Unable to find carrier package: "

    #@98
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@9b
    move-result-object v1

    #@9c
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@9f
    move-result-object v1

    #@a0
    .line 958
    const-string/jumbo v2, ", nor systemPackages: "

    #@a3
    .line 957
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@a6
    move-result-object v1

    #@a7
    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@aa
    move-result-object v1

    #@ab
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@ae
    move-result-object v1

    #@af
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->logv(Ljava/lang/String;)V

    #@b2
    .line 961
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@b4
    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    #@b7
    move-result-object v2

    #@b8
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    #@ba
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    #@bd
    move-result v3

    #@be
    .line 960
    invoke-static {v1, p1, v2, p2, v3}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->filter(Landroid/content/Context;[[BLjava/lang/String;II)Z

    #@c1
    move-result v1

    #@c2
    if-eqz v1, :cond_3

    #@c4
    .line 962
    const-string/jumbo v1, "Visual voicemail SMS dropped"

    #@c7
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@ca
    .line 963
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/InboundSmsHandler;->dropSms(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    #@cd
    .line 964
    const/4 v1, 0x1

    #@ce
    return v1

    #@cf
    .line 967
    :cond_3
    const/4 v1, 0x0

    #@d0
    return v1
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
    .line 971
    new-instance v5, Ljava/util/ArrayList;

    #@3
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 972
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b
    move-result-object v3

    #@c
    .line 973
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    #@f
    move-result-object v6

    #@10
    .line 974
    .local v6, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string/jumbo v0, "android.permission.CARRIER_FILTER_SMS"

    #@13
    .line 976
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
    .line 977
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@25
    if-nez v7, :cond_1

    #@27
    .line 978
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
    .line 981
    :cond_1
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@41
    iget-object v4, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@43
    .line 982
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    move-result v7

    #@47
    if-nez v7, :cond_0

    #@49
    .line 984
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4c
    .line 985
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
    .line 988
    .end local v1    # "info":Landroid/content/pm/ResolveInfo;
    .end local v4    # "packageName":Ljava/lang/String;
    :cond_2
    return-object v5
.end method

.method private handleInjectSms(Landroid/os/AsyncResult;)V
    .locals 7
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    .line 533
    const/4 v3, 0x0

    #@1
    .line 535
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
    .line 536
    .local v3, "receivedIntent":Landroid/app/PendingIntent;
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@9
    check-cast v5, Landroid/telephony/SmsMessage;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 537
    .local v5, "sms":Landroid/telephony/SmsMessage;
    if-nez v5, :cond_1

    #@d
    .line 538
    const/4 v4, 0x2

    #@e
    .line 547
    .end local v3    # "receivedIntent":Landroid/app/PendingIntent;
    .end local v5    # "sms":Landroid/telephony/SmsMessage;
    .local v4, "result":I
    :goto_0
    if-eqz v3, :cond_0

    #@10
    .line 549
    :try_start_1
    invoke-virtual {v3, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    #@13
    .line 531
    :cond_0
    :goto_1
    return-void

    #@14
    .line 540
    .end local v4    # "result":I
    .restart local v3    # "receivedIntent":Landroid/app/PendingIntent;
    .restart local v5    # "sms":Landroid/telephony/SmsMessage;
    :cond_1
    :try_start_2
    iget-object v6, v5, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@16
    invoke-direct {p0, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    #@19
    move-result v4

    #@1a
    .restart local v4    # "result":I
    goto :goto_0

    #@1b
    .line 542
    .end local v3    # "receivedIntent":Landroid/app/PendingIntent;
    .end local v4    # "result":I
    .end local v5    # "sms":Landroid/telephony/SmsMessage;
    :catch_0
    move-exception v2

    #@1c
    .line 543
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v6, "Exception dispatching message"

    #@1f
    invoke-virtual {p0, v6, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@22
    .line 544
    const/4 v4, 0x2

    #@23
    .restart local v4    # "result":I
    goto :goto_0

    #@24
    .line 550
    .end local v2    # "ex":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v1

    #@25
    .local v1, "e":Landroid/app/PendingIntent$CanceledException;
    goto :goto_1
.end method

.method private handleNewSms(Landroid/os/AsyncResult;)V
    .locals 6
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    const/4 v1, 0x1

    #@2
    .line 505
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 506
    new-instance v4, Ljava/lang/StringBuilder;

    #@8
    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    #@b
    const-string/jumbo v5, "Exception processing incoming SMS: "

    #@e
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@11
    move-result-object v4

    #@12
    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@14
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1b
    move-result-object v4

    #@1c
    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@1f
    .line 507
    return-void

    #@20
    .line 512
    :cond_0
    :try_start_0
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@22
    check-cast v3, Landroid/telephony/SmsMessage;

    #@24
    .line 513
    .local v3, "sms":Landroid/telephony/SmsMessage;
    iget-object v4, v3, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@26
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    move-result v2

    #@2a
    .line 521
    .end local v3    # "sms":Landroid/telephony/SmsMessage;
    .local v2, "result":I
    :goto_0
    const/4 v4, -0x1

    #@2b
    if-eq v2, v4, :cond_1

    #@2d
    .line 522
    if-ne v2, v1, :cond_2

    #@2f
    .line 523
    .local v1, "handled":Z
    :goto_1
    invoke-direct {p0, v1, v2, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    #@32
    .line 504
    .end local v1    # "handled":Z
    :cond_1
    return-void

    #@33
    .line 514
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    #@34
    .line 515
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "Exception dispatching message"

    #@37
    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3a
    .line 516
    const/4 v2, 0x2

    #@3b
    .restart local v2    # "result":I
    goto :goto_0

    #@3c
    .line 522
    .end local v0    # "ex":Ljava/lang/RuntimeException;
    :cond_2
    const/4 v1, 0x0

    #@3d
    goto :goto_1
.end method

.method private handleSmsWhitelisting(Landroid/content/ComponentName;)Landroid/os/Bundle;
    .locals 9
    .param p1, "target"    # Landroid/content/ComponentName;

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 1070
    if-eqz p1, :cond_0

    #@3
    .line 1071
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@6
    move-result-object v4

    #@7
    .line 1072
    .local v4, "pkgName":Ljava/lang/String;
    const-string/jumbo v5, "sms-app"

    #@a
    .line 1078
    .local v5, "reason":Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@c
    .line 1079
    const/4 v7, 0x0

    #@d
    .line 1078
    invoke-interface {v6, v4, v7, v5}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;ILjava/lang/String;)J

    #@10
    move-result-wide v2

    #@11
    .line 1080
    .local v2, "duration":J
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    #@14
    move-result-object v0

    #@15
    .line 1081
    .local v0, "bopts":Landroid/app/BroadcastOptions;
    invoke-virtual {v0, v2, v3}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    #@18
    .line 1082
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result-object v6

    #@1c
    return-object v6

    #@1d
    .line 1074
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
    .line 1075
    .restart local v4    # "pkgName":Ljava/lang/String;
    const-string/jumbo v5, "sms-broadcast"

    #@26
    .restart local v5    # "reason":Ljava/lang/String;
    goto :goto_0

    #@27
    .line 1083
    :catch_0
    move-exception v1

    #@28
    .line 1086
    .local v1, "e":Landroid/os/RemoteException;
    return-object v8
.end method

.method static isCurrentFormat3gpp2()Z
    .locals 2

    #@0
    .prologue
    .line 1254
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    #@7
    move-result v0

    #@8
    .line 1255
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

.method private isSkipNotifyFlagSet(I)Z
    .locals 2
    .param p1, "callbackResult"    # I

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 1472
    and-int/lit8 v1, p1, 0x2

    #@3
    if-lez v1, :cond_0

    #@5
    const/4 v0, 0x1

    #@6
    :cond_0
    return v0
.end method

.method private notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .locals 3
    .param p1, "success"    # Z
    .param p2, "result"    # I
    .param p3, "response"    # Landroid/os/Message;

    #@0
    .prologue
    .line 634
    if-nez p1, :cond_0

    #@2
    .line 636
    new-instance v0, Landroid/content/Intent;

    #@4
    const-string/jumbo v1, "android.provider.Telephony.SMS_REJECTED"

    #@7
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@a
    .line 637
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "result"

    #@d
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@10
    .line 638
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@12
    const-string/jumbo v2, "android.permission.RECEIVE_SMS"

    #@15
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    #@18
    .line 640
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    #@1b
    .line 633
    return-void
.end method

.method private static parseSmsMessage([Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 8
    .param p0, "msgs"    # [Landroid/telephony/SmsMessage;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1546
    aget-object v0, p0, v3

    #@3
    .line 1547
    .local v0, "sms":Landroid/telephony/SmsMessage;
    new-instance v2, Landroid/content/ContentValues;

    #@5
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    #@8
    .line 1548
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "address"

    #@b
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    #@e
    move-result-object v5

    #@f
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 1549
    const-string/jumbo v4, "body"

    #@15
    invoke-static {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->buildMessageBodyFromPdus([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 1550
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
    .line 1551
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
    .line 1552
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
    .line 1553
    const-string/jumbo v4, "seen"

    #@49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@50
    .line 1554
    const-string/jumbo v4, "read"

    #@53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@5a
    .line 1555
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    .line 1556
    .local v1, "subject":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@61
    move-result v4

    #@62
    if-nez v4, :cond_0

    #@64
    .line 1557
    const-string/jumbo v4, "subject"

    #@67
    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@6a
    .line 1559
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
    .line 1560
    const-string/jumbo v3, "service_center"

    #@7e
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    #@81
    move-result-object v4

    #@82
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@85
    .line 1561
    return-object v2
.end method

.method private processMessagePart(Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 28
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    #@0
    .prologue
    .line 724
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    #@3
    move-result v20

    #@4
    .line 726
    .local v20, "messageCount":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    #@7
    move-result v9

    #@8
    .line 728
    .local v9, "destPort":I
    const/4 v2, 0x1

    #@9
    move/from16 v0, v20

    #@b
    if-ne v0, v2, :cond_2

    #@d
    .line 730
    const/4 v2, 0x1

    #@e
    new-array v8, v2, [[B

    #@10
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    #@13
    move-result-object v2

    #@14
    const/4 v3, 0x0

    #@15
    aput-object v2, v8, v3

    #@17
    .line 785
    .local v8, "pdus":[[B
    :cond_0
    :goto_0
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@1a
    move-result-object v24

    #@1b
    .line 786
    .local v24, "pduList":Ljava/util/List;, "Ljava/util/List<[B>;"
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    #@1e
    move-result v2

    #@1f
    if-eqz v2, :cond_1

    #@21
    const/4 v2, 0x0

    #@22
    move-object/from16 v0, v24

    #@24
    invoke-interface {v0, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@27
    move-result v2

    #@28
    if-eqz v2, :cond_a

    #@2a
    .line 787
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    #@2c
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@2f
    const-string/jumbo v3, "processMessagePart: returning false due to "

    #@32
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@35
    move-result-object v3

    #@36
    .line 788
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    #@39
    move-result v2

    #@3a
    if-nez v2, :cond_9

    #@3c
    const-string/jumbo v2, "pduList.size() == 0"

    #@3f
    .line 787
    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@42
    move-result-object v2

    #@43
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@46
    move-result-object v2

    #@47
    move-object/from16 v0, p0

    #@49
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@4c
    .line 789
    const/4 v2, 0x0

    #@4d
    return v2

    #@4e
    .line 733
    .end local v8    # "pdus":[[B
    .end local v24    # "pduList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_2
    const/4 v15, 0x0

    #@4f
    .line 736
    .local v15, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    #@52
    move-result-object v13

    #@53
    .line 737
    .local v13, "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    #@56
    move-result v2

    #@57
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5a
    move-result-object v26

    #@5b
    .line 738
    .local v26, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    #@5e
    move-result v2

    #@5f
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@62
    move-result-object v14

    #@63
    .line 741
    .local v14, "count":Ljava/lang/String;
    const/4 v2, 0x3

    #@64
    new-array v6, v2, [Ljava/lang/String;

    #@66
    const/4 v2, 0x0

    #@67
    aput-object v13, v6, v2

    #@69
    const/4 v2, 0x1

    #@6a
    aput-object v26, v6, v2

    #@6c
    const/4 v2, 0x2

    #@6d
    aput-object v14, v6, v2

    #@6f
    .line 742
    .local v6, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@71
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    #@73
    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    #@75
    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    #@77
    .line 743
    const-string/jumbo v5, "address=? AND reference_number=? AND count=? AND deleted=0"

    #@7a
    const/4 v7, 0x0

    #@7b
    .line 742
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@7e
    move-result-object v15

    #@7f
    .line 745
    .local v15, "cursor":Landroid/database/Cursor;
    invoke-interface {v15}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@82
    move-result v16

    #@83
    .line 746
    .local v16, "cursorCount":I
    move/from16 v0, v16

    #@85
    move/from16 v1, v20

    #@87
    if-ge v0, v1, :cond_4

    #@89
    .line 752
    const/4 v2, 0x0

    #@8a
    .line 778
    if-eqz v15, :cond_3

    #@8c
    .line 779
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    #@8f
    .line 752
    :cond_3
    return v2

    #@90
    .line 756
    :cond_4
    :try_start_1
    move/from16 v0, v20

    #@92
    new-array v8, v0, [[B

    #@94
    .line 757
    .restart local v8    # "pdus":[[B
    :cond_5
    :goto_2
    invoke-interface {v15}, Landroid/database/Cursor;->moveToNext()Z

    #@97
    move-result v2

    #@98
    if-eqz v2, :cond_6

    #@9a
    .line 759
    const/4 v2, 0x1

    #@9b
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    #@9e
    move-result v2

    #@9f
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    #@a2
    move-result v3

    #@a3
    sub-int v19, v2, v3

    #@a5
    .line 761
    .local v19, "index":I
    const/4 v2, 0x0

    #@a6
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@a9
    move-result-object v2

    #@aa
    invoke-static {v2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    #@ad
    move-result-object v2

    #@ae
    aput-object v2, v8, v19

    #@b0
    .line 765
    if-nez v19, :cond_5

    #@b2
    const/4 v2, 0x2

    #@b3
    invoke-interface {v15, v2}, Landroid/database/Cursor;->isNull(I)Z

    #@b6
    move-result v2

    #@b7
    if-nez v2, :cond_5

    #@b9
    .line 766
    const/4 v2, 0x2

    #@ba
    invoke-interface {v15, v2}, Landroid/database/Cursor;->getInt(I)I

    #@bd
    move-result v25

    #@be
    .line 768
    .local v25, "port":I
    invoke-static/range {v25 .. v25}, Lcom/android/internal/telephony/InboundSmsTracker;->getRealDestPort(I)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@c1
    move-result v25

    #@c2
    .line 769
    const/4 v2, -0x1

    #@c3
    move/from16 v0, v25

    #@c5
    if-eq v0, v2, :cond_5

    #@c7
    .line 770
    move/from16 v9, v25

    #@c9
    goto :goto_2

    #@ca
    .line 778
    .end local v19    # "index":I
    .end local v25    # "port":I
    :cond_6
    if-eqz v15, :cond_0

    #@cc
    .line 779
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    #@cf
    goto/16 :goto_0

    #@d1
    .line 774
    .end local v6    # "whereArgs":[Ljava/lang/String;
    .end local v8    # "pdus":[[B
    .end local v13    # "address":Ljava/lang/String;
    .end local v14    # "count":Ljava/lang/String;
    .end local v15    # "cursor":Landroid/database/Cursor;
    .end local v16    # "cursorCount":I
    .end local v26    # "refNumber":Ljava/lang/String;
    :catch_0
    move-exception v17

    #@d2
    .line 775
    .local v17, "e":Landroid/database/SQLException;
    :try_start_2
    const-string/jumbo v2, "Can\'t access multipart SMS database"

    #@d5
    move-object/from16 v0, p0

    #@d7
    move-object/from16 v1, v17

    #@d9
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@dc
    .line 776
    const/4 v2, 0x0

    #@dd
    .line 778
    if-eqz v15, :cond_7

    #@df
    .line 779
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    #@e2
    .line 776
    :cond_7
    return v2

    #@e3
    .line 777
    .end local v17    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    #@e4
    .line 778
    if-eqz v15, :cond_8

    #@e6
    .line 779
    invoke-interface {v15}, Landroid/database/Cursor;->close()V

    #@e9
    .line 777
    :cond_8
    throw v2

    #@ea
    .line 788
    .restart local v8    # "pdus":[[B
    .restart local v24    # "pduList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_9
    const-string/jumbo v2, "pduList.contains(null)"

    #@ed
    goto/16 :goto_1

    #@ef
    .line 792
    :cond_a
    new-instance v11, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    #@f1
    move-object/from16 v0, p0

    #@f3
    move-object/from16 v1, p1

    #@f5
    invoke-direct {v11, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    #@f8
    .line 794
    .local v11, "resultReceiver":Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    move-object/from16 v0, p0

    #@fa
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    #@fc
    invoke-virtual {v2}, Landroid/os/UserManager;->isUserUnlocked()Z

    #@ff
    move-result v2

    #@100
    if-nez v2, :cond_b

    #@102
    .line 795
    move-object/from16 v0, p0

    #@104
    move-object/from16 v1, p1

    #@106
    invoke-direct {v0, v1, v8, v9, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->processMessagePartWithUserLocked(Lcom/android/internal/telephony/InboundSmsTracker;[[BILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Z

    #@109
    move-result v2

    #@10a
    return v2

    #@10b
    .line 798
    :cond_b
    const/16 v2, 0xb84

    #@10d
    if-ne v9, v2, :cond_10

    #@10f
    .line 800
    new-instance v22, Ljava/io/ByteArrayOutputStream;

    #@111
    invoke-direct/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@114
    .line 801
    .local v22, "output":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    #@115
    array-length v3, v8

    #@116
    :goto_3
    if-ge v2, v3, :cond_e

    #@118
    aget-object v23, v8, v2

    #@11a
    .line 803
    .local v23, "pdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    #@11d
    move-result v4

    #@11e
    if-nez v4, :cond_c

    #@120
    .line 804
    const-string/jumbo v4, "3gpp"

    #@123
    move-object/from16 v0, v23

    #@125
    invoke-static {v0, v4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    #@128
    move-result-object v21

    #@129
    .line 805
    .local v21, "msg":Landroid/telephony/SmsMessage;
    if-eqz v21, :cond_d

    #@12b
    .line 806
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SmsMessage;->getUserData()[B

    #@12e
    move-result-object v23

    #@12f
    .line 812
    .end local v21    # "msg":Landroid/telephony/SmsMessage;
    :cond_c
    move-object/from16 v0, v23

    #@131
    array-length v4, v0

    #@132
    const/4 v5, 0x0

    #@133
    move-object/from16 v0, v22

    #@135
    move-object/from16 v1, v23

    #@137
    invoke-virtual {v0, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@13a
    .line 801
    add-int/lit8 v2, v2, 0x1

    #@13c
    goto :goto_3

    #@13d
    .line 808
    .restart local v21    # "msg":Landroid/telephony/SmsMessage;
    :cond_d
    const-string/jumbo v2, "processMessagePart: SmsMessage.createFromPdu returned null"

    #@140
    move-object/from16 v0, p0

    #@142
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@145
    .line 809
    const/4 v2, 0x0

    #@146
    return v2

    #@147
    .line 814
    .end local v21    # "msg":Landroid/telephony/SmsMessage;
    .end local v23    # "pdu":[B
    :cond_e
    move-object/from16 v0, p0

    #@149
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    #@14b
    invoke-virtual/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@14e
    move-result-object v3

    #@14f
    move-object/from16 v0, p0

    #@151
    invoke-virtual {v2, v3, v11, v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I

    #@154
    move-result v27

    #@155
    .line 815
    .local v27, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    #@157
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15a
    const-string/jumbo v3, "dispatchWapPdu() returned "

    #@15d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@160
    move-result-object v2

    #@161
    move/from16 v0, v27

    #@163
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@166
    move-result-object v2

    #@167
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16a
    move-result-object v2

    #@16b
    move-object/from16 v0, p0

    #@16d
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@170
    .line 817
    const/4 v2, -0x1

    #@171
    move/from16 v0, v27

    #@173
    if-ne v0, v2, :cond_f

    #@175
    .line 818
    const/4 v2, 0x1

    #@176
    return v2

    #@177
    .line 820
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    #@17a
    move-result-object v2

    #@17b
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    #@17e
    move-result-object v3

    #@17f
    .line 821
    const/4 v4, 0x2

    #@180
    .line 820
    move-object/from16 v0, p0

    #@182
    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    #@185
    .line 822
    const/4 v2, 0x0

    #@186
    return v2

    #@187
    .line 826
    .end local v22    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v27    # "result":I
    :cond_10
    move-object/from16 v0, p0

    #@189
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@18b
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    #@18e
    move-result-object v3

    #@18f
    invoke-static {v2, v3}, Lcom/android/internal/telephony/BlockChecker;->isBlocked(Landroid/content/Context;Ljava/lang/String;)Z

    #@192
    move-result v2

    #@193
    if-eqz v2, :cond_11

    #@195
    .line 827
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    #@198
    move-result-object v2

    #@199
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    #@19c
    move-result-object v3

    #@19d
    .line 828
    const/4 v4, 0x1

    #@19e
    .line 827
    move-object/from16 v0, p0

    #@1a0
    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    #@1a3
    .line 829
    const/4 v2, 0x0

    #@1a4
    return v2

    #@1a5
    .line 833
    :cond_11
    const/4 v12, 0x1

    #@1a6
    move-object/from16 v7, p0

    #@1a8
    move-object/from16 v10, p1

    #@1aa
    .line 832
    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/InboundSmsHandler;->filterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)Z

    #@1ad
    move-result v18

    #@1ae
    .line 835
    .local v18, "filterInvoked":Z
    if-nez v18, :cond_12

    #@1b0
    .line 836
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    #@1b3
    move-result-object v2

    #@1b4
    move-object/from16 v0, p0

    #@1b6
    invoke-direct {v0, v8, v2, v9, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchSmsDeliveryIntent([[BLjava/lang/String;ILandroid/content/BroadcastReceiver;)V

    #@1b9
    .line 839
    :cond_12
    const/4 v2, 0x1

    #@1ba
    return v2
.end method

.method private processMessagePartWithUserLocked(Lcom/android/internal/telephony/InboundSmsTracker;[[BILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Z
    .locals 7
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "pdus"    # [[B
    .param p3, "destPort"    # I
    .param p4, "resultReceiver"    # Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 853
    new-instance v0, Ljava/lang/StringBuilder;

    #@3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@6
    const-string/jumbo v1, "Credential-encrypted storage not available. Port: "

    #@9
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@c
    move-result-object v0

    #@d
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@14
    move-result-object v0

    #@15
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@18
    .line 854
    const/16 v0, 0xb84

    #@1a
    if-ne p3, v0, :cond_0

    #@1c
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    #@1e
    aget-object v1, p2, v5

    #@20
    invoke-virtual {v0, v1, p0}, Lcom/android/internal/telephony/WapPushOverSms;->isWapPushForMms([BLcom/android/internal/telephony/InboundSmsHandler;)Z

    #@23
    move-result v0

    #@24
    if-eqz v0, :cond_0

    #@26
    .line 855
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->showNewMessageNotification()V

    #@29
    .line 856
    return v5

    #@2a
    .line 858
    :cond_0
    const/4 v0, -0x1

    #@2b
    if-ne p3, v0, :cond_2

    #@2d
    move-object v0, p0

    #@2e
    move-object v1, p2

    #@2f
    move v2, p3

    #@30
    move-object v3, p1

    #@31
    move-object v4, p4

    #@32
    .line 860
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler;->filterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)Z

    #@35
    move-result v6

    #@36
    .line 862
    .local v6, "filterInvoked":Z
    if-eqz v6, :cond_1

    #@38
    .line 864
    const/4 v0, 0x1

    #@39
    return v0

    #@3a
    .line 867
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->showNewMessageNotification()V

    #@3d
    .line 868
    return v5

    #@3e
    .line 871
    .end local v6    # "filterInvoked":Z
    :cond_2
    return v5
.end method

.method private static replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1587
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

.method private showNewMessageNotification()V
    .locals 7

    #@0
    .prologue
    const/4 v6, 0x1

    #@1
    .line 876
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    .line 877
    return-void

    #@8
    .line 879
    :cond_0
    const-string/jumbo v3, "Show new message notification."

    #@b
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@e
    .line 881
    const-string/jumbo v3, "android.intent.action.MAIN"

    #@11
    const-string/jumbo v4, "android.intent.category.APP_MESSAGING"

    #@14
    .line 880
    invoke-static {v3, v4}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@17
    move-result-object v0

    #@18
    .line 882
    .local v0, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/app/Notification$Builder;

    #@1a
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@1c
    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@1f
    .line 883
    const v4, 0x108008e

    #@22
    .line 882
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    #@25
    move-result-object v3

    #@26
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    #@29
    move-result-object v3

    #@2a
    invoke-virtual {v3, v6}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    #@2d
    move-result-object v3

    #@2e
    .line 886
    const/4 v4, -0x1

    #@2f
    .line 882
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    #@32
    move-result-object v3

    #@33
    .line 887
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@35
    const v5, 0x10405eb

    #@38
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    .line 882
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@3f
    move-result-object v3

    #@40
    .line 888
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@42
    const v5, 0x10405ec

    #@45
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    .line 882
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@4c
    move-result-object v3

    #@4d
    .line 889
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@4f
    const/4 v5, 0x0

    #@50
    invoke-static {v4, v6, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@53
    move-result-object v4

    #@54
    .line 882
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@57
    move-result-object v1

    #@58
    .line 891
    .local v1, "mBuilder":Landroid/app/Notification$Builder;
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@5a
    const-string/jumbo v4, "notification"

    #@5d
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@60
    move-result-object v2

    #@61
    check-cast v2, Landroid/app/NotificationManager;

    #@63
    .line 893
    .local v2, "mNotificationManager":Landroid/app/NotificationManager;
    const-string/jumbo v3, "InboundSmsHandler"

    #@66
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@69
    move-result-object v4

    #@6a
    .line 892
    invoke-virtual {v2, v3, v6, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    #@6d
    .line 874
    return-void
.end method

.method private writeInboxMessage(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1511
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    #@4
    move-result-object v4

    #@5
    .line 1512
    .local v4, "messages":[Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_0

    #@7
    array-length v7, v4

    #@8
    const/4 v8, 0x1

    #@9
    if-ge v7, v8, :cond_1

    #@b
    .line 1513
    :cond_0
    const-string/jumbo v7, "Failed to parse SMS pdu"

    #@e
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@11
    .line 1514
    return-object v9

    #@12
    .line 1519
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
    .line 1521
    .local v5, "sms":Landroid/telephony/SmsMessage;
    :try_start_0
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 1519
    add-int/lit8 v7, v7, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1522
    :catch_0
    move-exception v1

    #@1f
    .line 1523
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v7, "NPE inside SmsMessage"

    #@22
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@25
    .line 1524
    return-object v9

    #@26
    .line 1527
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .end local v5    # "sms":Landroid/telephony/SmsMessage;
    :cond_2
    invoke-static {v4}, Lcom/android/internal/telephony/InboundSmsHandler;->parseSmsMessage([Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    #@29
    move-result-object v6

    #@2a
    .line 1528
    .local v6, "values":Landroid/content/ContentValues;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2d
    move-result-wide v2

    #@2e
    .line 1530
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
    .line 1534
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3d
    .line 1530
    return-object v7

    #@3e
    .line 1531
    :catch_1
    move-exception v0

    #@3f
    .line 1532
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v7, "Failed to persist inbox message"

    #@42
    invoke-virtual {p0, v7, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@45
    .line 1534
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@48
    .line 1536
    return-object v9

    #@49
    .line 1533
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    #@4a
    .line 1534
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4d
    .line 1533
    throw v7
.end method


# virtual methods
.method protected abstract acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
.end method

.method protected addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;Z)I
    .locals 3
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "deDup"    # Z

    #@0
    .prologue
    const/4 v2, 0x2

    #@1
    const/4 v1, 0x1

    #@2
    .line 702
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;Z)I

    #@5
    move-result v0

    #@6
    sparse-switch v0, :sswitch_data_0

    #@9
    .line 712
    return v2

    #@a
    .line 704
    :sswitch_0
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    #@d
    .line 705
    return v1

    #@e
    .line 708
    :sswitch_1
    return v1

    #@f
    .line 702
    nop

    #@10
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x5 -> :sswitch_1
    .end sparse-switch
.end method

.method public dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V
    .locals 20
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "permission"    # Ljava/lang/String;
    .param p3, "appOp"    # I
    .param p4, "opts"    # Landroid/os/Bundle;
    .param p5, "resultReceiver"    # Landroid/content/BroadcastReceiver;
    .param p6, "user"    # Landroid/os/UserHandle;

    #@0
    .prologue
    .line 1002
    const/high16 v1, 0x8000000

    #@2
    move-object/from16 v0, p1

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@7
    .line 1003
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@a
    move-result-object v15

    #@b
    .line 1004
    .local v15, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.provider.Telephony.SMS_DELIVER"

    #@e
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_0

    #@14
    .line 1005
    const-string/jumbo v1, "android.provider.Telephony.SMS_RECEIVED"

    #@17
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    .line 1004
    if-nez v1, :cond_0

    #@1d
    .line 1006
    const-string/jumbo v1, "android.provider.Telephony.WAP_PUSH_DELIVER"

    #@20
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v1

    #@24
    .line 1004
    if-nez v1, :cond_0

    #@26
    .line 1007
    const-string/jumbo v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    #@29
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v1

    #@2d
    .line 1004
    if-eqz v1, :cond_1

    #@2f
    .line 1014
    :cond_0
    const/high16 v1, 0x10000000

    #@31
    move-object/from16 v0, p1

    #@33
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@36
    .line 1016
    :cond_1
    move-object/from16 v0, p0

    #@38
    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    #@3a
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@3d
    move-result v1

    #@3e
    move-object/from16 v0, p1

    #@40
    invoke-static {v0, v1}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    #@43
    .line 1017
    sget-object v1, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    #@45
    move-object/from16 v0, p6

    #@47
    invoke-virtual {v0, v1}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    #@4a
    move-result v1

    #@4b
    if-eqz v1, :cond_7

    #@4d
    .line 1019
    const/16 v19, 0x0

    #@4f
    .line 1021
    .local v19, "users":[I
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    #@52
    move-result-object v1

    #@53
    invoke-interface {v1}, Landroid/app/IActivityManager;->getRunningUserIds()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@56
    move-result-object v19

    #@57
    .line 1024
    .end local v19    # "users":[I
    :goto_0
    if-nez v19, :cond_2

    #@59
    .line 1025
    const/4 v1, 0x1

    #@5a
    new-array v0, v1, [I

    #@5c
    move-object/from16 v19, v0

    #@5e
    invoke-virtual/range {p6 .. p6}, Landroid/os/UserHandle;->getIdentifier()I

    #@61
    move-result v1

    #@62
    const/4 v2, 0x0

    #@63
    aput v1, v19, v2

    #@65
    .line 1029
    :cond_2
    move-object/from16 v0, v19

    #@67
    array-length v1, v0

    #@68
    add-int/lit8 v16, v1, -0x1

    #@6a
    .local v16, "i":I
    :goto_1
    if-ltz v16, :cond_8

    #@6c
    .line 1030
    new-instance v3, Landroid/os/UserHandle;

    #@6e
    aget v1, v19, v16

    #@70
    invoke-direct {v3, v1}, Landroid/os/UserHandle;-><init>(I)V

    #@73
    .line 1031
    .local v3, "targetUser":Landroid/os/UserHandle;
    aget v1, v19, v16

    #@75
    if-eqz v1, :cond_5

    #@77
    .line 1033
    move-object/from16 v0, p0

    #@79
    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    #@7b
    const-string/jumbo v2, "no_sms"

    #@7e
    invoke-virtual {v1, v2, v3}, Landroid/os/UserManager;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    #@81
    move-result v1

    #@82
    if-eqz v1, :cond_4

    #@84
    .line 1029
    :cond_3
    :goto_2
    add-int/lit8 v16, v16, -0x1

    #@86
    goto :goto_1

    #@87
    .line 1037
    :cond_4
    move-object/from16 v0, p0

    #@89
    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    #@8b
    aget v2, v19, v16

    #@8d
    invoke-virtual {v1, v2}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    #@90
    move-result-object v17

    #@91
    .line 1038
    .local v17, "info":Landroid/content/pm/UserInfo;
    if-eqz v17, :cond_3

    #@93
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@96
    move-result v1

    #@97
    if-nez v1, :cond_3

    #@99
    .line 1043
    .end local v17    # "info":Landroid/content/pm/UserInfo;
    :cond_5
    move-object/from16 v0, p0

    #@9b
    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@9d
    .line 1044
    aget v2, v19, v16

    #@9f
    if-nez v2, :cond_6

    #@a1
    move-object/from16 v7, p5

    #@a3
    .line 1045
    :goto_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    #@a6
    move-result-object v8

    #@a7
    const/4 v9, -0x1

    #@a8
    const/4 v10, 0x0

    #@a9
    const/4 v11, 0x0

    #@aa
    move-object/from16 v2, p1

    #@ac
    move-object/from16 v4, p2

    #@ae
    move/from16 v5, p3

    #@b0
    move-object/from16 v6, p4

    #@b2
    .line 1043
    invoke-virtual/range {v1 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@b5
    goto :goto_2

    #@b6
    .line 1044
    :cond_6
    const/4 v7, 0x0

    #@b7
    goto :goto_3

    #@b8
    .line 1048
    .end local v3    # "targetUser":Landroid/os/UserHandle;
    .end local v16    # "i":I
    :cond_7
    move-object/from16 v0, p0

    #@ba
    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@bc
    .line 1049
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getHandler()Landroid/os/Handler;

    #@bf
    move-result-object v11

    #@c0
    const/4 v12, -0x1

    #@c1
    const/4 v13, 0x0

    #@c2
    const/4 v14, 0x0

    #@c3
    move-object/from16 v5, p1

    #@c5
    move-object/from16 v6, p6

    #@c7
    move-object/from16 v7, p2

    #@c9
    move/from16 v8, p3

    #@cb
    move-object/from16 v9, p4

    #@cd
    move-object/from16 v10, p5

    #@cf
    .line 1048
    invoke-virtual/range {v4 .. v14}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@d2
    .line 1001
    :cond_8
    return-void

    #@d3
    .line 1022
    .restart local v19    # "users":[I
    :catch_0
    move-exception v18

    #@d4
    .local v18, "re":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected abstract dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I
.end method

.method protected dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    .locals 18
    .param p1, "sms"    # Lcom/android/internal/telephony/SmsMessageBase;

    #@0
    .prologue
    .line 659
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    #@3
    move-result-object v16

    #@4
    .line 662
    .local v16, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    if-eqz v16, :cond_0

    #@6
    move-object/from16 v0, v16

    #@8
    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    #@a
    if-nez v2, :cond_2

    #@c
    .line 664
    :cond_0
    const/4 v6, -0x1

    #@d
    .line 665
    .local v6, "destPort":I
    if-eqz v16, :cond_1

    #@f
    move-object/from16 v0, v16

    #@11
    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 667
    move-object/from16 v0, v16

    #@17
    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    #@19
    iget v6, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    #@1b
    .line 668
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "destination port: "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2a
    move-result-object v2

    #@2b
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2e
    move-result-object v2

    #@2f
    move-object/from16 v0, p0

    #@31
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@34
    .line 671
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@37
    move-result-object v2

    #@38
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    #@3b
    move-result-object v3

    #@3c
    .line 672
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    #@3f
    move-result-wide v4

    #@40
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    #@43
    move-result v7

    #@44
    .line 673
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    #@47
    move-result-object v9

    #@48
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    #@4b
    move-result-object v10

    #@4c
    .line 672
    const/4 v8, 0x0

    #@4d
    .line 671
    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker([BJIZZLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;

    #@50
    move-result-object v17

    #@51
    .line 691
    .local v17, "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :goto_0
    invoke-virtual/range {v17 .. v17}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    #@54
    move-result v2

    #@55
    const/4 v3, -0x1

    #@56
    if-ne v2, v3, :cond_4

    #@58
    const/4 v2, 0x1

    #@59
    .line 690
    :goto_1
    move-object/from16 v0, p0

    #@5b
    move-object/from16 v1, v17

    #@5d
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;Z)I

    #@60
    move-result v2

    #@61
    return v2

    #@62
    .line 676
    .end local v6    # "destPort":I
    .end local v17    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :cond_2
    move-object/from16 v0, v16

    #@64
    iget-object v14, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    #@66
    .line 677
    .local v14, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move-object/from16 v0, v16

    #@68
    iget-object v15, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    #@6a
    .line 678
    .local v15, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    if-eqz v15, :cond_3

    #@6c
    iget v6, v15, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    #@6e
    .line 680
    .restart local v6    # "destPort":I
    :goto_2
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@71
    move-result-object v2

    #@72
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    #@75
    move-result-object v3

    #@76
    .line 681
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    #@79
    move-result-wide v4

    #@7a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    #@7d
    move-result v7

    #@7e
    .line 682
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    #@81
    move-result-object v8

    #@82
    iget v9, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    #@84
    iget v10, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    #@86
    .line 683
    iget v11, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    #@88
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    #@8b
    move-result-object v13

    #@8c
    const/4 v12, 0x0

    #@8d
    .line 680
    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker([BJIZLjava/lang/String;IIIZLjava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;

    #@90
    move-result-object v17

    #@91
    .restart local v17    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    goto :goto_0

    #@92
    .line 678
    .end local v6    # "destPort":I
    .end local v17    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :cond_3
    const/4 v6, -0x1

    #@93
    .restart local v6    # "destPort":I
    goto :goto_2

    #@94
    .line 691
    .end local v14    # "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    .end local v15    # "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    .restart local v17    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :cond_4
    const/4 v2, 0x0

    #@95
    goto :goto_1
.end method

.method public dispose()V
    .locals 0

    #@0
    .prologue
    .line 254
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->quit()V

    #@3
    .line 253
    return-void
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    #@0
    .prologue
    .line 278
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2
    return-object v0
.end method

.method public getWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 1

    #@0
    .prologue
    .line 1592
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    return-object v0
.end method

.method public getWakeLockTimeout()I
    .locals 1

    #@0
    .prologue
    .line 1597
    const/16 v0, 0xbb8

    #@2
    return v0
.end method

.method protected abstract is3gpp2()Z
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1482
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    .line 1481
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1491
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    .line 1490
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1501
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7
    .line 1500
    return-void
.end method

.method protected onQuitting()V
    .locals 1

    #@0
    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispose()V

    #@5
    .line 271
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@7
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@f
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@12
    goto :goto_0

    #@13
    .line 268
    :cond_0
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 620
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2
    .line 621
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    #@4
    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    #@6
    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    #@8
    .line 622
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
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    #@16
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getClass()Ljava/lang/Class;

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
    .line 619
    return-void
.end method

.method public updatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 261
    const/4 v0, 0x7

    #@1
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    #@4
    .line 260
    return-void
.end method
