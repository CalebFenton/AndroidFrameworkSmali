.class public abstract Lcom/android/internal/telephony/InboundSmsHandler;
.super Lcom/android/internal/telephony/StateMachine;
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
        Lcom/android/internal/telephony/InboundSmsHandler$SmsFilter;,
        Lcom/android/internal/telephony/InboundSmsHandler$NewMessageNotificationActionReceiver;,
        Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;,
        Lcom/android/internal/telephony/InboundSmsHandler$CbTestBroadcastReceiver;
    }
.end annotation


# static fields
.field private static blacklist ACTION_OPEN_SMS_APP:Ljava/lang/String; = null

.field public static final blacklist ADDRESS_COLUMN:I = 0x6

.field public static final blacklist COUNT_COLUMN:I = 0x5

.field public static final blacklist DATE_COLUMN:I = 0x3

.field protected static final blacklist DBG:Z = true

.field public static final blacklist DELETED_FLAG_COLUMN:I = 0xa

.field public static final blacklist DESTINATION_PORT_COLUMN:I = 0x2

.field public static final blacklist DISPLAY_ADDRESS_COLUMN:I = 0x9

.field public static final blacklist EVENT_BROADCAST_COMPLETE:I = 0x3

.field public static final blacklist EVENT_BROADCAST_SMS:I = 0x2

.field public static final blacklist EVENT_INJECT_SMS:I = 0x7

.field public static final blacklist EVENT_NEW_SMS:I = 0x1

.field public static final blacklist EVENT_RECEIVER_TIMEOUT:I = 0x9

.field public static final blacklist EVENT_START_ACCEPTING_SMS:I = 0x6

.field public static final blacklist EVENT_UPDATE_TRACKER:I = 0x8

.field public static final blacklist ID_COLUMN:I = 0x7

.field public static final blacklist MESSAGE_BODY_COLUMN:I = 0x8

.field public static final blacklist NOTIFICATION_ID_NEW_MESSAGE:I = 0x1

.field public static final blacklist NOTIFICATION_TAG:Ljava/lang/String; = "InboundSmsHandler"

.field public static final blacklist PDU_COLUMN:I = 0x0

