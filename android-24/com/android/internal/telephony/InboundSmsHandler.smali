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

.method static synthetic -wrap10(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .locals 0

    #@0
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->showNewMessageNotification()V

    #@3
    return-void
.end method

.method static synthetic -wrap11(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/util/IState;)V
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

.method static synthetic -wrap7(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->handleInjectSms(Landroid/os/AsyncResult;)V

    #@3
    return-void
.end method

.method static synthetic -wrap8(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/AsyncResult;)V
    .locals 0
    .param p1, "ar"    # Landroid/os/AsyncResult;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->handleNewSms(Landroid/os/AsyncResult;)V

    #@3
    return-void
.end method

.method static synthetic -wrap9(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V
    .locals 0
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->logv(Ljava/lang/String;)V

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
    .line 109
    new-array v0, v3, [Ljava/lang/String;

    #@4
    .line 110
    const-string/jumbo v1, "pdu"

    #@7
    aput-object v1, v0, v2

    #@9
    .line 109
    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    #@b
    .line 114
    const/4 v0, 0x3

    #@c
    new-array v0, v0, [Ljava/lang/String;

    #@e
    .line 115
    const-string/jumbo v1, "pdu"

    #@11
    aput-object v1, v0, v2

    #@13
    .line 116
    const-string/jumbo v1, "sequence"

    #@16
    aput-object v1, v0, v3

    #@18
    .line 117
    const-string/jumbo v1, "destination_port"

    #@1b
    const/4 v2, 0x2

    #@1c
    aput-object v1, v0, v2

    #@1e
    .line 114
    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    #@20
    .line 167
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
    .line 169
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    #@2d
    const-string/jumbo v1, "raw/permanentDelete"

    #@30
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    #@33
    move-result-object v0

    #@34
    .line 168
    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUriPermanentDelete:Landroid/net/Uri;

    #@36
    .line 104
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
    .line 221
    invoke-direct {p0, p1}, Lcom/android/internal/util/StateMachine;-><init>(Ljava/lang/String;)V

    #@5
    .line 181
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    #@7
    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;)V

    #@a
    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    #@c
    .line 184
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    #@e
    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$StartupState;)V

    #@11
    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    #@13
    .line 187
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    #@15
    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$IdleState;)V

    #@18
    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    #@1a
    .line 190
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    #@1c
    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;)V

    #@1f
    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    #@21
    .line 193
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    #@23
    invoke-direct {v2, p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;)V

    #@26
    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    #@28
    .line 209
    iput v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->DELETE_PERMANENTLY:I

    #@2a
    .line 211
    const/4 v2, 0x2

    #@2b
    iput v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->MARK_DELETED:I

    #@2d
    .line 223
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@2f
    .line 224
    iput-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    #@31
    .line 225
    iput-object p4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    #@33
    .line 226
    iput-object p5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastHandler:Lcom/android/internal/telephony/CellBroadcastHandler;

    #@35
    .line 227
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@38
    move-result-object v2

    #@39
    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    #@3b
    .line 228
    new-instance v2, Lcom/android/internal/telephony/WapPushOverSms;

    #@3d
    invoke-direct {v2, p2}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Landroid/content/Context;)V

    #@40
    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    #@42
    .line 230
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@44
    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    #@47
    move-result-object v2

    #@48
    .line 231
    const v4, 0x112005c

    #@4b
    .line 230
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@4e
    move-result v1

    #@4f
    .line 232
    .local v1, "smsCapable":Z
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@51
    invoke-static {v2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    #@54
    move-result-object v2

    #@55
    .line 233
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    #@57
    invoke-virtual {v4}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    #@5a
    move-result v4

    #@5b
    .line 232
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
    .line 235
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
    .line 236
    .local v0, "pm":Landroid/os/PowerManager;
    invoke-virtual {v0, v3, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    #@72
    move-result-object v2

    #@73
    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@75
    .line 237
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@77
    invoke-virtual {v2}, Landroid/os/PowerManager$WakeLock;->acquire()V

    #@7a
    .line 238
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
    .line 239
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
    .line 241
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    #@93
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;)V

    #@96
    .line 242
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    #@98
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    #@9a
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@9d
    .line 243
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    #@9f
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    #@a1
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@a4
    .line 244
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    #@a6
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    #@a8
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@ab
    .line 245
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    #@ad
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    #@af
    invoke-virtual {p0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addState(Lcom/android/internal/util/State;Lcom/android/internal/util/State;)V

    #@b2
    .line 247
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    #@b4
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->setInitialState(Lcom/android/internal/util/State;)V

    #@b7
    .line 248
    const-string/jumbo v2, "created InboundSmsHandler"

    #@ba
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@bd
    .line 220
    return-void

    #@be
    .end local v0    # "pm":Landroid/os/PowerManager;
    :cond_0
    move v2, v3

    #@bf
    .line 232
    goto :goto_0
.end method

.method private addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;Z)I
    .locals 26
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "deDup"    # Z

    #@0
    .prologue
    .line 1121
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    #@3
    move-result-object v8

    #@4
    .line 1122
    .local v8, "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    #@7
    move-result v2

    #@8
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@b
    move-result-object v20

    #@c
    .line 1123
    .local v20, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    #@f
    move-result v2

    #@10
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@13
    move-result-object v9

    #@14
    .line 1124
    .local v9, "count":Ljava/lang/String;
    if-eqz p2, :cond_6

    #@16
    .line 1126
    const/4 v10, 0x0

    #@17
    .line 1129
    .local v10, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSequenceNumber()I

    #@1a
    move-result v24

    #@1b
    .line 1132
    .local v24, "sequence":I
    invoke-static/range {v24 .. v24}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@1e
    move-result-object v21

    #@1f
    .line 1133
    .local v21, "seqNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    #@22
    move-result-wide v2

    #@23
    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@26
    move-result-object v11

    #@27
    .line 1134
    .local v11, "date":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageBody()Ljava/lang/String;

    #@2a
    move-result-object v15

    #@2b
    .line 1137
    .local v15, "messageBody":Ljava/lang/String;
    move-object/from16 v0, p0

    #@2d
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    #@2f
    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    #@31
    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_PROJECTION:[Ljava/lang/String;

    #@33
    .line 1138
    const-string/jumbo v5, "address=? AND reference_number=? AND count=? AND sequence=? AND date=? AND message_body=?"

    #@36
    .line 1140
    const/4 v6, 0x6

    #@37
    new-array v6, v6, [Ljava/lang/String;

    #@39
    const/4 v7, 0x0

    #@3a
    aput-object v8, v6, v7

    #@3c
    const/4 v7, 0x1

    #@3d
    aput-object v20, v6, v7

    #@3f
    const/4 v7, 0x2

    #@40
    aput-object v9, v6, v7

    #@42
    const/4 v7, 0x3

    #@43
    aput-object v21, v6, v7

    #@45
    const/4 v7, 0x4

    #@46
    aput-object v11, v6, v7

    #@48
    const/4 v7, 0x5

    #@49
    aput-object v15, v6, v7

    #@4b
    .line 1141
    const/4 v7, 0x0

    #@4c
    .line 1137
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@4f
    move-result-object v10

    #@50
    .line 1144
    .local v10, "cursor":Landroid/database/Cursor;
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    #@53
    move-result v2

    #@54
    if-eqz v2, :cond_2

    #@56
    .line 1145
    new-instance v2, Ljava/lang/StringBuilder;

    #@58
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@5b
    const-string/jumbo v3, "Discarding duplicate message segment, refNumber="

    #@5e
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@61
    move-result-object v2

    #@62
    move-object/from16 v0, v20

    #@64
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@67
    move-result-object v2

    #@68
    .line 1146
    const-string/jumbo v3, " seqNumber="

    #@6b
    .line 1145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@6e
    move-result-object v2

    #@6f
    move-object/from16 v0, v21

    #@71
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@74
    move-result-object v2

    #@75
    .line 1146
    const-string/jumbo v3, " count="

    #@78
    .line 1145
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7b
    move-result-object v2

    #@7c
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@7f
    move-result-object v2

    #@80
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@83
    move-result-object v2

    #@84
    move-object/from16 v0, p0

    #@86
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@89
    .line 1151
    const/4 v2, 0x0

    #@8a
    invoke-interface {v10, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@8d
    move-result-object v18

    #@8e
    .line 1152
    .local v18, "oldPduString":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    #@91
    move-result-object v19

    #@92
    .line 1153
    .local v19, "pdu":[B
    invoke-static/range {v18 .. v18}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    #@95
    move-result-object v17

    #@96
    .line 1154
    .local v17, "oldPdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    #@99
    move-result-object v2

    #@9a
    move-object/from16 v0, v17

    #@9c
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    #@9f
    move-result v2

    #@a0
    if-nez v2, :cond_0

    #@a2
    .line 1155
    new-instance v2, Ljava/lang/StringBuilder;

    #@a4
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a7
    const-string/jumbo v3, "Warning: dup message segment PDU of length "

    #@aa
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@ad
    move-result-object v2

    #@ae
    move-object/from16 v0, v19

    #@b0
    array-length v3, v0

    #@b1
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@b4
    move-result-object v2

    #@b5
    .line 1156
    const-string/jumbo v3, " is different from existing PDU of length "

    #@b8
    .line 1155
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@bb
    move-result-object v2

    #@bc
    .line 1156
    move-object/from16 v0, v17

    #@be
    array-length v3, v0

    #@bf
    .line 1155
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@c2
    move-result-object v2

    #@c3
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@c6
    move-result-object v2

    #@c7
    move-object/from16 v0, p0

    #@c9
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@cc
    .line 1158
    :cond_0
    const/4 v2, 0x5

    #@cd
    .line 1164
    if-eqz v10, :cond_1

    #@cf
    .line 1165
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@d2
    .line 1158
    :cond_1
    return v2

    #@d3
    .line 1164
    .end local v17    # "oldPdu":[B
    .end local v18    # "oldPduString":Ljava/lang/String;
    .end local v19    # "pdu":[B
    :cond_2
    if-eqz v10, :cond_3

    #@d5
    .line 1165
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@d8
    .line 1172
    .end local v10    # "cursor":Landroid/database/Cursor;
    .end local v11    # "date":Ljava/lang/String;
    .end local v15    # "messageBody":Ljava/lang/String;
    .end local v21    # "seqNumber":Ljava/lang/String;
    .end local v24    # "sequence":I
    :cond_3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getContentValues()Landroid/content/ContentValues;

    #@db
    move-result-object v25

    #@dc
    .line 1175
    .local v25, "values":Landroid/content/ContentValues;
    move-object/from16 v0, p0

    #@de
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    #@e0
    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    #@e2
    move-object/from16 v0, v25

    #@e4
    invoke-virtual {v2, v3, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    #@e7
    move-result-object v16

    #@e8
    .line 1176
    .local v16, "newUri":Landroid/net/Uri;
    new-instance v2, Ljava/lang/StringBuilder;

    #@ea
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@ed
    const-string/jumbo v3, "URI of new row -> "

    #@f0
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@f3
    move-result-object v2

    #@f4
    move-object/from16 v0, v16

    #@f6
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@f9
    move-result-object v2

    #@fa
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@fd
    move-result-object v2

    #@fe
    move-object/from16 v0, p0

    #@100
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@103
    .line 1179
    :try_start_1
    invoke-static/range {v16 .. v16}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    #@106
    move-result-wide v22

    #@107
    .line 1180
    .local v22, "rowId":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    #@10a
    move-result v2

    #@10b
    const/4 v3, 0x1

    #@10c
    if-ne v2, v3, :cond_7

    #@10e
    .line 1182
    const-string/jumbo v2, "_id=?"

    #@111
    const/4 v3, 0x1

    #@112
    new-array v3, v3, [Ljava/lang/String;

    #@114
    invoke-static/range {v22 .. v23}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    #@117
    move-result-object v4

    #@118
    const/4 v5, 0x0

    #@119
    aput-object v4, v3, v5

    #@11b
    move-object/from16 v0, p1

    #@11d
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    #@120
    .line 1188
    :goto_1
    const/4 v2, 0x1

    #@121
    return v2

    #@122
    .line 1160
    .end local v16    # "newUri":Landroid/net/Uri;
    .end local v22    # "rowId":J
    .end local v25    # "values":Landroid/content/ContentValues;
    :catch_0
    move-exception v13

    #@123
    .line 1161
    .local v13, "e":Landroid/database/SQLException;
    :try_start_2
    const-string/jumbo v2, "Can\'t access SMS database"

    #@126
    move-object/from16 v0, p0

    #@128
    invoke-virtual {v0, v2, v13}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@12b
    .line 1162
    const/4 v2, 0x2

    #@12c
    .line 1164
    if-eqz v10, :cond_4

    #@12e
    .line 1165
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@131
    .line 1162
    :cond_4
    return v2

    #@132
    .line 1163
    .end local v13    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    #@133
    .line 1164
    if-eqz v10, :cond_5

    #@135
    .line 1165
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    #@138
    .line 1163
    :cond_5
    throw v2

    #@139
    .line 1169
    :cond_6
    const-string/jumbo v2, "Skipped message de-duping logic"

    #@13c
    move-object/from16 v0, p0

    #@13e
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->logd(Ljava/lang/String;)V

    #@141
    goto :goto_0

    #@142
    .line 1185
    .restart local v16    # "newUri":Landroid/net/Uri;
    .restart local v22    # "rowId":J
    .restart local v25    # "values":Landroid/content/ContentValues;
    :cond_7
    const/4 v2, 0x3

    #@143
    :try_start_3
    new-array v12, v2, [Ljava/lang/String;

    #@145
    const/4 v2, 0x0

    #@146
    aput-object v8, v12, v2

    #@148
    const/4 v2, 0x1

    #@149
    aput-object v20, v12, v2

    #@14b
    const/4 v2, 0x2

    #@14c
    aput-object v9, v12, v2

    #@14e
    .line 1186
    .local v12, "deleteWhereArgs":[Ljava/lang/String;
    const-string/jumbo v2, "address=? AND reference_number=? AND count=? AND deleted=0"

    #@151
    move-object/from16 v0, p1

    #@153
    invoke-virtual {v0, v2, v12}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    #@156
    goto :goto_1

    #@157
    .line 1189
    .end local v12    # "deleteWhereArgs":[Ljava/lang/String;
    .end local v22    # "rowId":J
    :catch_1
    move-exception v14

    #@158
    .line 1190
    .local v14, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/StringBuilder;

    #@15a
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@15d
    const-string/jumbo v3, "error parsing URI for new row: "

    #@160
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@163
    move-result-object v2

    #@164
    move-object/from16 v0, v16

    #@166
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v2

    #@16a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@16d
    move-result-object v2

    #@16e
    move-object/from16 v0, p0

    #@170
    invoke-virtual {v0, v2, v14}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@173
    .line 1191
    const/4 v2, 0x2

    #@174
    return v2
.end method

.method private static buildMessageBodyFromPdus([Landroid/telephony/SmsMessage;)Ljava/lang/String;
    .locals 5
    .param p0, "msgs"    # [Landroid/telephony/SmsMessage;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 1505
    array-length v3, p0

    #@2
    const/4 v4, 0x1

    #@3
    if-ne v3, v4, :cond_0

    #@5
    .line 1507
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
    .line 1510
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    .line 1511
    .local v0, "body":Ljava/lang/StringBuilder;
    array-length v3, p0

    #@16
    :goto_0
    if-ge v2, v3, :cond_1

    #@18
    aget-object v1, p0, v2

    #@1a
    .line 1513
    .local v1, "msg":Landroid/telephony/SmsMessage;
    invoke-virtual {v1}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;

    #@1d
    move-result-object v4

    #@1e
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@21
    .line 1511
    add-int/lit8 v2, v2, 0x1

    #@23
    goto :goto_0

    #@24
    .line 1515
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
    .line 899
    const-string/jumbo v1, "notification"

    #@3
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    #@6
    move-result-object v0

    #@7
    check-cast v0, Landroid/app/NotificationManager;

    #@9
    .line 900
    .local v0, "mNotificationManager":Landroid/app/NotificationManager;
    const-string/jumbo v1, "InboundSmsHandler"

    #@c
    .line 901
    const/4 v2, 0x1

    #@d
    .line 900
    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    #@10
    .line 897
    return-void
.end method

.method private deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V
    .locals 4
    .param p1, "deleteWhere"    # Ljava/lang/String;
    .param p2, "deleteWhereArgs"    # [Ljava/lang/String;
    .param p3, "deleteType"    # I

    #@0
    .prologue
    .line 1030
    const/4 v2, 0x1

    #@1
    if-ne p3, v2, :cond_0

    #@3
    sget-object v1, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUriPermanentDelete:Landroid/net/Uri;

    #@5
    .line 1031
    .local v1, "uri":Landroid/net/Uri;
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    #@7
    invoke-virtual {v2, v1, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    #@a
    move-result v0

    #@b
    .line 1032
    .local v0, "rows":I
    if-nez v0, :cond_1

    #@d
    .line 1033
    const-string/jumbo v2, "No rows were deleted from raw table!"

    #@10
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@13
    .line 1029
    :goto_1
    return-void

    #@14
    .line 1030
    .end local v0    # "rows":I
    .end local v1    # "uri":Landroid/net/Uri;
    :cond_0
    sget-object v1, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    #@16
    .restart local v1    # "uri":Landroid/net/Uri;
    goto :goto_0

    #@17
    .line 1035
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
    .line 565
    if-nez p1, :cond_0

    #@3
    .line 566
    const-string/jumbo v2, "dispatchSmsMessage: message is null"

    #@6
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@9
    .line 567
    return v3

    #@a
    .line 570
    :cond_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    #@c
    if-eqz v2, :cond_1

    #@e
    .line 572
    const-string/jumbo v2, "Received short message on device which doesn\'t support receiving SMS. Ignored."

    #@11
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@14
    .line 574
    const/4 v2, 0x1

    #@15
    return v2

    #@16
    .line 578
    :cond_1
    const/4 v1, 0x0

    #@17
    .line 580
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
    .line 584
    .end local v1    # "onlyCore":Z
    :goto_0
    if-eqz v1, :cond_2

    #@28
    .line 586
    const-string/jumbo v2, "Received a short message in encrypted state. Rejecting."

    #@2b
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@2e
    .line 587
    return v3

    #@2f
    .line 590
    :cond_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;)I

    #@32
    move-result v2

    #@33
    return v2

    #@34
    .line 582
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
    .line 1071
    new-instance v1, Landroid/content/Intent;

    #@3
    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    #@6
    .line 1072
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "pdus"

    #@9
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    #@c
    .line 1073
    const-string/jumbo v0, "format"

    #@f
    invoke-virtual {v1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@12
    .line 1075
    const/4 v0, -0x1

    #@13
    if-ne p3, v0, :cond_2

    #@15
    .line 1076
    const-string/jumbo v0, "android.provider.Telephony.SMS_DELIVER"

    #@18
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@1b
    .line 1080
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@1d
    const/4 v2, 0x1

    #@1e
    invoke-static {v0, v2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    #@21
    move-result-object v7

    #@22
    .line 1081
    .local v7, "componentName":Landroid/content/ComponentName;
    if-eqz v7, :cond_1

    #@24
    .line 1083
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@27
    .line 1084
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
    .line 1085
    const-string/jumbo v2, " "

    #@3e
    .line 1084
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@41
    move-result-object v0

    #@42
    .line 1085
    invoke-virtual {v7}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    #@45
    move-result-object v2

    #@46
    .line 1084
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
    .line 1091
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
    .line 1092
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->writeInboxMessage(Landroid/content/Intent;)Landroid/net/Uri;

    #@5e
    move-result-object v8

    #@5f
    .line 1093
    .local v8, "uri":Landroid/net/Uri;
    if-eqz v8, :cond_0

    #@61
    .line 1095
    const-string/jumbo v0, "uri"

    #@64
    invoke-virtual {v8}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@67
    move-result-object v2

    #@68
    invoke-virtual {v1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@6b
    .line 1105
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
    .line 1106
    .local v4, "options":Landroid/os/Bundle;
    const-string/jumbo v2, "android.permission.RECEIVE_SMS"

    #@76
    .line 1107
    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    #@78
    const/16 v3, 0x10

    #@7a
    move-object v0, p0

    #@7b
    move-object v5, p4

    #@7c
    .line 1106
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;)V

    #@7f
    .line 1070
    return-void

    #@80
    .line 1087
    .end local v4    # "options":Landroid/os/Bundle;
    .restart local v7    # "componentName":Landroid/content/ComponentName;
    :cond_1
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@83
    goto :goto_0

    #@84
    .line 1099
    .end local v7    # "componentName":Landroid/content/ComponentName;
    :cond_2
    const-string/jumbo v0, "android.intent.action.DATA_SMS_RECEIVED"

    #@87
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    #@8a
    .line 1100
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
    .line 1101
    .restart local v8    # "uri":Landroid/net/Uri;
    invoke-virtual {v1, v8}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    #@a5
    .line 1102
    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    #@a8
    goto :goto_1
.end method

.method private filterSmsWithCarrierOrSystemApp([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)Z
    .locals 10
    .param p1, "pdus"    # [[B
    .param p2, "destPort"    # I
    .param p3, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p4, "resultReceiver"    # Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    .param p5, "userUnlocked"    # Z

    #@0
    .prologue
    .line 910
    const/4 v7, 0x0

    #@1
    .line 911
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
    .line 912
    .local v6, "card":Lcom/android/internal/telephony/uicc/UiccCard;
    if-eqz v6, :cond_0

    #@11
    .line 914
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@13
    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@16
    move-result-object v1

    #@17
    .line 915
    new-instance v2, Landroid/content/Intent;

    #@19
    const-string/jumbo v3, "android.service.carrier.CarrierMessagingService"

    #@1c
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@1f
    .line 913
    invoke-virtual {v6, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->getCarrierPackageNamesForIntent(Landroid/content/pm/PackageManager;Landroid/content/Intent;)Ljava/util/List;

    #@22
    move-result-object v7

    #@23
    .line 920
    .end local v7    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_0
    new-instance v1, Landroid/content/Intent;

    #@25
    const-string/jumbo v2, "android.service.carrier.CarrierMessagingService"

    #@28
    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@2b
    invoke-direct {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->getSystemAppForIntent(Landroid/content/Intent;)Ljava/util/List;

    #@2e
    move-result-object v9

    #@2f
    .line 922
    .local v9, "systemPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    if-eqz v7, :cond_1

    #@31
    invoke-interface {v7}, Ljava/util/List;->size()I

    #@34
    move-result v1

    #@35
    const/4 v2, 0x1

    #@36
    if-ne v1, v2, :cond_1

    #@38
    .line 923
    const-string/jumbo v1, "Found carrier package."

    #@3b
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@3e
    .line 924
    new-instance v0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    #@40
    .line 925
    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    #@43
    move-result-object v4

    #@44
    move-object v1, p0

    #@45
    move-object v2, p1

    #@46
    move v3, p2

    #@47
    move-object v5, p4

    #@48
    .line 924
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;[[BILjava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    #@4b
    .line 926
    .local v0, "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    new-instance v8, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;

    #@4d
    invoke-direct {v8, p0, v0, p5}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;Z)V

    #@50
    .line 927
    .local v8, "smsFilterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    const/4 v1, 0x0

    #@51
    invoke-interface {v7, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    #@54
    move-result-object v1

    #@55
    check-cast v1, Ljava/lang/String;

    #@57
    invoke-virtual {v0, v1, v8}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;->filterSms(Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;)V

    #@5a
    .line 928
    const/4 v1, 0x1

    #@5b
    return v1

    #@5c
    .line 917
    .end local v0    # "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    .end local v8    # "smsFilterCallback":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;
    .end local v9    # "systemPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v7    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_0
    const-string/jumbo v1, "UiccCard not initialized."

    #@5f
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@62
    goto :goto_0

    #@63
    .line 929
    .end local v7    # "carrierPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .restart local v9    # "systemPackages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
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
    .line 930
    const-string/jumbo v1, "Found system package."

    #@6f
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@72
    .line 931
    new-instance v0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;

    #@74
    .line 932
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
    .line 931
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;[[BILjava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    #@7f
    .line 933
    .restart local v0    # "smsFilter":Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;
    new-instance v8, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;

    #@81
    invoke-direct {v8, p0, v0, p5}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilterCallback;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler$CarrierSmsFilter;Z)V

    #@84
    .line 934
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
    .line 935
    const/4 v1, 0x1

    #@8f
    return v1

    #@90
    .line 937
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
    .line 938
    const-string/jumbo v2, ", nor systemPackages: "

    #@a3
    .line 937
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
    .line 939
    const/4 v1, 0x0

    #@b3
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
    .line 943
    new-instance v5, Ljava/util/ArrayList;

    #@3
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    #@6
    .line 944
    .local v5, "packages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v7, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@8
    invoke-virtual {v7}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    #@b
    move-result-object v3

    #@c
    .line 945
    .local v3, "packageManager":Landroid/content/pm/PackageManager;
    invoke-virtual {v3, p1, v8}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    #@f
    move-result-object v6

    #@10
    .line 946
    .local v6, "receivers":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const-string/jumbo v0, "android.permission.CARRIER_FILTER_SMS"

    #@13
    .line 948
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
    .line 949
    .local v1, "info":Landroid/content/pm/ResolveInfo;
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@25
    if-nez v7, :cond_1

    #@27
    .line 950
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
    .line 953
    :cond_1
    iget-object v7, v1, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    #@41
    iget-object v4, v7, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    #@43
    .line 954
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {v3, v0, v4}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    #@46
    move-result v7

    #@47
    if-nez v7, :cond_0

    #@49
    .line 956
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@4c
    .line 957
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
    .line 960
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
    .line 534
    const/4 v3, 0x0

    #@1
    .line 536
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
    .line 537
    .local v3, "receivedIntent":Landroid/app/PendingIntent;
    iget-object v5, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@9
    check-cast v5, Landroid/telephony/SmsMessage;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@b
    .line 538
    .local v5, "sms":Landroid/telephony/SmsMessage;
    if-nez v5, :cond_1

    #@d
    .line 539
    const/4 v4, 0x2

    #@e
    .line 548
    .end local v3    # "receivedIntent":Landroid/app/PendingIntent;
    .end local v5    # "sms":Landroid/telephony/SmsMessage;
    .local v4, "result":I
    :goto_0
    if-eqz v3, :cond_0

    #@10
    .line 550
    :try_start_1
    invoke-virtual {v3, v4}, Landroid/app/PendingIntent;->send(I)V
    :try_end_1
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_1 .. :try_end_1} :catch_1

    #@13
    .line 532
    :cond_0
    :goto_1
    return-void

    #@14
    .line 541
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
    .line 543
    .end local v3    # "receivedIntent":Landroid/app/PendingIntent;
    .end local v4    # "result":I
    .end local v5    # "sms":Landroid/telephony/SmsMessage;
    :catch_0
    move-exception v2

    #@1c
    .line 544
    .local v2, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v6, "Exception dispatching message"

    #@1f
    invoke-virtual {p0, v6, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@22
    .line 545
    const/4 v4, 0x2

    #@23
    .restart local v4    # "result":I
    goto :goto_0

    #@24
    .line 551
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
    .line 506
    iget-object v4, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    #@4
    if-eqz v4, :cond_0

    #@6
    .line 507
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
    .line 508
    return-void

    #@20
    .line 513
    :cond_0
    :try_start_0
    iget-object v3, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    #@22
    check-cast v3, Landroid/telephony/SmsMessage;

    #@24
    .line 514
    .local v3, "sms":Landroid/telephony/SmsMessage;
    iget-object v4, v3, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    #@26
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;)I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    #@29
    move-result v2

    #@2a
    .line 522
    .end local v3    # "sms":Landroid/telephony/SmsMessage;
    .local v2, "result":I
    :goto_0
    const/4 v4, -0x1

    #@2b
    if-eq v2, v4, :cond_1

    #@2d
    .line 523
    if-ne v2, v1, :cond_2

    #@2f
    .line 524
    .local v1, "handled":Z
    :goto_1
    invoke-direct {p0, v1, v2, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    #@32
    .line 505
    .end local v1    # "handled":Z
    :cond_1
    return-void

    #@33
    .line 515
    .end local v2    # "result":I
    :catch_0
    move-exception v0

    #@34
    .line 516
    .local v0, "ex":Ljava/lang/RuntimeException;
    const-string/jumbo v4, "Exception dispatching message"

    #@37
    invoke-virtual {p0, v4, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    #@3a
    .line 517
    const/4 v2, 0x2

    #@3b
    .restart local v2    # "result":I
    goto :goto_0

    #@3c
    .line 523
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
    .line 1042
    if-eqz p1, :cond_0

    #@3
    .line 1043
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    #@6
    move-result-object v4

    #@7
    .line 1044
    .local v4, "pkgName":Ljava/lang/String;
    const-string/jumbo v5, "sms-app"

    #@a
    .line 1050
    .local v5, "reason":Ljava/lang/String;
    :goto_0
    :try_start_0
    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeviceIdleController:Landroid/os/IDeviceIdleController;

    #@c
    .line 1051
    const/4 v7, 0x0

    #@d
    .line 1050
    invoke-interface {v6, v4, v7, v5}, Landroid/os/IDeviceIdleController;->addPowerSaveTempWhitelistAppForSms(Ljava/lang/String;ILjava/lang/String;)J

    #@10
    move-result-wide v2

    #@11
    .line 1052
    .local v2, "duration":J
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    #@14
    move-result-object v0

    #@15
    .line 1053
    .local v0, "bopts":Landroid/app/BroadcastOptions;
    invoke-virtual {v0, v2, v3}, Landroid/app/BroadcastOptions;->setTemporaryAppWhitelistDuration(J)V

    #@18
    .line 1054
    invoke-virtual {v0}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    move-result-object v6

    #@1c
    return-object v6

    #@1d
    .line 1046
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
    .line 1047
    .restart local v4    # "pkgName":Ljava/lang/String;
    const-string/jumbo v5, "sms-broadcast"

    #@26
    .restart local v5    # "reason":Ljava/lang/String;
    goto :goto_0

    #@27
    .line 1055
    :catch_0
    move-exception v1

    #@28
    .line 1058
    .local v1, "e":Landroid/os/RemoteException;
    return-object v8
.end method

.method static isCurrentFormat3gpp2()Z
    .locals 2

    #@0
    .prologue
    .line 1200
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    #@3
    move-result-object v1

    #@4
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    #@7
    move-result v0

    #@8
    .line 1201
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
    .line 1406
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
    .line 635
    if-nez p1, :cond_0

    #@2
    .line 637
    new-instance v0, Landroid/content/Intent;

    #@4
    const-string/jumbo v1, "android.provider.Telephony.SMS_REJECTED"

    #@7
    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    #@a
    .line 638
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "result"

    #@d
    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    #@10
    .line 639
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@12
    const-string/jumbo v2, "android.permission.RECEIVE_SMS"

    #@15
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    #@18
    .line 641
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    #@1b
    .line 634
    return-void
.end method

.method private static parseSmsMessage([Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;
    .locals 8
    .param p0, "msgs"    # [Landroid/telephony/SmsMessage;

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 1480
    aget-object v0, p0, v3

    #@3
    .line 1481
    .local v0, "sms":Landroid/telephony/SmsMessage;
    new-instance v2, Landroid/content/ContentValues;

    #@5
    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    #@8
    .line 1482
    .local v2, "values":Landroid/content/ContentValues;
    const-string/jumbo v4, "address"

    #@b
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getDisplayOriginatingAddress()Ljava/lang/String;

    #@e
    move-result-object v5

    #@f
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@12
    .line 1483
    const-string/jumbo v4, "body"

    #@15
    invoke-static {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->buildMessageBodyFromPdus([Landroid/telephony/SmsMessage;)Ljava/lang/String;

    #@18
    move-result-object v5

    #@19
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@1c
    .line 1484
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
    .line 1485
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
    .line 1486
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
    .line 1487
    const-string/jumbo v4, "seen"

    #@49
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@4c
    move-result-object v5

    #@4d
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@50
    .line 1488
    const-string/jumbo v4, "read"

    #@53
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@56
    move-result-object v5

    #@57
    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    #@5a
    .line 1489
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getPseudoSubject()Ljava/lang/String;

    #@5d
    move-result-object v1

    #@5e
    .line 1490
    .local v1, "subject":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    #@61
    move-result v4

    #@62
    if-nez v4, :cond_0

    #@64
    .line 1491
    const-string/jumbo v4, "subject"

    #@67
    invoke-virtual {v2, v4, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@6a
    .line 1493
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
    .line 1494
    const-string/jumbo v3, "service_center"

    #@7e
    invoke-virtual {v0}, Landroid/telephony/SmsMessage;->getServiceCenterAddress()Ljava/lang/String;

    #@81
    move-result-object v4

    #@82
    invoke-virtual {v2, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    #@85
    .line 1495
    return-object v2
.end method

.method private processMessagePart(Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .locals 28
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;

    #@0
    .prologue
    .line 725
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    #@3
    move-result v20

    #@4
    .line 727
    .local v20, "messageCount":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    #@7
    move-result v9

    #@8
    .line 729
    .local v9, "destPort":I
    const/4 v2, 0x1

    #@9
    move/from16 v0, v20

    #@b
    if-ne v0, v2, :cond_2

    #@d
    .line 731
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
    .line 786
    .local v8, "pdus":[[B
    :cond_0
    :goto_0
    invoke-static {v8}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    #@1a
    move-result-object v24

    #@1b
    .line 787
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
    .line 788
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
    .line 789
    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    #@39
    move-result v2

    #@3a
    if-nez v2, :cond_9

    #@3c
    const-string/jumbo v2, "pduList.size() == 0"

    #@3f
    .line 788
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
    .line 790
    const/4 v2, 0x0

    #@4d
    return v2

    #@4e
    .line 734
    .end local v8    # "pdus":[[B
    .end local v24    # "pduList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_2
    const/16 v16, 0x0

    #@50
    .line 737
    .local v16, "cursor":Landroid/database/Cursor;
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    #@53
    move-result-object v13

    #@54
    .line 738
    .local v13, "address":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    #@57
    move-result v2

    #@58
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@5b
    move-result-object v26

    #@5c
    .line 739
    .local v26, "refNumber":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    #@5f
    move-result v2

    #@60
    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    #@63
    move-result-object v15

    #@64
    .line 742
    .local v15, "count":Ljava/lang/String;
    const/4 v2, 0x3

    #@65
    new-array v6, v2, [Ljava/lang/String;

    #@67
    const/4 v2, 0x0

    #@68
    aput-object v13, v6, v2

    #@6a
    const/4 v2, 0x1

    #@6b
    aput-object v26, v6, v2

    #@6d
    const/4 v2, 0x2

    #@6e
    aput-object v15, v6, v2

    #@70
    .line 743
    .local v6, "whereArgs":[Ljava/lang/String;
    move-object/from16 v0, p0

    #@72
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    #@74
    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    #@76
    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    #@78
    .line 744
    const-string/jumbo v5, "address=? AND reference_number=? AND count=? AND deleted=0"

    #@7b
    const/4 v7, 0x0

    #@7c
    .line 743
    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    #@7f
    move-result-object v16

    #@80
    .line 746
    .local v16, "cursor":Landroid/database/Cursor;
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->getCount()I
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@83
    move-result v17

    #@84
    .line 747
    .local v17, "cursorCount":I
    move/from16 v0, v17

    #@86
    move/from16 v1, v20

    #@88
    if-ge v0, v1, :cond_4

    #@8a
    .line 753
    const/4 v2, 0x0

    #@8b
    .line 779
    if-eqz v16, :cond_3

    #@8d
    .line 780
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    #@90
    .line 753
    :cond_3
    return v2

    #@91
    .line 757
    :cond_4
    :try_start_1
    move/from16 v0, v20

    #@93
    new-array v8, v0, [[B

    #@95
    .line 758
    .restart local v8    # "pdus":[[B
    :cond_5
    :goto_2
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->moveToNext()Z

    #@98
    move-result v2

    #@99
    if-eqz v2, :cond_6

    #@9b
    .line 760
    const/4 v2, 0x1

    #@9c
    move-object/from16 v0, v16

    #@9e
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    #@a1
    move-result v2

    #@a2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    #@a5
    move-result v3

    #@a6
    sub-int v19, v2, v3

    #@a8
    .line 762
    .local v19, "index":I
    const/4 v2, 0x0

    #@a9
    move-object/from16 v0, v16

    #@ab
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    #@ae
    move-result-object v2

    #@af
    invoke-static {v2}, Lcom/android/internal/util/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    #@b2
    move-result-object v2

    #@b3
    aput-object v2, v8, v19

    #@b5
    .line 766
    if-nez v19, :cond_5

    #@b7
    const/4 v2, 0x2

    #@b8
    move-object/from16 v0, v16

    #@ba
    invoke-interface {v0, v2}, Landroid/database/Cursor;->isNull(I)Z

    #@bd
    move-result v2

    #@be
    if-nez v2, :cond_5

    #@c0
    .line 767
    const/4 v2, 0x2

    #@c1
    move-object/from16 v0, v16

    #@c3
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    #@c6
    move-result v25

    #@c7
    .line 769
    .local v25, "port":I
    invoke-static/range {v25 .. v25}, Lcom/android/internal/telephony/InboundSmsTracker;->getRealDestPort(I)I
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@ca
    move-result v25

    #@cb
    .line 770
    const/4 v2, -0x1

    #@cc
    move/from16 v0, v25

    #@ce
    if-eq v0, v2, :cond_5

    #@d0
    .line 771
    move/from16 v9, v25

    #@d2
    goto :goto_2

    #@d3
    .line 779
    .end local v19    # "index":I
    .end local v25    # "port":I
    :cond_6
    if-eqz v16, :cond_0

    #@d5
    .line 780
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    #@d8
    goto/16 :goto_0

    #@da
    .line 775
    .end local v6    # "whereArgs":[Ljava/lang/String;
    .end local v8    # "pdus":[[B
    .end local v13    # "address":Ljava/lang/String;
    .end local v15    # "count":Ljava/lang/String;
    .end local v16    # "cursor":Landroid/database/Cursor;
    .end local v17    # "cursorCount":I
    .end local v26    # "refNumber":Ljava/lang/String;
    :catch_0
    move-exception v18

    #@db
    .line 776
    .local v18, "e":Landroid/database/SQLException;
    :try_start_2
    const-string/jumbo v2, "Can\'t access multipart SMS database"

    #@de
    move-object/from16 v0, p0

    #@e0
    move-object/from16 v1, v18

    #@e2
    invoke-virtual {v0, v2, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@e5
    .line 777
    const/4 v2, 0x0

    #@e6
    .line 779
    if-eqz v16, :cond_7

    #@e8
    .line 780
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    #@eb
    .line 777
    :cond_7
    return v2

    #@ec
    .line 778
    .end local v18    # "e":Landroid/database/SQLException;
    :catchall_0
    move-exception v2

    #@ed
    .line 779
    if-eqz v16, :cond_8

    #@ef
    .line 780
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    #@f2
    .line 778
    :cond_8
    throw v2

    #@f3
    .line 789
    .restart local v8    # "pdus":[[B
    .restart local v24    # "pduList":Ljava/util/List;, "Ljava/util/List<[B>;"
    :cond_9
    const-string/jumbo v2, "pduList.contains(null)"

    #@f6
    goto/16 :goto_1

    #@f8
    .line 793
    :cond_a
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
    .line 794
    move-object/from16 v0, p0

    #@104
    move-object/from16 v1, p1

    #@106
    invoke-direct {v0, v1, v8, v9}, Lcom/android/internal/telephony/InboundSmsHandler;->processMessagePartWithUserLocked(Lcom/android/internal/telephony/InboundSmsTracker;[[BI)Z

    #@109
    move-result v2

    #@10a
    return v2

    #@10b
    .line 797
    :cond_b
    new-instance v11, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    #@10d
    move-object/from16 v0, p0

    #@10f
    move-object/from16 v1, p1

    #@111
    invoke-direct {v11, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)V

    #@114
    .line 799
    .local v11, "resultReceiver":Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;
    const/16 v2, 0xb84

    #@116
    if-ne v9, v2, :cond_10

    #@118
    .line 801
    new-instance v22, Ljava/io/ByteArrayOutputStream;

    #@11a
    invoke-direct/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;-><init>()V

    #@11d
    .line 802
    .local v22, "output":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    #@11e
    array-length v3, v8

    #@11f
    :goto_3
    if-ge v2, v3, :cond_e

    #@121
    aget-object v23, v8, v2

    #@123
    .line 804
    .local v23, "pdu":[B
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->is3gpp2()Z

    #@126
    move-result v4

    #@127
    if-nez v4, :cond_c

    #@129
    .line 805
    const-string/jumbo v4, "3gpp"

    #@12c
    move-object/from16 v0, v23

    #@12e
    invoke-static {v0, v4}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    #@131
    move-result-object v21

    #@132
    .line 806
    .local v21, "msg":Landroid/telephony/SmsMessage;
    if-eqz v21, :cond_d

    #@134
    .line 807
    invoke-virtual/range {v21 .. v21}, Landroid/telephony/SmsMessage;->getUserData()[B

    #@137
    move-result-object v23

    #@138
    .line 813
    .end local v21    # "msg":Landroid/telephony/SmsMessage;
    :cond_c
    move-object/from16 v0, v23

    #@13a
    array-length v4, v0

    #@13b
    const/4 v5, 0x0

    #@13c
    move-object/from16 v0, v22

    #@13e
    move-object/from16 v1, v23

    #@140
    invoke-virtual {v0, v1, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    #@143
    .line 802
    add-int/lit8 v2, v2, 0x1

    #@145
    goto :goto_3

    #@146
    .line 809
    .restart local v21    # "msg":Landroid/telephony/SmsMessage;
    :cond_d
    const-string/jumbo v2, "processMessagePart: SmsMessage.createFromPdu returned null"

    #@149
    move-object/from16 v0, p0

    #@14b
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@14e
    .line 810
    const/4 v2, 0x0

    #@14f
    return v2

    #@150
    .line 815
    .end local v21    # "msg":Landroid/telephony/SmsMessage;
    .end local v23    # "pdu":[B
    :cond_e
    move-object/from16 v0, p0

    #@152
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    #@154
    invoke-virtual/range {v22 .. v22}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    #@157
    move-result-object v3

    #@158
    move-object/from16 v0, p0

    #@15a
    invoke-virtual {v2, v3, v11, v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I

    #@15d
    move-result v27

    #@15e
    .line 816
    .local v27, "result":I
    new-instance v2, Ljava/lang/StringBuilder;

    #@160
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@163
    const-string/jumbo v3, "dispatchWapPdu() returned "

    #@166
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@169
    move-result-object v2

    #@16a
    move/from16 v0, v27

    #@16c
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@16f
    move-result-object v2

    #@170
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@173
    move-result-object v2

    #@174
    move-object/from16 v0, p0

    #@176
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@179
    .line 818
    const/4 v2, -0x1

    #@17a
    move/from16 v0, v27

    #@17c
    if-ne v0, v2, :cond_f

    #@17e
    .line 819
    const/4 v2, 0x1

    #@17f
    return v2

    #@180
    .line 821
    :cond_f
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    #@183
    move-result-object v2

    #@184
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    #@187
    move-result-object v3

    #@188
    .line 822
    const/4 v4, 0x2

    #@189
    .line 821
    move-object/from16 v0, p0

    #@18b
    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    #@18e
    .line 823
    const/4 v2, 0x0

    #@18f
    return v2

    #@190
    .line 827
    .end local v22    # "output":Ljava/io/ByteArrayOutputStream;
    .end local v27    # "result":I
    :cond_10
    move-object/from16 v0, p0

    #@192
    iget-object v2, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@194
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    #@197
    move-result-object v3

    #@198
    invoke-static {v2, v3}, Lcom/android/internal/telephony/BlockChecker;->isBlocked(Landroid/content/Context;Ljava/lang/String;)Z

    #@19b
    move-result v2

    #@19c
    if-eqz v2, :cond_11

    #@19e
    .line 828
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    #@1a1
    move-result-object v2

    #@1a2
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    #@1a5
    move-result-object v3

    #@1a6
    .line 829
    const/4 v4, 0x1

    #@1a7
    .line 828
    move-object/from16 v0, p0

    #@1a9
    invoke-direct {v0, v2, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    #@1ac
    .line 830
    const/4 v2, 0x0

    #@1ad
    return v2

    #@1ae
    .line 834
    :cond_11
    const/4 v12, 0x1

    #@1af
    move-object/from16 v7, p0

    #@1b1
    move-object/from16 v10, p1

    #@1b3
    .line 833
    invoke-direct/range {v7 .. v12}, Lcom/android/internal/telephony/InboundSmsHandler;->filterSmsWithCarrierOrSystemApp([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)Z

    #@1b6
    move-result v14

    #@1b7
    .line 836
    .local v14, "carrierAppInvoked":Z
    if-nez v14, :cond_12

    #@1b9
    .line 837
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    #@1bc
    move-result-object v2

    #@1bd
    move-object/from16 v0, p0

    #@1bf
    invoke-direct {v0, v8, v2, v9, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchSmsDeliveryIntent([[BLjava/lang/String;ILandroid/content/BroadcastReceiver;)V

    #@1c2
    .line 840
    :cond_12
    const/4 v2, 0x1

    #@1c3
    return v2
.end method

.method private processMessagePartWithUserLocked(Lcom/android/internal/telephony/InboundSmsTracker;[[BI)Z
    .locals 7
    .param p1, "tracker"    # Lcom/android/internal/telephony/InboundSmsTracker;
    .param p2, "pdus"    # [[B
    .param p3, "destPort"    # I

    #@0
    .prologue
    const/4 v5, 0x0

    #@1
    .line 854
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
    .line 855
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
    .line 856
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->showNewMessageNotification()V

    #@29
    .line 857
    return v5

    #@2a
    .line 859
    :cond_0
    const/4 v0, -0x1

    #@2b
    if-ne p3, v0, :cond_2

    #@2d
    .line 862
    const/4 v4, 0x0

    #@2e
    move-object v0, p0

    #@2f
    move-object v1, p2

    #@30
    move v2, p3

    #@31
    move-object v3, p1

    #@32
    .line 861
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/InboundSmsHandler;->filterSmsWithCarrierOrSystemApp([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)Z

    #@35
    move-result v6

    #@36
    .line 863
    .local v6, "carrierAppInvoked":Z
    if-eqz v6, :cond_1

    #@38
    .line 865
    const/4 v0, 0x1

    #@39
    return v0

    #@3a
    .line 868
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->showNewMessageNotification()V

    #@3d
    .line 869
    return v5

    #@3e
    .line 872
    .end local v6    # "carrierAppInvoked":Z
    :cond_2
    return v5
.end method

.method private static replaceFormFeeds(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1521
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
    .line 877
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncryptedNativeOrEmulated()Z

    #@4
    move-result v3

    #@5
    if-nez v3, :cond_0

    #@7
    .line 878
    return-void

    #@8
    .line 880
    :cond_0
    const-string/jumbo v3, "Show new message notification."

    #@b
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    #@e
    .line 882
    const-string/jumbo v3, "android.intent.action.MAIN"

    #@11
    const-string/jumbo v4, "android.intent.category.APP_MESSAGING"

    #@14
    .line 881
    invoke-static {v3, v4}, Landroid/content/Intent;->makeMainSelectorActivity(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    #@17
    move-result-object v0

    #@18
    .line 883
    .local v0, "intent":Landroid/content/Intent;
    new-instance v3, Landroid/app/Notification$Builder;

    #@1a
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@1c
    invoke-direct {v3, v4}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    #@1f
    .line 884
    const v4, 0x108008e

    #@22
    .line 883
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
    .line 887
    const/4 v4, -0x1

    #@2f
    .line 883
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    #@32
    move-result-object v3

    #@33
    .line 888
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@35
    const v5, 0x10405dc

    #@38
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@3b
    move-result-object v4

    #@3c
    .line 883
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@3f
    move-result-object v3

    #@40
    .line 889
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@42
    const v5, 0x10405dd

    #@45
    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    #@48
    move-result-object v4

    #@49
    .line 883
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    #@4c
    move-result-object v3

    #@4d
    .line 890
    iget-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@4f
    const/4 v5, 0x0

    #@50
    invoke-static {v4, v6, v0, v5}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    #@53
    move-result-object v4

    #@54
    .line 883
    invoke-virtual {v3, v4}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    #@57
    move-result-object v1

    #@58
    .line 892
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
    .line 894
    .local v2, "mNotificationManager":Landroid/app/NotificationManager;
    const-string/jumbo v3, "InboundSmsHandler"

    #@66
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    #@69
    move-result-object v4

    #@6a
    .line 893
    invoke-virtual {v2, v3, v6, v4}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    #@6d
    .line 875
    return-void
.end method

.method private writeInboxMessage(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;

    #@0
    .prologue
    const/4 v9, 0x0

    #@1
    .line 1445
    invoke-static {p1}, Landroid/provider/Telephony$Sms$Intents;->getMessagesFromIntent(Landroid/content/Intent;)[Landroid/telephony/SmsMessage;

    #@4
    move-result-object v4

    #@5
    .line 1446
    .local v4, "messages":[Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_0

    #@7
    array-length v7, v4

    #@8
    const/4 v8, 0x1

    #@9
    if-ge v7, v8, :cond_1

    #@b
    .line 1447
    :cond_0
    const-string/jumbo v7, "Failed to parse SMS pdu"

    #@e
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@11
    .line 1448
    return-object v9

    #@12
    .line 1453
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
    .line 1455
    .local v5, "sms":Landroid/telephony/SmsMessage;
    :try_start_0
    invoke-virtual {v5}, Landroid/telephony/SmsMessage;->getDisplayMessageBody()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    #@1b
    .line 1453
    add-int/lit8 v7, v7, 0x1

    #@1d
    goto :goto_0

    #@1e
    .line 1456
    :catch_0
    move-exception v1

    #@1f
    .line 1457
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v7, "NPE inside SmsMessage"

    #@22
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    #@25
    .line 1458
    return-object v9

    #@26
    .line 1461
    .end local v1    # "e":Ljava/lang/NullPointerException;
    .end local v5    # "sms":Landroid/telephony/SmsMessage;
    :cond_2
    invoke-static {v4}, Lcom/android/internal/telephony/InboundSmsHandler;->parseSmsMessage([Landroid/telephony/SmsMessage;)Landroid/content/ContentValues;

    #@29
    move-result-object v6

    #@2a
    .line 1462
    .local v6, "values":Landroid/content/ContentValues;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    #@2d
    move-result-wide v2

    #@2e
    .line 1464
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
    .line 1468
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@3d
    .line 1464
    return-object v7

    #@3e
    .line 1465
    :catch_1
    move-exception v0

    #@3f
    .line 1466
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    const-string/jumbo v7, "Failed to persist inbox message"

    #@42
    invoke-virtual {p0, v7, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@45
    .line 1468
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@48
    .line 1470
    return-object v9

    #@49
    .line 1467
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v7

    #@4a
    .line 1468
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    #@4d
    .line 1467
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
    .line 703
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;Z)I

    #@5
    move-result v0

    #@6
    sparse-switch v0, :sswitch_data_0

    #@9
    .line 713
    return v2

    #@a
    .line 705
    :sswitch_0
    invoke-virtual {p0, v2, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    #@d
    .line 706
    return v1

    #@e
    .line 709
    :sswitch_1
    return v1

    #@f
    .line 703
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
    .line 974
    const/high16 v1, 0x8000000

    #@2
    move-object/from16 v0, p1

    #@4
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@7
    .line 975
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    #@a
    move-result-object v15

    #@b
    .line 976
    .local v15, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.provider.Telephony.SMS_DELIVER"

    #@e
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@11
    move-result v1

    #@12
    if-nez v1, :cond_0

    #@14
    .line 977
    const-string/jumbo v1, "android.provider.Telephony.SMS_RECEIVED"

    #@17
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@1a
    move-result v1

    #@1b
    .line 976
    if-nez v1, :cond_0

    #@1d
    .line 978
    const-string/jumbo v1, "android.provider.Telephony.WAP_PUSH_DELIVER"

    #@20
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@23
    move-result v1

    #@24
    .line 976
    if-nez v1, :cond_0

    #@26
    .line 979
    const-string/jumbo v1, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    #@29
    invoke-virtual {v1, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@2c
    move-result v1

    #@2d
    .line 976
    if-eqz v1, :cond_1

    #@2f
    .line 986
    :cond_0
    const/high16 v1, 0x10000000

    #@31
    move-object/from16 v0, p1

    #@33
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    #@36
    .line 988
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
    .line 989
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
    .line 991
    const/16 v19, 0x0

    #@4f
    .line 993
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
    .line 996
    .end local v19    # "users":[I
    :goto_0
    if-nez v19, :cond_2

    #@59
    .line 997
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
    .line 1001
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
    .line 1002
    new-instance v3, Landroid/os/UserHandle;

    #@6e
    aget v1, v19, v16

    #@70
    invoke-direct {v3, v1}, Landroid/os/UserHandle;-><init>(I)V

    #@73
    .line 1003
    .local v3, "targetUser":Landroid/os/UserHandle;
    aget v1, v19, v16

    #@75
    if-eqz v1, :cond_5

    #@77
    .line 1005
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
    .line 1001
    :cond_3
    :goto_2
    add-int/lit8 v16, v16, -0x1

    #@86
    goto :goto_1

    #@87
    .line 1009
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
    .line 1010
    .local v17, "info":Landroid/content/pm/UserInfo;
    if-eqz v17, :cond_3

    #@93
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/UserInfo;->isManagedProfile()Z

    #@96
    move-result v1

    #@97
    if-nez v1, :cond_3

    #@99
    .line 1015
    .end local v17    # "info":Landroid/content/pm/UserInfo;
    :cond_5
    move-object/from16 v0, p0

    #@9b
    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@9d
    .line 1016
    aget v2, v19, v16

    #@9f
    if-nez v2, :cond_6

    #@a1
    move-object/from16 v7, p5

    #@a3
    .line 1017
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
    .line 1015
    invoke-virtual/range {v1 .. v11}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@b5
    goto :goto_2

    #@b6
    .line 1016
    :cond_6
    const/4 v7, 0x0

    #@b7
    goto :goto_3

    #@b8
    .line 1020
    .end local v3    # "targetUser":Landroid/os/UserHandle;
    .end local v16    # "i":I
    :cond_7
    move-object/from16 v0, p0

    #@ba
    iget-object v4, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    #@bc
    .line 1021
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
    .line 1020
    invoke-virtual/range {v4 .. v14}, Landroid/content/Context;->sendOrderedBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;ILandroid/os/Bundle;Landroid/content/BroadcastReceiver;Landroid/os/Handler;ILjava/lang/String;Landroid/os/Bundle;)V

    #@d2
    .line 973
    :cond_8
    return-void

    #@d3
    .line 994
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
    .line 660
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    #@3
    move-result-object v16

    #@4
    .line 663
    .local v16, "smsHeader":Lcom/android/internal/telephony/SmsHeader;
    if-eqz v16, :cond_0

    #@6
    move-object/from16 v0, v16

    #@8
    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    #@a
    if-nez v2, :cond_2

    #@c
    .line 665
    :cond_0
    const/4 v6, -0x1

    #@d
    .line 666
    .local v6, "destPort":I
    if-eqz v16, :cond_1

    #@f
    move-object/from16 v0, v16

    #@11
    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    #@13
    if-eqz v2, :cond_1

    #@15
    .line 668
    move-object/from16 v0, v16

    #@17
    iget-object v2, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    #@19
    iget v6, v2, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    #@1b
    .line 669
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
    .line 672
    :cond_1
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    #@37
    move-result-object v2

    #@38
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    #@3b
    move-result-object v3

    #@3c
    .line 673
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    #@3f
    move-result-wide v4

    #@40
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    #@43
    move-result v7

    #@44
    .line 674
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    #@47
    move-result-object v9

    #@48
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    #@4b
    move-result-object v10

    #@4c
    .line 673
    const/4 v8, 0x0

    #@4d
    .line 672
    invoke-virtual/range {v2 .. v10}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker([BJIZZLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;

    #@50
    move-result-object v17

    #@51
    .line 692
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
    .line 691
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
    .line 677
    .end local v6    # "destPort":I
    .end local v17    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :cond_2
    move-object/from16 v0, v16

    #@64
    iget-object v14, v0, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    #@66
    .line 678
    .local v14, "concatRef":Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move-object/from16 v0, v16

    #@68
    iget-object v15, v0, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    #@6a
    .line 679
    .local v15, "portAddrs":Lcom/android/internal/telephony/SmsHeader$PortAddrs;
    if-eqz v15, :cond_3

    #@6c
    iget v6, v15, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    #@6e
    .line 681
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
    .line 682
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    #@79
    move-result-wide v4

    #@7a
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    #@7d
    move-result v7

    #@7e
    .line 683
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    #@81
    move-result-object v8

    #@82
    iget v9, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    #@84
    iget v10, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    #@86
    .line 684
    iget v11, v14, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    #@88
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    #@8b
    move-result-object v13

    #@8c
    const/4 v12, 0x0

    #@8d
    .line 681
    invoke-virtual/range {v2 .. v13}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker([BJIZLjava/lang/String;IIIZLjava/lang/String;)Lcom/android/internal/telephony/InboundSmsTracker;

    #@90
    move-result-object v17

    #@91
    .restart local v17    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    goto :goto_0

    #@92
    .line 679
    .end local v6    # "destPort":I
    .end local v17    # "tracker":Lcom/android/internal/telephony/InboundSmsTracker;
    :cond_3
    const/4 v6, -0x1

    #@93
    .restart local v6    # "destPort":I
    goto :goto_2

    #@94
    .line 692
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
    .line 255
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->quit()V

    #@3
    .line 254
    return-void
.end method

.method public getPhone()Lcom/android/internal/telephony/Phone;
    .locals 1

    #@0
    .prologue
    .line 279
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2
    return-object v0
.end method

.method public getWakeLock()Landroid/os/PowerManager$WakeLock;
    .locals 1

    #@0
    .prologue
    .line 1526
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@2
    return-object v0
.end method

.method public getWakeLockTimeout()I
    .locals 1

    #@0
    .prologue
    .line 1531
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
    .line 1416
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    .line 1415
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    #@0
    .prologue
    .line 1425
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    #@7
    .line 1424
    return-void
.end method

.method protected loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 1435
    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->getName()Ljava/lang/String;

    #@3
    move-result-object v0

    #@4
    invoke-static {v0, p1, p2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    #@7
    .line 1434
    return-void
.end method

.method protected onQuitting()V
    .locals 1

    #@0
    .prologue
    .line 270
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispose()V

    #@5
    .line 272
    :goto_0
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@7
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    #@a
    move-result v0

    #@b
    if-eqz v0, :cond_0

    #@d
    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    #@f
    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    #@12
    goto :goto_0

    #@13
    .line 269
    :cond_0
    return-void
.end method

.method protected onUpdatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 2
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 621
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    #@2
    .line 622
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    #@4
    iget-object v0, v0, Lcom/android/internal/telephony/Phone;->mSmsStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    #@6
    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    #@8
    .line 623
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
    .line 620
    return-void
.end method

.method public updatePhoneObject(Lcom/android/internal/telephony/Phone;)V
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/Phone;

    #@0
    .prologue
    .line 262
    const/4 v0, 0x7

    #@1
    invoke-virtual {p0, v0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->sendMessage(ILjava/lang/Object;)V

    #@4
    .line 261
    return-void
.end method
