.class public final Landroid/telephony/SmsManager;
.super Ljava/lang/Object;
.source "SmsManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/SmsManager$SubscriptionResolverResult;,
        Landroid/telephony/SmsManager$SmsShortCodeCategory;,
        Landroid/telephony/SmsManager$FinancialSmsCallback;,
        Landroid/telephony/SmsManager$Result;,
        Landroid/telephony/SmsManager$StatusOnIcc;,
        Landroid/telephony/SmsManager$PremiumSmsConsent;,
        Landroid/telephony/SmsManager$SMS_RP_CAUSE;
    }
.end annotation


# static fields
.field public static final greylist-max-o CDMA_SMS_RECORD_LENGTH:I = 0xff

.field private static final blacklist DEFAULT_INSTANCE:Landroid/telephony/SmsManager;

.field public static final whitelist EXTRA_MMS_DATA:Ljava/lang/String; = "android.telephony.extra.MMS_DATA"

.field public static final whitelist EXTRA_MMS_HTTP_STATUS:Ljava/lang/String; = "android.telephony.extra.MMS_HTTP_STATUS"

.field public static final blacklist EXTRA_SIM_SUBSCRIPTION_ID:Ljava/lang/String; = "android.telephony.extra.SIM_SUBSCRIPTION_ID"

.field public static final blacklist EXTRA_SMS_MESSAGE:Ljava/lang/String; = "android.telephony.extra.SMS_MESSAGE"

.field public static final blacklist EXTRA_STATUS:Ljava/lang/String; = "android.telephony.extra.STATUS"

.field private static final blacklist GET_TARGET_SDK_VERSION_CODE_CHANGE:J = 0x8a6c688L

.field public static final whitelist MMS_CONFIG_ALIAS_ENABLED:Ljava/lang/String; = "aliasEnabled"

.field public static final whitelist MMS_CONFIG_ALIAS_MAX_CHARS:Ljava/lang/String; = "aliasMaxChars"

.field public static final whitelist MMS_CONFIG_ALIAS_MIN_CHARS:Ljava/lang/String; = "aliasMinChars"

.field public static final whitelist MMS_CONFIG_ALLOW_ATTACH_AUDIO:Ljava/lang/String; = "allowAttachAudio"

.field public static final whitelist MMS_CONFIG_APPEND_TRANSACTION_ID:Ljava/lang/String; = "enabledTransID"

.field public static final greylist-max-o MMS_CONFIG_CLOSE_CONNECTION:Ljava/lang/String; = "mmsCloseConnection"

.field public static final whitelist MMS_CONFIG_EMAIL_GATEWAY_NUMBER:Ljava/lang/String; = "emailGatewayNumber"

.field public static final whitelist MMS_CONFIG_GROUP_MMS_ENABLED:Ljava/lang/String; = "enableGroupMms"

.field public static final whitelist MMS_CONFIG_HTTP_PARAMS:Ljava/lang/String; = "httpParams"

.field public static final whitelist MMS_CONFIG_HTTP_SOCKET_TIMEOUT:Ljava/lang/String; = "httpSocketTimeout"

.field public static final whitelist MMS_CONFIG_MAX_IMAGE_HEIGHT:Ljava/lang/String; = "maxImageHeight"

.field public static final whitelist MMS_CONFIG_MAX_IMAGE_WIDTH:Ljava/lang/String; = "maxImageWidth"

.field public static final whitelist MMS_CONFIG_MAX_MESSAGE_SIZE:Ljava/lang/String; = "maxMessageSize"

.field public static final whitelist MMS_CONFIG_MESSAGE_TEXT_MAX_SIZE:Ljava/lang/String; = "maxMessageTextSize"

.field public static final whitelist MMS_CONFIG_MMS_DELIVERY_REPORT_ENABLED:Ljava/lang/String; = "enableMMSDeliveryReports"

.field public static final whitelist MMS_CONFIG_MMS_ENABLED:Ljava/lang/String; = "enabledMMS"

.field public static final whitelist MMS_CONFIG_MMS_READ_REPORT_ENABLED:Ljava/lang/String; = "enableMMSReadReports"

.field public static final whitelist MMS_CONFIG_MULTIPART_SMS_ENABLED:Ljava/lang/String; = "enableMultipartSMS"

.field public static final whitelist MMS_CONFIG_NAI_SUFFIX:Ljava/lang/String; = "naiSuffix"

.field public static final whitelist MMS_CONFIG_NOTIFY_WAP_MMSC_ENABLED:Ljava/lang/String; = "enabledNotifyWapMMSC"

.field public static final whitelist MMS_CONFIG_RECIPIENT_LIMIT:Ljava/lang/String; = "recipientLimit"

.field public static final whitelist MMS_CONFIG_SEND_MULTIPART_SMS_AS_SEPARATE_MESSAGES:Ljava/lang/String; = "sendMultipartSmsAsSeparateMessages"

.field public static final whitelist MMS_CONFIG_SHOW_CELL_BROADCAST_APP_LINKS:Ljava/lang/String; = "config_cellBroadcastAppLinks"

.field public static final whitelist MMS_CONFIG_SMS_DELIVERY_REPORT_ENABLED:Ljava/lang/String; = "enableSMSDeliveryReports"

.field public static final whitelist MMS_CONFIG_SMS_TO_MMS_TEXT_LENGTH_THRESHOLD:Ljava/lang/String; = "smsToMmsTextLengthThreshold"

.field public static final whitelist MMS_CONFIG_SMS_TO_MMS_TEXT_THRESHOLD:Ljava/lang/String; = "smsToMmsTextThreshold"

.field public static final whitelist MMS_CONFIG_SUBJECT_MAX_LENGTH:Ljava/lang/String; = "maxSubjectLength"

.field public static final whitelist MMS_CONFIG_SUPPORT_HTTP_CHARSET_HEADER:Ljava/lang/String; = "supportHttpCharsetHeader"

.field public static final whitelist MMS_CONFIG_SUPPORT_MMS_CONTENT_DISPOSITION:Ljava/lang/String; = "supportMmsContentDisposition"

.field public static final whitelist MMS_CONFIG_UA_PROF_TAG_NAME:Ljava/lang/String; = "uaProfTagName"

.field public static final whitelist MMS_CONFIG_UA_PROF_URL:Ljava/lang/String; = "uaProfUrl"

.field public static final whitelist MMS_CONFIG_USER_AGENT:Ljava/lang/String; = "userAgent"

.field public static final whitelist MMS_ERROR_CONFIGURATION_ERROR:I = 0x7

.field public static final whitelist MMS_ERROR_DATA_DISABLED:I = 0xb

.field public static final whitelist MMS_ERROR_HTTP_FAILURE:I = 0x4

.field public static final whitelist MMS_ERROR_INACTIVE_SUBSCRIPTION:I = 0xa

.field public static final whitelist MMS_ERROR_INVALID_APN:I = 0x2

.field public static final whitelist MMS_ERROR_INVALID_SUBSCRIPTION_ID:I = 0x9

.field public static final whitelist MMS_ERROR_IO_ERROR:I = 0x5

.field public static final whitelist MMS_ERROR_MMS_DISABLED_BY_CARRIER:I = 0xc

.field public static final whitelist MMS_ERROR_NO_DATA_NETWORK:I = 0x8

.field public static final whitelist MMS_ERROR_RETRY:I = 0x6

.field public static final blacklist MMS_ERROR_TOO_LARGE_FOR_TRANSPORT:I = 0xd

.field public static final whitelist MMS_ERROR_UNABLE_CONNECT_MMS:I = 0x3

.field public static final whitelist MMS_ERROR_UNSPECIFIED:I = 0x1

.field public static final whitelist PREMIUM_SMS_CONSENT_ALWAYS_ALLOW:I = 0x3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PREMIUM_SMS_CONSENT_ASK_USER:I = 0x1
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PREMIUM_SMS_CONSENT_NEVER_ALLOW:I = 0x2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final whitelist PREMIUM_SMS_CONSENT_UNKNOWN:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist REGEX_PREFIX_DELIMITER:Ljava/lang/String; = ","

.field public static final whitelist RESULT_BLUETOOTH_DISCONNECTED:I = 0x1b

.field public static final whitelist RESULT_CANCELLED:I = 0x17

.field public static final whitelist RESULT_ENCODING_ERROR:I = 0x12

.field public static final whitelist RESULT_ERROR_FDN_CHECK_FAILURE:I = 0x6

.field public static final whitelist RESULT_ERROR_GENERIC_FAILURE:I = 0x1

.field public static final whitelist RESULT_ERROR_LIMIT_EXCEEDED:I = 0x5

.field public static final whitelist RESULT_ERROR_NONE:I = 0x0

.field public static final whitelist RESULT_ERROR_NO_SERVICE:I = 0x4

.field public static final whitelist RESULT_ERROR_NULL_PDU:I = 0x3

.field public static final whitelist RESULT_ERROR_RADIO_OFF:I = 0x2

.field public static final whitelist RESULT_ERROR_SHORT_CODE_NEVER_ALLOWED:I = 0x8

.field public static final whitelist RESULT_ERROR_SHORT_CODE_NOT_ALLOWED:I = 0x7

.field public static final whitelist RESULT_INTERNAL_ERROR:I = 0x15

.field public static final whitelist RESULT_INVALID_ARGUMENTS:I = 0xb

.field public static final whitelist RESULT_INVALID_BLUETOOTH_ADDRESS:I = 0x1a

.field public static final whitelist RESULT_INVALID_SMSC_ADDRESS:I = 0x13

.field public static final whitelist RESULT_INVALID_SMS_FORMAT:I = 0xe

.field public static final whitelist RESULT_INVALID_STATE:I = 0xc

.field public static final whitelist RESULT_MODEM_ERROR:I = 0x10

.field public static final whitelist RESULT_NETWORK_ERROR:I = 0x11

.field public static final whitelist RESULT_NETWORK_REJECT:I = 0xa

.field public static final whitelist RESULT_NO_BLUETOOTH_SERVICE:I = 0x19

.field public static final whitelist RESULT_NO_DEFAULT_SMS_APP:I = 0x20

.field public static final whitelist RESULT_NO_MEMORY:I = 0xd

.field public static final whitelist RESULT_NO_RESOURCES:I = 0x16

.field public static final whitelist RESULT_OPERATION_NOT_ALLOWED:I = 0x14

.field public static final whitelist RESULT_RADIO_NOT_AVAILABLE:I = 0x9

.field public static final whitelist RESULT_RECEIVE_DISPATCH_FAILURE:I = 0x1f4

.field public static final whitelist RESULT_RECEIVE_INJECTED_NULL_PDU:I = 0x1f5

.field public static final whitelist RESULT_RECEIVE_NULL_MESSAGE_FROM_RIL:I = 0x1f7

.field public static final whitelist RESULT_RECEIVE_RUNTIME_EXCEPTION:I = 0x1f6

.field public static final whitelist RESULT_RECEIVE_SQL_EXCEPTION:I = 0x1f9

.field public static final whitelist RESULT_RECEIVE_URI_EXCEPTION:I = 0x1fa

.field public static final whitelist RESULT_RECEIVE_WHILE_ENCRYPTED:I = 0x1f8

.field public static final whitelist RESULT_REMOTE_EXCEPTION:I = 0x1f

