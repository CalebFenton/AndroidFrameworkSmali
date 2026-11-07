.class public Landroid/telecom/TelecomManager;
.super Ljava/lang/Object;
.source "TelecomManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telecom/TelecomManager$DeathRecipient;,
        Landroid/telecom/TelecomManager$Presentation;,
        Landroid/telecom/TelecomManager$TtyMode;
    }
.end annotation


# static fields
.field public static final whitelist ACTION_CHANGE_DEFAULT_DIALER:Ljava/lang/String; = "android.telecom.action.CHANGE_DEFAULT_DIALER"

.field public static final whitelist ACTION_CHANGE_PHONE_ACCOUNTS:Ljava/lang/String; = "android.telecom.action.CHANGE_PHONE_ACCOUNTS"

.field public static final whitelist ACTION_CONFIGURE_PHONE_ACCOUNT:Ljava/lang/String; = "android.telecom.action.CONFIGURE_PHONE_ACCOUNT"

.field public static final whitelist ACTION_CURRENT_TTY_MODE_CHANGED:Ljava/lang/String; = "android.telecom.action.CURRENT_TTY_MODE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist ACTION_DEFAULT_CALL_SCREENING_APP_CHANGED:Ljava/lang/String; = "android.telecom.action.DEFAULT_CALL_SCREENING_APP_CHANGED"

.field public static final whitelist ACTION_DEFAULT_DIALER_CHANGED:Ljava/lang/String; = "android.telecom.action.DEFAULT_DIALER_CHANGED"

.field public static final whitelist ACTION_INCOMING_CALL:Ljava/lang/String; = "android.telecom.action.INCOMING_CALL"

.field public static final greylist-max-o ACTION_NEW_UNKNOWN_CALL:Ljava/lang/String; = "android.telecom.action.NEW_UNKNOWN_CALL"

.field public static final whitelist ACTION_PHONE_ACCOUNT_REGISTERED:Ljava/lang/String; = "android.telecom.action.PHONE_ACCOUNT_REGISTERED"

.field public static final whitelist ACTION_PHONE_ACCOUNT_UNREGISTERED:Ljava/lang/String; = "android.telecom.action.PHONE_ACCOUNT_UNREGISTERED"

.field public static final whitelist ACTION_POST_CALL:Ljava/lang/String; = "android.telecom.action.POST_CALL"

.field public static final whitelist ACTION_SHOW_CALL_ACCESSIBILITY_SETTINGS:Ljava/lang/String; = "android.telecom.action.SHOW_CALL_ACCESSIBILITY_SETTINGS"

.field public static final whitelist ACTION_SHOW_CALL_SETTINGS:Ljava/lang/String; = "android.telecom.action.SHOW_CALL_SETTINGS"

.field public static final whitelist ACTION_SHOW_MISSED_CALLS_NOTIFICATION:Ljava/lang/String; = "android.telecom.action.SHOW_MISSED_CALLS_NOTIFICATION"

.field public static final whitelist ACTION_SHOW_RESPOND_VIA_SMS_SETTINGS:Ljava/lang/String; = "android.telecom.action.SHOW_RESPOND_VIA_SMS_SETTINGS"

.field public static final blacklist ACTION_SHOW_SWITCH_TO_WORK_PROFILE_FOR_CALL_DIALOG:Ljava/lang/String; = "android.telecom.action.SHOW_SWITCH_TO_WORK_PROFILE_FOR_CALL_DIALOG"

.field public static final whitelist ACTION_TTY_PREFERRED_MODE_CHANGED:Ljava/lang/String; = "android.telecom.action.TTY_PREFERRED_MODE_CHANGED"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist AUDIO_OUTPUT_DEFAULT:I = 0x0

.field public static final blacklist AUDIO_OUTPUT_DISABLE_SPEAKER:I = 0x1

.field public static final blacklist AUDIO_OUTPUT_ENABLE_SPEAKER:I = 0x0

.field private static final blacklist CACHE_LOCK:Ljava/lang/Object;

.field public static final blacklist CALL_AUTO_DISCONNECT_MESSAGE_STRING:Ljava/lang/String; = "Call dropped by lower layers"

.field public static final whitelist CALL_SOURCE_EMERGENCY_DIALPAD:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CALL_SOURCE_EMERGENCY_SHORTCUT:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist CALL_SOURCE_UNSPECIFIED:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist DTMF_CHARACTER_PAUSE:C = ','

.field public static final whitelist DTMF_CHARACTER_WAIT:C = ';'

.field public static final whitelist DURATION_LONG:I = 0x3

.field public static final whitelist DURATION_MEDIUM:I = 0x2

.field public static final whitelist DURATION_SHORT:I = 0x1

.field public static final whitelist DURATION_VERY_SHORT:I = 0x0

.field public static final greylist-max-o EMERGENCY_DIALER_COMPONENT:Landroid/content/ComponentName;

.field public static final blacklist ENABLE_GET_CALL_STATE_PERMISSION_PROTECTION:J = 0x95f3323L

.field public static final blacklist ENABLE_GET_PHONE_ACCOUNT_PERMISSION_PROTECTION:J = 0xaee9554L

.field public static final blacklist EXTRA_CALL_ANSWERED_TIME_MILLIS:Ljava/lang/String; = "android.telecom.extra.CALL_ANSWERED_TIME_MILLIS"

.field public static final greylist-max-o EXTRA_CALL_AUDIO_STATE:Ljava/lang/String; = "android.telecom.extra.CALL_AUDIO_STATE"

.field public static final whitelist EXTRA_CALL_BACK_INTENT:Ljava/lang/String; = "android.telecom.extra.CALL_BACK_INTENT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_CALL_BACK_NUMBER:Ljava/lang/String; = "android.telecom.extra.CALL_BACK_NUMBER"

.field public static final blacklist EXTRA_CALL_CREATED_EPOCH_TIME_MILLIS:Ljava/lang/String; = "android.telecom.extra.CALL_CREATED_EPOCH_TIME_MILLIS"

.field public static final greylist-max-o EXTRA_CALL_CREATED_TIME_MILLIS:Ljava/lang/String; = "android.telecom.extra.CALL_CREATED_TIME_MILLIS"

.field public static final whitelist EXTRA_CALL_DISCONNECT_CAUSE:Ljava/lang/String; = "android.telecom.extra.CALL_DISCONNECT_CAUSE"

.field public static final whitelist EXTRA_CALL_DISCONNECT_MESSAGE:Ljava/lang/String; = "android.telecom.extra.CALL_DISCONNECT_MESSAGE"

.field public static final whitelist EXTRA_CALL_DURATION:Ljava/lang/String; = "android.telecom.extra.CALL_DURATION"

.field public static final whitelist EXTRA_CALL_HAS_IN_BAND_RINGTONE:Ljava/lang/String; = "android.telecom.extra.CALL_HAS_IN_BAND_RINGTONE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_CALL_LOG_URI:Ljava/lang/String; = "android.telecom.extra.CALL_LOG_URI"

.field public static final whitelist EXTRA_CALL_NETWORK_TYPE:Ljava/lang/String; = "android.telecom.extra.CALL_NETWORK_TYPE"

.field public static final whitelist EXTRA_CALL_SOURCE:Ljava/lang/String; = "android.telecom.extra.CALL_SOURCE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_CALL_SUBJECT:Ljava/lang/String; = "android.telecom.extra.CALL_SUBJECT"

.field public static final whitelist EXTRA_CALL_TECHNOLOGY_TYPE:Ljava/lang/String; = "android.telecom.extra.CALL_TECHNOLOGY_TYPE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final greylist-max-o EXTRA_CALL_TELECOM_ROUTING_END_TIME_MILLIS:Ljava/lang/String; = "android.telecom.extra.CALL_TELECOM_ROUTING_END_TIME_MILLIS"

