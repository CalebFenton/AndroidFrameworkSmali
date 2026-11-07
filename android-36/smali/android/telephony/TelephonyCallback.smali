.class public Landroid/telephony/TelephonyCallback;
.super Ljava/lang/Object;
.source "TelephonyCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;,
        Landroid/telephony/TelephonyCallback$SecurityAlgorithmsListener;,
        Landroid/telephony/TelephonyCallback$CellularIdentifierDisclosedListener;,
        Landroid/telephony/TelephonyCallback$CarrierRoamingNtnListener;,
        Landroid/telephony/TelephonyCallback$EmergencyCallbackModeListener;,
        Landroid/telephony/TelephonyCallback$MediaQualityStatusChangedListener;,
        Landroid/telephony/TelephonyCallback$LinkCapacityEstimateChangedListener;,
        Landroid/telephony/TelephonyCallback$DataEnabledListener;,
        Landroid/telephony/TelephonyCallback$PhysicalChannelConfigListener;,
        Landroid/telephony/TelephonyCallback$BarringInfoListener;,
        Landroid/telephony/TelephonyCallback$CallAttributesListener;,
        Landroid/telephony/TelephonyCallback$SimultaneousCellularCallingSupportListener;,
        Landroid/telephony/TelephonyCallback$AllowedNetworkTypesListener;,
        Landroid/telephony/TelephonyCallback$RegistrationFailedListener;,
        Landroid/telephony/TelephonyCallback$CarrierNetworkListener;,
        Landroid/telephony/TelephonyCallback$RadioPowerStateListener;,
        Landroid/telephony/TelephonyCallback$ActiveDataSubscriptionIdListener;,
        Landroid/telephony/TelephonyCallback$PhoneCapabilityListener;,
        Landroid/telephony/TelephonyCallback$OutgoingEmergencySmsListener;,
        Landroid/telephony/TelephonyCallback$OutgoingEmergencyCallListener;,
        Landroid/telephony/TelephonyCallback$EmergencyNumberListListener;,
        Landroid/telephony/TelephonyCallback$DisplayInfoListener;,
        Landroid/telephony/TelephonyCallback$UserMobileDataStateListener;,
        Landroid/telephony/TelephonyCallback$DataActivationStateListener;,
        Landroid/telephony/TelephonyCallback$VoiceActivationStateListener;,
        Landroid/telephony/TelephonyCallback$SrvccStateListener;,
        Landroid/telephony/TelephonyCallback$PreciseDataConnectionStateListener;,
        Landroid/telephony/TelephonyCallback$ImsCallDisconnectCauseListener;,
        Landroid/telephony/TelephonyCallback$CallDisconnectCauseListener;,
        Landroid/telephony/TelephonyCallback$PreciseCallStateListener;,
        Landroid/telephony/TelephonyCallback$CellInfoListener;,
        Landroid/telephony/TelephonyCallback$SignalStrengthsListener;,
        Landroid/telephony/TelephonyCallback$DataActivityListener;,
        Landroid/telephony/TelephonyCallback$DataConnectionStateListener;,
        Landroid/telephony/TelephonyCallback$CallStateListener;,
        Landroid/telephony/TelephonyCallback$CellLocationListener;,
        Landroid/telephony/TelephonyCallback$CallForwardingIndicatorListener;,
        Landroid/telephony/TelephonyCallback$MessageWaitingIndicatorListener;,
        Landroid/telephony/TelephonyCallback$ServiceStateListener;,
        Landroid/telephony/TelephonyCallback$TelephonyEvent;
    }
.end annotation


# static fields
.field public static final blacklist DEFAULT_PER_PID_REGISTRATION_LIMIT:I = 0x32