.field public static final whitelist RESULT_REQUEST_NOT_SUPPORTED:I = 0x18

.field public static final whitelist RESULT_RIL_ABORTED:I = 0x89

.field public static final whitelist RESULT_RIL_ACCESS_BARRED:I = 0x7a

.field public static final whitelist RESULT_RIL_BLOCKED_DUE_TO_CALL:I = 0x7b

.field public static final whitelist RESULT_RIL_CANCELLED:I = 0x77

.field public static final whitelist RESULT_RIL_DEVICE_IN_USE:I = 0x88

.field public static final whitelist RESULT_RIL_ENCODING_ERR:I = 0x6d

.field public static final whitelist RESULT_RIL_GENERIC_ERROR:I = 0x7c

.field public static final whitelist RESULT_RIL_INTERNAL_ERR:I = 0x71

.field public static final whitelist RESULT_RIL_INVALID_ARGUMENTS:I = 0x68

.field public static final whitelist RESULT_RIL_INVALID_MODEM_STATE:I = 0x73

.field public static final whitelist RESULT_RIL_INVALID_RESPONSE:I = 0x7d

.field public static final whitelist RESULT_RIL_INVALID_SIM_STATE:I = 0x82

.field public static final whitelist RESULT_RIL_INVALID_SMSC_ADDRESS:I = 0x6e

.field public static final whitelist RESULT_RIL_INVALID_SMS_FORMAT:I = 0x6b

.field public static final whitelist RESULT_RIL_INVALID_STATE:I = 0x67

.field public static final whitelist RESULT_RIL_MODEM_ERR:I = 0x6f

.field public static final whitelist RESULT_RIL_NETWORK_ERR:I = 0x70

.field public static final whitelist RESULT_RIL_NETWORK_NOT_READY:I = 0x74

.field public static final whitelist RESULT_RIL_NETWORK_REJECT:I = 0x66

.field public static final whitelist RESULT_RIL_NO_MEMORY:I = 0x69

.field public static final whitelist RESULT_RIL_NO_NETWORK_FOUND:I = 0x87

.field public static final whitelist RESULT_RIL_NO_RESOURCES:I = 0x76

.field public static final whitelist RESULT_RIL_NO_SMS_TO_ACK:I = 0x83

.field public static final whitelist RESULT_RIL_NO_SUBSCRIPTION:I = 0x86

.field public static final whitelist RESULT_RIL_OPERATION_NOT_ALLOWED:I = 0x75

.field public static final whitelist RESULT_RIL_RADIO_NOT_AVAILABLE:I = 0x64

.field public static final whitelist RESULT_RIL_REQUEST_NOT_SUPPORTED:I = 0x72

.field public static final whitelist RESULT_RIL_REQUEST_RATE_LIMITED:I = 0x6a

.field public static final whitelist RESULT_RIL_SIMULTANEOUS_SMS_AND_CALL_NOT_ALLOWED:I = 0x79

.field public static final whitelist RESULT_RIL_SIM_ABSENT:I = 0x78

.field public static final whitelist RESULT_RIL_SIM_BUSY:I = 0x84

.field public static final whitelist RESULT_RIL_SIM_ERROR:I = 0x81

.field public static final whitelist RESULT_RIL_SIM_FULL:I = 0x85

.field public static final whitelist RESULT_RIL_SIM_PIN2:I = 0x7e

.field public static final whitelist RESULT_RIL_SIM_PUK2:I = 0x7f

.field public static final whitelist RESULT_RIL_SMS_SEND_FAIL_RETRY:I = 0x65

.field public static final whitelist RESULT_RIL_SUBSCRIPTION_NOT_AVAILABLE:I = 0x80

.field public static final whitelist RESULT_RIL_SYSTEM_ERR:I = 0x6c

.field public static final whitelist RESULT_SMS_BLOCKED_DURING_EMERGENCY:I = 0x1d

.field public static final whitelist RESULT_SMS_SEND_RETRY_FAILED:I = 0x1e

.field public static final blacklist RESULT_STATUS_SUCCESS:I = 0x0

.field public static final blacklist RESULT_STATUS_TIMEOUT:I = 0x1

.field public static final whitelist RESULT_SYSTEM_ERROR:I = 0xf

.field public static final whitelist RESULT_UNEXPECTED_EVENT_STOP_SENDING:I = 0x1c

.field public static final whitelist RESULT_USER_NOT_ALLOWED:I = 0x21

.field public static final blacklist SMS_CATEGORY_FREE_SHORT_CODE:I = 0x1

.field public static final blacklist SMS_CATEGORY_NOT_SHORT_CODE:I = 0x0

.field public static final blacklist SMS_CATEGORY_POSSIBLE_PREMIUM_SHORT_CODE:I = 0x3

.field public static final blacklist SMS_CATEGORY_PREMIUM_SHORT_CODE:I = 0x4

.field public static final blacklist SMS_CATEGORY_STANDARD_SHORT_CODE:I = 0x2

.field public static final blacklist SMS_MESSAGE_PERIOD_NOT_SPECIFIED:I = -0x1

.field public static final blacklist SMS_MESSAGE_PRIORITY_NOT_SPECIFIED:I = -0x1

.field public static final greylist-max-o SMS_RECORD_LENGTH:I = 0xb0

.field public static final whitelist SMS_RP_CAUSE_CALL_BARRING:I = 0xa

.field public static final whitelist SMS_RP_CAUSE_CONGESTION:I = 0x2a

.field public static final whitelist SMS_RP_CAUSE_DESTINATION_OUT_OF_ORDER:I = 0x1b

.field public static final whitelist SMS_RP_CAUSE_FACILITY_NOT_IMPLEMENTED:I = 0x45

.field public static final whitelist SMS_RP_CAUSE_FACILITY_NOT_SUBSCRIBED:I = 0x32

.field public static final whitelist SMS_RP_CAUSE_FACILITY_REJECTED:I = 0x1d

.field public static final whitelist SMS_RP_CAUSE_INFORMATION_ELEMENT_NON_EXISTENT:I = 0x63

.field public static final whitelist SMS_RP_CAUSE_INTERWORKING_UNSPECIFIED:I = 0x7f

.field public static final whitelist SMS_RP_CAUSE_INVALID_MANDATORY_INFORMATION:I = 0x60

.field public static final whitelist SMS_RP_CAUSE_INVALID_MESSAGE_REFERENCE_VALUE:I = 0x51

.field public static final whitelist SMS_RP_CAUSE_MESSAGE_INCOMPATIBLE_WITH_PROTOCOL_STATE:I = 0x62

.field public static final whitelist SMS_RP_CAUSE_MESSAGE_TYPE_NON_EXISTENT:I = 0x61

.field public static final whitelist SMS_RP_CAUSE_NETWORK_OUT_OF_ORDER:I = 0x26

.field public static final whitelist SMS_RP_CAUSE_OPERATOR_DETERMINED_BARRING:I = 0x8

.field public static final whitelist SMS_RP_CAUSE_PROTOCOL_ERROR:I = 0x6f

.field public static final whitelist SMS_RP_CAUSE_RESERVED:I = 0xb

.field public static final whitelist SMS_RP_CAUSE_RESOURCES_UNAVAILABLE:I = 0x2f

.field public static final whitelist SMS_RP_CAUSE_SEMANTICALLY_INCORRECT_MESSAGE:I = 0x5f

.field public static final whitelist SMS_RP_CAUSE_SHORT_MESSAGE_TRANSFER_REJECTED:I = 0x15

.field public static final whitelist SMS_RP_CAUSE_TEMPORARY_FAILURE:I = 0x29

.field public static final whitelist SMS_RP_CAUSE_UNALLOCATED_NUMBER:I = 0x1

.field public static final whitelist SMS_RP_CAUSE_UNIDENTIFIED_SUBSCRIBER:I = 0x1c

.field public static final whitelist SMS_RP_CAUSE_UNKNOWN_SUBSCRIBER:I = 0x1e

.field public static final whitelist STATUS_ON_ICC_FREE:I = 0x0

.field public static final whitelist STATUS_ON_ICC_READ:I = 0x1

.field public static final whitelist STATUS_ON_ICC_SENT:I = 0x5

.field public static final whitelist STATUS_ON_ICC_UNREAD:I = 0x3

.field public static final whitelist STATUS_ON_ICC_UNSENT:I = 0x7

.field private static final greylist-max-o TAG:Ljava/lang/String; = "SmsManager"

.field private static final greylist-max-o sLockObject:Ljava/lang/Object;

.field private static final greylist-max-o sSubInstances:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Pair<",
            "Landroid/content/Context;",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/telephony/SmsManager;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final blacklist mContext:Landroid/content/Context;