.field public static final greylist-max-o EXTRA_CALL_TELECOM_ROUTING_START_TIME_MILLIS:Ljava/lang/String; = "android.telecom.extra.CALL_TELECOM_ROUTING_START_TIME_MILLIS"

.field public static final whitelist EXTRA_CHANGE_DEFAULT_DIALER_PACKAGE_NAME:Ljava/lang/String; = "android.telecom.extra.CHANGE_DEFAULT_DIALER_PACKAGE_NAME"

.field public static final whitelist EXTRA_CLEAR_MISSED_CALLS_INTENT:Ljava/lang/String; = "android.telecom.extra.CLEAR_MISSED_CALLS_INTENT"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EXTRA_CONNECTION_SERVICE:Ljava/lang/String; = "android.telecom.extra.CONNECTION_SERVICE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_CURRENT_TTY_MODE:Ljava/lang/String; = "android.telecom.extra.CURRENT_TTY_MODE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_DEFAULT_CALL_SCREENING_APP_COMPONENT_NAME:Ljava/lang/String; = "android.telecom.extra.DEFAULT_CALL_SCREENING_APP_COMPONENT_NAME"

.field public static final whitelist EXTRA_DISCONNECT_CAUSE:Ljava/lang/String; = "android.telecom.extra.DISCONNECT_CAUSE"

.field public static final blacklist EXTRA_DO_NOT_LOG_CALL:Ljava/lang/String; = "android.telecom.extra.DO_NOT_LOG_CALL"

.field public static final whitelist EXTRA_HANDLE:Ljava/lang/String; = "android.telecom.extra.HANDLE"

.field public static final greylist-max-o EXTRA_HANDOVER_FROM_PHONE_ACCOUNT:Ljava/lang/String; = "android.telecom.extra.HANDOVER_FROM_PHONE_ACCOUNT"

.field public static final whitelist EXTRA_HAS_PICTURE:Ljava/lang/String; = "android.telecom.extra.HAS_PICTURE"

.field public static final whitelist EXTRA_INCOMING_CALL_ADDRESS:Ljava/lang/String; = "android.telecom.extra.INCOMING_CALL_ADDRESS"

.field public static final whitelist EXTRA_INCOMING_CALL_EXTRAS:Ljava/lang/String; = "android.telecom.extra.INCOMING_CALL_EXTRAS"

.field public static final whitelist EXTRA_INCOMING_VIDEO_STATE:Ljava/lang/String; = "android.telecom.extra.INCOMING_VIDEO_STATE"

.field public static final whitelist EXTRA_IS_DEFAULT_CALL_SCREENING_APP:Ljava/lang/String; = "android.telecom.extra.IS_DEFAULT_CALL_SCREENING_APP"

.field public static final greylist-max-p EXTRA_IS_HANDOVER:Ljava/lang/String; = "android.telecom.extra.IS_HANDOVER"

.field public static final greylist-max-o EXTRA_IS_HANDOVER_CONNECTION:Ljava/lang/String; = "android.telecom.extra.IS_HANDOVER_CONNECTION"

.field public static final whitelist EXTRA_IS_USER_INTENT_EMERGENCY_CALL:Ljava/lang/String; = "android.telecom.extra.IS_USER_INTENT_EMERGENCY_CALL"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_LOCATION:Ljava/lang/String; = "android.telecom.extra.LOCATION"

.field public static final blacklist EXTRA_MANAGED_PROFILE_USER_ID:Ljava/lang/String; = "android.telecom.extra.MANAGED_PROFILE_USER_ID"

.field public static final greylist-max-o EXTRA_NEW_OUTGOING_CALL_CANCEL_TIMEOUT:Ljava/lang/String; = "android.telecom.extra.NEW_OUTGOING_CALL_CANCEL_TIMEOUT"

.field public static final whitelist EXTRA_NOTIFICATION_COUNT:Ljava/lang/String; = "android.telecom.extra.NOTIFICATION_COUNT"

.field public static final whitelist EXTRA_NOTIFICATION_PHONE_NUMBER:Ljava/lang/String; = "android.telecom.extra.NOTIFICATION_PHONE_NUMBER"

.field public static final whitelist EXTRA_OUTGOING_CALL_EXTRAS:Ljava/lang/String; = "android.telecom.extra.OUTGOING_CALL_EXTRAS"

.field public static final whitelist EXTRA_OUTGOING_PICTURE:Ljava/lang/String; = "android.telecom.extra.OUTGOING_PICTURE"

.field public static final whitelist EXTRA_PHONE_ACCOUNT_HANDLE:Ljava/lang/String; = "android.telecom.extra.PHONE_ACCOUNT_HANDLE"

.field public static final whitelist EXTRA_PICTURE_URI:Ljava/lang/String; = "android.telecom.extra.PICTURE_URI"

.field public static final whitelist EXTRA_PRIORITY:Ljava/lang/String; = "android.telecom.extra.PRIORITY"

.field public static final whitelist EXTRA_START_CALL_WITH_RTT:Ljava/lang/String; = "android.telecom.extra.START_CALL_WITH_RTT"

.field public static final whitelist EXTRA_START_CALL_WITH_SPEAKERPHONE:Ljava/lang/String; = "android.telecom.extra.START_CALL_WITH_SPEAKERPHONE"

.field public static final whitelist EXTRA_START_CALL_WITH_VIDEO_STATE:Ljava/lang/String; = "android.telecom.extra.START_CALL_WITH_VIDEO_STATE"

.field public static final whitelist EXTRA_TTY_PREFERRED_MODE:Ljava/lang/String; = "android.telecom.extra.TTY_PREFERRED_MODE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_UNKNOWN_CALL_HANDLE:Ljava/lang/String; = "android.telecom.extra.UNKNOWN_CALL_HANDLE"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EXTRA_USE_ASSISTED_DIALING:Ljava/lang/String; = "android.telecom.extra.USE_ASSISTED_DIALING"

.field public static final whitelist GATEWAY_ORIGINAL_ADDRESS:Ljava/lang/String; = "android.telecom.extra.GATEWAY_ORIGINAL_ADDRESS"

.field public static final whitelist GATEWAY_PROVIDER_PACKAGE:Ljava/lang/String; = "android.telecom.extra.GATEWAY_PROVIDER_PACKAGE"

.field public static final blacklist MEDIUM_CALL_TIME_MS:J = 0x1d4c0L

.field public static final whitelist METADATA_INCLUDE_EXTERNAL_CALLS:Ljava/lang/String; = "android.telecom.INCLUDE_EXTERNAL_CALLS"

.field public static final whitelist METADATA_INCLUDE_SELF_MANAGED_CALLS:Ljava/lang/String; = "android.telecom.INCLUDE_SELF_MANAGED_CALLS"

.field public static final whitelist METADATA_IN_CALL_SERVICE_CAR_MODE_UI:Ljava/lang/String; = "android.telecom.IN_CALL_SERVICE_CAR_MODE_UI"

.field public static final whitelist METADATA_IN_CALL_SERVICE_RINGING:Ljava/lang/String; = "android.telecom.IN_CALL_SERVICE_RINGING"

.field public static final whitelist METADATA_IN_CALL_SERVICE_UI:Ljava/lang/String; = "android.telecom.IN_CALL_SERVICE_UI"

.field public static final whitelist PRESENTATION_ALLOWED:I = 0x1

.field public static final whitelist PRESENTATION_PAYPHONE:I = 0x4

.field public static final whitelist PRESENTATION_RESTRICTED:I = 0x2

.field public static final whitelist PRESENTATION_UNAVAILABLE:I = 0x5

