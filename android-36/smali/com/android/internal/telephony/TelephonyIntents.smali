.class public Lcom/android/internal/telephony/TelephonyIntents;
.super Ljava/lang/Object;
.source "TelephonyIntents.java"


# static fields
.field public static final blacklist ACTION_ANY_DATA_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.ANY_DATA_STATE"

.field public static final blacklist ACTION_CARRIER_CERTIFICATE_DOWNLOAD:Ljava/lang/String; = "com.android.internal.telephony.ACTION_CARRIER_CERTIFICATE_DOWNLOAD"

.field public static final blacklist ACTION_CARRIER_SIGNAL_DEFAULT_NETWORK_AVAILABLE:Ljava/lang/String; = "com.android.internal.telephony.CARRIER_SIGNAL_DEFAULT_NETWORK_AVAILABLE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist ACTION_CARRIER_SIGNAL_PCO_VALUE:Ljava/lang/String; = "com.android.internal.telephony.CARRIER_SIGNAL_PCO_VALUE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist ACTION_CARRIER_SIGNAL_REDIRECTED:Ljava/lang/String; = "com.android.internal.telephony.CARRIER_SIGNAL_REDIRECTED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist ACTION_CARRIER_SIGNAL_REQUEST_NETWORK_FAILED:Ljava/lang/String; = "com.android.internal.telephony.CARRIER_SIGNAL_REQUEST_NETWORK_FAILED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist ACTION_CARRIER_SIGNAL_RESET:Ljava/lang/String; = "com.android.internal.telephony.CARRIER_SIGNAL_RESET"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_DEFAULT_DATA_SUBSCRIPTION_CHANGED"

.field public static final blacklist ACTION_DEFAULT_SMS_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.telephony.action.DEFAULT_SMS_SUBSCRIPTION_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist ACTION_DEFAULT_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.telephony.action.DEFAULT_SUBSCRIPTION_CHANGED"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED:Ljava/lang/String; = "android.intent.action.ACTION_DEFAULT_VOICE_SUBSCRIPTION_CHANGED"

.field public static final blacklist ACTION_EMERGENCY_CALLBACK_MODE_CHANGED:Ljava/lang/String; = "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

.field public static final blacklist ACTION_EMERGENCY_CALL_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.EMERGENCY_CALL_STATE_CHANGED"

.field public static final blacklist ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION:Ljava/lang/String; = "com.android.internal.intent.action.ACTION_FORBIDDEN_NO_SERVICE_AUTHORIZATION"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist ACTION_LINE1_NUMBER_ERROR_DETECTED:Ljava/lang/String; = "com.android.internal.telephony.ACTION_LINE1_NUMBER_ERROR_DETECTED"

.field public static final blacklist ACTION_RADIO_TECHNOLOGY_CHANGED:Ljava/lang/String; = "android.intent.action.RADIO_TECHNOLOGY"

.field public static final blacklist ACTION_REQUEST_OMADM_CONFIGURATION_UPDATE:Ljava/lang/String; = "com.android.omadm.service.CONFIGURATION_UPDATE"

.field public static final blacklist ACTION_SERVICE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SERVICE_STATE"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist ACTION_SET_RADIO_CAPABILITY_DONE:Ljava/lang/String; = "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

.field public static final blacklist ACTION_SET_RADIO_CAPABILITY_FAILED:Ljava/lang/String; = "android.intent.action.ACTION_SET_RADIO_CAPABILITY_FAILED"

.field public static final blacklist ACTION_SHOW_NOTICE_ECM_BLOCK_OTHERS:Ljava/lang/String; = "android.telephony.action.SHOW_NOTICE_ECM_BLOCK_OTHERS"

.field public static final blacklist ACTION_SIM_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.SIM_STATE_CHANGED"

.field public static final blacklist ACTION_USER_ACTIVITY_NOTIFICATION:Ljava/lang/String; = "android.intent.action.USER_ACTIVITY_NOTIFICATION"

.field public static final blacklist EXTRA_APN_PROTOCOL:Ljava/lang/String; = "apnProto"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_APN_PROTOCOL_INT:Ljava/lang/String; = "apnProtoInt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_APN_TYPE:Ljava/lang/String; = "apnType"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_APN_TYPE_INT:Ljava/lang/String; = "apnTypeInt"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_DEFAULT_NETWORK_AVAILABLE:Ljava/lang/String; = "defaultNetworkAvailable"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_ERROR_CODE:Ljava/lang/String; = "errorCode"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_PCO_ID:Ljava/lang/String; = "pcoId"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_PCO_VALUE:Ljava/lang/String; = "pcoValue"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist EXTRA_RADIO_ACCESS_FAMILY:Ljava/lang/String; = "rafs"

.field public static final blacklist EXTRA_REDIRECTION_URL:Ljava/lang/String; = "redirectionUrl"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist SECRET_CODE_ACTION:Ljava/lang/String; = "android.provider.Telephony.SECRET_CODE"


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