.field private greylist-max-p mSubId:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$mgetAttributionTag(Landroid/telephony/SmsManager;)Ljava/lang/String;
    .registers 1

    invoke-direct {p0}, Landroid/telephony/SmsManager;->getAttributionTag()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$msendResolverResult(Landroid/telephony/SmsManager;Landroid/telephony/SmsManager$SubscriptionResolverResult;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Landroid/telephony/SmsManager;->sendResolverResult(Landroid/telephony/SmsManager$SubscriptionResolverResult;IZ)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smformatCrossStackMessageId(J)Ljava/lang/String;
    .registers 2

    invoke-static {p0, p1}, Landroid/telephony/SmsManager;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;
    .registers 1

    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smnotifySmsError(Landroid/app/PendingIntent;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/telephony/SmsManager;->notifySmsError(Landroid/app/PendingIntent;I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smnotifySmsError(Ljava/util/List;I)V
    .registers 2

    invoke-static {p0, p1}, Landroid/telephony/SmsManager;->notifySmsError(Ljava/util/List;I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 87
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->sLockObject:Ljava/lang/Object;

    .line 90
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    .line 94
    const/4 v0, 0x0

    const v1, 0x7fffffff

    invoke-static {v0, v1}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v0

    sput-object v0, Landroid/telephony/SmsManager;->DEFAULT_INSTANCE:Landroid/telephony/SmsManager;

    return-void
.end method

.method private constructor blacklist <init>(Landroid/content/Context;I)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "subId"    # I

    .line 1665
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1666
    iput-object p1, p0, Landroid/telephony/SmsManager;->mContext:Landroid/content/Context;

    .line 1667
    iput p2, p0, Landroid/telephony/SmsManager;->mSubId:I

    .line 1668
    return-void
.end method

.method private greylist-max-o createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/internal/telephony/SmsRawData;",
            ">;)",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .line 2174
    .local p1, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2175
    .local v0, "messages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/telephony/SmsMessage;>;"
    if-eqz p1, :cond_2c

    .line 2176
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    .line 2177
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_c
    if-ge v2, v1, :cond_2c

    .line 2178
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/SmsRawData;

    .line 2180
    .local v3, "data":Lcom/android/internal/telephony/SmsRawData;
    if-eqz v3, :cond_29

    .line 2181
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {v3}, Lcom/android/internal/telephony/SmsRawData;->getBytes()[B

    move-result-object v5

    .line 2182
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v6

    .line 2181
    invoke-static {v4, v5, v6}, Landroid/telephony/SmsMessage;->createFromEfRecord(I[BI)Landroid/telephony/SmsMessage;

    move-result-object v4

    .line 2183
    .local v4, "sms":Landroid/telephony/SmsMessage;
    if-eqz v4, :cond_29

    .line 2184
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2177
    .end local v3    # "data":Lcom/android/internal/telephony/SmsRawData;
    .end local v4    # "sms":Landroid/telephony/SmsMessage;
    :cond_29
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 2189
    .end local v1    # "count":I
    .end local v2    # "i":I
    :cond_2c
    return-object v0
.end method

.method private static blacklist formatCrossStackMessageId(J)Ljava/lang/String;
    .registers 4
    .param p0, "id"    # J

    .line 3622
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "{x-message-id:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private blacklist getAttributionTag()Ljava/lang/String;
    .registers 2

    .line 466
    iget-object v0, p0, Landroid/telephony/SmsManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 467
    const/4 v0, 0x0

    return-object v0

    .line 469
    :cond_6
    iget-object v0, p0, Landroid/telephony/SmsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAttributionTag()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static whitelist getDefault()Landroid/telephony/SmsManager;
    .registers 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1599
    sget-object v0, Landroid/telephony/SmsManager;->DEFAULT_INSTANCE:Landroid/telephony/SmsManager;

    return-object v0
.end method

.method public static whitelist getDefaultSmsSubscriptionId()I
    .registers 2

    .line 2277
    const/4 v0, -0x1

    :try_start_1
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/ISms;->getPreferredSmsSubscription()I

    move-result v0
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_9} :catch_c
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_9} :catch_a

    return v0

    .line 2280
    :catch_a
    move-exception v1

    .line 2281
    .local v1, "e":Ljava/lang/NullPointerException;
    return v0

    .line 2278
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_c
    move-exception v1

    .line 2279
    .local v1, "e":Landroid/os/RemoteException;
    return v0
.end method

.method private static greylist-max-o getISmsService()Lcom/android/internal/telephony/ISms;
    .registers 1

    .line 1838
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    return-object v0
.end method

.method private static greylist-max-o getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;
    .registers 3

    .line 1830
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1831
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_7

    .line 1834
    return-object v0

    .line 1832
    :cond_7
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    const-string v2, "Sms is not supported"

    invoke-direct {v1, v2}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static blacklist getITelephony()Lcom/android/internal/telephony/ITelephony;
    .registers 3

    .line 1798
    invoke-static {}, Landroid/telephony/TelephonyFrameworkInitializer;->getTelephonyServiceManager()Landroid/os/TelephonyServiceManager;

    move-result-object v0

    .line 1799
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager;->getTelephonyServiceRegisterer()Landroid/os/TelephonyServiceManager$ServiceRegisterer;

    move-result-object v0

    .line 1800
    invoke-virtual {v0}, Landroid/os/TelephonyServiceManager$ServiceRegisterer;->get()Landroid/os/IBinder;

    move-result-object v0

    .line 1796
    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 1801
    .local v0, "binder":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_13

    .line 1804
    return-object v0

    .line 1802
    :cond_13
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not find Telephony Service."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private blacklist getOpPackageName()Ljava/lang/String;
    .registers 2

    .line 452
    iget-object v0, p0, Landroid/telephony/SmsManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_6

    .line 453
    const/4 v0, 0x0

    return-object v0

    .line 455
    :cond_6
    iget-object v0, p0, Landroid/telephony/SmsManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static blacklist getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;
    .registers 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "subId"    # I

    .line 1614
    sget-object v0, Landroid/telephony/SmsManager;->sLockObject:Ljava/lang/Object;

    monitor-enter v0

    .line 1615
    :try_start_3
    new-instance v1, Landroid/util/Pair;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1617
    .local v1, "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/Context;Ljava/lang/Integer;>;"
    sget-object v2, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/SmsManager;

    .line 1618
    .local v2, "smsManager":Landroid/telephony/SmsManager;
    if-nez v2, :cond_21

    .line 1619
    new-instance v3, Landroid/telephony/SmsManager;

    invoke-direct {v3, p0, p1}, Landroid/telephony/SmsManager;-><init>(Landroid/content/Context;I)V

    move-object v2, v3

    .line 1620
    sget-object v3, Landroid/telephony/SmsManager;->sSubInstances:Ljava/util/Map;

    invoke-interface {v3, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1622
    :cond_21
    monitor-exit v0

    return-object v2

    .line 1623
    .end local v1    # "key":Landroid/util/Pair;, "Landroid/util/Pair<Landroid/content/Context;Ljava/lang/Integer;>;"
    .end local v2    # "smsManager":Landroid/telephony/SmsManager;
    :catchall_23
    move-exception v1

    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_23

    throw v1
.end method

.method public static whitelist getSmsManagerForSubscriptionId(I)Landroid/telephony/SmsManager;
    .registers 2
    .param p0, "subId"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1644
    const/4 v0, 0x0

    invoke-static {v0, p0}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist notifySmsError(Landroid/app/PendingIntent;I)V
    .registers 3
    .param p0, "pendingIntent"    # Landroid/app/PendingIntent;
    .param p1, "error"    # I

    .line 1808
    if-eqz p0, :cond_7

    .line 1810
    :try_start_2
    invoke-virtual {p0, p1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_5
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2 .. :try_end_5} :catch_6

    .line 1813
    goto :goto_7

    .line 1811
    :catch_6
    move-exception v0

    .line 1815
    :cond_7
    :goto_7
    return-void
.end method

.method private static blacklist notifySmsError(Ljava/util/List;I)V
    .registers 4
    .param p1, "error"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;I)V"
        }
    .end annotation

    .line 1818
    .local p0, "pendingIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    if-eqz p0, :cond_16

    .line 1819
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_6
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_16

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/PendingIntent;

    .line 1820
    .local v1, "pendingIntent":Landroid/app/PendingIntent;
    invoke-static {v1, p1}, Landroid/telephony/SmsManager;->notifySmsError(Landroid/app/PendingIntent;I)V

    .line 1821
    .end local v1    # "pendingIntent":Landroid/app/PendingIntent;
    goto :goto_6

    .line 1823
    :cond_16
    return-void
.end method

.method private blacklist resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V
    .registers 8
    .param p1, "resolverResult"    # Landroid/telephony/SmsManager$SubscriptionResolverResult;

    .line 1719
    const-string v0, "SmsManager"

    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    .line 1720
    .local v1, "subId":I
    const/4 v2, 0x0

    .line 1722
    .local v2, "isSmsSimPickActivityNeeded":Z
    :try_start_7
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 1723
    .local v3, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_12

    .line 1732
    invoke-interface {v3, v1}, Lcom/android/internal/telephony/ISms;->isSmsSimPickActivityNeeded(I)Z

    move-result v4
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_11} :catch_13

    move v2, v4

    .line 1736
    .end local v3    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_12
    goto :goto_1a

    .line 1734
    :catch_13
    move-exception v3

    .line 1735
    .local v3, "ex":Landroid/os/RemoteException;
    const-string/jumbo v4, "resolveSubscriptionForOperation"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1737
    .end local v3    # "ex":Landroid/os/RemoteException;
    :goto_1a
    if-nez v2, :cond_21

    .line 1738
    const/4 v0, 0x0

    invoke-direct {p0, p1, v1, v0}, Landroid/telephony/SmsManager;->sendResolverResult(Landroid/telephony/SmsManager$SubscriptionResolverResult;IZ)V

    .line 1739
    return-void

    .line 1742
    :cond_21
    const-string/jumbo v3, "resolveSubscriptionForOperation isSmsSimPickActivityNeeded is true for calling package. "

    invoke-static {v0, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1749
    :try_start_27
    invoke-static {}, Landroid/telephony/SmsManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    new-instance v4, Landroid/telephony/SmsManager$6;

    invoke-direct {v4, p0, p1}, Landroid/telephony/SmsManager$6;-><init>(Landroid/telephony/SmsManager;Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    const/4 v5, 0x0

    invoke-interface {v3, v5, v5, v4}, Lcom/android/internal/telephony/ITelephony;->enqueueSmsPickResult(Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/IIntegerConsumer;)V
    :try_end_34
    .catch Landroid/os/RemoteException; {:try_start_27 .. :try_end_34} :catch_35

    .line 1764
    goto :goto_3f

    .line 1757
    :catch_35
    move-exception v3

    .line 1758
    .restart local v3    # "ex":Landroid/os/RemoteException;
    const-string v4, "Unable to launch activity"

    invoke-static {v0, v4, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1763
    const/4 v0, 0x1

    invoke-direct {p0, p1, v1, v0}, Landroid/telephony/SmsManager;->sendResolverResult(Landroid/telephony/SmsManager$SubscriptionResolverResult;IZ)V

    .line 1765
    .end local v3    # "ex":Landroid/os/RemoteException;
    :goto_3f
    return-void
.end method

.method private greylist-max-o sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V
    .registers 34
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "persistMessage"    # Z
    .param p7, "priority"    # I
    .param p8, "expectMore"    # Z
    .param p9, "validityPeriod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;ZIZI)V"
        }
    .end annotation

    .line 1365
    .local p3, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    move/from16 v0, p7

    move/from16 v1, p9

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_13c

    .line 1368
    if-eqz p3, :cond_12e

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x1

    if-lt v2, v3, :cond_12e

    .line 1372
    const-string v13, "SmsManager"

    if-ltz v0, :cond_1e

    const/4 v2, 0x3

    if-le v0, v2, :cond_1b

    goto :goto_1e

    :cond_1b
    move/from16 v21, v0

    goto :goto_37

    .line 1373
    :cond_1e
    :goto_1e
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Priority "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v13, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1374
    const/4 v0, -0x1

    move/from16 v21, v0

    .line 1377
    .end local p7    # "priority":I
    .local v21, "priority":I
    :goto_37
    const/4 v0, 0x5

    if-lt v1, v0, :cond_43

    const v0, 0x9b0a0

    if-le v1, v0, :cond_40

    goto :goto_43

    :cond_40
    move/from16 v23, v1

    goto :goto_5c

    .line 1378
    :cond_43
    :goto_43
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid Validity Period "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1379
    const/4 v0, -0x1

    move/from16 v23, v0

    .line 1382
    .end local p9    # "validityPeriod":I
    .local v23, "validityPeriod":I
    :goto_5c
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v3, :cond_e3

    .line 1383
    move/from16 v8, v21

    .line 1384
    .local v8, "finalPriority":I
    move/from16 v10, v23

    .line 1385
    .local v10, "finalValidity":I
    if-eqz p6, :cond_88

    .line 1386
    new-instance v0, Landroid/telephony/SmsManager$4;

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move/from16 v9, p8

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsManager$4;-><init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V

    move-object v14, v1

    invoke-direct {v14, v0}, Landroid/telephony/SmsManager;->resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    goto :goto_de

    .line 1412
    :cond_88
    move-object/from16 v14, p0

    :try_start_8a
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1413
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_ac

    .line 1414
    invoke-virtual {v14}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1
    :try_end_94
    .catch Landroid/os/RemoteException; {:try_start_8a .. :try_end_94} :catch_b5

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move/from16 v9, p6

    move/from16 v11, p8

    move v12, v10

    move v10, v8

    move-object/from16 v8, p5

    .end local v8    # "finalPriority":I
    .local v10, "finalPriority":I
    .local v12, "finalValidity":I
    :try_start_a6
    invoke-interface/range {v0 .. v12}, Lcom/android/internal/telephony/ISms;->sendMultipartTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V
    :try_end_a9
    .catch Landroid/os/RemoteException; {:try_start_a6 .. :try_end_a9} :catch_aa

    goto :goto_b4

    .line 1419
    .end local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    :catch_aa
    move-exception v0

    goto :goto_be

    .line 1413
    .end local v12    # "finalValidity":I
    .restart local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    .restart local v8    # "finalPriority":I
    .local v10, "finalValidity":I
    :cond_ac
    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move v12, v10

    move v10, v8

    move-object/from16 v8, p5

    .line 1423
    .end local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    .end local v8    # "finalPriority":I
    .local v10, "finalPriority":I
    .restart local v12    # "finalValidity":I
    :goto_b4
    goto :goto_de

    .line 1419
    .end local v12    # "finalValidity":I
    .restart local v8    # "finalPriority":I
    .local v10, "finalValidity":I
    :catch_b5
    move-exception v0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move v12, v10

    move v10, v8

    move-object/from16 v8, p5

    .line 1420
    .end local v8    # "finalPriority":I
    .local v0, "e":Landroid/os/RemoteException;
    .local v10, "finalPriority":I
    .restart local v12    # "finalValidity":I
    :goto_be
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMultipartTextMessageInternal (no persist): Couldn\'t send SMS - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1421
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1420
    invoke-static {v13, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1422
    const/16 v1, 0x1f

    invoke-static {v7, v1}, Landroid/telephony/SmsManager;->notifySmsError(Ljava/util/List;I)V

    .line 1425
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v10    # "finalPriority":I
    .end local v12    # "finalValidity":I
    :goto_de
    move/from16 v10, v21

    move/from16 v12, v23

    goto :goto_12d

    .line 1426
    :cond_e3
    move-object/from16 v14, p0

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    const/4 v0, 0x0

    .line 1427
    .local v0, "sentIntent":Landroid/app/PendingIntent;
    const/4 v1, 0x0

    .line 1428
    .local v1, "deliveryIntent":Landroid/app/PendingIntent;
    const/4 v2, 0x0

    if-eqz v7, :cond_100

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_100

    .line 1429
    invoke-interface {v7, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/app/PendingIntent;

    move-object/from16 v18, v0

    goto :goto_102

    .line 1431
    :cond_100
    move-object/from16 v18, v0

    .end local v0    # "sentIntent":Landroid/app/PendingIntent;
    .local v18, "sentIntent":Landroid/app/PendingIntent;
    :goto_102
    if-eqz v8, :cond_114

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_114

    .line 1432
    invoke-interface {v8, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/PendingIntent;

    move-object/from16 v19, v1

    goto :goto_116

    .line 1434
    :cond_114
    move-object/from16 v19, v1

    .end local v1    # "deliveryIntent":Landroid/app/PendingIntent;
    .local v19, "deliveryIntent":Landroid/app/PendingIntent;
    :goto_116
    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object/from16 v17, v0

    check-cast v17, Ljava/lang/String;

    move-object/from16 v15, p1

    move-object/from16 v16, p2

    move/from16 v20, p6

    move/from16 v22, p8

    invoke-direct/range {v14 .. v23}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V

    move/from16 v10, v21

    move/from16 v12, v23

    .line 1438
    .end local v18    # "sentIntent":Landroid/app/PendingIntent;
    .end local v19    # "deliveryIntent":Landroid/app/PendingIntent;
    .end local v21    # "priority":I
    .end local v23    # "validityPeriod":I
    .local v10, "priority":I
    .local v12, "validityPeriod":I
    :goto_12d
    return-void

    .line 1368
    .end local v10    # "priority":I
    .end local v12    # "validityPeriod":I
    .restart local p7    # "priority":I
    .restart local p9    # "validityPeriod":I
    :cond_12e
    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    .line 1369
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid message body"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1366
    :cond_13c
    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;J)V
    .registers 27
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "persistMessage"    # Z
    .param p7, "packageName"    # Ljava/lang/String;
    .param p8, "attributionTag"    # Ljava/lang/String;
    .param p9, "messageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;Z",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "J)V"
        }
    .end annotation

    .line 1131
    .local p3, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_f9

    .line 1134
    if-eqz p3, :cond_eb

    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_eb

    .line 1138
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    if-le v0, v1, :cond_a5

    .line 1149
    if-eqz p6, :cond_3c

    .line 1150
    new-instance v0, Landroid/telephony/SmsManager$3;

    move-object/from16 v1, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-wide/from16 v10, p9

    invoke-direct/range {v0 .. v11}, Landroid/telephony/SmsManager$3;-><init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZJ)V

    move-object v12, v1

    invoke-direct {v12, v0}, Landroid/telephony/SmsManager;->resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    goto/16 :goto_ea

    .line 1173
    :cond_3c
    move-object/from16 v12, p0

    :try_start_3e
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 1174
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_66

    .line 1175
    invoke-virtual {v12}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_3e .. :try_end_48} :catch_6d

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move-wide/from16 v10, p9

    :try_start_5a
    invoke-interface/range {v0 .. v11}, Lcom/android/internal/telephony/ISms;->sendMultipartTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZJ)V
    :try_end_5d
    .catch Landroid/os/RemoteException; {:try_start_5a .. :try_end_5d} :catch_61

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    goto :goto_a4

    .line 1179
    .end local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    :catch_61
    move-exception v0

    move-object v13, v6

    move-object v14, v7

    move-object v15, v8

    goto :goto_74

    .line 1174
    .restart local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_66
    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    goto :goto_a4

    .line 1179
    .end local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    :catch_6d
    move-exception v0

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    .line 1180
    .local v0, "e":Landroid/os/RemoteException;
    :goto_74
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sendMultipartTextMessageInternal: Couldn\'t send SMS - "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1181
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p9 .. p10}, Landroid/telephony/SmsManager;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1180
    const-string v2, "SmsManager"

    invoke-static {v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1182
    const/16 v1, 0x1f

    invoke-static {v14, v1}, Landroid/telephony/SmsManager;->notifySmsError(Ljava/util/List;I)V

    .line 1183
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_a4
    goto :goto_ea

    .line 1186
    :cond_a5
    move-object/from16 v12, p0

    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    const/4 v0, 0x0

    .line 1187
    .local v0, "sentIntent":Landroid/app/PendingIntent;
    const/4 v1, 0x0

    .line 1188
    .local v1, "deliveryIntent":Landroid/app/PendingIntent;
    const/4 v2, 0x0

    if-eqz v14, :cond_c1

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_c1

    .line 1189
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Landroid/app/PendingIntent;

    move-object v5, v0

    goto :goto_c2

    .line 1191
    :cond_c1
    move-object v5, v0

    .end local v0    # "sentIntent":Landroid/app/PendingIntent;
    .local v5, "sentIntent":Landroid/app/PendingIntent;
    :goto_c2
    if-eqz v15, :cond_d3

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d3

    .line 1192
    invoke-interface {v15, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Landroid/app/PendingIntent;

    move-object v6, v1

    goto :goto_d4

    .line 1194
    :cond_d3
    move-object v6, v1

    .end local v1    # "deliveryIntent":Landroid/app/PendingIntent;
    .local v6, "deliveryIntent":Landroid/app/PendingIntent;
    :goto_d4
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v4, v0

    check-cast v4, Ljava/lang/String;

    const/4 v7, 0x1

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-wide/from16 v10, p9

    move-object v1, v12

    invoke-direct/range {v1 .. v11}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 1197
    .end local v5    # "sentIntent":Landroid/app/PendingIntent;
    .end local v6    # "deliveryIntent":Landroid/app/PendingIntent;
    :goto_ea
    return-void

    .line 1134
    :cond_eb
    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    .line 1135
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid message body"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1132
    :cond_f9
    move-object/from16 v13, p3

    move-object/from16 v14, p4

    move-object/from16 v15, p5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid destinationAddress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist sendResolverResult(Landroid/telephony/SmsManager$SubscriptionResolverResult;IZ)V
    .registers 6
    .param p1, "resolverResult"    # Landroid/telephony/SmsManager$SubscriptionResolverResult;
    .param p2, "subId"    # I
    .param p3, "pickActivityShown"    # Z

    .line 1776
    invoke-static {p2}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1777
    invoke-interface {p1, p2}, Landroid/telephony/SmsManager$SubscriptionResolverResult;->onSuccess(I)V

    .line 1778
    return-void

    .line 1781
    :cond_a
    const-wide/32 v0, 0x8a6c688

    invoke-static {v0, v1}, Landroid/compat/Compatibility;->isChangeEnabled(J)Z

    move-result v0

    if-nez v0, :cond_19

    if-nez p3, :cond_19

    .line 1787
    invoke-interface {p1, p2}, Landroid/telephony/SmsManager$SubscriptionResolverResult;->onSuccess(I)V

    goto :goto_1c

    .line 1791
    :cond_19
    invoke-interface {p1}, Landroid/telephony/SmsManager$SubscriptionResolverResult;->onFailure()V

    .line 1793
    :goto_1c
    return-void
.end method

.method private greylist-max-o sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V
    .registers 27
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "persistMessage"    # Z
    .param p7, "priority"    # I
    .param p8, "expectMore"    # Z
    .param p9, "validityPeriod"    # I

    .line 819
    move/from16 v0, p7

    move/from16 v1, p9

    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_d2

    .line 823
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_c8

    .line 827
    const-string v2, "SmsManager"

    if-ltz v0, :cond_1a

    const/4 v3, 0x3

    if-le v0, v3, :cond_18

    goto :goto_1a

    :cond_18
    move v3, v0

    goto :goto_32

    .line 828
    :cond_1a
    :goto_1a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Priority "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 829
    const/4 v0, -0x1

    move v3, v0

    .line 832
    .end local p7    # "priority":I
    .local v3, "priority":I
    :goto_32
    const/4 v0, 0x5

    if-lt v1, v0, :cond_3a

    const v0, 0x9b0a0

    if-le v1, v0, :cond_52

    .line 833
    :cond_3a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid Validity Period "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 834
    const/4 v0, -0x1

    move v1, v0

    .line 837
    .end local p9    # "validityPeriod":I
    .local v1, "validityPeriod":I
    :cond_52
    move v12, v3

    .line 838
    .local v12, "finalPriority":I
    move v14, v1

    .line 849
    .local v14, "finalValidity":I
    if-eqz p6, :cond_71

    .line 850
    new-instance v4, Landroid/telephony/SmsManager$2;

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move/from16 v11, p6

    move/from16 v13, p8

    invoke-direct/range {v4 .. v14}, Landroid/telephony/SmsManager$2;-><init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V

    move-object v0, v4

    move-object v4, v5

    invoke-direct {v4, v0}, Landroid/telephony/SmsManager;->resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    goto :goto_c7

    .line 876
    :cond_71
    move-object/from16 v4, p0

    :try_start_73
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 877
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_a0

    .line 878
    invoke-virtual {v4}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v5

    .line 879
    invoke-direct {v4}, Landroid/telephony/SmsManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v7
    :try_end_81
    .catch Landroid/os/RemoteException; {:try_start_73 .. :try_end_81} :catch_a4

    .line 878
    const/4 v6, 0x0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move/from16 v13, p6

    move/from16 v15, p8

    move-object v4, v0

    move/from16 v16, v14

    move v14, v12

    move-object/from16 v12, p5

    .end local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    .end local v12    # "finalPriority":I
    .local v4, "iSms":Lcom/android/internal/telephony/ISms;
    .local v14, "finalPriority":I
    .local v16, "finalValidity":I
    :try_start_94
    invoke-interface/range {v4 .. v16}, Lcom/android/internal/telephony/ISms;->sendTextForSubscriberWithOptions(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V
    :try_end_97
    .catch Landroid/os/RemoteException; {:try_start_94 .. :try_end_97} :catch_9b

    move v12, v14

    move/from16 v14, v16

    .end local v16    # "finalValidity":I
    .restart local v12    # "finalPriority":I
    .local v14, "finalValidity":I
    goto :goto_a1

    .line 884
    .end local v4    # "iSms":Lcom/android/internal/telephony/ISms;
    .end local v12    # "finalPriority":I
    .local v14, "finalPriority":I
    .restart local v16    # "finalValidity":I
    :catch_9b
    move-exception v0

    move v12, v14

    move/from16 v14, v16

    .end local v16    # "finalValidity":I
    .restart local v12    # "finalPriority":I
    .local v14, "finalValidity":I
    goto :goto_a5

    .line 877
    .restart local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_a0
    move-object v4, v0

    .line 888
    .end local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    :goto_a1
    move-object/from16 v9, p4

    goto :goto_c7

    .line 884
    :catch_a4
    move-exception v0

    .line 885
    .local v0, "e":Landroid/os/RemoteException;
    :goto_a5
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "sendTextMessageInternal(no persist): Couldn\'t send SMS, exception - "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 886
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 885
    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    const/16 v2, 0x1f

    move-object/from16 v9, p4

    invoke-static {v9, v2}, Landroid/telephony/SmsManager;->notifySmsError(Landroid/app/PendingIntent;I)V

    .line 890
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_c7
    return-void

    .line 824
    .end local v1    # "validityPeriod":I
    .end local v3    # "priority":I
    .end local v12    # "finalPriority":I
    .end local v14    # "finalValidity":I
    .restart local p7    # "priority":I
    .restart local p9    # "validityPeriod":I
    :cond_c8
    move-object/from16 v9, p4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid message body"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 820
    :cond_d2
    move-object/from16 v9, p4

    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "Invalid destinationAddress"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private blacklist sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;Ljava/lang/String;J)V
    .registers 26
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "persistMessage"    # Z
    .param p7, "packageName"    # Ljava/lang/String;
    .param p8, "attributionTag"    # Ljava/lang/String;
    .param p9, "messageId"    # J

    .line 716
    invoke-static/range {p1 .. p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_88

    .line 720
    invoke-static/range {p3 .. p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7e

    .line 734
    if-eqz p6, :cond_2a

    .line 735
    new-instance v1, Landroid/telephony/SmsManager$1;

    move-object v2, p0

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v3, p7

    move-object/from16 v4, p8

    move-wide/from16 v11, p9

    invoke-direct/range {v1 .. v12}, Landroid/telephony/SmsManager$1;-><init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V

    invoke-direct {p0, v1}, Landroid/telephony/SmsManager;->resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    goto :goto_7d

    .line 758
    :cond_2a
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 760
    .local v3, "iSms":Lcom/android/internal/telephony/ISms;
    :try_start_2e
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v4

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v5, p7

    move-object/from16 v6, p8

    move-wide/from16 v13, p9

    invoke-interface/range {v3 .. v14}, Lcom/android/internal/telephony/ISms;->sendTextForSubscriber(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZJ)V
    :try_end_47
    .catch Landroid/os/RemoteException; {:try_start_2e .. :try_end_47} :catch_4a

    .line 767
    move-object/from16 v8, p4

    goto :goto_7d

    .line 763
    :catch_4a
    move-exception v0

    .line 764
    .local v0, "e":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "sendTextMessageInternal (no persist): Couldn\'t send SMS, exception - "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 765
    invoke-virtual {v0}, Landroid/os/RemoteException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static/range {p9 .. p10}, Landroid/telephony/SmsManager;->formatCrossStackMessageId(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 764
    const-string v4, "SmsManager"

    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 766
    const/16 v1, 0x1f

    move-object/from16 v8, p4

    invoke-static {v8, v1}, Landroid/telephony/SmsManager;->notifySmsError(Landroid/app/PendingIntent;I)V

    .line 769
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v3    # "iSms":Lcom/android/internal/telephony/ISms;
    :goto_7d
    return-void

    .line 721
    :cond_7e
    move-object/from16 v8, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid message body"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 717
    :cond_88
    move-object/from16 v8, p4

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid destinationAddress"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist checkSmsShortCodeDestination(Ljava/lang/String;Ljava/lang/String;)I
    .registers 10
    .param p1, "destAddress"    # Ljava/lang/String;
    .param p2, "countryIso"    # Ljava/lang/String;

    .line 3450
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    move-object v1, v0

    .line 3451
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_17

    .line 3452
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_b} :catch_1a

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v5, p1

    move-object v6, p2

    .end local p1    # "destAddress":Ljava/lang/String;
    .end local p2    # "countryIso":Ljava/lang/String;
    .local v5, "destAddress":Ljava/lang/String;
    .local v6, "countryIso":Ljava/lang/String;
    :try_start_f
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/telephony/ISms;->checkSmsShortCodeDestination(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result p1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_f .. :try_end_13} :catch_14

    return p1

    .line 3455
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :catch_14
    move-exception v0

    move-object p1, v0

    goto :goto_1e

    .line 3451
    .end local v5    # "destAddress":Ljava/lang/String;
    .end local v6    # "countryIso":Ljava/lang/String;
    .restart local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .restart local p1    # "destAddress":Ljava/lang/String;
    .restart local p2    # "countryIso":Ljava/lang/String;
    :cond_17
    move-object v5, p1

    move-object v6, p2

    .line 3457
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    .end local p1    # "destAddress":Ljava/lang/String;
    .end local p2    # "countryIso":Ljava/lang/String;
    .restart local v5    # "destAddress":Ljava/lang/String;
    .restart local v6    # "countryIso":Ljava/lang/String;
    goto :goto_25

    .line 3455
    .end local v5    # "destAddress":Ljava/lang/String;
    .end local v6    # "countryIso":Ljava/lang/String;
    .restart local p1    # "destAddress":Ljava/lang/String;
    .restart local p2    # "countryIso":Ljava/lang/String;
    :catch_1a
    move-exception v0

    move-object v5, p1

    move-object v6, p2

    move-object p1, v0

    .line 3456
    .end local p2    # "countryIso":Ljava/lang/String;
    .restart local v5    # "destAddress":Ljava/lang/String;
    .restart local v6    # "countryIso":Ljava/lang/String;
    .local p1, "e":Landroid/os/RemoteException;
    :goto_1e
    const-string p2, "SmsManager"

    const-string v0, "checkSmsShortCodeDestination() RemoteException"

    invoke-static {p2, v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3458
    .end local p1    # "e":Landroid/os/RemoteException;
    :goto_25
    const/4 p1, 0x0

    return p1
.end method

.method public blacklist clearStorageMonitorMemoryStatusOverride()V
    .registers 3

    .line 3361
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 3362
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_d

    .line 3363
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ISms;->clearStorageMonitorMemoryStatusOverride(I)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 3367
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_d
    goto :goto_12

    .line 3365
    :catch_e
    move-exception v0

    .line 3366
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3368
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public blacklist copyMessageToIcc([B[BI)Z
    .registers 12
    .param p1, "smsc"    # [B
    .param p2, "pdu"    # [B
    .param p3, "status"    # I

    .line 1871
    const/4 v1, 0x0

    .line 1873
    .local v1, "success":Z
    if-eqz p2, :cond_23

    .line 1877
    :try_start_3
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    move-object v2, v0

    .line 1878
    .local v2, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_1a

    .line 1879
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_e} :catch_1e

    const/4 v4, 0x0

    move-object v7, p1

    move-object v6, p2

    move v5, p3

    .end local p1    # "smsc":[B
    .end local p2    # "pdu":[B
    .end local p3    # "status":I
    .local v5, "status":I
    .local v6, "pdu":[B
    .local v7, "smsc":[B
    :try_start_12
    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/ISms;->copyMessageToIccEfForSubscriber(ILjava/lang/String;I[B[B)Z

    move-result p1
    :try_end_16
    .catch Landroid/os/RemoteException; {:try_start_12 .. :try_end_16} :catch_18

    move v1, p1

    .end local v1    # "success":Z
    .local p1, "success":Z
    goto :goto_1d

    .line 1883
    .end local v2    # "iSms":Lcom/android/internal/telephony/ISms;
    .end local p1    # "success":Z
    .restart local v1    # "success":Z
    :catch_18
    move-exception v0

    goto :goto_22

    .line 1878
    .end local v5    # "status":I
    .end local v6    # "pdu":[B
    .end local v7    # "smsc":[B
    .restart local v2    # "iSms":Lcom/android/internal/telephony/ISms;
    .local p1, "smsc":[B
    .restart local p2    # "pdu":[B
    .restart local p3    # "status":I
    :cond_1a
    move-object v7, p1

    move-object v6, p2

    move v5, p3

    .line 1885
    .end local v2    # "iSms":Lcom/android/internal/telephony/ISms;
    .end local p1    # "smsc":[B
    .end local p2    # "pdu":[B
    .end local p3    # "status":I
    .restart local v5    # "status":I
    .restart local v6    # "pdu":[B
    .restart local v7    # "smsc":[B
    :goto_1d
    goto :goto_22

    .line 1883
    .end local v5    # "status":I
    .end local v6    # "pdu":[B
    .end local v7    # "smsc":[B
    .restart local p1    # "smsc":[B
    .restart local p2    # "pdu":[B
    .restart local p3    # "status":I
    :catch_1e
    move-exception v0

    move-object v7, p1

    move-object v6, p2

    move v5, p3

    .line 1887
    .end local p1    # "smsc":[B
    .end local p2    # "pdu":[B
    .end local p3    # "status":I
    .restart local v5    # "status":I
    .restart local v6    # "pdu":[B
    .restart local v7    # "smsc":[B
    :goto_22
    return v1

    .line 1874
    .end local v5    # "status":I
    .end local v6    # "pdu":[B
    .end local v7    # "smsc":[B
    .restart local p1    # "smsc":[B
    .restart local p2    # "pdu":[B
    .restart local p3    # "status":I
    :cond_23
    move-object v7, p1

    move-object v6, p2

    .end local p1    # "smsc":[B
    .end local p2    # "pdu":[B
    .restart local v6    # "pdu":[B
    .restart local v7    # "smsc":[B
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo p2, "pdu is null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist createAppSpecificSmsToken(Landroid/app/PendingIntent;)Ljava/lang/String;
    .registers 5
    .param p1, "intent"    # Landroid/app/PendingIntent;

    .line 3199
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 3200
    .local v1, "iccSms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2, v0, p1}, Lcom/android/internal/telephony/ISms;->createAppSpecificSmsToken(ILjava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_e

    return-object v0

    .line 3203
    .end local v1    # "iccSms":Lcom/android/internal/telephony/ISms;
    :catch_e
    move-exception v1

    .line 3204
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3205
    return-object v0
.end method

.method public whitelist createAppSpecificSmsTokenWithPackageInfo(Ljava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;
    .registers 6
    .param p1, "prefixes"    # Ljava/lang/String;
    .param p2, "intent"    # Landroid/app/PendingIntent;

    .line 3323
    const/4 v0, 0x0

    :try_start_1
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 3324
    .local v1, "iccSms":Lcom/android/internal/telephony/ISms;
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2, v0, p1, p2}, Lcom/android/internal/telephony/ISms;->createAppSpecificSmsTokenWithPackageInfo(ILjava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;)Ljava/lang/String;

    move-result-object v0
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_d} :catch_e

    return-object v0

    .line 3327
    .end local v1    # "iccSms":Lcom/android/internal/telephony/ISms;
    :catch_e
    move-exception v1

    .line 3328
    .local v1, "ex":Landroid/os/RemoteException;
    invoke-virtual {v1}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3329
    return-object v0
.end method

.method public whitelist createForSubscriptionId(I)Landroid/telephony/SmsManager;
    .registers 3
    .param p1, "subId"    # I

    .line 1662
    iget-object v0, p0, Landroid/telephony/SmsManager;->mContext:Landroid/content/Context;

    invoke-static {v0, p1}, Landroid/telephony/SmsManager;->getSmsManagerForContextAndSubscriptionId(Landroid/content/Context;I)Landroid/telephony/SmsManager;

    move-result-object v0

    return-object v0
.end method

.method public greylist deleteMessageFromIcc(I)Z
    .registers 10
    .param p1, "messageIndex"    # I

    .line 1914
    const/4 v1, 0x0

    .line 1917
    .local v1, "success":Z
    :try_start_1
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    move-object v2, v0

    .line 1918
    .local v2, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_18

    .line 1919
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_1a

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v4, 0x0

    move v5, p1

    .end local p1    # "messageIndex":I
    .local v5, "messageIndex":I
    :try_start_10
    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z

    move-result p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_16

    move v1, p1

    .end local v1    # "success":Z
    .local p1, "success":Z
    goto :goto_19

    .line 1923
    .end local v2    # "iSms":Lcom/android/internal/telephony/ISms;
    .end local p1    # "success":Z
    .restart local v1    # "success":Z
    :catch_16
    move-exception v0

    goto :goto_1c

    .line 1918
    .end local v5    # "messageIndex":I
    .restart local v2    # "iSms":Lcom/android/internal/telephony/ISms;
    .local p1, "messageIndex":I
    :cond_18
    move v5, p1

    .line 1925
    .end local v2    # "iSms":Lcom/android/internal/telephony/ISms;
    .end local p1    # "messageIndex":I
    .restart local v5    # "messageIndex":I
    :goto_19
    goto :goto_1c

    .line 1923
    .end local v5    # "messageIndex":I
    .restart local p1    # "messageIndex":I
    :catch_1a
    move-exception v0

    move v5, p1

    .line 1927
    .end local p1    # "messageIndex":I
    .restart local v5    # "messageIndex":I
    :goto_1c
    return v1
.end method

.method public whitelist disableCellBroadcastRange(III)Z
    .registers 11
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "ranType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2133
    const-string v0, "disableCellBroadcastRange: "

    const-string v1, "SmsManager"

    const/4 v2, 0x0

    .line 2135
    .local v2, "success":Z
    if-lt p2, p1, :cond_42

    .line 2139
    :try_start_7
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 2140
    .local v3, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_3c

    .line 2143
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v4

    .line 2144
    .local v4, "subId":I
    invoke-interface {v3, v4, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->disableCellBroadcastRangeForSubscriber(IIII)Z

    move-result v5

    move v2, v5

    .line 2146
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_25

    const-string/jumbo v6, "succeeded"

    goto :goto_27

    :cond_25
    const-string v6, "failed"

    :goto_27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at calling disableCellBroadcastRangeForSubscriber. subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_3c} :catch_3d

    .line 2152
    .end local v3    # "iSms":Lcom/android/internal/telephony/ISms;
    .end local v4    # "subId":I
    :cond_3c
    goto :goto_41

    .line 2149
    :catch_3d
    move-exception v3

    .line 2150
    .local v3, "ex":Landroid/os/RemoteException;
    invoke-static {v1, v0, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2154
    .end local v3    # "ex":Landroid/os/RemoteException;
    :goto_41
    return v2

    .line 2136
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endMessageId < startMessageId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist divideMessage(Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 4
    .param p1, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 958
    if-eqz p1, :cond_b

    .line 961
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v0

    invoke-static {p1, v0}, Landroid/telephony/SmsMessage;->fragmentText(Ljava/lang/String;I)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 959
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist downloadMultimediaMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationUrl"    # Ljava/lang/String;
    .param p3, "contentUri"    # Landroid/net/Uri;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "downloadedIntent"    # Landroid/app/PendingIntent;

    .line 2989
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "locationUrl":Ljava/lang/String;
    .end local p3    # "contentUri":Landroid/net/Uri;
    .end local p4    # "configOverrides":Landroid/os/Bundle;
    .end local p5    # "downloadedIntent":Landroid/app/PendingIntent;
    .local v1, "context":Landroid/content/Context;
    .local v2, "locationUrl":Ljava/lang/String;
    .local v3, "contentUri":Landroid/net/Uri;
    .local v4, "configOverrides":Landroid/os/Bundle;
    .local v5, "downloadedIntent":Landroid/app/PendingIntent;
    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->downloadMultimediaMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V

    .line 2991
    return-void
.end method

.method public whitelist downloadMultimediaMessage(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "locationUrl"    # Ljava/lang/String;
    .param p3, "contentUri"    # Landroid/net/Uri;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "downloadedIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageId"    # J

    .line 3040
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2c

    .line 3043
    if-eqz p3, :cond_24

    .line 3046
    const-string/jumbo v0, "mms"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/telephony/MmsManager;

    .line 3047
    .local v3, "m":Landroid/telephony/MmsManager;
    if-eqz v3, :cond_23

    .line 3048
    new-instance v1, Landroid/telephony/SmsManager$8;

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Landroid/telephony/SmsManager$8;-><init>(Landroid/telephony/SmsManager;Landroid/telephony/MmsManager;Ljava/lang/String;Landroid/net/Uri;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V

    invoke-direct {p0, v1}, Landroid/telephony/SmsManager;->resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    .line 3061
    :cond_23
    return-void

    .line 3044
    .end local v3    # "m":Landroid/telephony/MmsManager;
    :cond_24
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri contentUri null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3041
    :cond_2c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty MMS location URL"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist enableCellBroadcastRange(III)Z
    .registers 11
    .param p1, "startMessageId"    # I
    .param p2, "endMessageId"    # I
    .param p3, "ranType"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2067
    const-string v0, "enableCellBroadcastRange: "

    const-string v1, "SmsManager"

    const/4 v2, 0x0

    .line 2068
    .local v2, "success":Z
    if-lt p2, p1, :cond_42

    .line 2072
    :try_start_7
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v3

    .line 2073
    .local v3, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v3, :cond_3c

    .line 2076
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v4

    .line 2077
    .local v4, "subId":I
    invoke-interface {v3, v4, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->enableCellBroadcastRangeForSubscriber(IIII)Z

    move-result v5

    move v2, v5

    .line 2079
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_25

    const-string/jumbo v6, "succeeded"

    goto :goto_27

    :cond_25
    const-string v6, "failed"

    :goto_27
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at calling enableCellBroadcastRangeForSubscriber. subId = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_3c} :catch_3d

    .line 2085
    .end local v3    # "iSms":Lcom/android/internal/telephony/ISms;
    .end local v4    # "subId":I
    :cond_3c
    goto :goto_41

    .line 2082
    :catch_3d
    move-exception v3

    .line 2083
    .local v3, "ex":Landroid/os/RemoteException;
    invoke-static {v1, v0, v3}, Lcom/android/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2087
    .end local v3    # "ex":Landroid/os/RemoteException;
    :goto_41
    return v2

    .line 2069
    :cond_42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "endMessageId < startMessageId"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public greylist getAllMessagesFromIcc()Ljava/util/ArrayList;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .line 2007
    const/4 v0, 0x0

    .line 2010
    .local v0, "records":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/telephony/SmsRawData;>;"
    :try_start_1
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2011
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_12

    .line 2012
    nop

    .line 2013
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    .line 2012
    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISms;->getAllMessagesFromIccEfForSubscriber(ILjava/lang/String;)Ljava/util/List;

    move-result-object v2
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_13

    move-object v0, v2

    .line 2018
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_12
    goto :goto_14

    .line 2016
    :catch_13
    move-exception v1

    .line 2020
    :goto_14
    invoke-direct {p0, v0}, Landroid/telephony/SmsManager;->createMessageListFromRawRecords(Ljava/util/List;)Ljava/util/ArrayList;

    move-result-object v1

    return-object v1
.end method

.method public whitelist getCarrierConfigValues()Landroid/os/Bundle;
    .registers 3

    .line 3159
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 3160
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_f

    .line 3161
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ISms;->getCarrierConfigValuesForSubscriber(I)Landroid/os/Bundle;

    move-result-object v1
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_e} :catch_10

    return-object v1

    .line 3165
    .end local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_f
    goto :goto_11

    .line 3163
    :catch_10
    move-exception v0

    .line 3166
    :goto_11
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    return-object v0
.end method

.method public greylist-max-o getImsSmsFormat()Ljava/lang/String;
    .registers 4

    .line 2247
    const-string/jumbo v0, "unknown"

    .line 2249
    .local v0, "format":Ljava/lang/String;
    :try_start_3
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2250
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_12

    .line 2251
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISms;->getImsSmsFormatForSubscriber(I)Ljava/lang/String;

    move-result-object v2
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_11} :catch_13

    move-object v0, v2

    .line 2255
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_12
    goto :goto_14

    .line 2253
    :catch_13
    move-exception v1

    .line 2256
    :goto_14
    return-object v0
.end method

.method public blacklist getMessagesFromIcc()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/telephony/SmsMessage;",
            ">;"
        }
    .end annotation

    .line 1994
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getAllMessagesFromIcc()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getPremiumSmsConsent(Ljava/lang/String;)I
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3557
    const/4 v0, 0x0

    .line 3559
    .local v0, "permission":I
    :try_start_1
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 3560
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_c

    .line 3561
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ISms;->getPremiumSmsPermission(Ljava/lang/String;)I

    move-result v2
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_b} :catch_d

    move v0, v2

    .line 3565
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_c
    goto :goto_15

    .line 3563
    :catch_d
    move-exception v1

    .line 3564
    .local v1, "e":Landroid/os/RemoteException;
    const-string v2, "SmsManager"

    const-string v3, "getPremiumSmsPermission() RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3566
    .end local v1    # "e":Landroid/os/RemoteException;
    :goto_15
    return v0
.end method

.method public whitelist getSmsCapacityOnIcc()I
    .registers 5

    .line 2331
    const/4 v0, 0x0

    .line 2333
    .local v0, "ret":I
    :try_start_1
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2334
    .local v1, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_10

    .line 2335
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISms;->getSmsCapacityOnIccForSubscriber(I)I

    move-result v2
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11

    move v0, v2

    .line 2339
    .end local v1    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_10
    goto :goto_1a

    .line 2337
    :catch_11
    move-exception v1

    .line 2338
    .local v1, "ex":Landroid/os/RemoteException;
    const-string v2, "SmsManager"

    const-string/jumbo v3, "getSmsCapacityOnIcc() RemoteException"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2340
    .end local v1    # "ex":Landroid/os/RemoteException;
    :goto_1a
    return v0
.end method

.method public whitelist getSmsMessagesForFinancialApp(Landroid/os/Bundle;Ljava/util/concurrent/Executor;Landroid/telephony/SmsManager$FinancialSmsCallback;)V
    .registers 4
    .param p1, "params"    # Landroid/os/Bundle;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "callback"    # Landroid/telephony/SmsManager$FinancialSmsCallback;

    .line 3245
    return-void
.end method

.method public whitelist getSmscAddress()Ljava/lang/String;
    .registers 5

    .line 3487
    const/4 v0, 0x0

    .line 3490
    .local v0, "smsc":Ljava/lang/String;
    :try_start_1
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 3491
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_12

    .line 3492
    nop

    .line 3493
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    .line 3492
    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Lcom/android/internal/telephony/ISms;->getSmscAddressFromIccEfForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2
    :try_end_11
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_11} :catch_14

    move-object v0, v2

    .line 3497
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_12
    nop

    .line 3498
    return-object v0

    .line 3495
    :catch_14
    move-exception v1

    .line 3496
    .local v1, "ex":Landroid/os/RemoteException;
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public whitelist getSmscIdentity()Landroid/net/Uri;
    .registers 6
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3644
    const-string v0, "SmsManager"

    sget-object v1, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    .line 3646
    .local v1, "smscUri":Landroid/net/Uri;
    :try_start_4
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSubscriberInfoService()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 3647
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-eqz v2, :cond_27

    .line 3652
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    const/4 v4, 0x5

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSmscIdentity(II)Landroid/net/Uri;

    move-result-object v3

    move-object v1, v3

    .line 3653
    sget-object v3, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    invoke-virtual {v3, v1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 3655
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3

    const/4 v4, 0x2

    invoke-interface {v2, v3, v4}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSmscIdentity(II)Landroid/net/Uri;

    move-result-object v0

    move-object v1, v0

    .line 3660
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_26
    goto :goto_50

    .line 3648
    .restart local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_27
    const-string/jumbo v3, "getSmscIdentity(): IPhoneSubInfo instance is NULL"

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3649
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "Telephony service is not available"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "smscUri":Landroid/net/Uri;
    .end local p0    # "this":Landroid/telephony/SmsManager;
    throw v3
    :try_end_35
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_35} :catch_35

    .line 3657
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    .restart local v1    # "smscUri":Landroid/net/Uri;
    .restart local p0    # "this":Landroid/telephony/SmsManager;
    :catch_35
    move-exception v2

    .line 3658
    .local v2, "ex":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "getSmscIdentity(): Exception : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/android/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3659
    invoke-virtual {v2}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    .line 3661
    .end local v2    # "ex":Landroid/os/RemoteException;
    :goto_50
    return-object v1
.end method

.method public whitelist getSubscriptionId()I
    .registers 3

    .line 1693
    :try_start_0
    iget v0, p0, Landroid/telephony/SmsManager;->mSubId:I

    const v1, 0x7fffffff

    if-ne v0, v1, :cond_10

    .line 1694
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->getPreferredSmsSubscription()I

    move-result v0

    goto :goto_12

    :cond_10
    iget v0, p0, Landroid/telephony/SmsManager;->mSubId:I
    :try_end_12
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_12} :catch_13

    .line 1693
    :goto_12
    return v0

    .line 1695
    :catch_13
    move-exception v0

    .line 1696
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    return v1
.end method

.method public blacklist getWapMessageSize(Ljava/lang/String;)J
    .registers 5
    .param p1, "locationUrl"    # Ljava/lang/String;

    .line 3678
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 3679
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_b

    .line 3680
    invoke-interface {v0, p1}, Lcom/android/internal/telephony/ISms;->getWapMessageSize(Ljava/lang/String;)J

    move-result-wide v1

    return-wide v1

    .line 3682
    :cond_b
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not acquire ISms service."

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/telephony/SmsManager;
    .end local p1    # "locationUrl":Ljava/lang/String;
    throw v1
    :try_end_13
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_13} :catch_13

    .line 3684
    .end local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    .restart local p0    # "this":Landroid/telephony/SmsManager;
    .restart local p1    # "locationUrl":Ljava/lang/String;
    :catch_13
    move-exception v0

    .line 3685
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public whitelist injectSmsPdu([BLjava/lang/String;Landroid/app/PendingIntent;)V
    .registers 6
    .param p1, "pdu"    # [B
    .param p2, "format"    # Ljava/lang/String;
    .param p3, "receivedIntent"    # Landroid/app/PendingIntent;

    .line 927
    const-string v0, "3gpp"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_19

    const-string v0, "3gpp2"

    invoke-virtual {p2, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_19

    .line 929
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid pdu format. format must be either 3gpp or 3gpp2"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 933
    :cond_19
    :goto_19
    :try_start_19
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 934
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_27

    .line 935
    nop

    .line 936
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    .line 935
    invoke-interface {v0, v1, p1, p2, p3}, Lcom/android/internal/telephony/ISms;->injectSmsPduForSubscriber(I[BLjava/lang/String;Landroid/app/PendingIntent;)V
    :try_end_27
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_27} :catch_28

    .line 946
    .end local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_27
    goto :goto_34

    .line 938
    :catch_28
    move-exception v0

    .line 940
    .local v0, "ex":Landroid/os/RemoteException;
    if-eqz p3, :cond_33

    .line 941
    const/16 v1, 0x1f

    :try_start_2d
    invoke-virtual {p3, v1}, Landroid/app/PendingIntent;->send(I)V
    :try_end_30
    .catch Landroid/app/PendingIntent$CanceledException; {:try_start_2d .. :try_end_30} :catch_31

    goto :goto_33

    .line 943
    :catch_31
    move-exception v1

    goto :goto_34

    .line 945
    :cond_33
    :goto_33
    nop

    .line 947
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_34
    return-void
.end method

.method public greylist-max-o isImsSmsSupported()Z
    .registers 4

    .line 2213
    const/4 v0, 0x0

    .line 2215
    .local v0, "boSupported":Z
    :try_start_1
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v1

    .line 2216
    .local v1, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v1, :cond_10

    .line 2217
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ISms;->isImsSmsSupportedForSubscriber(I)Z

    move-result v2
    :try_end_f
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_f} :catch_11

    move v0, v2

    .line 2221
    .end local v1    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_10
    goto :goto_12

    .line 2219
    :catch_11
    move-exception v1

    .line 2222
    :goto_12
    return v0
.end method

.method public greylist isSMSPromptEnabled()Z
    .registers 4

    .line 2293
    const/4 v0, 0x0

    .line 2295
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    const/4 v1, 0x0

    :try_start_2
    invoke-static {}, Landroid/telephony/TelephonyManager;->getSmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v2

    move-object v0, v2

    .line 2296
    invoke-interface {v0}, Lcom/android/internal/telephony/ISms;->isSMSPromptEnabled()Z

    move-result v1
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_b} :catch_e
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_b} :catch_c

    return v1

    .line 2299
    :catch_c
    move-exception v2

    .line 2300
    .local v2, "ex":Ljava/lang/NullPointerException;
    return v1

    .line 2297
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_e
    move-exception v2

    .line 2298
    .local v2, "ex":Landroid/os/RemoteException;
    return v1
.end method

.method public whitelist resetAllCellBroadcastRanges()V
    .registers 3
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3610
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 3611
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_d

    .line 3614
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/ISms;->resetAllCellBroadcastRanges(I)Z
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 3618
    .end local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_d
    goto :goto_12

    .line 3616
    :catch_e
    move-exception v0

    .line 3617
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3619
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public whitelist sendDataMessage(Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 16
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "destinationPort"    # S
    .param p4, "data"    # [B
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 1535
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2a

    .line 1539
    if-eqz p4, :cond_1b

    array-length v0, p4

    if-eqz v0, :cond_1b

    .line 1543
    new-instance v1, Landroid/telephony/SmsManager$5;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .end local p1    # "destinationAddress":Ljava/lang/String;
    .end local p2    # "scAddress":Ljava/lang/String;
    .end local p3    # "destinationPort":S
    .end local p4    # "data":[B
    .end local p5    # "sentIntent":Landroid/app/PendingIntent;
    .end local p6    # "deliveryIntent":Landroid/app/PendingIntent;
    .local v3, "destinationAddress":Ljava/lang/String;
    .local v4, "scAddress":Ljava/lang/String;
    .local v5, "destinationPort":S
    .local v6, "data":[B
    .local v7, "sentIntent":Landroid/app/PendingIntent;
    .local v8, "deliveryIntent":Landroid/app/PendingIntent;
    invoke-direct/range {v1 .. v8}, Landroid/telephony/SmsManager$5;-><init>(Landroid/telephony/SmsManager;Ljava/lang/String;Ljava/lang/String;S[BLandroid/app/PendingIntent;Landroid/app/PendingIntent;)V

    invoke-direct {p0, v1}, Landroid/telephony/SmsManager;->resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    .line 1560
    return-void

    .line 1539
    .end local v3    # "destinationAddress":Ljava/lang/String;
    .end local v4    # "scAddress":Ljava/lang/String;
    .end local v5    # "destinationPort":S
    .end local v6    # "data":[B
    .end local v7    # "sentIntent":Landroid/app/PendingIntent;
    .end local v8    # "deliveryIntent":Landroid/app/PendingIntent;
    .restart local p1    # "destinationAddress":Ljava/lang/String;
    .restart local p2    # "scAddress":Ljava/lang/String;
    .restart local p3    # "destinationPort":S
    .restart local p4    # "data":[B
    .restart local p5    # "sentIntent":Landroid/app/PendingIntent;
    .restart local p6    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_1b
    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move v5, p3

    move-object v6, p4

    move-object v7, p5

    move-object v8, p6

    .line 1540
    .end local p1    # "destinationAddress":Ljava/lang/String;
    .end local p2    # "scAddress":Ljava/lang/String;
    .end local p3    # "destinationPort":S
    .end local p4    # "data":[B
    .end local p5    # "sentIntent":Landroid/app/PendingIntent;
    .end local p6    # "deliveryIntent":Landroid/app/PendingIntent;
    .restart local v3    # "destinationAddress":Ljava/lang/String;
    .restart local v4    # "scAddress":Ljava/lang/String;
    .restart local v5    # "destinationPort":S
    .restart local v6    # "data":[B
    .restart local v7    # "sentIntent":Landroid/app/PendingIntent;
    .restart local v8    # "deliveryIntent":Landroid/app/PendingIntent;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid message data"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1536
    .end local v3    # "destinationAddress":Ljava/lang/String;
    .end local v4    # "scAddress":Ljava/lang/String;
    .end local v5    # "destinationPort":S
    .end local v6    # "data":[B
    .end local v7    # "sentIntent":Landroid/app/PendingIntent;
    .end local v8    # "deliveryIntent":Landroid/app/PendingIntent;
    .restart local p1    # "destinationAddress":Ljava/lang/String;
    .restart local p2    # "scAddress":Ljava/lang/String;
    .restart local p3    # "destinationPort":S
    .restart local p4    # "data":[B
    .restart local p5    # "sentIntent":Landroid/app/PendingIntent;
    .restart local p6    # "deliveryIntent":Landroid/app/PendingIntent;
    :cond_2a
    move-object v3, p1

    move-object v4, p2

    .end local p1    # "destinationAddress":Ljava/lang/String;
    .end local p2    # "scAddress":Ljava/lang/String;
    .restart local v3    # "destinationAddress":Ljava/lang/String;
    .restart local v4    # "scAddress":Ljava/lang/String;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Invalid destinationAddress"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public whitelist sendMultimediaMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;)V
    .registers 14
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "locationUrl"    # Ljava/lang/String;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;

    .line 2880
    const-wide/16 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .end local p1    # "context":Landroid/content/Context;
    .end local p2    # "contentUri":Landroid/net/Uri;
    .end local p3    # "locationUrl":Ljava/lang/String;
    .end local p4    # "configOverrides":Landroid/os/Bundle;
    .end local p5    # "sentIntent":Landroid/app/PendingIntent;
    .local v1, "context":Landroid/content/Context;
    .local v2, "contentUri":Landroid/net/Uri;
    .local v3, "locationUrl":Ljava/lang/String;
    .local v4, "configOverrides":Landroid/os/Bundle;
    .local v5, "sentIntent":Landroid/app/PendingIntent;
    invoke-virtual/range {v0 .. v7}, Landroid/telephony/SmsManager;->sendMultimediaMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V

    .line 2882
    return-void
.end method

.method public whitelist sendMultimediaMessage(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V
    .registers 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "contentUri"    # Landroid/net/Uri;
    .param p3, "locationUrl"    # Ljava/lang/String;
    .param p4, "configOverrides"    # Landroid/os/Bundle;
    .param p5, "sentIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageId"    # J

    .line 2929
    if-eqz p2, :cond_1e

    .line 2932
    const-string/jumbo v0, "mms"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/telephony/MmsManager;

    .line 2933
    .local v3, "m":Landroid/telephony/MmsManager;
    if-eqz v3, :cond_1d

    .line 2934
    new-instance v1, Landroid/telephony/SmsManager$7;

    move-object v2, p0

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    move-wide/from16 v8, p6

    invoke-direct/range {v1 .. v9}, Landroid/telephony/SmsManager$7;-><init>(Landroid/telephony/SmsManager;Landroid/telephony/MmsManager;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/PendingIntent;J)V

    invoke-direct {p0, v1}, Landroid/telephony/SmsManager;->resolveSubscriptionForOperation(Landroid/telephony/SmsManager$SubscriptionResolverResult;)V

    .line 2947
    :cond_1d
    return-void

    .line 2930
    .end local v3    # "m":Landroid/telephony/MmsManager;
    :cond_1e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Uri contentUri null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 17
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .line 1070
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    nop

    .line 1071
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1072
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 1070
    const/4 v6, 0x1

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 1073
    return-void
.end method

.method public greylist sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;IZI)V
    .registers 19
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "priority"    # I
    .param p7, "expectMore"    # Z
    .param p8, "validityPeriod"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList<",
            "Landroid/app/PendingIntent;",
            ">;IZI)V"
        }
    .end annotation

    .line 1356
    .local p3, "parts":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZIZI)V

    .line 1359
    return-void
.end method

.method public whitelist sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;J)V
    .registers 19
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "messageId"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;J)V"
        }
    .end annotation

    .line 1090
    .local p3, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    nop

    .line 1091
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1092
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 1090
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v9, p6

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 1093
    return-void
.end method

.method public whitelist sendMultipartTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)V
    .registers 19
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p6, "packageName"    # Ljava/lang/String;
    .param p7, "attributionTag"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1121
    .local p3, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    const/4 v6, 0x1

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 1124
    return-void
.end method

.method public whitelist sendMultipartTextMessageWithoutPersisting(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .registers 17
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/List<",
            "Landroid/app/PendingIntent;",
            ">;)V"
        }
    .end annotation

    .line 1228
    .local p3, "parts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "sentIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    .local p5, "deliveryIntents":Ljava/util/List;, "Ljava/util/List<Landroid/app/PendingIntent;>;"
    nop

    .line 1229
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1230
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 1228
    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsManager;->sendMultipartTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 1231
    return-void
.end method

.method public whitelist sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 17
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 573
    nop

    .line 574
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Landroid/telephony/SmsManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 573
    const/4 v6, 0x1

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 576
    return-void
.end method

.method public greylist-max-r sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZI)V
    .registers 19
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "priority"    # I
    .param p7, "expectMore"    # Z
    .param p8, "validityPeriod"    # I

    .line 709
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZI)V

    .line 711
    return-void
.end method

.method public whitelist sendTextMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;J)V
    .registers 19
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;
    .param p6, "messageId"    # J

    .line 596
    nop

    .line 597
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-direct {p0}, Landroid/telephony/SmsManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 596
    const/4 v6, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-wide/from16 v9, p6

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 599
    return-void
.end method

.method public whitelist sendTextMessageWithoutPersisting(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;)V
    .registers 17
    .param p1, "destinationAddress"    # Ljava/lang/String;
    .param p2, "scAddress"    # Ljava/lang/String;
    .param p3, "text"    # Ljava/lang/String;
    .param p4, "sentIntent"    # Landroid/app/PendingIntent;
    .param p5, "deliveryIntent"    # Landroid/app/PendingIntent;

    .line 810
    nop

    .line 811
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 812
    invoke-direct {p0}, Landroid/telephony/SmsManager;->getAttributionTag()Ljava/lang/String;

    move-result-object v8

    .line 810
    const/4 v6, 0x0

    const-wide/16 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    invoke-direct/range {v0 .. v10}, Landroid/telephony/SmsManager;->sendTextMessageInternal(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;ZLjava/lang/String;Ljava/lang/String;J)V

    .line 813
    return-void
.end method

.method public whitelist setPremiumSmsConsent(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "permission"    # I
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 3587
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 3588
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_9

    .line 3589
    invoke-interface {v0, p1, p2}, Lcom/android/internal/telephony/ISms;->setPremiumSmsPermission(Ljava/lang/String;I)V
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_9} :catch_a

    .line 3593
    .end local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_9
    goto :goto_13

    .line 3591
    :catch_a
    move-exception v0

    .line 3592
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "SmsManager"

    const-string/jumbo v2, "setPremiumSmsPermission() RemoteException"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3594
    .end local v0    # "e":Landroid/os/RemoteException;
    :goto_13
    return-void
.end method

.method public whitelist setSmscAddress(Ljava/lang/String;)Z
    .registers 5
    .param p1, "smsc"    # Ljava/lang/String;

    .line 3528
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 3529
    .local v0, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_11

    .line 3530
    nop

    .line 3531
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    .line 3530
    const/4 v2, 0x0

    invoke-interface {v0, p1, v1, v2}, Lcom/android/internal/telephony/ISms;->setSmscAddressOnIccEfForSubscriber(Ljava/lang/String;ILjava/lang/String;)Z

    move-result v1
    :try_end_10
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_10} :catch_14

    return v1

    .line 3535
    .end local v0    # "iSms":Lcom/android/internal/telephony/ISms;
    :cond_11
    nop

    .line 3536
    const/4 v0, 0x0

    return v0

    .line 3533
    :catch_14
    move-exception v0

    .line 3534
    .local v0, "ex":Landroid/os/RemoteException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public blacklist setStorageMonitorMemoryStatusOverride(Z)V
    .registers 4
    .param p1, "storageAvailable"    # Z

    .line 3342
    :try_start_0
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsServiceOrThrow()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    .line 3343
    .local v0, "iccISms":Lcom/android/internal/telephony/ISms;
    if-eqz v0, :cond_d

    .line 3344
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v1

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/ISms;->setStorageMonitorMemoryStatusOverride(IZ)V
    :try_end_d
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_d} :catch_e

    .line 3349
    .end local v0    # "iccISms":Lcom/android/internal/telephony/ISms;
    :cond_d
    goto :goto_12

    .line 3347
    :catch_e
    move-exception v0

    .line 3348
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowFromSystemServer()Ljava/lang/RuntimeException;

    .line 3350
    .end local v0    # "ex":Landroid/os/RemoteException;
    :goto_12
    return-void