.field public static final whitelist PRESENTATION_UNKNOWN:I = 0x3

.field public static final whitelist PRIORITY_NORMAL:I = 0x0

.field public static final whitelist PRIORITY_URGENT:I = 0x1

.field public static final blacklist PROPERTY_VIDEOCALL_AUDIO_OUTPUT:Ljava/lang/String; = "persist.radio.call.audio.output"

.field private static final blacklist SERVICE_DEATH:Landroid/telecom/TelecomManager$DeathRecipient;

.field public static final blacklist SHORT_CALL_TIME_MS:J = 0xea60L

.field private static final greylist-max-o TAG:Ljava/lang/String; = "TelecomManager"

.field public static final blacklist TELECOM_TRANSACTION_SUCCESS:I = 0x0

.field public static final blacklist TRANSACTION_CALL_ID_KEY:Ljava/lang/String; = "TelecomCallId"

.field public static final whitelist TTY_MODE_FULL:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TTY_MODE_HCO:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TTY_MODE_OFF:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist TTY_MODE_VCO:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist VERY_SHORT_CALL_TIME_MS:J = 0xbb8L

.field private static blacklist sTelecomService:Lcom/android/internal/telecom/ITelecomService;


# instance fields
.field private final greylist-max-o mContext:Landroid/content/Context;

.field private final greylist-max-o mTelecomServiceOverride:Lcom/android/internal/telecom/ITelecomService;

.field private final blacklist mTransactionalServiceRepository:Lcom/android/internal/telecom/ClientTransactionalServiceRepository;


# direct methods
.method static bridge synthetic blacklist -$$Nest$smresetServiceCache()V
    .registers 0

    invoke-static {}, Landroid/telecom/TelecomManager;->resetServiceCache()V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 946
    nop

    .line 947
    const-string v0, "com.android.phone"

    const-string v1, ".EmergencyDialer"

    invoke-static {v0, v1}, Landroid/content/ComponentName;->createRelative(Ljava/lang/String;Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    sput-object v0, Landroid/telecom/TelecomManager;->EMERGENCY_DIALER_COMPONENT:Landroid/content/ComponentName;

    .line 1106
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/telecom/TelecomManager;->CACHE_LOCK:Ljava/lang/Object;

    .line 1111
    new-instance v0, Landroid/telecom/TelecomManager$DeathRecipient;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/telecom/TelecomManager$DeathRecipient;-><init>(Landroid/telecom/TelecomManager-IA;)V

    sput-object v0, Landroid/telecom/TelecomManager;->SERVICE_DEATH:Landroid/telecom/TelecomManager$DeathRecipient;

    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 1137
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/telecom/TelecomManager;-><init>(Landroid/content/Context;Lcom/android/internal/telecom/ITelecomService;)V

    .line 1138
    return-void
.end method

.method public constructor greylist-max-o <init>(Landroid/content/Context;Lcom/android/internal/telecom/ITelecomService;)V
    .registers 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "telecomServiceImpl"    # Lcom/android/internal/telecom/ITelecomService;

    .line 1143
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1118
    new-instance v0, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;

    invoke-direct {v0}, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;-><init>()V

    iput-object v0, p0, Landroid/telecom/TelecomManager;->mTransactionalServiceRepository:Lcom/android/internal/telecom/ClientTransactionalServiceRepository;

    .line 1144
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 1145
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_21

    invoke-virtual {p1}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v1

    .line 1146
    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1145
    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_21

    .line 1147
    iput-object v0, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    goto :goto_23

    .line 1149
    :cond_21
    iput-object p1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1151
    :goto_23
    iput-object p2, p0, Landroid/telecom/TelecomManager;->mTelecomServiceOverride:Lcom/android/internal/telecom/ITelecomService;

    .line 1152
    return-void
.end method

.method public static greylist-max-p from(Landroid/content/Context;)Landroid/telecom/TelecomManager;
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .line 1130
    const-string/jumbo v0, "telecom"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telecom/TelecomManager;

    return-object v0
.end method

.method private greylist-max-o getTelecomService()Lcom/android/internal/telecom/ITelecomService;
    .registers 6

    .line 3003
    iget-object v0, p0, Landroid/telecom/TelecomManager;->mTelecomServiceOverride:Lcom/android/internal/telecom/ITelecomService;

    if-eqz v0, :cond_7

    .line 3004
    iget-object v0, p0, Landroid/telecom/TelecomManager;->mTelecomServiceOverride:Lcom/android/internal/telecom/ITelecomService;

    return-object v0

    .line 3006
    :cond_7
    sget-object v0, Landroid/telecom/TelecomManager;->sTelecomService:Lcom/android/internal/telecom/ITelecomService;

    if-nez v0, :cond_37

    .line 3007
    const-string/jumbo v0, "telecom"

    .line 3008
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 3007
    invoke-static {v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 3009
    .local v0, "temp":Lcom/android/internal/telecom/ITelecomService;
    sget-object v1, Landroid/telecom/TelecomManager;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v1

    .line 3010
    :try_start_19
    sget-object v2, Landroid/telecom/TelecomManager;->sTelecomService:Lcom/android/internal/telecom/ITelecomService;
    :try_end_1b
    .catchall {:try_start_19 .. :try_end_1b} :catchall_34

    if-nez v2, :cond_32

    if-eqz v0, :cond_32

    .line 3012
    :try_start_1f
    sput-object v0, Landroid/telecom/TelecomManager;->sTelecomService:Lcom/android/internal/telecom/ITelecomService;

    .line 3013
    sget-object v2, Landroid/telecom/TelecomManager;->sTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v2}, Lcom/android/internal/telecom/ITelecomService;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    sget-object v3, Landroid/telecom/TelecomManager;->SERVICE_DEATH:Landroid/telecom/TelecomManager$DeathRecipient;

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_1f .. :try_end_2d} :catch_2e
    .catchall {:try_start_1f .. :try_end_2d} :catchall_34

    .line 3016
    goto :goto_32

    .line 3014
    :catch_2e
    move-exception v2

    .line 3015
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x0

    :try_start_30
    sput-object v3, Landroid/telecom/TelecomManager;->sTelecomService:Lcom/android/internal/telecom/ITelecomService;

    .line 3018
    .end local v2    # "e":Ljava/lang/Exception;
    :cond_32
    :goto_32
    monitor-exit v1

    goto :goto_37

    :catchall_34
    move-exception v2

    monitor-exit v1
    :try_end_36
    .catchall {:try_start_30 .. :try_end_36} :catchall_34

    throw v2

    .line 3020
    .end local v0    # "temp":Lcom/android/internal/telecom/ITelecomService;
    :cond_37
    :goto_37
    sget-object v0, Landroid/telecom/TelecomManager;->sTelecomService:Lcom/android/internal/telecom/ITelecomService;

    return-object v0
.end method

.method private blacklist isSystemProcess()Z
    .registers 3

    .line 2999
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    const/16 v1, 0x3e8

    if-ne v0, v1, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method private static blacklist resetServiceCache()V
    .registers 4

    .line 3031
    sget-object v0, Landroid/telecom/TelecomManager;->CACHE_LOCK:Ljava/lang/Object;

    monitor-enter v0

    .line 3032
    :try_start_3
    sget-object v1, Landroid/telecom/TelecomManager;->sTelecomService:Lcom/android/internal/telecom/ITelecomService;

    if-eqz v1, :cond_16

    .line 3033
    sget-object v1, Landroid/telecom/TelecomManager;->sTelecomService:Lcom/android/internal/telecom/ITelecomService;

    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    sget-object v2, Landroid/telecom/TelecomManager;->SERVICE_DEATH:Landroid/telecom/TelecomManager$DeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 3034
    const/4 v1, 0x0

    sput-object v1, Landroid/telecom/TelecomManager;->sTelecomService:Lcom/android/internal/telecom/ITelecomService;

    .line 3036
    :cond_16
    monitor-exit v0

    .line 3037
    return-void

    .line 3036
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_3 .. :try_end_1a} :catchall_18

    throw v1