.field private static final blacklist PDU_DELETED_FLAG_PROJECTION:[Ljava/lang/String;

.field private static final blacklist PDU_DELETED_FLAG_PROJECTION_INDEX_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

.field private static final blacklist PDU_SEQUENCE_PORT_PROJECTION_INDEX_MAPPING:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist REFERENCE_NUMBER_COLUMN:I = 0x4

.field public static final blacklist SELECT_BY_ID:Ljava/lang/String; = "_id=?"

.field public static final blacklist SEQUENCE_COLUMN:I = 0x1

.field public static final blacklist SOURCE_INJECTED_FROM_IMS:I = 0x1

.field public static final blacklist SOURCE_INJECTED_FROM_UNKNOWN:I = 0x2

.field public static final blacklist SOURCE_NOT_INJECTED:I = 0x0

.field public static final blacklist SUBID_COLUMN:I = 0xb

.field protected static final blacklist VDBG:Z = false

.field protected static final blacklist sRawUri:Landroid/net/Uri;

.field protected static final blacklist sRawUriPermanentDelete:Landroid/net/Uri;

.field public static blacklist sTimeoutDurationMillis:I


# instance fields
.field private final blacklist DELETE_PERMANENTLY:I

.field private final blacklist MARK_DELETED:I

.field private blacklist mCarrierServiceLocalLog:Lcom/android/internal/telephony/LocalLog;

.field protected blacklist mCellBroadcastServiceManager:Lcom/android/internal/telephony/CellBroadcastServiceManager;

.field protected final greylist-max-r mContext:Landroid/content/Context;

.field private final blacklist mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

.field private final greylist-max-r mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

.field protected final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final greylist-max-r mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

.field private blacklist mLocalLog:Lcom/android/internal/telephony/LocalLog;

.field protected blacklist mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

.field protected greylist-max-r mPhone:Lcom/android/internal/telephony/Phone;

.field blacklist mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

.field private final greylist-max-r mResolver:Landroid/content/ContentResolver;

.field private blacklist mSmsFilters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/InboundSmsHandler$SmsFilter;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSmsReceiveDisabled:Z

.field private final blacklist mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

.field protected blacklist mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

.field private greylist-max-r mUserManager:Landroid/os/UserManager;

.field private final greylist-max-r mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

.field private final greylist-max-r mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private blacklist mWakeLockTimeout:I

.field private final greylist-max-r mWapPush:Lcom/android/internal/telephony/WapPushOverSms;


# direct methods
.method public static synthetic blacklist $r8$lambda$ZTWD4uG56xKQcXySC6EYc6xheAU(Lcom/android/internal/telephony/InboundSmsHandler;[[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z
    .registers 8

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/InboundSmsHandler;->lambda$createDefaultSmsFilters$2([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$lZWl59T5MB5c9KF3R5_GMGhZ1U0(Lcom/android/internal/telephony/InboundSmsHandler;[[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z
    .registers 8

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/InboundSmsHandler;->lambda$createDefaultSmsFilters$0([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z

    move-result p0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$uEpbsVJskhyf7sBt4kDlyCUx4PA(Lcom/android/internal/telephony/InboundSmsHandler;[[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z
    .registers 8

    .line 0
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/telephony/InboundSmsHandler;->lambda$createDefaultSmsFilters$1([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDeliveringState(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIdleState(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$IdleState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmUserManager(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/os/UserManager;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWaitingState(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWakeLock(Lcom/android/internal/telephony/InboundSmsHandler;)Landroid/os/PowerManager$WakeLock;
    .registers 1

    .line 0
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$mdeleteFromRawTable(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdispatchSmsDeliveryIntent(Lcom/android/internal/telephony/InboundSmsHandler;[[BLjava/lang/String;ILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZIJ)V
    .registers 9

    .line 0
    invoke-direct/range {p0 .. p8}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchSmsDeliveryIntent([[BLjava/lang/String;ILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZIJ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mdropFilteredSms(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->dropFilteredSms(Lcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleInjectSms(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/AsyncResult;ZI)V
    .registers 4

    .line 0
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->handleInjectSms(Landroid/os/AsyncResult;ZI)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleNewSms(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/os/AsyncResult;)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->handleNewSms(Landroid/os/AsyncResult;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mhandleSmsWhitelisting(Lcom/android/internal/telephony/InboundSmsHandler;Landroid/content/ComponentName;Z)Landroid/os/Bundle;
    .registers 3

    .line 0
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsWhitelisting(Landroid/content/ComponentName;Z)Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$misSkipNotifyFlagSet(Lcom/android/internal/telephony/InboundSmsHandler;I)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->isSkipNotifyFlagSet(I)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mprocessMessagePart(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->processMessagePart(Lcom/android/internal/telephony/InboundSmsTracker;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$msetWakeLockTimeout(Lcom/android/internal/telephony/InboundSmsHandler;I)V
    .registers 2

    .line 0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->setWakeLockTimeout(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mshowNewMessageNotification(Lcom/android/internal/telephony/InboundSmsHandler;)V
    .registers 1

    .line 0
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->showNewMessageNotification()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetACTION_OPEN_SMS_APP()Ljava/lang/String;
    .registers 1

    .line 0
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->ACTION_OPEN_SMS_APP:Ljava/lang/String;

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smfilterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z
    .registers 7

    .line 0
    invoke-static/range {p0 .. p6}, Lcom/android/internal/telephony/InboundSmsHandler;->filterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z

    move-result p0

    return p0
.end method

.method static constructor blacklist <clinit>()V
    .registers 12

    .line 138
    const-string v0, "deleted"

    const-string v1, "pdu"

    filled-new-array {v1, v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_DELETED_FLAG_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x0

    .line 145
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/16 v0, 0xa

    .line 146
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 144
    invoke-static {v2, v2, v0, v4}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_DELETED_FLAG_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    .line 149
    const-string v0, "display_originating_addr"

    const-string v3, "date"

    const-string v5, "sequence"

    const-string v6, "destination_port"

    filled-new-array {v1, v5, v6, v0, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    const/4 v0, 0x2

    .line 161
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/16 v0, 0x9

    .line 162
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    const/4 v0, 0x3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    const/4 v0, 0x4

    .line 163
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    move-object v3, v2

    move-object v5, v4

    move-object v7, v6

    move-object v10, v9

    .line 158
    invoke-static/range {v2 .. v11}, Ljava/util/Map;->of(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    .line 224
    sget-object v0, Landroid/provider/Telephony$Sms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "raw"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sput-object v1, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    .line 225
    const-string v1, "raw/permanentDelete"

    .line 226
    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUriPermanentDelete:Landroid/net/Uri;

    .line 284
    const-string v0, "com.android.internal.telephony.OPEN_DEFAULT_SMS_APP"

    sput-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->ACTION_OPEN_SMS_APP:Ljava/lang/String;

    const v0, 0x927c0

    .line 1760
    sput v0, Lcom/android/internal/telephony/InboundSmsHandler;->sTimeoutDurationMillis:I

    return-void
.end method

.method protected constructor blacklist <init>(Ljava/lang/String;Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/Phone;Landroid/os/Looper;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 13

    .line 302
    invoke-direct {p0, p1, p5}, Lcom/android/internal/telephony/StateMachine;-><init>(Ljava/lang/String;Landroid/os/Looper;)V

    .line 242
    new-instance p5, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    const/4 v0, 0x0

    invoke-direct {p5, p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler-IA;)V

    iput-object p5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDefaultState:Lcom/android/internal/telephony/InboundSmsHandler$DefaultState;

    .line 245
    new-instance v1, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    invoke-direct {v1, p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler$StartupState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler-IA;)V

    iput-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStartupState:Lcom/android/internal/telephony/InboundSmsHandler$StartupState;

    .line 248
    new-instance v2, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    invoke-direct {v2, p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler$IdleState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler-IA;)V

    iput-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mIdleState:Lcom/android/internal/telephony/InboundSmsHandler$IdleState;

    .line 252
    new-instance v3, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    invoke-direct {v3, p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler-IA;)V

    iput-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mDeliveringState:Lcom/android/internal/telephony/InboundSmsHandler$DeliveringState;

    .line 256
    new-instance v4, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    invoke-direct {v4, p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;Lcom/android/internal/telephony/InboundSmsHandler-IA;)V

    iput-object v4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWaitingState:Lcom/android/internal/telephony/InboundSmsHandler$WaitingState;

    .line 270
    invoke-static {}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->getInstance()Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    .line 272
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v5, 0x40

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 273
    new-instance v0, Lcom/android/internal/telephony/LocalLog;

    const/16 v5, 0x8

    invoke-direct {v0, v5}, Lcom/android/internal/telephony/LocalLog;-><init>(I)V

    iput-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCarrierServiceLocalLog:Lcom/android/internal/telephony/LocalLog;

    const/4 v0, 0x1

    .line 280
    iput v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->DELETE_PERMANENTLY:I

    const/4 v5, 0x2

    .line 282
    iput v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->MARK_DELETED:I

    .line 304
    iput-object p6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 305
    iput-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 306
    iput-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mStorageMonitor:Lcom/android/internal/telephony/SmsStorageMonitor;

    .line 307
    iput-object p4, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 308
    invoke-virtual {p2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    iput-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    .line 309
    new-instance p3, Lcom/android/internal/telephony/WapPushOverSms;

    invoke-direct {p3, p2, p6}, Lcom/android/internal/telephony/WapPushOverSms;-><init>(Landroid/content/Context;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    iput-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    .line 311
    invoke-static {p2}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p3

    .line 312
    invoke-virtual {p3}, Landroid/telephony/TelephonyManager;->isDeviceSmsCapable()Z

    move-result p6

    .line 313
    iget-object v5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 314
    invoke-virtual {v5}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v5

    .line 313
    invoke-virtual {p3, v5, p6}, Landroid/telephony/TelephonyManager;->getSmsReceiveCapableForPhone(IZ)Z

    move-result p3

    xor-int/2addr p3, v0

    iput-boolean p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    .line 316
    const-string p3, "power"

    invoke-virtual {p2, p3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/os/PowerManager;

    .line 317
    invoke-virtual {p3, v0, p1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 318
    invoke-virtual {p1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 319
    const-string p1, "user"

    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/UserManager;

    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    .line 320
    const-string p1, "power_whitelist"

    .line 321
    invoke-virtual {p2, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerWhitelistManager;

    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    .line 322
    new-instance p1, Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-direct {p1, p2, p4}, Lcom/android/internal/telephony/CellBroadcastServiceManager;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;)V

    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastServiceManager:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    .line 324
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->createDefaultSmsFilters()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsFilters:Ljava/util/List;

    .line 326
    invoke-virtual {p0, p5}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;)V

    .line 327
    invoke-virtual {p0, v1, p5}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 328
    invoke-virtual {p0, v2, p5}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 329
    invoke-virtual {p0, v3, p5}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 330
    invoke-virtual {p0, v4, v3}, Lcom/android/internal/telephony/StateMachine;->addState(Lcom/android/internal/telephony/State;Lcom/android/internal/telephony/State;)V

    .line 332
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/StateMachine;->setInitialState(Lcom/android/internal/telephony/State;)V

    .line 333
    const-string p1, "created InboundSmsHandler"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$000(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V
    .registers 2

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic blacklist access$100(Lcom/android/internal/telephony/InboundSmsHandler;I)V
    .registers 2

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$200(Lcom/android/internal/telephony/InboundSmsHandler;I)V
    .registers 2

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->removeMessages(I)V

    return-void
.end method

.method static synthetic blacklist access$300(Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)V
    .registers 2

    .line 120
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->logd(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;Z)I
    .registers 10

    if-eqz p2, :cond_2a

    .line 1708
    :try_start_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->checkAndHandleDuplicate(Lcom/android/internal/telephony/InboundSmsTracker;)Z

    move-result p2
    :try_end_6
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_6} :catch_a

    if-eqz p2, :cond_33

    const/4 p0, 0x5

    return p0

    :catch_a
    move-exception p2

    .line 1712
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addTrackerToRawTable: Can\'t access SMS database, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1713
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1712
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p0, 0xa

    return p0

    .line 1717
    :cond_2a
    const-string p2, "addTrackerToRawTable: Skipped message de-duping logic"

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v0

    invoke-virtual {p0, p2, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;J)V

    .line 1720
    :cond_33
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object p2

    .line 1721
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    .line 1722
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    .line 1723
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getContentValues()Landroid/content/ContentValues;

    move-result-object v2

    .line 1729
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    invoke-virtual {v3, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v2

    .line 1730
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "addTrackerToRawTable: URI of new row: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v4

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;J)V

    .line 1733
    :try_start_6b
    invoke-static {v2}, Landroid/content/ContentUris;->parseId(Landroid/net/Uri;)J

    move-result-wide v3

    .line 1734
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v5

    const/4 v6, 0x1

    if-ne v5, v6, :cond_86

    .line 1736
    const-string p2, "_id=?"

    invoke-static {v3, v4}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p2, v0}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V

    goto :goto_91

    :catch_84
    move-exception p2

    goto :goto_92

    .line 1739
    :cond_86
    filled-new-array {p2, v0, v1}, [Ljava/lang/String;

    move-result-object p2

    .line 1740
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getQueryForSegments()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Lcom/android/internal/telephony/InboundSmsTracker;->setDeleteWhere(Ljava/lang/String;[Ljava/lang/String;)V
    :try_end_91
    .catch Ljava/lang/Exception; {:try_start_6b .. :try_end_91} :catch_84

    :goto_91
    return v6

    .line 1744
    :goto_92
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "addTrackerToRawTable: error parsing URI for new row: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1745
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v1

    invoke-static {v1, v2}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1744
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/16 p0, 0xb

    return p0
.end method

.method static blacklist cancelNewMessageNotification(Landroid/content/Context;)V
    .registers 3

    .line 1270
    const-string v0, "notification"

    .line 1271
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/NotificationManager;

    .line 1272
    const-string v0, "InboundSmsHandler"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroid/app/NotificationManager;->cancel(Ljava/lang/String;I)V

    return-void
.end method

.method private blacklist checkAndHandleDuplicate(Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1606
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getExactMatchDupDetectQuery()Landroid/util/Pair;

    move-result-object v0

    const/4 v1, 0x0

    .line 1611
    :try_start_5
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v4, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_DELETED_FLAG_PROJECTION:[Ljava/lang/String;

    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v6, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v6, [Ljava/lang/String;

    const/4 v7, 0x0

    invoke-virtual/range {v2 .. v7}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2
    :try_end_18
    .catchall {:try_start_5 .. :try_end_18} :catchall_12c

    .line 1615
    const-string v9, " rows"

    const/4 v10, 0x1

    if-eqz v2, :cond_a9

    :try_start_1d
    invoke-interface {v2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v5

    if-eqz v5, :cond_a9

    .line 1616
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v5

    if-eq v5, v10, :cond_4e

    .line 1617
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "checkAndHandleDuplicate: Exact match query returned "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1618
    invoke-interface {v2}, Landroid/database/Cursor;->getCount()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v6

    .line 1617
    invoke-virtual {p0, v5, v6, v7}, Lcom/android/internal/telephony/InboundSmsHandler;->logeWithLocalLog(Ljava/lang/String;J)V

    goto :goto_4e

    :catchall_49
    move-exception v0

    move-object p0, v0

    move-object v1, v2

    goto/16 :goto_12e

    .line 1623
    :cond_4e
    :goto_4e
    sget-object v5, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_DELETED_FLAG_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    const/16 v6, 0xa

    .line 1624
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1623
    invoke-interface {v2, v5}, Landroid/database/Cursor;->getInt(I)I

    move-result v5

    if-ne v5, v10, :cond_81

    .line 1625
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkAndHandleDuplicate: Discarding duplicate message/segment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->logWithLocalLog(Ljava/lang/String;)V

    .line 1627
    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->logDupPduMismatch(Landroid/database/Cursor;Lcom/android/internal/telephony/InboundSmsTracker;)V
    :try_end_7d
    .catchall {:try_start_1d .. :try_end_7d} :catchall_49

    .line 1645
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    return v10

    .line 1633
    :cond_81
    :try_start_81
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v5

    if-ne v5, v10, :cond_a9

    .line 1635
    iget-object v5, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v5, v0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 1637
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checkAndHandleDuplicate: Replacing duplicate message: "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->logWithLocalLog(Ljava/lang/String;)V

    .line 1639
    invoke-direct {p0, v2, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->logDupPduMismatch(Landroid/database/Cursor;Lcom/android/internal/telephony/InboundSmsTracker;)V
    :try_end_a9
    .catchall {:try_start_81 .. :try_end_a9} :catchall_49

    :cond_a9
    if-eqz v2, :cond_ae

    .line 1645
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 1652
    :cond_ae
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v0

    if-le v0, v10, :cond_12a

    .line 1653
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getInexactMatchDupDetectQuery()Landroid/util/Pair;

    move-result-object v0

    move-object v5, v4

    move-object v4, v3

    .line 1657
    :try_start_ba
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v6, v2

    check-cast v6, Ljava/lang/String;

    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    move-object v7, v2

    check-cast v7, [Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    if-eqz v1, :cond_11e

    .line 1661
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_11e

    .line 1662
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eq v2, v10, :cond_fc

    .line 1663
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAndHandleDuplicate: Inexact match query returned "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1664
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v3

    .line 1663
    invoke-virtual {p0, v2, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->logeWithLocalLog(Ljava/lang/String;J)V

    goto :goto_fc

    :catchall_f9
    move-exception v0

    move-object p0, v0

    goto :goto_124

    .line 1667
    :cond_fc
    :goto_fc
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v2, v0, v10}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 1669
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "checkAndHandleDuplicate: Replacing duplicate message segment: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->logWithLocalLog(Ljava/lang/String;)V

    .line 1671
    invoke-direct {p0, v1, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->logDupPduMismatch(Landroid/database/Cursor;Lcom/android/internal/telephony/InboundSmsTracker;)V
    :try_end_11e
    .catchall {:try_start_ba .. :try_end_11e} :catchall_f9

    :cond_11e
    if-eqz v1, :cond_12a

    .line 1675
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    goto :goto_12a

    :goto_124
    if-eqz v1, :cond_129

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1677
    :cond_129
    throw p0

    :cond_12a
    :goto_12a
    const/4 p0, 0x0

    return p0

    :catchall_12c
    move-exception v0

    move-object p0, v0

    :goto_12e
    if-eqz v1, :cond_133

    .line 1645
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 1647
    :cond_133
    throw p0
.end method

.method private blacklist createDefaultSmsFilters()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/InboundSmsHandler$SmsFilter;",
            ">;"
        }
    .end annotation

    .line 1286
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1287
    new-instance v1, Lcom/android/internal/telephony/InboundSmsHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/InboundSmsHandler$$ExternalSyntheticLambda0;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1307
    new-instance v1, Lcom/android/internal/telephony/InboundSmsHandler$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/InboundSmsHandler$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1318
    new-instance v1, Lcom/android/internal/telephony/InboundSmsHandler$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lcom/android/internal/telephony/InboundSmsHandler$$ExternalSyntheticLambda2;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private greylist-max-r deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V
    .registers 5

    const/4 v0, 0x1

    if-ne p3, v0, :cond_6

    .line 1497
    sget-object p3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUriPermanentDelete:Landroid/net/Uri;

    goto :goto_8

    :cond_6
    sget-object p3, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    .line 1498
    :goto_8
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    invoke-virtual {v0, p3, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    move-result p1

    if-nez p1, :cond_16

    .line 1500
    const-string p1, "No rows were deleted from raw table!"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    return-void

    .line 1502
    :cond_16
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Deleted "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " rows from raw table."

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method private blacklist dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;II)I
    .registers 7

    if-nez p1, :cond_a

    .line 751
    const-string p1, "dispatchSmsMessage: message is null"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    const/16 p0, 0x8

    return p0

    .line 755
    :cond_a
    iget-boolean v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsReceiveDisabled:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_15

    .line 757
    const-string p1, "Received short message on device which doesn\'t support receiving SMS. Ignored."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return v1

    .line 762
    :cond_15
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->isMtSmsPollingMessage(Lcom/android/internal/telephony/SmsMessageBase;)Z

    move-result v0

    if-eqz v0, :cond_21

    .line 763
    const-string p1, "Received MT SMS polling message. Ignored."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return v1

    .line 768
    :cond_21
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 769
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 770
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/satellite/SatelliteController;->shouldDropSms(Lcom/android/internal/telephony/Phone;)Z

    move-result v0

    if-eqz v0, :cond_35

    .line 771
    const-string p1, "SMS not supported during satellite session."

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return v1

    .line 776
    :cond_35
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;II)I

    move-result p3

    if-eq p3, v1, :cond_75

    const/4 v0, -0x1

    if-eq p3, v0, :cond_75

    .line 781
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v2

    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingSmsError(IZII)V

    .line 782
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v1

    .line 783
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p1

    .line 782
    invoke-virtual {v0, v1, p2, p3, p1}, Lcom/android/internal/telephony/metrics/SmsStats;->onIncomingSmsError(ZIIZ)V

    .line 784
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz p0, :cond_75

    .line 785
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getTelephonyAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    move-result-object p0

    if-eqz p0, :cond_75

    .line 787
    invoke-virtual {p0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->getSmsMmsAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;

    move-result-object p0

    if-eqz p0, :cond_75

    .line 789
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->onIncomingSmsError(II)V

    :cond_75
    return p3
.end method

.method private blacklist dispatchSmsDeliveryIntent([[BLjava/lang/String;ILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZIJ)V
    .registers 11

    move-object v0, p1

    .line 1547
    new-instance p1, Landroid/content/Intent;

    invoke-direct {p1}, Landroid/content/Intent;-><init>()V

    .line 1548
    const-string v1, "pdus"

    invoke-virtual {p1, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 1549
    const-string v0, "format"

    invoke-virtual {p1, v0, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-wide/16 v0, 0x0

    cmp-long p2, p7, v0

    if-eqz p2, :cond_1b

    .line 1551
    const-string p2, "messageId"

    invoke-virtual {p1, p2, p7, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_1b
    const/4 p2, -0x1

    const/4 v0, 0x0

    if-ne p3, p2, :cond_70

    .line 1556
    const-string p2, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1559
    iget-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {p2, p6}, Lcom/android/internal/telephony/util/TelephonyUtils;->getSubscriptionUserHandle(Landroid/content/Context;I)Landroid/os/UserHandle;

    move-result-object p2

    .line 1560
    iget-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/4 v1, 0x1

    invoke-static {p3, v1, p2}, Lcom/android/internal/telephony/SmsApplication;->getDefaultSmsApplicationAsUser(Landroid/content/Context;ZLandroid/os/UserHandle;)Landroid/content/ComponentName;

    move-result-object p3

    if-eqz p3, :cond_5b

    .line 1564
    invoke-virtual {p1, p3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Delivering SMS to: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1566
    invoke-virtual {p3}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1565
    invoke-virtual {p0, p3, p7, p8}, Lcom/android/internal/telephony/InboundSmsHandler;->logWithLocalLog(Ljava/lang/String;J)V

    goto :goto_5e

    .line 1568
    :cond_5b
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1572
    :goto_5e
    iget-object p3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {p3}, Lcom/android/internal/telephony/Phone;->getAppSmsManager()Lcom/android/internal/telephony/AppSmsManager;

    move-result-object p3

    .line 1573
    invoke-virtual {p3, p1}, Lcom/android/internal/telephony/AppSmsManager;->handleSmsReceivedIntent(Landroid/content/Intent;)Z

    move-result p3

    if-eqz p3, :cond_6e

    .line 1575
    invoke-direct {p0, p4}, Lcom/android/internal/telephony/InboundSmsHandler;->dropSms(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    return-void

    :cond_6e
    move-object v0, p2

    goto :goto_90

    .line 1579
    :cond_70
    const-string p2, "android.intent.action.DATA_SMS_RECEIVED"

    invoke-virtual {p1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 1580
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p7, "sms://localhost:"

    invoke-virtual {p2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p2

    .line 1581
    invoke-virtual {p1, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1582
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    :goto_90
    if-nez v0, :cond_98

    .line 1587
    iget-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p2}, Landroid/os/UserManager;->getMainUser()Landroid/os/UserHandle;

    move-result-object v0

    .line 1592
    :cond_98
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object p2

    invoke-direct {p0, p2, p5}, Lcom/android/internal/telephony/InboundSmsHandler;->handleSmsWhitelisting(Landroid/content/ComponentName;Z)Landroid/os/Bundle;

    move-result-object p2

    move-object p5, p4

    move-object p4, p2

    .line 1593
    const-string p2, "android.permission.RECEIVE_SMS"

    const-string p3, "android:receive_sms"

    move p7, p6

    move-object p6, v0

    invoke-virtual/range {p0 .. p7}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V

    return-void
.end method

.method private blacklist dropFilteredSms(Lcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)V
    .registers 4

    if-eqz p3, :cond_13

    .line 1338
    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object p1

    const/4 p3, 0x1

    .line 1337
    invoke-direct {p0, p2, p1, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    const/4 p1, 0x3

    .line 1340
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return-void

    .line 1342
    :cond_13
    invoke-direct {p0, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->dropSms(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V

    return-void
.end method

.method private blacklist dropSms(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)V
    .registers 4

    .line 1999
    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->-$$Nest$fgetmDeleteWhere(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->-$$Nest$fgetmDeleteWhereArgs(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)[Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x2

    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    const/4 p1, 0x3

    .line 2000
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(I)V

    return-void
.end method

.method private blacklist filterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZ)Z
    .registers 8

    .line 1357
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsFilters:Ljava/util/List;

    move v0, p6

    move-object p6, p0

    move-object p0, p1

    move p1, p2

    move-object p2, p3

    move-object p3, p4

    move p4, p5

    move p5, v0

    invoke-static/range {p0 .. p6}, Lcom/android/internal/telephony/InboundSmsHandler;->filterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z

    move-result p0

    return p0
.end method

.method private static blacklist filterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([[BI",
            "Lcom/android/internal/telephony/InboundSmsTracker;",
            "Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;",
            "ZZ",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/InboundSmsHandler$SmsFilter;",
            ">;)Z"
        }
    .end annotation

    .line 1363
    invoke-interface/range {p6 .. p6}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    .line 1364
    :cond_4
    invoke-interface {v0}, Ljava/util/ListIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 1365
    invoke-interface {v0}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lcom/android/internal/telephony/InboundSmsHandler$SmsFilter;

    .line 1367
    invoke-interface {v0}, Ljava/util/ListIterator;->nextIndex()I

    move-result v1

    invoke-interface/range {p6 .. p6}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v10, p6

    invoke-interface {v10, v1, v3}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v9

    move-object v3, p0

    move v4, p1

    move-object v5, p2

    move-object v6, p3

    move v7, p4

    move/from16 v8, p5

    .line 1366
    invoke-interface/range {v2 .. v9}, Lcom/android/internal/telephony/InboundSmsHandler$SmsFilter;->filterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_2e
    const/4 p0, 0x0

    return p0
.end method

.method private greylist-max-r handleInjectSms(Landroid/os/AsyncResult;ZI)V
    .registers 6

    const/4 v0, 0x0

    .line 719
    :try_start_1
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_5} :catch_21

    .line 720
    :try_start_5
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/SmsMessage;

    if-nez p1, :cond_15

    .line 722
    const-string p1, "Null injected sms"

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    const/4 p0, 0x7

    goto :goto_29

    :catch_12
    move-exception p1

    move-object v0, v1

    goto :goto_22

    :cond_15
    if-eqz p2, :cond_19

    const/4 p2, 0x1

    goto :goto_1a

    :cond_19
    const/4 p2, 0x2

    .line 727
    :goto_1a
    iget-object p1, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;II)I

    move-result p0
    :try_end_20
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_20} :catch_12

    goto :goto_29

    :catch_21
    move-exception p1

    .line 730
    :goto_22
    const-string p2, "Exception dispatching message"

    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p0, 0x6

    move-object v1, v0

    :goto_29
    if-eqz v1, :cond_2e

    .line 735
    invoke-interface {v1, p0}, Lcom/android/internal/telephony/SmsDispatchersController$SmsInjectionCallback;->onSmsInjectedResult(I)V

    :cond_2e
    return-void
.end method

.method private greylist-max-r handleNewSms(Landroid/os/AsyncResult;)V
    .registers 6

    .line 678
    iget-object v0, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v0, :cond_1b

    .line 679
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Exception processing incoming SMS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    return-void

    :cond_1b
    const/4 v0, 0x0

    .line 685
    :try_start_1c
    iget-object p1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast p1, Landroid/telephony/SmsMessage;

    .line 686
    iget-object p1, p1, Landroid/telephony/SmsMessage;->mWrappedSmsMessage:Lcom/android/internal/telephony/SmsMessageBase;

    invoke-direct {p0, p1, v0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchMessage(Lcom/android/internal/telephony/SmsMessageBase;II)I

    move-result p1
    :try_end_26
    .catch Ljava/lang/RuntimeException; {:try_start_1c .. :try_end_26} :catch_27

    goto :goto_2e

    :catch_27
    move-exception p1

    .line 688
    const-string v1, "Exception dispatching message"

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 p1, 0x6

    :goto_2e
    const/4 v1, 0x1

    if-ne p1, v1, :cond_48

    .line 694
    invoke-static {}, Lcom/android/internal/telephony/satellite/SatelliteController;->getInstance()Lcom/android/internal/telephony/satellite/SatelliteController;

    move-result-object v2

    if-eqz v2, :cond_48

    .line 695
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 696
    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteController;->shouldSendSmsToDatagramDispatcher(Lcom/android/internal/telephony/Phone;)Z

    move-result v3

    if-eqz v3, :cond_48

    .line 697
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/android/internal/telephony/satellite/SatelliteController;->onSmsReceived(I)V

    :cond_48
    const/4 v2, -0x1

    if-eq p1, v2, :cond_52

    if-ne p1, v1, :cond_4e

    move v0, v1

    :cond_4e
    const/4 v1, 0x0

    .line 706
    invoke-direct {p0, v0, p1, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    :cond_52
    return-void
.end method

.method private greylist-max-r handleSmsWhitelisting(Landroid/content/ComponentName;Z)Landroid/os/Bundle;
    .registers 12

    if-eqz p1, :cond_9

    .line 1511
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1512
    const-string v0, "sms-app"

    goto :goto_11

    .line 1514
    :cond_9
    iget-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object p1

    .line 1515
    const-string v0, "sms-broadcast"

    :goto_11
    const/4 v1, 0x1

    if-eqz p2, :cond_1f

    .line 1520
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p2

    .line 1521
    invoke-virtual {p2, v1}, Landroid/app/BroadcastOptions;->setBackgroundActivityStartsAllowed(Z)V

    .line 1522
    invoke-virtual {p2}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    goto :goto_20

    :cond_1f
    const/4 p2, 0x0

    .line 1524
    :goto_20
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPowerWhitelistManager:Landroid/os/PowerWhitelistManager;

    const/16 v2, 0x13a

    invoke-virtual {p0, p1, v1, v2, v0}, Landroid/os/PowerWhitelistManager;->whitelistAppTemporarilyForEvent(Ljava/lang/String;IILjava/lang/String;)J

    move-result-wide v4

    if-nez p2, :cond_2e

    .line 1526
    invoke-static {}, Landroid/app/BroadcastOptions;->makeBasic()Landroid/app/BroadcastOptions;

    move-result-object p2

    :cond_2e
    move-object v3, p2

    const/16 v7, 0x13a

    .line 1527
    const-string v8, ""

    const/4 v6, 0x0

    invoke-virtual/range {v3 .. v8}, Landroid/app/BroadcastOptions;->setTemporaryAppAllowlist(JIILjava/lang/String;)V

    .line 1531
    invoke-virtual {v3}, Landroid/app/BroadcastOptions;->toBundle()Landroid/os/Bundle;

    move-result-object p0

    return-object p0
.end method

.method private blacklist hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 3

    .line 1477
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    .line 1478
    invoke-virtual {p0, p1, p2}, Landroid/os/UserManager;->getUserRestrictionSources(Ljava/lang/String;Landroid/os/UserHandle;)Ljava/util/List;

    move-result-object p0

    if-eqz p0, :cond_10

    .line 1479
    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-nez p0, :cond_10

    const/4 p0, 0x1

    return p0

    :cond_10
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist hexToByte(Ljava/lang/String;)B
    .registers 4

    const/4 v0, 0x0

    .line 2222
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->toDigit(C)I

    move-result v0

    const/4 v1, 0x1

    .line 2223
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result p1

    invoke-direct {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->toDigit(C)I

    move-result p0

    shl-int/lit8 p1, v0, 0x4

    add-int/2addr p1, p0

    int-to-byte p0, p1

    return p0
.end method

.method static blacklist isCurrentFormat3gpp2()Z
    .registers 2

    .line 1755
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    const/4 v1, 0x2

    if-ne v1, v0, :cond_d

    const/4 v0, 0x1

    return v0

    :cond_d
    const/4 v0, 0x0

    return v0
.end method

.method private blacklist isEmergencyNumber(Ljava/lang/String;)Z
    .registers 4

    .line 1187
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->hasCalling()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    return v1

    .line 1188
    :cond_a
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-static {p0}, Landroid/telephony/TelephonyManager;->from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;

    move-result-object p0

    if-nez p0, :cond_13

    return v1

    .line 1190
    :cond_13
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method private blacklist isMainUser(I)Z
    .registers 2

    .line 1485
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getMainUser()Landroid/os/UserHandle;

    move-result-object p0

    invoke-virtual {p0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result p0

    if-ne p1, p0, :cond_e

    const/4 p0, 0x1

    return p0

    :cond_e
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist isMainUserUnlocked()Z
    .registers 2

    .line 1228
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v0}, Landroid/os/UserManager;->getMainUser()Landroid/os/UserHandle;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1230
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0, v0}, Landroid/os/UserManager;->isUserUnlocked(Landroid/os/UserHandle;)Z

    move-result p0

    return p0

    .line 1232
    :cond_f
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->isUserUnlocked()Z

    move-result p0

    return p0
.end method

.method private blacklist isMtSmsPollingMessage(Lcom/android/internal/telephony/SmsMessageBase;)Z
    .registers 4

    .line 2004
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 2005
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x11101a1

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_11

    return v1

    .line 2008
    :cond_11
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x104029d

    .line 2009
    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p0

    .line 2010
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_30

    .line 2011
    invoke-virtual {p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_30

    const/4 p0, 0x1

    return p0

    :cond_30
    return v1
.end method

.method private greylist-max-r isSkipNotifyFlagSet(I)Z
    .registers 2

    .line 0
    and-int/lit8 p0, p1, 0x2

    if-lez p0, :cond_6

    const/4 p0, 0x1

    return p0

    :cond_6
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$createDefaultSmsFilters$0([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z
    .registers 22

    .line 1290
    new-instance v0, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;

    .line 1292
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v5

    .line 1294
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsTracker;->isClass0()Z

    move-result v8

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getSubId()I

    move-result v9

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v10

    move-object v1, p0

    move-object v2, p1

    move/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    invoke-direct/range {v0 .. v13}, Lcom/android/internal/telephony/InboundSmsHandler$CarrierServicesSmsFilterCallback;-><init>(Lcom/android/internal/telephony/InboundSmsHandler;[[BILcom/android/internal/telephony/InboundSmsTracker;Ljava/lang/String;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZIJZLjava/util/List;)V

    .line 1296
    new-instance v1, Lcom/android/internal/telephony/CarrierServicesSmsFilter;

    move-object v6, v0

    move-object v0, v1

    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1297
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v5

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 1298
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "::CarrierServicesSmsFilter"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCarrierServiceLocalLog:Lcom/android/internal/telephony/LocalLog;

    .line 1299
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v9

    move-object v3, p1

    move/from16 v4, p2

    invoke-direct/range {v0 .. v10}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/Phone;[[BILjava/lang/String;Lcom/android/internal/telephony/CarrierServicesSmsFilter$CarrierServicesSmsFilterCallbackInterface;Ljava/lang/String;Lcom/android/internal/telephony/LocalLog;J)V

    .line 1300
    invoke-virtual {v0}, Lcom/android/internal/telephony/CarrierServicesSmsFilter;->filter()Z

    move-result p1

    if-eqz p1, :cond_61

    .line 1301
    const-string p1, "SMS is being handled by carrier service"

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;J)V

    const/4 p0, 0x1

    return p0

    :cond_61
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$createDefaultSmsFilters$1([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z
    .registers 10

    .line 1310
    iget-object p5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 1311
    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object p7

    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getSubId()I

    move-result v0

    .line 1310
    invoke-static {p5, p1, p7, p2, v0}, Lcom/android/internal/telephony/VisualVoicemailSmsFilter;->filter(Landroid/content/Context;[[BLjava/lang/String;II)Z

    move-result p1

    if-eqz p1, :cond_1e

    .line 1312
    const-string p1, "Visual voicemail SMS dropped"

    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->logWithLocalLog(Ljava/lang/String;J)V

    .line 1313
    invoke-direct {p0, p3, p4, p6}, Lcom/android/internal/telephony/InboundSmsHandler;->dropFilteredSms(Lcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)V

    const/4 p0, 0x1

    return p0

    :cond_1e
    const/4 p0, 0x0

    return p0
.end method

.method private synthetic blacklist lambda$createDefaultSmsFilters$2([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZLjava/util/List;)Z
    .registers 10

    .line 1321
    new-instance p2, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;

    iget-object p5, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-direct {p2, p5}, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;-><init>(Lcom/android/internal/telephony/Phone;)V

    .line 1323
    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p2, p1, p5}, Lcom/android/internal/telephony/MissedIncomingCallSmsFilter;->filter([[BLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1f

    .line 1324
    const-string p1, "Missed incoming call SMS received"

    .line 1325
    invoke-virtual {p3}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v0

    .line 1324
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->logWithLocalLog(Ljava/lang/String;J)V

    .line 1326
    invoke-direct {p0, p3, p4, p6}, Lcom/android/internal/telephony/InboundSmsHandler;->dropFilteredSms(Lcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)V

    const/4 p0, 0x1

    return p0

    :cond_1f
    const/4 p0, 0x0

    return p0
.end method

.method private blacklist logDupPduMismatch(Landroid/database/Cursor;Lcom/android/internal/telephony/InboundSmsTracker;)V
    .registers 6

    .line 1684
    sget-object v0, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_DELETED_FLAG_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    const/4 v1, 0x0

    .line 1685
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1684
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    .line 1686
    invoke-virtual {p2}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v0

    .line 1687
    invoke-static {p1}, Lcom/android/internal/telephony/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object p1

    .line 1688
    invoke-virtual {p2}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v1

    invoke-static {p1, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v1

    if-nez v1, :cond_49

    .line 1689
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Warning: dup message PDU of length "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v0, v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " is different from existing PDU of length "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length p1, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1691
    invoke-virtual {p2}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v0

    .line 1689
    invoke-virtual {p0, p1, v0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->logeWithLocalLog(Ljava/lang/String;J)V

    :cond_49
    return-void
.end method

.method private blacklist notifyAndAcknowledgeLastIncomingSms(ZILandroid/os/Message;)V
    .registers 8

    if-nez p1, :cond_22

    .line 832
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.provider.Telephony.SMS_REJECTED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 833
    const-string v1, "result"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 834
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    const-string v2, "subId"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 836
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const-string v3, "android.permission.RECEIVE_SMS"

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;Ljava/lang/String;)V

    .line 842
    :cond_22
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->acknowledgeLastIncomingSms(ZILandroid/os/Message;)V

    return-void
.end method

.method private greylist-max-r processMessagePart(Lcom/android/internal/telephony/InboundSmsTracker;)Z
    .registers 27

    move-object/from16 v1, p0

    .line 941
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v2

    .line 944
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v0

    .line 946
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v4

    const/4 v8, 0x0

    if-gtz v2, :cond_2a

    .line 950
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processMessagePart: returning false due to invalid message count "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 951
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v2

    .line 950
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;J)V

    return v8

    :cond_2a
    const/4 v9, -0x1

    const/4 v3, 0x0

    const/4 v11, 0x1

    if-ne v2, v11, :cond_51

    .line 957
    new-array v5, v11, [[B

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getPdu()[B

    move-result-object v6

    aput-object v6, v5, v8

    .line 958
    new-array v6, v11, [J

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getTimestamp()J

    move-result-wide v12

    aput-wide v12, v6, v8

    .line 959
    iget-object v7, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDisplayAddress()Ljava/lang/String;

    move-result-object v12

    invoke-static {v7, v12, v3}, Lcom/android/internal/telephony/BlockChecker;->isBlocked(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v7

    move-object v10, v5

    move-object/from16 v21, v6

    move v6, v7

    const/16 v16, 0x2

    goto/16 :goto_1a1

    .line 965
    :cond_51
    :try_start_51
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getReferenceNumber()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 966
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageCount()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    .line 969
    filled-new-array {v4, v5, v6}, [Ljava/lang/String;

    move-result-object v16

    .line 970
    iget-object v12, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mResolver:Landroid/content/ContentResolver;

    sget-object v13, Lcom/android/internal/telephony/InboundSmsHandler;->sRawUri:Landroid/net/Uri;

    sget-object v14, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION:[Ljava/lang/String;

    .line 971
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getQueryForSegments()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x0

    .line 970
    invoke-virtual/range {v12 .. v17}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6
    :try_end_75
    .catch Landroid/database/SQLException; {:try_start_51 .. :try_end_75} :catch_3d9
    .catchall {:try_start_51 .. :try_end_75} :catchall_3d7

    .line 973
    :try_start_75
    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    if-ge v7, v2, :cond_af

    .line 980
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "processMessagePart: returning false. Only "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " segments  have arrived. refNumber: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 982
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v2

    .line 980
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;J)V
    :try_end_a3
    .catch Landroid/database/SQLException; {:try_start_75 .. :try_end_a3} :catch_ab
    .catchall {:try_start_75 .. :try_end_a3} :catchall_a7

    .line 1046
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return v8

    :catchall_a7
    move-exception v0

    move-object v3, v6

    goto/16 :goto_3fc

    :catch_ab
    move-exception v0

    move-object v3, v6

    goto/16 :goto_3da

    .line 987
    :cond_af
    :try_start_af
    new-array v7, v2, [[B

    .line 988
    new-array v12, v2, [J

    move v13, v8

    .line 989
    :cond_b4
    :goto_b4
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_178

    .line 991
    sget-object v14, Lcom/android/internal/telephony/InboundSmsHandler;->PDU_SEQUENCE_PORT_PROJECTION_INDEX_MAPPING:Ljava/util/Map;

    .line 992
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Ljava/lang/Integer;

    invoke-virtual {v15}, Ljava/lang/Integer;->intValue()I

    move-result v15

    .line 991
    invoke-interface {v6, v15}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .line 992
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v16

    sub-int v15, v15, v16

    if-ge v15, v2, :cond_d8

    if-gez v15, :cond_dc

    :cond_d8
    const/16 v16, 0x2

    goto/16 :goto_158

    :cond_dc
    const/16 v16, 0x2

    .line 1007
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v14, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1006
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Lcom/android/internal/telephony/HexDump;->hexStringToByteArray(Ljava/lang/String;)[B

    move-result-object v10

    aput-object v10, v7, v15

    if-nez v15, :cond_125

    .line 1012
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v14, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1011
    invoke-interface {v6, v10}, Landroid/database/Cursor;->isNull(I)Z

    move-result v10

    if-nez v10, :cond_125

    .line 1014
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v14, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1013
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getInt(I)I

    move-result v10

    .line 1016
    invoke-static {v10}, Lcom/android/internal/telephony/InboundSmsTracker;->getRealDestPort(I)I

    move-result v10

    if-eq v10, v9, :cond_125

    move v0, v10

    :cond_125
    const/4 v10, 0x3

    .line 1023
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v14, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1022
    invoke-interface {v6, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v17

    aput-wide v17, v12, v15

    if-nez v13, :cond_b4

    .line 1033
    iget-object v10, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const/16 v13, 0x9

    .line 1035
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v14, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Integer;

    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    .line 1034
    invoke-interface {v6, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 1033
    invoke-static {v10, v13, v3}, Lcom/android/internal/telephony/BlockChecker;->isBlocked(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Z

    move-result v13

    goto/16 :goto_b4

    .line 998
    :goto_158
    const-string v10, "processMessagePart: invalid seqNumber = %d, messageCount = %d"

    .line 1000
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getIndexOffset()I

    move-result v14

    add-int/2addr v15, v14

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    .line 1001
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    filled-new-array {v14, v15}, [Ljava/lang/Object;

    move-result-object v14

    .line 998
    invoke-static {v10, v14}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v10

    .line 1002
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v14

    .line 998
    invoke-virtual {v1, v10, v14, v15}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;J)V

    goto/16 :goto_b4

    :cond_178
    const/16 v16, 0x2

    .line 1038
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "processMessagePart: all "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v14, " segments  received. refNumber: "

    invoke-virtual {v10, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1039
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v14

    .line 1038
    invoke-virtual {v1, v5, v14, v15}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;J)V
    :try_end_19a
    .catch Landroid/database/SQLException; {:try_start_af .. :try_end_19a} :catch_ab
    .catchall {:try_start_af .. :try_end_19a} :catchall_a7

    .line 1046
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    move-object v10, v7

    move-object/from16 v21, v12

    move v6, v13

    :goto_1a1
    const/16 v5, 0xb84

    if-ne v0, v5, :cond_1a7

    move v5, v11

    goto :goto_1a8

    :cond_1a7
    move v5, v8

    .line 1052
    :goto_1a8
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getFormat()Ljava/lang/String;

    move-result-object v12

    .line 1055
    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v7

    .line 1056
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v13

    if-eqz v13, :cond_382

    invoke-interface {v7, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1be

    goto/16 :goto_382

    .line 1076
    :cond_1be
    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3}, Ljava/io/ByteArrayOutputStream;-><init>()V

    if-eqz v5, :cond_222

    .line 1078
    array-length v7, v10

    move v13, v8

    :goto_1c7
    if-ge v13, v7, :cond_222

    aget-object v14, v10, v13

    .line 1080
    const-string v15, "3gpp"

    if-ne v12, v15, :cond_1d9

    .line 1081
    invoke-static {v14, v15}, Landroid/telephony/SmsMessage;->createFromPdu([BLjava/lang/String;)Landroid/telephony/SmsMessage;

    move-result-object v14

    if-eqz v14, :cond_1db

    .line 1083
    invoke-virtual {v14}, Landroid/telephony/SmsMessage;->getUserData()[B

    move-result-object v14

    :cond_1d9
    move v15, v2

    goto :goto_21a

    .line 1085
    :cond_1db
    const-string v0, "processMessagePart: SmsMessage.createFromPdu returned null"

    .line 1086
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v3

    .line 1085
    invoke-virtual {v1, v0, v3, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;J)V

    .line 1087
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v3, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSource()I

    move-result v19

    const/16 v22, 0x0

    .line 1089
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v23

    .line 1087
    const-string v20, "3gpp"

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingWapPush(IILjava/lang/String;[JZJ)V

    .line 1090
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSource()I

    move-result v3

    .line 1091
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v4

    .line 1092
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    move v1, v3

    const/16 v3, 0x8

    .line 1090
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/metrics/SmsStats;->onIncomingSmsWapPush(IIIJZ)V

    return v8

    .line 1096
    :goto_21a
    array-length v2, v14

    invoke-virtual {v3, v14, v8, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    add-int/lit8 v13, v13, 0x1

    move v2, v15

    goto :goto_1c7

    :cond_222
    move v15, v2

    move-object/from16 v2, p1

    move v7, v5

    .line 1100
    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSmsBroadcastReceiver(Lcom/android/internal/telephony/InboundSmsHandler;)Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;

    move-result-object v5

    .line 1102
    invoke-direct {v1}, Lcom/android/internal/telephony/InboundSmsHandler;->isMainUserUnlocked()Z

    move-result v13

    if-nez v13, :cond_259

    .line 1103
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "processMessagePart: !isUserUnlocked; calling processMessagePartWithUserLocked. Port: "

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1104
    invoke-virtual {v2}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v12

    .line 1103
    invoke-virtual {v1, v4, v12, v13}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;J)V

    if-eqz v7, :cond_252

    .line 1107
    new-array v10, v11, [[B

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v3

    aput-object v3, v10, v8

    :cond_252
    move v4, v0

    move-object v3, v10

    .line 1105
    invoke-direct/range {v1 .. v6}, Lcom/android/internal/telephony/InboundSmsHandler;->processMessagePartWithUserLocked(Lcom/android/internal/telephony/InboundSmsTracker;[[BILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)Z

    move-result v0

    return v0

    :cond_259
    move v13, v0

    if-eqz v7, :cond_2e2

    .line 1114
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    move-object v1, v2

    move-object v2, v5

    .line 1115
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSubId()I

    move-result v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v6

    move-object/from16 v3, p0

    .line 1114
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;IJ)I

    move-result v0

    move-object v14, v3

    .line 1117
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMessagePart: dispatchWapPdu() returned "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1118
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v2

    .line 1117
    invoke-virtual {v14, v1, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;J)V

    if-eq v0, v9, :cond_293

    if-ne v0, v11, :cond_290

    goto :goto_293

    :cond_290
    move/from16 v22, v8

    goto :goto_295

    :cond_293
    :goto_293
    move/from16 v22, v11

    .line 1124
    :goto_295
    iget-object v1, v14, Lcom/android/internal/telephony/InboundSmsHandler;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v2, v14, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSource()I

    move-result v19

    .line 1125
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v23

    move-object/from16 v17, v1

    move-object/from16 v20, v12

    .line 1124
    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingWapPush(IILjava/lang/String;[JZJ)V

    .line 1126
    iget-object v1, v14, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v1

    move v3, v0

    move-object v0, v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSource()I

    move-result v1

    .line 1127
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v14, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v6

    move v2, v15

    .line 1126
    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/metrics/SmsStats;->onIncomingSmsWapPush(IIIJZ)V

    if-ne v3, v9, :cond_2cb

    return v11

    .line 1132
    :cond_2cb
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v1

    move/from16 v2, v16

    invoke-direct {v14, v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 1134
    const-string v0, "processMessagePart: returning false as the ordered broadcast for WAP push was not sent"

    .line 1135
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v1

    .line 1134
    invoke-virtual {v14, v0, v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;J)V

    return v8

    :cond_2e2
    move-object v14, v1

    move-object v9, v5

    move-object/from16 v20, v12

    move v2, v15

    .line 1144
    iget-object v0, v14, Lcom/android/internal/telephony/InboundSmsHandler;->mMetrics:Lcom/android/internal/telephony/metrics/TelephonyMetrics;

    iget-object v1, v14, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v18

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSource()I

    move-result v19

    .line 1145
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v23

    move-object/from16 v17, v0

    move/from16 v22, v6

    .line 1144
    invoke-virtual/range {v17 .. v24}, Lcom/android/internal/telephony/metrics/TelephonyMetrics;->writeIncomingSmsSession(IILjava/lang/String;[JZJ)V

    .line 1146
    iget-object v0, v14, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v0

    invoke-virtual {v14}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v1

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSource()I

    move-result v2

    move v4, v6

    .line 1147
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v5

    .line 1148
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v14, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v7

    move v3, v15

    .line 1146
    invoke-virtual/range {v0 .. v7}, Lcom/android/internal/telephony/metrics/SmsStats;->onIncomingSmsSuccess(ZIIZJZ)V

    move v6, v4

    .line 1149
    iget-object v0, v14, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 1150
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v0

    invoke-static {v0}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->getInstance(I)Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;

    move-result-object v0

    .line 1151
    iget-object v1, v14, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/satellite/metrics/CarrierRoamingSatelliteSessionStats;->onIncomingSms(I)V

    .line 1152
    iget-object v0, v14, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_348

    .line 1153
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getTelephonyAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    move-result-object v0

    if-eqz v0, :cond_348

    .line 1155
    invoke-virtual {v0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->getSmsMmsAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;

    move-result-object v0

    if-eqz v0, :cond_348

    .line 1157
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSource()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->onIncomingSmsSuccess(I)V

    :cond_348
    move v4, v6

    const/4 v6, 0x1

    move v7, v4

    move-object v5, v9

    move-object v2, v10

    move v3, v13

    move-object v1, v14

    move-object/from16 v4, p1

    .line 1165
    invoke-direct/range {v1 .. v7}, Lcom/android/internal/telephony/InboundSmsHandler;->filterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZ)Z

    move-result v0

    move v4, v3

    move v6, v7

    if-nez v0, :cond_381

    if-eqz v6, :cond_370

    .line 1172
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhere()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDeleteWhereArgs()[Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2, v11}, Lcom/android/internal/telephony/InboundSmsHandler;->deleteFromRawTable(Ljava/lang/String;[Ljava/lang/String;I)V

    .line 1174
    const-string v0, "processMessagePart: returning false as the phone number is blocked"

    .line 1175
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v2

    .line 1174
    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;J)V

    return v8

    .line 1180
    :cond_370
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->isClass0()Z

    move-result v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSubId()I

    move-result v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v8

    move-object/from16 v3, v20

    .line 1179
    invoke-direct/range {v1 .. v9}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchSmsDeliveryIntent([[BLjava/lang/String;ILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZIJ)V

    :cond_381
    return v11

    .line 1057
    :cond_382
    :goto_382
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "processMessagePart: returning false due to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1058
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    if-nez v2, :cond_395

    const-string v2, "pduList.size() == 0"

    goto :goto_397

    :cond_395
    const-string v2, "pduList.contains(null)"

    :goto_397
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1059
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->logeWithLocalLog(Ljava/lang/String;J)V

    .line 1060
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getSmsStats()Lcom/android/internal/telephony/metrics/SmsStats;

    move-result-object v0

    .line 1061
    invoke-virtual {v1}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v2

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSource()I

    move-result v3

    .line 1062
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getAddress()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->isEmergencyNumber(Ljava/lang/String;)Z

    move-result v4

    const/4 v5, 0x7

    .line 1060
    invoke-virtual {v0, v2, v3, v5, v4}, Lcom/android/internal/telephony/metrics/SmsStats;->onIncomingSmsError(ZIIZ)V

    .line 1063
    iget-object v0, v1, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    if-eqz v0, :cond_3d6

    .line 1064
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getTelephonyAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics;

    move-result-object v0

    if-eqz v0, :cond_3d6

    .line 1066
    invoke-virtual {v0}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics;->getSmsMmsAnalytics()Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;

    move-result-object v0

    if-eqz v0, :cond_3d6

    .line 1069
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getSource()I

    move-result v1

    .line 1068
    invoke-virtual {v0, v1, v5}, Lcom/android/internal/telephony/analytics/TelephonyAnalytics$SmsMmsAnalytics;->onIncomingSmsError(II)V

    :cond_3d6
    return v8

    :catchall_3d7
    move-exception v0

    goto :goto_3fc

    :catch_3d9
    move-exception v0

    .line 1041
    :goto_3da
    :try_start_3da
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "processMessagePart: Can\'t access multipart SMS database, "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1042
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v4

    invoke-static {v4, v5}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1041
    invoke-virtual {v1, v2, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3f6
    .catchall {:try_start_3da .. :try_end_3f6} :catchall_3d7

    if-eqz v3, :cond_3fb

    .line 1046
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3fb
    return v8

    :goto_3fc
    if-eqz v3, :cond_401

    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 1048
    :cond_401
    throw v0
.end method

.method private blacklist processMessagePartWithUserLocked(Lcom/android/internal/telephony/InboundSmsTracker;[[BILcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Z)Z
    .registers 15

    const/16 v0, 0xb84

    const/4 v1, 0x0

    if-ne p3, v0, :cond_13

    .line 1204
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    aget-object v2, p2, v1

    invoke-virtual {v0, v2, p0}, Lcom/android/internal/telephony/WapPushOverSms;->isWapPushForMms([BLcom/android/internal/telephony/InboundSmsHandler;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 1205
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->showNewMessageNotification()V

    return v1

    :cond_13
    const/4 v0, -0x1

    if-ne p3, v0, :cond_2a

    const/4 v7, 0x0

    move-object v2, p0

    move-object v5, p1

    move-object v3, p2

    move v4, p3

    move-object v6, p4

    move v8, p5

    .line 1210
    invoke-direct/range {v2 .. v8}, Lcom/android/internal/telephony/InboundSmsHandler;->filterSms([[BILcom/android/internal/telephony/InboundSmsTracker;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;ZZ)Z

    move-result p0

    if-eqz p0, :cond_25

    const/4 p0, 0x1

    return p0

    :cond_25
    if-nez v8, :cond_2a

    .line 1220
    invoke-direct {v2}, Lcom/android/internal/telephony/InboundSmsHandler;->showNewMessageNotification()V

    :cond_2a
    return v1
.end method

.method static blacklist registerNewMessageNotificationActionHandler(Landroid/content/Context;)V
    .registers 4

    .line 2241
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 2242
    sget-object v1, Lcom/android/internal/telephony/InboundSmsHandler;->ACTION_OPEN_SMS_APP:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 2243
    new-instance v1, Lcom/android/internal/telephony/InboundSmsHandler$NewMessageNotificationActionReceiver;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/InboundSmsHandler$NewMessageNotificationActionReceiver;-><init>(Lcom/android/internal/telephony/InboundSmsHandler-IA;)V

    const/4 v2, 0x4

    invoke-virtual {p0, v1, v0, v2}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;I)Landroid/content/Intent;

    return-void
.end method

.method private blacklist setWakeLockTimeout(I)V
    .registers 2

    .line 2169
    iput p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLockTimeout:I

    return-void
.end method

.method private greylist-max-r showNewMessageNotification()V
    .registers 6

    .line 1238
    invoke-static {}, Landroid/os/storage/StorageManager;->isFileEncrypted()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1241
    :cond_7
    const-string v0, "Show new message notification."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 1242
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    sget-object v2, Lcom/android/internal/telephony/InboundSmsHandler;->ACTION_OPEN_SMS_APP:Ljava/lang/String;

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v2, 0x44000000    # 512.0f

    const/4 v3, 0x0

    invoke-static {v0, v3, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 1247
    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    const v2, 0x108008e

    .line 1248
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v2, 0x1

    .line 1249
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1250
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setVisibility(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const/4 v3, -0x1

    .line 1251
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const v4, 0x10406a7

    .line 1252
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const v4, 0x10406a6

    .line 1253
    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 1254
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    const-string v1, "sms"

    .line 1255
    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setChannelId(Ljava/lang/String;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 1256
    iget-object v1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    const-string v3, "notification"

    .line 1257
    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/NotificationManager;

    .line 1259
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {p0}, Landroid/os/UserManager;->getMainUser()Landroid/os/UserHandle;

    move-result-object p0

    .line 1260
    const-string v3, "InboundSmsHandler"

    if-eqz p0, :cond_78

    .line 1262
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    .line 1261
    invoke-virtual {v1, v3, v2, v0, p0}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    return-void

    .line 1265
    :cond_78
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object p0

    .line 1264
    invoke-virtual {v1, v3, v2, p0}, Landroid/app/NotificationManager;->notify(Ljava/lang/String;ILandroid/app/Notification;)V

    return-void
.end method

.method private blacklist toDigit(C)I
    .registers 2

    const/16 p0, 0x10

    .line 2228
    invoke-static {p1, p0}, Ljava/lang/Character;->digit(CI)I

    move-result p0

    const/4 p1, -0x1

    if-ne p0, p1, :cond_a

    const/4 p0, 0x0

    :cond_a
    return p0
.end method


# virtual methods
.method protected abstract greylist-max-r acknowledgeLastIncomingSms(ZILandroid/os/Message;)V
.end method

.method protected blacklist addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;Z)I
    .registers 4

    .line 918
    invoke-direct {p0, p1, p2}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTable(Lcom/android/internal/telephony/InboundSmsTracker;Z)I

    move-result p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_c

    const/4 p0, 0x5

    if-eq p2, p0, :cond_b

    return p2

    :cond_b
    return v0

    :cond_c
    const/4 p2, 0x2

    .line 921
    invoke-virtual {p0, p2, p1}, Lcom/android/internal/telephony/StateMachine;->sendMessage(ILjava/lang/Object;)V

    return v0
.end method

.method protected blacklist decodeHexString(Ljava/lang/String;)[B
    .registers 6

    if-eqz p1, :cond_2c

    .line 2211
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    rem-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-ne v0, v1, :cond_c

    goto :goto_2c

    .line 2214
    :cond_c
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    new-array v0, v0, [B

    const/4 v1, 0x0

    .line 2215
    :goto_15
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2b

    .line 2216
    div-int/lit8 v2, v1, 0x2

    add-int/lit8 v3, v1, 0x2

    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->hexToByte(Ljava/lang/String;)B

    move-result v1

    aput-byte v1, v0, v2

    move v1, v3

    goto :goto_15

    :cond_2b
    return-object v0

    :cond_2c
    :goto_2c
    const/4 p0, 0x0

    return-object p0
.end method

.method public greylist-max-r dispatchIntent(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;Landroid/os/UserHandle;I)V
    .registers 22

    move-object/from16 v10, p5

    move-object/from16 v0, p6

    const/high16 v2, 0x8000000

    .line 1387
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1388
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    .line 1389
    const-string v3, "android.provider.Telephony.SMS_DELIVER"

    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    const-string v3, "android.provider.Telephony.SMS_RECEIVED"

    .line 1390
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    const-string v3, "android.provider.Telephony.WAP_PUSH_DELIVER"

    .line 1391
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2d

    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    .line 1392
    invoke-virtual {v3, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_32

    :cond_2d
    const/high16 v2, 0x10000000

    .line 1399
    invoke-virtual {p1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1401
    :cond_32
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    invoke-virtual {v2}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v2

    invoke-static {p1, v2}, Landroid/telephony/SubscriptionManager;->putPhoneIdAndSubIdExtra(Landroid/content/Intent;I)V

    .line 1405
    invoke-static/range {p7 .. p7}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v2

    if-eqz v2, :cond_46

    move/from16 v2, p7

    .line 1406
    invoke-static {p1, v2}, Landroid/telephony/SubscriptionManager;->putSubscriptionIdExtra(Landroid/content/Intent;I)V

    .line 1409
    :cond_46
    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v0, v2}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v11, 0x0

    if-eqz v2, :cond_12f

    .line 1412
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v2, v11}, Landroid/os/UserManager;->getUserHandles(Z)Ljava/util/List;

    move-result-object v2

    .line 1413
    iget-object v3, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v3}, Landroid/os/UserManager;->getMainUser()Landroid/os/UserHandle;

    move-result-object v3

    .line 1414
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1415
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_64
    :goto_64
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_a6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    .line 1416
    iget-object v6, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    invoke-virtual {v6, v5}, Landroid/os/UserManager;->isUserRunning(Landroid/os/UserHandle;)Z

    move-result v6

    if-eqz v6, :cond_7c

    .line 1417
    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_64

    .line 1420
    :cond_7c
    invoke-virtual {v5, v3}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_90

    .line 1421
    invoke-static {v10}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->-$$Nest$fgetmInboundSmsTracker(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v5

    .line 1422
    invoke-virtual {v5}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v5

    .line 1421
    const-string v7, "dispatchIntent: MAIN user is not running"

    invoke-virtual {p0, v7, v5, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->logeWithLocalLog(Ljava/lang/String;J)V

    goto :goto_64

    .line 1423
    :cond_90
    sget-object v6, Landroid/os/UserHandle;->SYSTEM:Landroid/os/UserHandle;

    invoke-virtual {v5, v6}, Landroid/os/UserHandle;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_64

    .line 1424
    invoke-static {v10}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->-$$Nest$fgetmInboundSmsTracker(Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v5

    .line 1425
    invoke-virtual {v5}, Lcom/android/internal/telephony/InboundSmsTracker;->getMessageId()J

    move-result-wide v5

    .line 1424
    const-string v7, "dispatchIntent: SYSTEM user is not running"

    invoke-virtual {p0, v7, v5, v6}, Lcom/android/internal/telephony/InboundSmsHandler;->logeWithLocalLog(Ljava/lang/String;J)V

    goto :goto_64

    .line 1429
    :cond_a6
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_b7

    .line 1430
    new-array v2, v3, [I

    invoke-virtual {v0}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v0

    aput v0, v2, v11

    :cond_b5
    move-object v12, v2

    goto :goto_d3

    .line 1432
    :cond_b7
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v0

    new-array v2, v0, [I

    move v0, v11

    .line 1433
    :goto_be
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_b5

    .line 1434
    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/UserHandle;

    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v5

    aput v5, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_be

    .line 1439
    :goto_d3
    array-length v0, v12

    sub-int/2addr v0, v3

    move v13, v0

    :goto_d6
    if-ltz v13, :cond_14e

    .line 1440
    aget v0, v12, v13

    invoke-static {v0}, Landroid/os/UserHandle;->of(I)Landroid/os/UserHandle;

    move-result-object v0

    .line 1441
    aget v2, v12, v13

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->isMainUser(I)Z

    move-result v2

    if-nez v2, :cond_fa

    .line 1443
    const-string v2, "no_sms"

    invoke-direct {p0, v2, v0}, Lcom/android/internal/telephony/InboundSmsHandler;->hasUserRestriction(Ljava/lang/String;Landroid/os/UserHandle;)Z

    move-result v2

    if-eqz v2, :cond_ef

    goto :goto_12c

    .line 1447
    :cond_ef
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mUserManager:Landroid/os/UserManager;

    aget v3, v12, v13

    invoke-virtual {v2, v3}, Landroid/os/UserManager;->isManagedProfile(I)Z

    move-result v2

    if-eqz v2, :cond_fa

    goto :goto_12c

    .line 1453
    :cond_fa
    :try_start_fa
    aget v2, v12, v13

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->isMainUser(I)Z

    move-result v2

    if-eqz v2, :cond_105

    .line 1454
    invoke-virtual {v10, p1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->setWaitingForIntent(Landroid/content/Intent;)V

    .line 1456
    :cond_105
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v11, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 1458
    aget v2, v12, v13

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/InboundSmsHandler;->isMainUser(I)Z

    move-result v2

    if-eqz v2, :cond_119

    move-object v5, v10

    goto :goto_11b

    :cond_119
    const/4 v2, 0x0

    move-object v5, v2

    .line 1459
    :goto_11b
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, -0x1

    move-object v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v9, p4

    .line 1457
    invoke-virtual/range {v0 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_12c
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_fa .. :try_end_12c} :catch_12c

    :catch_12c
    :goto_12c
    add-int/lit8 v13, v13, -0x1

    goto :goto_d6

    .line 1466
    :cond_12f
    :try_start_12f
    invoke-virtual {v10, p1}, Lcom/android/internal/telephony/InboundSmsHandler$SmsBroadcastReceiver;->setWaitingForIntent(Landroid/content/Intent;)V

    .line 1467
    iget-object v2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3, v11, v0}, Landroid/content/Context;->createPackageContextAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)Landroid/content/Context;

    move-result-object v0

    .line 1469
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getHandler()Landroid/os/Handler;

    move-result-object v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v2, -0x1

    move-object v1, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v9, p4

    move-object v5, v10

    .line 1468
    invoke-virtual/range {v0 .. v9}, Landroid/content/Context;->sendOrderedBroadcast(Landroid/content/Intent;ILjava/lang/String;Ljava/lang/String;Landroid/content/BroadcastReceiver;Landroid/os/Handler;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/Bundle;)V
    :try_end_14e
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_12f .. :try_end_14e} :catch_14e

    :catch_14e
    :cond_14e
    return-void
.end method

.method protected abstract blacklist dispatchMessageRadioSpecific(Lcom/android/internal/telephony/SmsMessageBase;II)I
.end method

.method protected greylist-max-r dispatchNormalMessage(Lcom/android/internal/telephony/SmsMessageBase;I)I
    .registers 27

    move-object/from16 v0, p0

    .line 863
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getUserDataHeader()Lcom/android/internal/telephony/SmsHeader;

    move-result-object v1

    .line 866
    const-class v2, Lcom/android/internal/telephony/InboundSmsTracker;

    const/4 v5, -0x1

    if-eqz v1, :cond_67

    iget-object v6, v1, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    if-nez v6, :cond_10

    goto :goto_67

    .line 884
    :cond_10
    iget-object v1, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v1, :cond_18

    .line 885
    iget v1, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    move v12, v1

    goto :goto_19

    :cond_18
    move v12, v5

    .line 886
    :goto_19
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v1

    .line 887
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v7

    iget-object v8, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 888
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v9

    .line 889
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v10

    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v13

    .line 890
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v15

    iget v1, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    iget v2, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    iget v6, v6, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 892
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v3

    sget-object v4, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-ne v3, v4, :cond_50

    const/16 v21, 0x1

    goto :goto_52

    :cond_50
    const/16 v21, 0x0

    :goto_52
    iget-object v3, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 893
    invoke-virtual {v3}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v22

    const/16 v19, 0x0

    move/from16 v23, p2

    move/from16 v16, v1

    move/from16 v17, v2

    move/from16 v18, v6

    .line 888
    invoke-virtual/range {v7 .. v23}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker(Landroid/content/Context;[BJIZLjava/lang/String;Ljava/lang/String;IIIZLjava/lang/String;ZII)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v1

    goto :goto_c6

    :cond_67
    :goto_67
    if-eqz v1, :cond_85

    .line 869
    iget-object v1, v1, Lcom/android/internal/telephony/SmsHeader;->portAddrs:Lcom/android/internal/telephony/SmsHeader$PortAddrs;

    if-eqz v1, :cond_85

    .line 871
    iget v1, v1, Lcom/android/internal/telephony/SmsHeader$PortAddrs;->destPort:I

    .line 872
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "destination port: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    move v11, v1

    goto :goto_86

    :cond_85
    move v11, v5

    .line 874
    :goto_86
    invoke-static {}, Lcom/android/internal/telephony/TelephonyComponentFactory;->getInstance()Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v1

    .line 875
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/TelephonyComponentFactory;->inject(Ljava/lang/String;)Lcom/android/internal/telephony/TelephonyComponentFactory;

    move-result-object v6

    iget-object v7, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mContext:Landroid/content/Context;

    .line 876
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getPdu()[B

    move-result-object v8

    .line 877
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getTimestampMillis()J

    move-result-wide v9

    invoke-virtual {v0}, Lcom/android/internal/telephony/InboundSmsHandler;->is3gpp2()Z

    move-result v12

    .line 878
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getOriginatingAddress()Ljava/lang/String;

    move-result-object v14

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getDisplayOriginatingAddress()Ljava/lang/String;

    move-result-object v15

    .line 879
    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageBody()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p1 .. p1}, Lcom/android/internal/telephony/SmsMessageBase;->getMessageClass()Lcom/android/internal/telephony/SmsConstants$MessageClass;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/SmsConstants$MessageClass;->CLASS_0:Lcom/android/internal/telephony/SmsConstants$MessageClass;

    if-ne v1, v2, :cond_b7

    const/16 v17, 0x1

    goto :goto_b9

    :cond_b7
    const/16 v17, 0x0

    :goto_b9
    iget-object v1, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    .line 880
    invoke-virtual {v1}, Lcom/android/internal/telephony/Phone;->getSubId()I

    move-result v18

    const/4 v13, 0x0

    move/from16 v19, p2

    .line 876
    invoke-virtual/range {v6 .. v19}, Lcom/android/internal/telephony/TelephonyComponentFactory;->makeInboundSmsTracker(Landroid/content/Context;[BJIZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZII)Lcom/android/internal/telephony/InboundSmsTracker;

    move-result-object v1

    .line 901
    :goto_c6
    invoke-virtual {v1}, Lcom/android/internal/telephony/InboundSmsTracker;->getDestPort()I

    move-result v2

    if-ne v2, v5, :cond_ce

    const/4 v3, 0x1

    goto :goto_cf

    :cond_ce
    const/4 v3, 0x0

    .line 900
    :goto_cf
    invoke-virtual {v0, v1, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->addTrackerToRawTableAndSendMessage(Lcom/android/internal/telephony/InboundSmsTracker;Z)I

    move-result v0

    return v0
.end method

.method public blacklist dispose()V
    .registers 1

    .line 340
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->quit()V

    return-void
.end method

.method public blacklist dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 6

    .line 2132
    new-instance v0, Lcom/android/internal/telephony/IndentingPrintWriter;

    const-string v1, "  "

    invoke-direct {v0, p2, v1}, Lcom/android/internal/telephony/IndentingPrintWriter;-><init>(Ljava/io/Writer;Ljava/lang/String;)V

    .line 2133
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " extends StateMachine:"

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2134
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 2135
    invoke-super {p0, p1, v0, p3}, Lcom/android/internal/telephony/StateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2136
    iget-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastServiceManager:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    if-eqz p2, :cond_2c

    .line 2137
    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2139
    :cond_2c
    const-string p2, "mLocalLog:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2140
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 2141
    iget-object p2, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p2, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2142
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 2143
    const-string p2, "mCarrierServiceLocalLog:"

    invoke-virtual {v0, p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2144
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->increaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 2145
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCarrierServiceLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1, v0, p3}, Lcom/android/internal/telephony/LocalLog;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 2146
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    .line 2147
    invoke-virtual {v0}, Lcom/android/internal/telephony/IndentingPrintWriter;->decreaseIndent()Lcom/android/internal/telephony/IndentingPrintWriter;

    return-void
.end method

.method public greylist-max-r getPhone()Lcom/android/internal/telephony/Phone;
    .registers 1

    .line 359
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/Phone;

    return-object p0
.end method

.method public blacklist getWakeLock()Landroid/os/PowerManager$WakeLock;
    .registers 1

    .line 2157
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p0
.end method

.method public blacklist getWakeLockTimeout()I
    .registers 1

    .line 2162
    iget p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLockTimeout:I

    return p0
.end method

.method protected blacklist getWhatToString(I)Ljava/lang/String;
    .registers 3

    packed-switch p1, :pswitch_data_30

    .line 394
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "UNKNOWN EVENT "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 391
    :pswitch_15
    const-string p0, "EVENT_RECEIVER_TIMEOUT"

    return-object p0

    .line 388
    :pswitch_18
    const-string p0, "EVENT_UPDATE_TRACKER"

    return-object p0

    .line 385
    :pswitch_1b
    const-string p0, "EVENT_INJECT_SMS"

    return-object p0

    .line 382
    :pswitch_1e
    const-string p0, "EVENT_START_ACCEPTING_SMS"

    return-object p0

    .line 379
    :pswitch_21
    const-string p0, "EVENT_RELEASE_WAKELOCK"

    return-object p0

    .line 376
    :pswitch_24
    const-string p0, "EVENT_RETURN_TO_IDLE"

    return-object p0

    .line 373
    :pswitch_27
    const-string p0, "EVENT_BROADCAST_COMPLETE"

    return-object p0

    .line 370
    :pswitch_2a
    const-string p0, "EVENT_BROADCAST_SMS"

    return-object p0

    .line 367
    :pswitch_2d
    const-string p0, "EVENT_NEW_SMS"

    return-object p0

    :pswitch_data_30
    .packed-switch 0x1
        :pswitch_2d
        :pswitch_2a
        :pswitch_27
        :pswitch_24
        :pswitch_21
        :pswitch_1e
        :pswitch_1b
        :pswitch_18
        :pswitch_15
    .end packed-switch
.end method

.method protected abstract blacklist is3gpp2()Z
.end method

.method protected greylist-max-r log(Ljava/lang/String;)V
    .registers 2

    .line 2068
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist log(Ljava/lang/String;J)V
    .registers 5

    .line 2077
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist logWithLocalLog(Ljava/lang/String;)V
    .registers 2

    .line 2028
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;)V

    .line 2029
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist logWithLocalLog(Ljava/lang/String;J)V
    .registers 5

    .line 2038
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->log(Ljava/lang/String;J)V

    .line 2039
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected greylist-max-r loge(Ljava/lang/String;)V
    .registers 2

    .line 2087
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;J)V
    .registers 5

    .line 2096
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist loge(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    .line 2106
    invoke-virtual {p0}, Lcom/android/internal/telephony/StateMachine;->getName()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1, p2}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    return-void
.end method

.method protected blacklist logeWithLocalLog(Ljava/lang/String;)V
    .registers 2

    .line 2047
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;)V

    .line 2048
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist logeWithLocalLog(Ljava/lang/String;J)V
    .registers 5

    .line 2057
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/InboundSmsHandler;->loge(Ljava/lang/String;J)V

    .line 2058
    iget-object p0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mLocalLog:Lcom/android/internal/telephony/LocalLog;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p2, p3}, Lcom/android/internal/telephony/SmsController;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/LocalLog;->log(Ljava/lang/String;)V

    return-void
.end method

.method protected blacklist onQuitting()V
    .registers 2

    .line 348
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWapPush:Lcom/android/internal/telephony/WapPushOverSms;

    invoke-virtual {v0}, Lcom/android/internal/telephony/WapPushOverSms;->dispose()V

    .line 349
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mCellBroadcastServiceManager:Lcom/android/internal/telephony/CellBroadcastServiceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/CellBroadcastServiceManager;->disable()V

    .line 351
    :goto_a
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_18

    .line 352
    iget-object v0, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    goto :goto_a

    :cond_18
    return-void
.end method

.method public blacklist setSmsFiltersForTesting(Ljava/util/List;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/InboundSmsHandler$SmsFilter;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_9

    .line 2180
    invoke-direct {p0}, Lcom/android/internal/telephony/InboundSmsHandler;->createDefaultSmsFilters()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsFilters:Ljava/util/List;

    return-void

    .line 2182
    :cond_9
    iput-object p1, p0, Lcom/android/internal/telephony/InboundSmsHandler;->mSmsFilters:Ljava/util/List;

    return-void
.end method