.field public static final whitelist EVENT_ACTIVE_DATA_SUBSCRIPTION_ID_CHANGED:I = 0x17
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_ALLOWED_NETWORK_TYPE_LIST_CHANGED:I = 0x23
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_ALWAYS_REPORTED_SIGNAL_STRENGTH_CHANGED:I = 0xa
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_BARRING_INFO_CHANGED:I = 0x20
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_CALL_ATTRIBUTES_CHANGED:I = 0x1b
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_CALL_DISCONNECT_CAUSE_CHANGED:I = 0x1a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_CALL_FORWARDING_INDICATOR_CHANGED:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_CALL_STATE_CHANGED:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_CARRIER_NETWORK_CHANGED:I = 0x11
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EVENT_CARRIER_ROAMING_NTN_AVAILABLE_SERVICES_CHANGED:I = 0x2c
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EVENT_CARRIER_ROAMING_NTN_ELIGIBLE_STATE_CHANGED:I = 0x2b
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EVENT_CARRIER_ROAMING_NTN_MODE_CHANGED:I = 0x2a
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EVENT_CARRIER_ROAMING_NTN_SIGNAL_STRENGTH_CHANGED:I = 0x2d
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_CELLULAR_IDENTIFIER_DISCLOSED_CHANGED:I = 0x2f
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_CELL_INFO_CHANGED:I = 0xb
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_CELL_LOCATION_CHANGED:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_DATA_ACTIVATION_STATE_CHANGED:I = 0x13
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_DATA_ACTIVITY_CHANGED:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_DATA_CONNECTION_REAL_TIME_INFO_CHANGED:I = 0xe
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final whitelist EVENT_DATA_CONNECTION_STATE_CHANGED:I = 0x7
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_DATA_ENABLED_CHANGED:I = 0x22
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_DISPLAY_INFO_CHANGED:I = 0x15
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_EMERGENCY_CALLBACK_MODE_CHANGED:I = 0x28
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_EMERGENCY_NUMBER_LIST_CHANGED:I = 0x19
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_IMS_CALL_DISCONNECT_CAUSE_CHANGED:I = 0x1c
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_LEGACY_CALL_STATE_CHANGED:I = 0x24
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_LINK_CAPACITY_ESTIMATE_CHANGED:I = 0x25
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_MEDIA_QUALITY_STATUS_CHANGED:I = 0x27
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_MESSAGE_WAITING_INDICATOR_CHANGED:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_OEM_HOOK_RAW:I = 0xf
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_OUTGOING_EMERGENCY_CALL:I = 0x1d
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_OUTGOING_EMERGENCY_SMS:I = 0x1e
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_PHONE_CAPABILITY_CHANGED:I = 0x16
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_PHYSICAL_CHANNEL_CONFIG_CHANGED:I = 0x21
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_PRECISE_CALL_STATE_CHANGED:I = 0xc
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_PRECISE_DATA_CONNECTION_STATE_CHANGED:I = 0xd
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_RADIO_POWER_STATE_CHANGED:I = 0x18
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_REGISTRATION_FAILURE:I = 0x1f
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_SECURITY_ALGORITHMS_CHANGED:I = 0x2e
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_SERVICE_STATE_CHANGED:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_SIGNAL_STRENGTHS_CHANGED:I = 0x9
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_SIGNAL_STRENGTH_CHANGED:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_SIMULTANEOUS_CELLULAR_CALLING_SUBSCRIPTIONS_CHANGED:I = 0x29
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_SRVCC_STATE_CHANGED:I = 0x10
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist EVENT_TRIGGER_NOTIFY_ANBR:I = 0x26

.field public static final whitelist EVENT_USER_MOBILE_DATA_STATE_CHANGED:I = 0x14
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist EVENT_VOICE_ACTIVATION_STATE_CHANGED:I = 0x12
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist FLAG_PER_PID_REGISTRATION_LIMIT:Ljava/lang/String; = "phone_state_listener_per_pid_registration_limit"

.field private static final blacklist LOG_TAG:Ljava/lang/String; = "TelephonyCallback"

.field public static final blacklist PHONE_STATE_LISTENER_LIMIT_CHANGE_ID:J = 0x8fe4129L


# instance fields
.field public blacklist callback:Lcom/android/internal/telephony/IPhoneStateListener;


# direct methods
.method public constructor whitelist <init>()V
    .registers 1

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist init(Ljava/util/concurrent/Executor;)V
    .registers 4
    .param p1, "executor"    # Ljava/util/concurrent/Executor;

    .line 810
    if-eqz p1, :cond_a

    .line 813
    new-instance v0, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;

    invoke-direct {v0, p0, p1}, Landroid/telephony/TelephonyCallback$IPhoneStateListenerStub;-><init>(Landroid/telephony/TelephonyCallback;Ljava/util/concurrent/Executor;)V

    iput-object v0, p0, Landroid/telephony/TelephonyCallback;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    .line 814
    return-void

    .line 811
    :cond_a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "TelephonyCallback Executor must be non-null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