.end method


# virtual methods
.method public whitelist acceptHandover(Landroid/net/Uri;ILandroid/telecom/PhoneAccountHandle;)V
    .registers 8
    .param p1, "srcAddr"    # Landroid/net/Uri;
    .param p2, "videoState"    # I
    .param p3, "destAcct"    # Landroid/telecom/PhoneAccountHandle;

    .line 2804
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2805
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_29

    .line 2807
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, p2, p3, v1}, Lcom/android/internal/telecom/ITelecomService;->acceptHandover(Landroid/net/Uri;ILandroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 2810
    goto :goto_29

    .line 2808
    :catch_10
    move-exception v1

    .line 2809
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException acceptHandover: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelecomManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2812
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_29
    :goto_29
    return-void
.end method

.method public whitelist acceptRingingCall()V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2130
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2131
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_18

    .line 2133
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->acceptRingingCall(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 2136
    goto :goto_18

    .line 2134
    :catch_10
    move-exception v1

    .line 2135
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#acceptRingingCall"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2138
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return-void
.end method

.method public whitelist acceptRingingCall(I)V
    .registers 6
    .param p1, "videoState"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2152
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2153
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_18

    .line 2155
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2156
    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2155
    invoke-interface {v0, v1, p1}, Lcom/android/internal/telecom/ITelecomService;->acceptRingingCallWithVideoState(Ljava/lang/String;I)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 2159
    goto :goto_18

    .line 2157
    :catch_10
    move-exception v1

    .line 2158
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#acceptRingingCallWithVideoState"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2161
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return-void
.end method

.method public whitelist addCall(Landroid/telecom/CallAttributes;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/telecom/CallControlCallback;Landroid/telecom/CallEventCallback;)V
    .registers 14
    .param p1, "callAttributes"    # Landroid/telecom/CallAttributes;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p4, "handshakes"    # Landroid/telecom/CallControlCallback;
    .param p5, "events"    # Landroid/telecom/CallEventCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/telecom/CallAttributes;",
            "Ljava/util/concurrent/Executor;",
            "Landroid/os/OutcomeReceiver<",
            "Landroid/telecom/CallControl;",
            "Landroid/telecom/CallException;",
            ">;",
            "Landroid/telecom/CallControlCallback;",
            "Landroid/telecom/CallEventCallback;",
            ")V"
        }
    .end annotation

    .line 2951
    .local p3, "pendingControl":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/telecom/CallControl;Landroid/telecom/CallException;>;"
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2952
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2953
    invoke-static {p3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2954
    invoke-static {p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2955
    invoke-static {p5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2957
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 2958
    .local v1, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_5e

    .line 2961
    :try_start_15
    iget-object v0, p0, Landroid/telecom/TelecomManager;->mTransactionalServiceRepository:Lcom/android/internal/telecom/ClientTransactionalServiceRepository;

    .line 2963
    invoke-virtual {p1}, Landroid/telecom/CallAttributes;->getPhoneAccountHandle()Landroid/telecom/PhoneAccountHandle;

    move-result-object v2

    .line 2962
    invoke-virtual {v0, v2}, Lcom/android/internal/telecom/ClientTransactionalServiceRepository;->addNewCallForTransactionalServiceWrapper(Landroid/telecom/PhoneAccountHandle;)Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;

    move-result-object v0
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_15 .. :try_end_1f} :catch_3a

    move-object v2, v0

    .line 2966
    .local v2, "transactionalServiceWrapper":Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;
    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .end local p1    # "callAttributes":Landroid/telecom/CallAttributes;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "pendingControl":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/telecom/CallControl;Landroid/telecom/CallException;>;"
    .end local p4    # "handshakes":Landroid/telecom/CallControlCallback;
    .end local p5    # "events":Landroid/telecom/CallEventCallback;
    .local v3, "callAttributes":Landroid/telecom/CallAttributes;
    .local v4, "executor":Ljava/util/concurrent/Executor;
    .local v5, "pendingControl":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/telecom/CallControl;Landroid/telecom/CallException;>;"
    .local v6, "handshakes":Landroid/telecom/CallControlCallback;
    .local v7, "events":Landroid/telecom/CallEventCallback;
    :try_start_25
    invoke-virtual/range {v2 .. v7}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->trackCall(Landroid/telecom/CallAttributes;Ljava/util/concurrent/Executor;Landroid/os/OutcomeReceiver;Landroid/telecom/CallControlCallback;Landroid/telecom/CallEventCallback;)Ljava/lang/String;

    move-result-object p1

    .line 2970
    .local p1, "newCallId":Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;->getCallEventCallback()Lcom/android/internal/telecom/ICallEventCallback;

    move-result-object p2

    iget-object p3, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2971
    invoke-virtual {p3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object p3

    .line 2970
    invoke-interface {v1, v3, p2, p1, p3}, Lcom/android/internal/telecom/ITelecomService;->addCall(Landroid/telecom/CallAttributes;Lcom/android/internal/telecom/ICallEventCallback;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_36
    .catch Landroid/os/RemoteException; {:try_start_25 .. :try_end_36} :catch_37

    .end local v2    # "transactionalServiceWrapper":Lcom/android/internal/telecom/ClientTransactionalServiceWrapper;
    .end local p1    # "newCallId":Ljava/lang/String;
    goto :goto_5c

    .line 2972
    :catch_37
    move-exception v0

    move-object p1, v0

    goto :goto_41

    .end local v3    # "callAttributes":Landroid/telecom/CallAttributes;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    .end local v5    # "pendingControl":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/telecom/CallControl;Landroid/telecom/CallException;>;"
    .end local v6    # "handshakes":Landroid/telecom/CallControlCallback;
    .end local v7    # "events":Landroid/telecom/CallEventCallback;
    .local p1, "callAttributes":Landroid/telecom/CallAttributes;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "pendingControl":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/telecom/CallControl;Landroid/telecom/CallException;>;"
    .restart local p4    # "handshakes":Landroid/telecom/CallControlCallback;
    .restart local p5    # "events":Landroid/telecom/CallEventCallback;
    :catch_3a
    move-exception v0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object p1, v0

    .line 2973
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .end local p3    # "pendingControl":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/telecom/CallControl;Landroid/telecom/CallException;>;"
    .end local p4    # "handshakes":Landroid/telecom/CallControlCallback;
    .end local p5    # "events":Landroid/telecom/CallEventCallback;
    .restart local v3    # "callAttributes":Landroid/telecom/CallAttributes;
    .restart local v4    # "executor":Ljava/util/concurrent/Executor;
    .restart local v5    # "pendingControl":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/telecom/CallControl;Landroid/telecom/CallException;>;"
    .restart local v6    # "handshakes":Landroid/telecom/CallControlCallback;
    .restart local v7    # "events":Landroid/telecom/CallEventCallback;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_41
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "RemoteException addCall: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "TelecomManager"

    invoke-static {p3, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    invoke-virtual {p1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2975
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_5c
    nop

    .line 2979
    return-void

    .line 2977
    .end local v3    # "callAttributes":Landroid/telecom/CallAttributes;
    .end local v4    # "executor":Ljava/util/concurrent/Executor;
    .end local v5    # "pendingControl":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/telecom/CallControl;Landroid/telecom/CallException;>;"
    .end local v6    # "handshakes":Landroid/telecom/CallControlCallback;
    .end local v7    # "events":Landroid/telecom/CallEventCallback;
    .local p1, "callAttributes":Landroid/telecom/CallAttributes;
    .restart local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local p3    # "pendingControl":Landroid/os/OutcomeReceiver;, "Landroid/os/OutcomeReceiver<Landroid/telecom/CallControl;Landroid/telecom/CallException;>;"
    .restart local p4    # "handshakes":Landroid/telecom/CallControlCallback;
    .restart local p5    # "events":Landroid/telecom/CallEventCallback;
    :cond_5e
    move-object v3, p1

    move-object v4, p2

    .end local p1    # "callAttributes":Landroid/telecom/CallAttributes;
    .end local p2    # "executor":Ljava/util/concurrent/Executor;
    .restart local v3    # "callAttributes":Landroid/telecom/CallAttributes;
    .restart local v4    # "executor":Ljava/util/concurrent/Executor;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Telecom service is not present"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 2280
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2281
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_55

    .line 2283
    if-eqz p2, :cond_2a

    :try_start_8
    const-string v1, "android.telecom.extra.IS_HANDOVER"

    invoke-virtual {p2, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2a

    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2284
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    const/16 v2, 0x1b

    if-le v1, v2, :cond_2a

    .line 2286
    const-string v1, "TAG"

    const-string v2, "addNewIncomingCall failed. Use public api acceptHandover for API > O-MR1"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2288
    return-void

    .line 2292
    :catch_28
    move-exception v1

    goto :goto_3d

    .line 2290
    :cond_2a
    if-nez p2, :cond_32

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_33

    :cond_32
    move-object v1, p2

    :goto_33
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2291
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2290
    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->addNewIncomingCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_3c} :catch_28

    .line 2294
    goto :goto_55

    .line 2293
    .local v1, "e":Landroid/os/RemoteException;
    :goto_3d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException adding a new incoming call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelecomManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2296
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_55
    :goto_55
    return-void
.end method

.method public whitelist addNewIncomingConference(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 2329
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2330
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_34

    .line 2332
    nop

    .line 2333
    if-nez p2, :cond_11

    :try_start_9
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_12

    .line 2335
    :catch_f
    move-exception v1

    goto :goto_1c

    .line 2333
    :cond_11
    move-object v1, p2

    :goto_12
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2334
    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2332
    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->addNewIncomingConference(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_1b} :catch_f

    .line 2337
    goto :goto_34

    .line 2336
    .local v1, "e":Landroid/os/RemoteException;
    :goto_1c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException adding a new incoming conference: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelecomManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2339
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_34
    :goto_34
    return-void
.end method

.method public whitelist addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2354
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2355
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_2e

    .line 2357
    nop

    .line 2358
    if-nez p2, :cond_11

    :try_start_9
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    goto :goto_12

    .line 2359
    :catch_f
    move-exception v1

    goto :goto_16

    .line 2358
    :cond_11
    move-object v1, p2

    .line 2357
    :goto_12
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->addNewUnknownCall(Landroid/telecom/PhoneAccountHandle;Landroid/os/Bundle;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_f

    .line 2361
    goto :goto_2e

    .line 2360
    .local v1, "e":Landroid/os/RemoteException;
    :goto_16
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException adding a new unknown call: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelecomManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2363
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2e
    :goto_2e
    return-void
.end method

.method public whitelist cancelMissedCallsNotification()V
    .registers 5

    .line 2448
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2449
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_18

    .line 2451
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->cancelMissedCallsNotification(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 2454
    goto :goto_18

    .line 2452
    :catch_10
    move-exception v1

    .line 2453
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#cancelMissedCallsNotification"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2456
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return-void
.end method

.method public whitelist clearAccounts()V
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1708
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1709
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_18

    .line 1711
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->clearAccounts(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 1714
    goto :goto_18

    .line 1712
    :catch_10
    move-exception v1

    .line 1713
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#clearAccounts"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1716
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return-void
.end method

.method public greylist-max-o clearAccountsForPackage(Ljava/lang/String;)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;

    .line 1723
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1724
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_18

    .line 1726
    :try_start_6
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 1727
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/ITelecomService;->clearAccounts(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 1731
    :cond_f
    goto :goto_18

    .line 1729
    :catch_10
    move-exception v1

    .line 1730
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#clearAccountsForPackage"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1733
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return-void
.end method

.method public whitelist clearPhoneAccounts()V
    .registers 1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1698
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->clearAccounts()V

    .line 1699
    return-void
.end method

.method public whitelist createLaunchEmergencyDialerIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 7
    .param p1, "number"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2664
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2665
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    const-string v1, "TelecomManager"

    if-eqz v0, :cond_21

    .line 2667
    :try_start_8
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/ITelecomService;->createLaunchEmergencyDialerIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 2668
    .local v2, "result":Landroid/content/Intent;
    if-eqz v2, :cond_19

    .line 2669
    iget-object v3, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2670
    invoke-virtual {v3}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v3

    .line 2669
    const/16 v4, 0x20

    invoke-virtual {v2, v4, v3}, Landroid/content/Intent;->prepareToEnterProcess(ILandroid/content/AttributionSource;)V
    :try_end_19
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_19} :catch_1a

    .line 2672
    :cond_19
    return-object v2

    .line 2673
    .end local v2    # "result":Landroid/content/Intent;
    :catch_1a
    move-exception v2

    .line 2674
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "Error createLaunchEmergencyDialerIntent"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2675
    .end local v2    # "e":Landroid/os/RemoteException;
    goto :goto_26

    .line 2677
    :cond_21
    const-string v2, "createLaunchEmergencyDialerIntent - Telecom service not available."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2682
    :goto_26
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.DIAL_EMERGENCY"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2683
    .local v1, "intent":Landroid/content/Intent;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_44

    invoke-static {p1}, Landroid/text/TextUtils;->isDigitsOnly(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_44

    .line 2684
    const-string/jumbo v2, "tel"

    const/4 v3, 0x0

    invoke-static {v2, p1, v3}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 2686
    :cond_44
    return-object v1
.end method

.method public whitelist createManageBlockedNumbersIntent()Landroid/content/Intent;
    .registers 6

    .line 2637
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2638
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    const/4 v1, 0x0

    .line 2639
    .local v1, "result":Landroid/content/Intent;
    if-eqz v0, :cond_28

    .line 2641
    :try_start_7
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2}, Lcom/android/internal/telecom/ITelecomService;->createManageBlockedNumbersIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    move-object v1, v2

    .line 2642
    if-eqz v1, :cond_1f

    .line 2643
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2644
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionSource()Landroid/content/AttributionSource;

    move-result-object v2

    .line 2643
    const/16 v3, 0x20

    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->prepareToEnterProcess(ILandroid/content/AttributionSource;)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_1f} :catch_20

    .line 2648
    :cond_1f
    goto :goto_28

    .line 2646
    :catch_20
    move-exception v2

    .line 2647
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TelecomManager"

    const-string v4, "Error calling ITelecomService#createManageBlockedNumbersIntent"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2650
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_28
    :goto_28
    return-object v1
.end method

.method public whitelist dumpAnalytics()Landroid/telecom/TelecomAnalytics;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2617
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2618
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    const/4 v1, 0x0

    .line 2619
    .local v1, "result":Landroid/telecom/TelecomAnalytics;
    if-eqz v0, :cond_15

    .line 2621
    :try_start_7
    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->dumpCallAnalytics()Landroid/telecom/TelecomAnalytics;

    move-result-object v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_d

    move-object v1, v2

    .line 2624
    goto :goto_15

    .line 2622
    :catch_d
    move-exception v2

    .line 2623
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TelecomManager"

    const-string v4, "Error dumping call analytics"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2626
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_15
    :goto_15
    return-object v1
.end method

.method public whitelist enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)V
    .registers 7
    .param p1, "handle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "isEnabled"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2598
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2599
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_12

    .line 2601
    :try_start_6
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/ITelecomService;->enablePhoneAccount(Landroid/telecom/PhoneAccountHandle;Z)Z
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 2604
    goto :goto_12

    .line 2602
    :catch_a
    move-exception v1

    .line 2603
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error enablePhoneAbbount"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2606
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method

.method public whitelist endCall()Z
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2100
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2101
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_19

    .line 2103
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->endCall(Ljava/lang/String;)Z

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return v1

    .line 2104
    :catch_11
    move-exception v1

    .line 2105
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#endCall"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2108
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getAdnUriForPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/net/Uri;
    .registers 6
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 2428
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2429
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_1b

    if-eqz p1, :cond_1b

    .line 2431
    :try_start_8
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->getAdnUriForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_12} :catch_13

    return-object v1

    .line 2432
    :catch_13
    move-exception v1

    .line 2433
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#getAdnUriForPhoneAccount"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2436
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1b
    const-string v1, "content://icc/adn"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getAllPhoneAccountHandles()Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .line 1614
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1615
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_17

    .line 1617
    :try_start_6
    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->getAllPhoneAccountHandles()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v1

    .line 1618
    :catch_f
    move-exception v1

    .line 1619
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#getAllPhoneAccountHandles"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1622
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_17
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v1
.end method

.method public whitelist getAllPhoneAccounts()Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccount;",
            ">;"
        }
    .end annotation

    .line 1595
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1596
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_17

    .line 1598
    :try_start_6
    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->getAllPhoneAccounts()Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_e} :catch_f

    return-object v1

    .line 1599
    :catch_f
    move-exception v1

    .line 1600
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#getAllPhoneAccounts"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1603
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_17
    sget-object v1, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    return-object v1
.end method

.method public whitelist getAllPhoneAccountsCount()I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1576
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1577
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_13

    .line 1579
    :try_start_6
    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->getAllPhoneAccountsCount()I

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return v1

    .line 1580
    :catch_b
    move-exception v1

    .line 1581
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#getAllPhoneAccountsCount"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1584
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getCallCapablePhoneAccounts()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .line 1358
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccounts(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCallCapablePhoneAccounts(Z)Ljava/util/List;
    .registers 6
    .param p1, "includeDisabledAccounts"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .line 1479
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1480
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_3b

    .line 1482
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1483
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1482
    const/4 v3, 0x0

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/internal/telecom/ITelecomService;->getCallCapablePhoneAccounts(ZLjava/lang/String;Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1483
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1b} :catch_1c

    .line 1482
    return-object v1

    .line 1484
    :catch_1c
    move-exception v1

    .line 1485
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error calling ITelecomService#getCallCapablePhoneAccounts("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelecomManager"

    invoke-static {v3, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1489
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_3b
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public blacklist getCallCapablePhoneAccountsAcrossProfiles()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .line 1376
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/telecom/TelecomManager;->getCallCapablePhoneAccountsAcrossProfiles(Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getCallCapablePhoneAccountsAcrossProfiles(Z)Ljava/util/List;
    .registers 6
    .param p1, "includeDisabledAccounts"    # Z
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .line 1510
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1511
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_22

    .line 1516
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1517
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1516
    const/4 v3, 0x1

    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/internal/telecom/ITelecomService;->getCallCapablePhoneAccounts(ZLjava/lang/String;Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1517
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1b} :catch_1c

    .line 1516
    return-object v1

    .line 1518
    :catch_1c
    move-exception v1

    .line 1519
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1512
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_22
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string/jumbo v2, "telecom service is null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getCallState()I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2043
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2044
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_1f

    .line 2046
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2047
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 2046
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getCallStateUsingPackage(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return v1

    .line 2048
    :catch_17
    move-exception v1

    .line 2049
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException calling getCallState()."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2052
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1f
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getConnectionManager()Landroid/telecom/PhoneAccountHandle;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1313
    invoke-virtual {p0}, Landroid/telecom/TelecomManager;->getSimCallManager()Landroid/telecom/PhoneAccountHandle;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getCurrentTtyMode()I
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2226
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2227
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_1f

    .line 2229
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2230
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 2229
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getCurrentTtyMode(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return v1

    .line 2231
    :catch_17
    move-exception v1

    .line 2232
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException attempting to get the current TTY mode."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2235
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1f
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist getDefaultDialerPackage()Ljava/lang/String;
    .registers 5

    .line 1762
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1763
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_19

    .line 1765
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->getDefaultDialerPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return-object v1

    .line 1766
    :catch_11
    move-exception v1

    .line 1767
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException attempting to get the default dialer package name."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1770
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getDefaultDialerPackage(Landroid/os/UserHandle;)Ljava/lang/String;
    .registers 6
    .param p1, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1784
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1785
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_18

    .line 1787
    nop

    .line 1788
    :try_start_7
    invoke-virtual {p1}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v1

    .line 1787
    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->getDefaultDialerPackageForUser(I)Ljava/lang/String;

    move-result-object v1
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_f} :catch_10

    return-object v1

    .line 1789
    :catch_10
    move-exception v1

    .line 1790
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException attempting to get the default dialer package name."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1793
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_18
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getDefaultOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;
    .registers 6
    .param p1, "uriScheme"    # Ljava/lang/String;

    .line 1175
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1176
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_1f

    .line 1178
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1179
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1178
    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getDefaultOutgoingPhoneAccount(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return-object v1

    .line 1180
    :catch_17
    move-exception v1

    .line 1181
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#getDefaultOutgoingPhoneAccount"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1184
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1f
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getDefaultPhoneApp()Landroid/content/ComponentName;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1744
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1745
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_13

    .line 1747
    :try_start_6
    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->getDefaultPhoneApp()Landroid/content/ComponentName;

    move-result-object v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return-object v1

    .line 1748
    :catch_b
    move-exception v1

    .line 1749
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException attempting to get the default phone app."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1752
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getLine1Number(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .registers 6
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1941
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1942
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_1f

    .line 1944
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1945
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1944
    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getLine1Number(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return-object v1

    .line 1946
    :catch_17
    move-exception v1

    .line 1947
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException calling ITelecomService#getLine1Number."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1950
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1f
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getOwnSelfManagedPhoneAccounts()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .line 1425
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1426
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_21

    .line 1428
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1429
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1428
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getOwnSelfManagedPhoneAccounts(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1429
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1a} :catch_1b

    .line 1428
    return-object v1

    .line 1430
    :catch_1b
    move-exception v1

    .line 1431
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1434
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_21
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Telecom is not available"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getPhoneAccount(Landroid/telecom/PhoneAccountHandle;)Landroid/telecom/PhoneAccount;
    .registers 6
    .param p1, "account"    # Landroid/telecom/PhoneAccountHandle;

    .line 1557
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1558
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_19

    .line 1560
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->getPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Landroid/telecom/PhoneAccount;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return-object v1

    .line 1561
    :catch_11
    move-exception v1

    .line 1562
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#getPhoneAccount"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1565
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getPhoneAccountsForPackage()Ljava/util/List;
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1535
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1536
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_1d

    .line 1538
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->getPhoneAccountsForPackage(Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_15

    return-object v1

    .line 1539
    :catch_15
    move-exception v1

    .line 1540
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#getPhoneAccountsForPackage"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1543
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1d
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getPhoneAccountsSupportingScheme(Ljava/lang/String;)Ljava/util/List;
    .registers 6
    .param p1, "uriScheme"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .line 1335
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1336
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_1d

    .line 1338
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1339
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1338
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->getPhoneAccountsSupportingScheme(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1339
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_14} :catch_15

    .line 1338
    return-object v1

    .line 1340
    :catch_15
    move-exception v1

    .line 1341
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#getPhoneAccountsSupportingScheme"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1344
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1d
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public whitelist getRegisteredPhoneAccounts()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccount;",
            ">;"
        }
    .end annotation

    .line 1452
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1453
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_21

    .line 1455
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1456
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1457
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1455
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getRegisteredPhoneAccounts(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1457
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1a} :catch_1b

    .line 1455
    return-object v1

    .line 1458
    :catch_1b
    move-exception v1

    .line 1459
    .local v1, "e":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    move-result-object v2

    throw v2

    .line 1462
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_21
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Telecom is not available"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist getSelfManagedPhoneAccounts()Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telecom/PhoneAccountHandle;",
            ">;"
        }
    .end annotation

    .line 1397
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1398
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_23

    .line 1400
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1401
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1400
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getSelfManagedPhoneAccounts(Ljava/lang/String;Ljava/lang/String;)Landroid/content/pm/ParceledListSlice;

    move-result-object v1

    .line 1401
    invoke-virtual {v1}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v1
    :try_end_1a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_1a} :catch_1b

    .line 1400
    return-object v1

    .line 1402
    :catch_1b
    move-exception v1

    .line 1403
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#getSelfManagedPhoneAccounts()"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1406
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_23
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    return-object v1
.end method

.method public whitelist getSimCallManager()Landroid/telecom/PhoneAccountHandle;
    .registers 5

    .line 1245
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1246
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_1e

    .line 1248
    nop

    .line 1249
    :try_start_7
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubscriptionId()I

    move-result v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1248
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getSimCallManager(ILjava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_15} :catch_16

    return-object v1

    .line 1250
    :catch_16
    move-exception v1

    .line 1251
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#getSimCallManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1254
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1e
    const/4 v1, 0x0

    return-object v1
.end method

.method public greylist-max-p getSimCallManager(I)Landroid/telecom/PhoneAccountHandle;
    .registers 6
    .param p1, "userId"    # I

    .line 1292
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1293
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_19

    .line 1295
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->getSimCallManagerForUser(ILjava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return-object v1

    .line 1296
    :catch_11
    move-exception v1

    .line 1297
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#getSimCallManagerForUser"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getSimCallManagerForSubscription(I)Landroid/telecom/PhoneAccountHandle;
    .registers 6
    .param p1, "subscriptionId"    # I

    .line 1268
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1269
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_19

    .line 1271
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->getSimCallManager(ILjava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return-object v1

    .line 1272
    :catch_11
    move-exception v1

    .line 1273
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#getSimCallManager"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1276
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getSystemDialerPackage()Ljava/lang/String;
    .registers 5

    .line 1836
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1837
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_19

    .line 1839
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->getSystemDialerPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return-object v1

    .line 1840
    :catch_11
    move-exception v1

    .line 1841
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException attempting to get the system dialer package name."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1844
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getUserSelectedOutgoingPhoneAccount()Landroid/telecom/PhoneAccountHandle;
    .registers 5

    .line 1202
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1203
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_19

    .line 1205
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1206
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1205
    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->getUserSelectedOutgoingPhoneAccount(Ljava/lang/String;)Landroid/telecom/PhoneAccountHandle;

    move-result-object v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return-object v1

    .line 1207
    :catch_11
    move-exception v1

    .line 1208
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#getUserSelectedOutgoingPhoneAccount"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1211
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;)Ljava/lang/String;
    .registers 6
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 1877
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1878
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_1f

    .line 1880
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1881
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1880
    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->getVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return-object v1

    .line 1882
    :catch_17
    move-exception v1

    .line 1883
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException calling ITelecomService#hasVoiceMailNumber."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1886
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1f
    const/4 v1, 0x0

    return-object v1
.end method

.method public blacklist handleCallIntent(Landroid/content/Intent;Ljava/lang/String;)V
    .registers 7
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "callingPackageProxy"    # Ljava/lang/String;

    .line 2988
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2989
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_23

    .line 2991
    :try_start_6
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telecom/ITelecomService;->handleCallIntent(Landroid/content/Intent;Ljava/lang/String;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 2994
    goto :goto_23

    .line 2992
    :catch_a
    move-exception v1

    .line 2993
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException handleCallIntent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelecomManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2996
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_23
    :goto_23
    return-void
.end method

.method public whitelist handleMmi(Ljava/lang/String;)Z
    .registers 6
    .param p1, "dialString"    # Ljava/lang/String;

    .line 2380
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2381
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_19

    .line 2383
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->handlePinMmi(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return v1

    .line 2384
    :catch_11
    move-exception v1

    .line 2385
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#handlePinMmi"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2388
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist handleMmi(Ljava/lang/String;Landroid/telecom/PhoneAccountHandle;)Z
    .registers 7
    .param p1, "dialString"    # Ljava/lang/String;
    .param p2, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 2406
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2407
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_19

    .line 2409
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2410
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2409
    invoke-interface {v0, p2, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->handlePinMmiForPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return v1

    .line 2411
    :catch_11
    move-exception v1

    .line 2412
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#handlePinMmi"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2415
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist hasForegroundServiceDelegation(Landroid/telecom/PhoneAccountHandle;)Z
    .registers 6
    .param p1, "handle"    # Landroid/telecom/PhoneAccountHandle;

    .line 1904
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1905
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_19

    .line 1907
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->hasForegroundServiceDelegation(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return v1

    .line 1908
    :catch_11
    move-exception v1

    .line 1909
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException calling ITelecomService#hasForegroundServiceDelegation."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1914
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist hasManageOngoingCallsPermission()Z
    .registers 5

    .line 1984
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1985
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_22

    .line 1987
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1988
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 1987
    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->hasManageOngoingCallsPermission(Ljava/lang/String;)Z

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return v1

    .line 1989
    :catch_11
    move-exception v1

    .line 1990
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException calling hasManageOngoingCallsPermission()."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1991
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->isSystemProcess()Z

    move-result v2

    if-nez v2, :cond_22

    .line 1992
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 1996
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_22
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isInCall()Z
    .registers 5

    .line 1962
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1963
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_1f

    .line 1965
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1966
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1965
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->isInCall(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return v1

    .line 1967
    :catch_17
    move-exception v1

    .line 1968
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException calling isInCall()."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1971
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1f
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isInEmergencyCall()Z
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2824
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2825
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    const/4 v1, 0x0

    if-eqz v0, :cond_26

    .line 2827
    :try_start_7
    invoke-interface {v0}, Lcom/android/internal/telecom/ITelecomService;->isInEmergencyCall()Z

    move-result v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_b} :catch_c

    return v1

    .line 2828
    :catch_c
    move-exception v2

    .line 2829
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "RemoteException isInEmergencyCall: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TelecomManager"

    invoke-static {v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2830
    return v1

    .line 2833
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_26
    return v1
.end method

.method public whitelist isInManagedCall()Z
    .registers 5

    .line 2012
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2013
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_1f

    .line 2015
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2016
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 2015
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->isInManagedCall(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return v1

    .line 2017
    :catch_17
    move-exception v1

    .line 2018
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException calling isInManagedCall()."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2021
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1f
    const/4 v1, 0x0

    return v1
.end method

.method public blacklist isInSelfManagedCall(Ljava/lang/String;Landroid/os/UserHandle;)Z
    .registers 7
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "userHandle"    # Landroid/os/UserHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2855
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2856
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_2f

    .line 2858
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2859
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2858
    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telecom/ITelecomService;->isInSelfManagedCall(Ljava/lang/String;Landroid/os/UserHandle;Ljava/lang/String;)Z

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return v1

    .line 2860
    :catch_11
    move-exception v1

    .line 2861
    .local v1, "e":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "RemoteException isInSelfManagedCall: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "TelecomManager"

    invoke-static {v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2862
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 2863
    const/4 v2, 0x0

    return v2

    .line 2866
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2f
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Telecom service is not present"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist isIncomingCallPermitted(Landroid/telecom/PhoneAccountHandle;)Z
    .registers 7
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 2709
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 2710
    return v0

    .line 2713
    :cond_4
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 2714
    .local v1, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_1d

    .line 2716
    :try_start_a
    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2717
    invoke-virtual {v2}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2716
    invoke-interface {v1, p1, v2}, Lcom/android/internal/telecom/ITelecomService;->isIncomingCallPermitted(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result v0
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_14} :catch_15

    return v0

    .line 2718
    :catch_15
    move-exception v2

    .line 2719
    .local v2, "e":Landroid/os/RemoteException;
    const-string v3, "TelecomManager"

    const-string v4, "Error isIncomingCallPermitted"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2722
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_1d
    return v0
.end method

.method public whitelist isOutgoingCallPermitted(Landroid/telecom/PhoneAccountHandle;)Z
    .registers 6
    .param p1, "phoneAccountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 2747
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2748
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_19

    .line 2750
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2751
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2750
    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->isOutgoingCallPermitted(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return v1

    .line 2752
    :catch_11
    move-exception v1

    .line 2753
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error isOutgoingCallPermitted"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2756
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isRinging()Z
    .registers 5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 2067
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2068
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_19

    .line 2070
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->isRinging(Ljava/lang/String;)Z

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_10} :catch_11

    return v1

    .line 2071
    :catch_11
    move-exception v1

    .line 2072
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException attempting to get ringing state of phone app."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2075
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_19
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isTtySupported()Z
    .registers 5

    .line 2201
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2202
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_1f

    .line 2204
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2205
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 2204
    invoke-interface {v0, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->isTtySupported(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return v1

    .line 2206
    :catch_17
    move-exception v1

    .line 2207
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException attempting to get TTY supported state."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2210
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1f
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)Z
    .registers 7
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .param p2, "number"    # Ljava/lang/String;

    .line 1856
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1857
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_1f

    .line 1859
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 1860
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 1859
    invoke-interface {v0, p1, p2, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->isVoiceMailNumber(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_16} :catch_17

    return v1

    .line 1861
    :catch_17
    move-exception v1

    .line 1862
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException calling ITelecomService#isVoiceMailNumber."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1865
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1f
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist placeCall(Landroid/net/Uri;Landroid/os/Bundle;)V
    .registers 8
    .param p1, "address"    # Landroid/net/Uri;
    .param p2, "extras"    # Landroid/os/Bundle;

    .line 2538
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2539
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_2f

    .line 2540
    const-string v1, "TelecomManager"

    if-nez p1, :cond_f

    .line 2541
    const-string v2, "Cannot place call to empty address."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2544
    :cond_f
    if-nez p2, :cond_19

    :try_start_11
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    goto :goto_1a

    .line 2546
    :catch_17
    move-exception v2

    goto :goto_2a

    .line 2544
    :cond_19
    move-object v2, p2

    :goto_1a
    iget-object v3, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2545
    invoke-virtual {v3}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v4

    .line 2544
    invoke-interface {v0, p1, v2, v3, v4}, Lcom/android/internal/telecom/ITelecomService;->placeCall(Landroid/net/Uri;Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_29
    .catch Landroid/os/RemoteException; {:try_start_11 .. :try_end_29} :catch_17

    .line 2548
    goto :goto_2f

    .line 2547
    .local v2, "e":Landroid/os/RemoteException;
    :goto_2a
    const-string v3, "Error calling ITelecomService#placeCall"

    invoke-static {v1, v3, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2550
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_2f
    :goto_2f
    return-void
.end method

.method public whitelist registerPhoneAccount(Landroid/telecom/PhoneAccount;)V
    .registers 6
    .param p1, "account"    # Landroid/telecom/PhoneAccount;

    .line 1665
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1666
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_18

    .line 1668
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->registerPhoneAccount(Landroid/telecom/PhoneAccount;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 1671
    goto :goto_18

    .line 1669
    :catch_10
    move-exception v1

    .line 1670
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#registerPhoneAccount"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1673
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return-void
.end method

.method public greylist setDefaultDialer(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1818
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1819
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_13

    .line 1821
    :try_start_6
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/ITelecomService;->setDefaultDialer(Ljava/lang/String;)Z

    move-result v1
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_a} :catch_b

    return v1

    .line 1822
    :catch_b
    move-exception v1

    .line 1823
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "RemoteException attempting to set the default dialer."

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1826
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_13
    const/4 v1, 0x0

    return v1
.end method

.method public whitelist setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .registers 6
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 1225
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1226
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_12

    .line 1228
    :try_start_6
    invoke-interface {v0, p1}, Lcom/android/internal/telecom/ITelecomService;->setUserSelectedOutgoingPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_9} :catch_a

    .line 1231
    goto :goto_12

    .line 1229
    :catch_a
    move-exception v1

    .line 1230
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#setUserSelectedOutgoingPhoneAccount"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_12
    :goto_12
    return-void
.end method

.method public whitelist showInCallScreen(Z)V
    .registers 6
    .param p1, "showDialpad"    # Z

    .line 2470
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2471
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_1e

    .line 2473
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2474
    invoke-virtual {v2}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v2

    .line 2473
    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telecom/ITelecomService;->showInCallScreen(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_15} :catch_16

    .line 2477
    goto :goto_1e

    .line 2475
    :catch_16
    move-exception v1

    .line 2476
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#showCallScreen"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2479
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_1e
    :goto_1e
    return-void
.end method

.method public whitelist silenceRinger()V
    .registers 5

    .line 2183
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2184
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_18

    .line 2186
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telecom/ITelecomService;->silenceRinger(Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 2189
    goto :goto_18

    .line 2187
    :catch_10
    move-exception v1

    .line 2188
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#silenceRinger"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2191
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return-void
.end method

.method public whitelist startConference(Ljava/util/List;Landroid/os/Bundle;)V
    .registers 7
    .param p2, "extras"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/Uri;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .line 2577
    .local p1, "participants":Ljava/util/List;, "Ljava/util/List<Landroid/net/Uri;>;"
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 2578
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_18

    .line 2580
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    .line 2581
    invoke-virtual {v1}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v1

    .line 2580
    invoke-interface {v0, p1, p2, v1}, Lcom/android/internal/telecom/ITelecomService;->startConference(Ljava/util/List;Landroid/os/Bundle;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 2584
    goto :goto_18

    .line 2582
    :catch_10
    move-exception v1

    .line 2583
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#placeCall"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2586
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return-void
.end method

.method public whitelist unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;)V
    .registers 6
    .param p1, "accountHandle"    # Landroid/telecom/PhoneAccountHandle;

    .line 1681
    invoke-direct {p0}, Landroid/telecom/TelecomManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    .line 1682
    .local v0, "service":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v0, :cond_18

    .line 1684
    :try_start_6
    iget-object v1, p0, Landroid/telecom/TelecomManager;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telecom/ITelecomService;->unregisterPhoneAccount(Landroid/telecom/PhoneAccountHandle;Ljava/lang/String;)V
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_f} :catch_10

    .line 1687
    goto :goto_18

    .line 1685
    :catch_10
    move-exception v1

    .line 1686
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "TelecomManager"

    const-string v3, "Error calling ITelecomService#unregisterPhoneAccount"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1689
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_18
    :goto_18
    return-void
.end method
