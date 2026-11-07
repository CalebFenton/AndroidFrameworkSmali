.class public Lcom/android/internal/telephony/PhoneConstants;
.super Ljava/lang/Object;
.source "PhoneConstants.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/PhoneConstants$CardUnavailableReason;,
        Lcom/android/internal/telephony/PhoneConstants$DataState;,
        Lcom/android/internal/telephony/PhoneConstants$State;
    }
.end annotation


# static fields
.field public static final blacklist APN_ALREADY_ACTIVE:I = 0x0

.field public static final blacklist APN_ALREADY_INACTIVE:I = 0x4

.field public static final blacklist APN_REQUEST_FAILED:I = 0x3

.field public static final blacklist APN_REQUEST_STARTED:I = 0x1

.field public static final blacklist APN_TYPE_ALL:Ljava/lang/String; = "*"

.field public static final blacklist APN_TYPE_CBS:Ljava/lang/String; = "cbs"

.field public static final blacklist APN_TYPE_DEFAULT:Ljava/lang/String; = "default"

.field public static final blacklist APN_TYPE_DUN:Ljava/lang/String; = "dun"

.field public static final blacklist APN_TYPE_EMERGENCY:Ljava/lang/String; = "emergency"

.field public static final blacklist APN_TYPE_FOTA:Ljava/lang/String; = "fota"

.field public static final blacklist APN_TYPE_HIPRI:Ljava/lang/String; = "hipri"

.field public static final blacklist APN_TYPE_IA:Ljava/lang/String; = "ia"

.field public static final blacklist APN_TYPE_IMS:Ljava/lang/String; = "ims"

.field public static final blacklist APN_TYPE_MCX:Ljava/lang/String; = "mcx"

.field public static final blacklist APN_TYPE_MMS:Ljava/lang/String; = "mms"

.field public static final blacklist APN_TYPE_NOT_AVAILABLE:I = 0x2

.field public static final blacklist APN_TYPE_SUPL:Ljava/lang/String; = "supl"

.field public static final blacklist APN_TYPE_XCAP:Ljava/lang/String; = "xcap"

.field public static final blacklist APPTYPE_CSIM:I = 0x4

.field public static final blacklist APPTYPE_ISIM:I = 0x5

.field public static final blacklist APPTYPE_RUIM:I = 0x3

.field public static final blacklist APPTYPE_SIM:I = 0x1

.field public static final blacklist APPTYPE_UNKNOWN:I = 0x0

.field public static final blacklist APPTYPE_USIM:I = 0x2

.field public static final blacklist AUDIO_OUTPUT_DEFAULT:I = 0x0

.field public static final blacklist AUDIO_OUTPUT_DISABLE_SPEAKER:I = 0x1

.field public static final blacklist AUDIO_OUTPUT_ENABLE_SPEAKER:I = 0x0

.field public static final blacklist AUTHTYPE_GBA_NAF_KEY_EXTERNAL:I = 0x85

.field public static final blacklist AUTH_CONTEXT_EAP_AKA:I = 0x81

.field public static final blacklist AUTH_CONTEXT_EAP_SIM:I = 0x80

.field public static final blacklist AUTH_CONTEXT_GBA_BOOTSTRAP:I = 0x84

.field public static final blacklist AUTH_CONTEXT_UNDEFINED:I = -0x1

.field public static final blacklist CAPABILITY_3G:I = 0x1

.field public static final blacklist CELL_OFF_DUE_TO_AIRPLANE_MODE_FLAG:I = 0x2

.field public static final blacklist CELL_OFF_FLAG:I = 0x0

.field public static final blacklist CELL_ON_FLAG:I = 0x1

.field public static final blacklist DATA_APN_KEY:Ljava/lang/String; = "apn"

.field public static final blacklist DATA_APN_TYPE_KEY:Ljava/lang/String; = "apnType"

.field public static final blacklist DATA_NETWORK_TYPE_KEY:Ljava/lang/String; = "networkType"

.field public static final blacklist DEFAULT_SLOT_INDEX:I = 0x0

.field public static final blacklist DOMAIN_NON_3GPP_PS:I = 0x4

.field public static final blacklist EXTRA_DIAL_DOMAIN:Ljava/lang/String; = "dial_domain"

.field public static final blacklist EXTRA_EMERGENCY_SERVICE_CATEGORY:Ljava/lang/String; = "emergency_service_category"

.field public static final blacklist EXTRA_EMERGENCY_URNS:Ljava/lang/String; = "emergency_urns"

.field public static final blacklist EXTRA_USE_EMERGENCY_ROUTING:Ljava/lang/String; = "use_emergency_routing"

.field public static final blacklist LTE_ON_CDMA_FALSE:I = 0x0

.field public static final blacklist LTE_ON_CDMA_TRUE:I = 0x1

.field public static final blacklist LTE_ON_CDMA_UNKNOWN:I = -0x1

.field public static final blacklist MAX_PHONE_COUNT_DUAL_SIM:I = 0x2

.field public static final blacklist MAX_PHONE_COUNT_SINGLE_SIM:I = 0x1

.field public static final blacklist MAX_PHONE_COUNT_TRI_SIM:I = 0x3

.field public static final blacklist PHONE_KEY:Ljava/lang/String; = "phone"

.field public static final blacklist PHONE_NAME_KEY:Ljava/lang/String; = "phoneName"

.field public static final blacklist PHONE_TYPE_CDMA:I = 0x2

.field public static final blacklist PHONE_TYPE_CDMA_LTE:I = 0x6

.field public static final blacklist PHONE_TYPE_GSM:I = 0x1

.field public static final blacklist PHONE_TYPE_IMS:I = 0x5

.field public static final blacklist PHONE_TYPE_NONE:I = 0x0

.field public static final blacklist PHONE_TYPE_SIP:I = 0x3

.field public static final blacklist PHONE_TYPE_THIRD_PARTY:I = 0x4

.field public static final blacklist PIN_GENERAL_FAILURE:I = 0x2

.field public static final blacklist PIN_OPERATION_ABORTED:I = 0x3

.field public static final blacklist PIN_PASSWORD_INCORRECT:I = 0x1

.field public static final blacklist PIN_RESULT_SUCCESS:I = 0x0

.field public static final blacklist PORT_KEY:Ljava/lang/String; = "port"

.field public static final greylist PRESENTATION_ALLOWED:I = 0x1

.field public static final greylist PRESENTATION_PAYPHONE:I = 0x4

.field public static final greylist PRESENTATION_RESTRICTED:I = 0x2

.field public static final blacklist PRESENTATION_UNAVAILABLE:I = 0x5

.field public static final greylist PRESENTATION_UNKNOWN:I = 0x3

.field public static final blacklist RIL_CARD_MAX_APPS:I = 0x8

.field public static final blacklist SIM_ID_1:I = 0x0

.field public static final blacklist SIM_ID_2:I = 0x1

.field public static final blacklist SIM_ID_3:I = 0x2

.field public static final blacklist SIM_ID_4:I = 0x3

.field public static final blacklist SLOT_KEY:Ljava/lang/String; = "slot"

.field public static final blacklist STATE_KEY:Ljava/lang/String; = "state"

.field public static final blacklist SUB1:I = 0x0

.field public static final blacklist SUB2:I = 0x1

.field public static final blacklist SUB3:I = 0x2

.field public static final blacklist SUBSCRIPTION_KEY:Ljava/lang/String; = "subscription"

.field public static final blacklist SUB_SETTING:Ljava/lang/String; = "subSettings"

.field public static final blacklist UNSET_MTU:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