.end method

.method public greylist updateMessageOnIcc(II[B)Z
    .registers 12
    .param p1, "messageIndex"    # I
    .param p2, "newStatus"    # I
    .param p3, "pdu"    # [B

    .line 1957
    const/4 v1, 0x0

    .line 1960
    .local v1, "success":Z
    :try_start_1
    invoke-static {}, Landroid/telephony/SmsManager;->getISmsService()Lcom/android/internal/telephony/ISms;

    move-result-object v0

    move-object v2, v0

    .line 1961
    .local v2, "iSms":Lcom/android/internal/telephony/ISms;
    if-eqz v2, :cond_18

    .line 1962
    invoke-virtual {p0}, Landroid/telephony/SmsManager;->getSubscriptionId()I

    move-result v3
    :try_end_c
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_c} :catch_1c

    const/4 v4, 0x0

    move v5, p1

    move v6, p2

    move-object v7, p3

    .end local p1    # "messageIndex":I
    .end local p2    # "newStatus":I
    .end local p3    # "pdu":[B
    .local v5, "messageIndex":I
    .local v6, "newStatus":I
    .local v7, "pdu":[B
    :try_start_10
    invoke-interface/range {v2 .. v7}, Lcom/android/internal/telephony/ISms;->updateMessageOnIccEfForSubscriber(ILjava/lang/String;II[B)Z

    move-result p1
    :try_end_14
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_14} :catch_16

    move v1, p1

    .end local v1    # "success":Z
    .local p1, "success":Z
    goto :goto_1b

    .line 1966
    .end local v2    # "iSms":Lcom/android/internal/telephony/ISms;
    .end local p1    # "success":Z
    .restart local v1    # "success":Z
    :catch_16
    move-exception v0

    goto :goto_20

    .line 1961
    .end local v5    # "messageIndex":I
    .end local v6    # "newStatus":I
    .end local v7    # "pdu":[B
    .restart local v2    # "iSms":Lcom/android/internal/telephony/ISms;
    .local p1, "messageIndex":I
    .restart local p2    # "newStatus":I
    .restart local p3    # "pdu":[B
    :cond_18
    move v5, p1

    move v6, p2

    move-object v7, p3

    .line 1968
    .end local v2    # "iSms":Lcom/android/internal/telephony/ISms;
    .end local p1    # "messageIndex":I
    .end local p2    # "newStatus":I
    .end local p3    # "pdu":[B
    .restart local v5    # "messageIndex":I
    .restart local v6    # "newStatus":I
    .restart local v7    # "pdu":[B
    :goto_1b
    goto :goto_20

    .line 1966
    .end local v5    # "messageIndex":I
    .end local v6    # "newStatus":I
    .end local v7    # "pdu":[B
    .restart local p1    # "messageIndex":I
    .restart local p2    # "newStatus":I
    .restart local p3    # "pdu":[B
    :catch_1c
    move-exception v0

    move v5, p1

    move v6, p2

    move-object v7, p3

    .line 1970
    .end local p1    # "messageIndex":I
    .end local p2    # "newStatus":I
    .end local p3    # "pdu":[B
    .restart local v5    # "messageIndex":I
    .restart local v6    # "newStatus":I
    .restart local v7    # "pdu":[B
    :goto_20
    return v1
.end method
