.class public final Landroid/telephony/ims/ImsReasonInfo;
.super Ljava/lang/Object;
.source "ImsReasonInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/ims/ImsReasonInfo$ImsCode;,
        Landroid/telephony/ims/ImsReasonInfo$UtReason;
    }
.end annotation


# static fields
.field public static final whitelist CODE_ACCESS_CLASS_BLOCKED:I = 0x5e8

.field public static final whitelist CODE_ANSWERED_ELSEWHERE:I = 0x3f6

.field public static final whitelist CODE_BLACKLISTED_CALL_ID:I = 0x1fa

.field public static final whitelist CODE_CALL_BARRED:I = 0xf0

.field public static final whitelist CODE_CALL_DROP_IWLAN_TO_LTE_UNAVAILABLE:I = 0x44c

.field public static final whitelist CODE_CALL_END_CAUSE_CALL_PULL:I = 0x3f8

.field public static final whitelist CODE_CALL_PULL_OUT_OF_SYNC:I = 0x3f7

.field public static final whitelist CODE_DATA_DISABLED:I = 0x57e

.field public static final whitelist CODE_DATA_LIMIT_REACHED:I = 0x57d

.field public static final whitelist CODE_DIAL_MODIFIED_TO_DIAL:I = 0xf6

.field public static final whitelist CODE_DIAL_MODIFIED_TO_DIAL_VIDEO:I = 0xf7

.field public static final whitelist CODE_DIAL_MODIFIED_TO_SS:I = 0xf5

.field public static final whitelist CODE_DIAL_MODIFIED_TO_USSD:I = 0xf4

.field public static final whitelist CODE_DIAL_VIDEO_MODIFIED_TO_DIAL:I = 0xf8

.field public static final whitelist CODE_DIAL_VIDEO_MODIFIED_TO_DIAL_VIDEO:I = 0xf9

.field public static final whitelist CODE_DIAL_VIDEO_MODIFIED_TO_SS:I = 0xfa

.field public static final whitelist CODE_DIAL_VIDEO_MODIFIED_TO_USSD:I = 0xfb

.field public static final whitelist CODE_ECBM_NOT_SUPPORTED:I = 0x385

.field public static final blacklist CODE_EMERGENCY_CALL_OVER_WFC_NOT_AVAILABLE:I = 0x656

.field public static final whitelist CODE_EMERGENCY_PERM_FAILURE:I = 0x16c

.field public static final whitelist CODE_EMERGENCY_TEMP_FAILURE:I = 0x16b

.field public static final whitelist CODE_EPDG_TUNNEL_ESTABLISH_FAILURE:I = 0x578

.field public static final whitelist CODE_EPDG_TUNNEL_LOST_CONNECTION:I = 0x57a

.field public static final whitelist CODE_EPDG_TUNNEL_REKEY_FAILURE:I = 0x579

.field public static final whitelist CODE_FDN_BLOCKED:I = 0xf1

.field public static final whitelist CODE_IKEV2_AUTH_FAILURE:I = 0x580

.field public static final whitelist CODE_IMEI_NOT_ACCEPTED:I = 0xf3

.field public static final whitelist CODE_IWLAN_DPD_FAILURE:I = 0x514

.field public static final whitelist CODE_LOCAL_CALL_BUSY:I = 0x8e

.field public static final whitelist CODE_LOCAL_CALL_CS_RETRY_REQUIRED:I = 0x92

.field public static final whitelist CODE_LOCAL_CALL_DECLINE:I = 0x8f

.field public static final whitelist CODE_LOCAL_CALL_EXCEEDED:I = 0x8d

.field public static final whitelist CODE_LOCAL_CALL_RESOURCE_RESERVATION_FAILED:I = 0x91

.field public static final whitelist CODE_LOCAL_CALL_TERMINATED:I = 0x94

.field public static final whitelist CODE_LOCAL_CALL_VCC_ON_PROGRESSING:I = 0x90

.field public static final whitelist CODE_LOCAL_CALL_VOLTE_RETRY_REQUIRED:I = 0x93

.field public static final whitelist CODE_LOCAL_ENDED_BY_CONFERENCE_MERGE:I = 0x6c

.field public static final whitelist CODE_LOCAL_HO_NOT_FEASIBLE:I = 0x95

.field public static final whitelist CODE_LOCAL_ILLEGAL_ARGUMENT:I = 0x65

.field public static final whitelist CODE_LOCAL_ILLEGAL_STATE:I = 0x66

.field public static final blacklist CODE_LOCAL_IMS_NOT_SUPPORTED_ON_DEVICE:I = 0x96

.field public static final whitelist CODE_LOCAL_IMS_SERVICE_DOWN:I = 0x6a

.field public static final whitelist CODE_LOCAL_INTERNAL_ERROR:I = 0x67

.field public static final whitelist CODE_LOCAL_LOW_BATTERY:I = 0x70

.field public static final whitelist CODE_LOCAL_NETWORK_IP_CHANGED:I = 0x7c

.field public static final whitelist CODE_LOCAL_NETWORK_NO_LTE_COVERAGE:I = 0x7a

.field public static final whitelist CODE_LOCAL_NETWORK_NO_SERVICE:I = 0x79

.field public static final whitelist CODE_LOCAL_NETWORK_ROAMING:I = 0x7b

.field public static final whitelist CODE_LOCAL_NOT_REGISTERED:I = 0x84

.field public static final whitelist CODE_LOCAL_NO_PENDING_CALL:I = 0x6b

.field public static final whitelist CODE_LOCAL_POWER_OFF:I = 0x6f

.field public static final whitelist CODE_LOCAL_SERVICE_UNAVAILABLE:I = 0x83

.field public static final whitelist CODE_LOW_BATTERY:I = 0x1f9

.field public static final whitelist CODE_MAXIMUM_NUMBER_OF_CALLS_REACHED:I = 0x57b

.field public static final whitelist CODE_MEDIA_INIT_FAILED:I = 0x191

.field public static final whitelist CODE_MEDIA_NOT_ACCEPTABLE:I = 0x193

.field public static final whitelist CODE_MEDIA_NO_DATA:I = 0x192

.field public static final whitelist CODE_MEDIA_UNSPECIFIED:I = 0x194

.field public static final whitelist CODE_MULTIENDPOINT_NOT_SUPPORTED:I = 0x386

.field public static final whitelist CODE_NETWORK_CONGESTION:I = 0x658

.field public static final whitelist CODE_NETWORK_DETACH:I = 0x5e9

.field public static final whitelist CODE_NETWORK_REJECT:I = 0x5e0

.field public static final whitelist CODE_NETWORK_RESP_TIMEOUT:I = 0x5df

.field public static final whitelist CODE_NO_CSFB_IN_CS_ROAM:I = 0x5ec

.field public static final whitelist CODE_NO_VALID_SIM:I = 0x5dd

.field public static final whitelist CODE_OEM_CAUSE_1:I = 0xf001

.field public static final whitelist CODE_OEM_CAUSE_10:I = 0xf00a

.field public static final whitelist CODE_OEM_CAUSE_11:I = 0xf00b

.field public static final whitelist CODE_OEM_CAUSE_12:I = 0xf00c

.field public static final whitelist CODE_OEM_CAUSE_13:I = 0xf00d

.field public static final whitelist CODE_OEM_CAUSE_14:I = 0xf00e

.field public static final whitelist CODE_OEM_CAUSE_15:I = 0xf00f

.field public static final whitelist CODE_OEM_CAUSE_2:I = 0xf002

.field public static final whitelist CODE_OEM_CAUSE_3:I = 0xf003

.field public static final whitelist CODE_OEM_CAUSE_4:I = 0xf004

.field public static final whitelist CODE_OEM_CAUSE_5:I = 0xf005

.field public static final whitelist CODE_OEM_CAUSE_6:I = 0xf006

.field public static final whitelist CODE_OEM_CAUSE_7:I = 0xf007

.field public static final whitelist CODE_OEM_CAUSE_8:I = 0xf008

.field public static final whitelist CODE_OEM_CAUSE_9:I = 0xf009

.field public static final whitelist CODE_RADIO_ACCESS_FAILURE:I = 0x5e1

.field public static final whitelist CODE_RADIO_INTERNAL_ERROR:I = 0x5de

.field public static final whitelist CODE_RADIO_LINK_FAILURE:I = 0x5e2

.field public static final whitelist CODE_RADIO_LINK_LOST:I = 0x5e3

.field public static final whitelist CODE_RADIO_OFF:I = 0x5dc

.field public static final whitelist CODE_RADIO_RELEASE_ABNORMAL:I = 0x5e7

.field public static final whitelist CODE_RADIO_RELEASE_NORMAL:I = 0x5e6

.field public static final whitelist CODE_RADIO_SETUP_FAILURE:I = 0x5e5

.field public static final whitelist CODE_RADIO_UPLINK_FAILURE:I = 0x5e4

.field public static final whitelist CODE_REGISTRATION_ERROR:I = 0x3e8

.field public static final whitelist CODE_REJECTED_ELSEWHERE:I = 0x3f9

.field public static final whitelist CODE_REJECT_1X_COLLISION:I = 0x643

.field public static final whitelist CODE_REJECT_CALL_ON_OTHER_SUB:I = 0x642

.field public static final whitelist CODE_REJECT_CALL_TYPE_NOT_ALLOWED:I = 0x645

.field public static final whitelist CODE_REJECT_CONFERENCE_TTY_NOT_ALLOWED:I = 0x651

.field public static final whitelist CODE_REJECT_INTERNAL_ERROR:I = 0x64c

.field public static final whitelist CODE_REJECT_MAX_CALL_LIMIT_REACHED:I = 0x648

.field public static final whitelist CODE_REJECT_ONGOING_CALL_SETUP:I = 0x647

.field public static final whitelist CODE_REJECT_ONGOING_CALL_TRANSFER:I = 0x64b

.field public static final whitelist CODE_REJECT_ONGOING_CALL_UPGRADE:I = 0x650

.field public static final whitelist CODE_REJECT_ONGOING_CALL_WAITING_DISABLED:I = 0x641

.field public static final whitelist CODE_REJECT_ONGOING_CONFERENCE_CALL:I = 0x652

.field public static final whitelist CODE_REJECT_ONGOING_CS_CALL:I = 0x655

.field public static final whitelist CODE_REJECT_ONGOING_E911_CALL:I = 0x646

.field public static final whitelist CODE_REJECT_ONGOING_ENCRYPTED_CALL:I = 0x654

.field public static final whitelist CODE_REJECT_ONGOING_HANDOVER:I = 0x64e

.field public static final whitelist CODE_REJECT_QOS_FAILURE:I = 0x64d

.field public static final whitelist CODE_REJECT_SERVICE_NOT_REGISTERED:I = 0x644

.field public static final whitelist CODE_REJECT_UNKNOWN:I = 0x640

.field public static final whitelist CODE_REJECT_UNSUPPORTED_SDP_HEADERS:I = 0x64a

.field public static final whitelist CODE_REJECT_UNSUPPORTED_SIP_HEADERS:I = 0x649

.field public static final whitelist CODE_REJECT_VT_AVPF_NOT_ALLOWED:I = 0x653

.field public static final whitelist CODE_REJECT_VT_TTY_NOT_ALLOWED:I = 0x64f

.field public static final whitelist CODE_REMOTE_CALL_DECLINE:I = 0x57c

.field public static final blacklist CODE_RETRY_ON_IMS_WITHOUT_RTT:I = 0xbb9

.field public static final whitelist CODE_SESSION_MODIFICATION_FAILED:I = 0x5ed

.field public static final whitelist CODE_SIP_ALTERNATE_EMERGENCY_CALL:I = 0x5ea

.field public static final whitelist CODE_SIP_AMBIGUOUS:I = 0x178

.field public static final whitelist CODE_SIP_BAD_ADDRESS:I = 0x151

.field public static final whitelist CODE_SIP_BAD_REQUEST:I = 0x14b

.field public static final whitelist CODE_SIP_BUSY:I = 0x152

.field public static final whitelist CODE_SIP_CALL_OR_TRANS_DOES_NOT_EXIST:I = 0x174

.field public static final whitelist CODE_SIP_CLIENT_ERROR:I = 0x156

.field public static final whitelist CODE_SIP_EXTENSION_REQUIRED:I = 0x172

.field public static final whitelist CODE_SIP_FORBIDDEN:I = 0x14c

.field public static final whitelist CODE_SIP_GLOBAL_ERROR:I = 0x16a

.field public static final whitelist CODE_SIP_INTERVAL_TOO_BRIEF:I = 0x173

.field public static final whitelist CODE_SIP_LOOP_DETECTED:I = 0x175

.field public static final whitelist CODE_SIP_METHOD_NOT_ALLOWED:I = 0x16e

.field public static final whitelist CODE_SIP_NOT_ACCEPTABLE:I = 0x154

.field public static final whitelist CODE_SIP_NOT_FOUND:I = 0x14d

.field public static final whitelist CODE_SIP_NOT_REACHABLE:I = 0x155

.field public static final whitelist CODE_SIP_NOT_SUPPORTED:I = 0x14e

.field public static final whitelist CODE_SIP_PROXY_AUTHENTICATION_REQUIRED:I = 0x16f

.field public static final whitelist CODE_SIP_REDIRECTED:I = 0x141

.field public static final whitelist CODE_SIP_REQUEST_CANCELLED:I = 0x153

.field public static final whitelist CODE_SIP_REQUEST_ENTITY_TOO_LARGE:I = 0x170

.field public static final whitelist CODE_SIP_REQUEST_PENDING:I = 0x179

.field public static final whitelist CODE_SIP_REQUEST_TIMEOUT:I = 0x14f

.field public static final whitelist CODE_SIP_REQUEST_URI_TOO_LARGE:I = 0x171

.field public static final whitelist CODE_SIP_SERVER_ERROR:I = 0x162

.field public static final whitelist CODE_SIP_SERVER_INTERNAL_ERROR:I = 0x15f

.field public static final whitelist CODE_SIP_SERVER_TIMEOUT:I = 0x161

.field public static final whitelist CODE_SIP_SERVICE_UNAVAILABLE:I = 0x160

.field public static final whitelist CODE_SIP_TEMPRARILY_UNAVAILABLE:I = 0x150

.field public static final whitelist CODE_SIP_TOO_MANY_HOPS:I = 0x176

.field public static final whitelist CODE_SIP_TRANSACTION_DOES_NOT_EXIST:I = 0x157

.field public static final whitelist CODE_SIP_UNDECIPHERABLE:I = 0x17a

.field public static final whitelist CODE_SIP_USER_MARKED_UNWANTED:I = 0x16d

.field public static final whitelist CODE_SIP_USER_REJECTED:I = 0x169

.field public static final whitelist CODE_SUPP_SVC_CANCELLED:I = 0x4b2

.field public static final whitelist CODE_SUPP_SVC_FAILED:I = 0x4b1

.field public static final whitelist CODE_SUPP_SVC_REINVITE_COLLISION:I = 0x4b3

.field public static final whitelist CODE_TIMEOUT_1XX_WAITING:I = 0xc9

.field public static final whitelist CODE_TIMEOUT_NO_ANSWER:I = 0xca

.field public static final whitelist CODE_TIMEOUT_NO_ANSWER_CALL_UPDATE:I = 0xcb

.field public static final greylist-max-o CODE_UNOBTAINABLE_NUMBER:I = 0x5eb

.field public static final whitelist CODE_UNSPECIFIED:I = 0x0

.field public static final whitelist CODE_USER_CANCELLED_SESSION_MODIFICATION:I = 0x200

.field public static final whitelist CODE_USER_DECLINE:I = 0x1f8

.field public static final whitelist CODE_USER_IGNORE:I = 0x1f7

.field public static final whitelist CODE_USER_NOANSWER:I = 0x1f6

.field public static final whitelist CODE_USER_REJECTED_SESSION_MODIFICATION:I = 0x1ff

.field public static final whitelist CODE_USER_TERMINATED:I = 0x1f5

.field public static final whitelist CODE_USER_TERMINATED_BY_REMOTE:I = 0x1fe

.field public static final whitelist CODE_UT_CB_PASSWORD_MISMATCH:I = 0x335

.field public static final whitelist CODE_UT_NETWORK_ERROR:I = 0x324

.field public static final whitelist CODE_UT_NOT_SUPPORTED:I = 0x321

.field public static final whitelist CODE_UT_OPERATION_NOT_ALLOWED:I = 0x323

.field public static final whitelist CODE_UT_SERVICE_UNAVAILABLE:I = 0x322

.field public static final whitelist CODE_UT_SS_MODIFIED_TO_DIAL:I = 0x336

.field public static final whitelist CODE_UT_SS_MODIFIED_TO_DIAL_VIDEO:I = 0x339

.field public static final whitelist CODE_UT_SS_MODIFIED_TO_SS:I = 0x338

.field public static final whitelist CODE_UT_SS_MODIFIED_TO_USSD:I = 0x337

.field public static final blacklist CODE_WFC_SERVICE_NOT_AVAILABLE_IN_THIS_LOCATION:I = 0x657

.field public static final whitelist CODE_WIFI_LOST:I = 0x57f

.field public static final whitelist CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/telephony/ims/ImsReasonInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final whitelist EXTRA_CODE_CALL_RETRY_BY_SETTINGS:I = 0x3

.field public static final whitelist EXTRA_CODE_CALL_RETRY_EMERGENCY:I = 0x4

.field public static final whitelist EXTRA_CODE_CALL_RETRY_NORMAL:I = 0x1

.field public static final whitelist EXTRA_CODE_CALL_RETRY_SILENT_REDIAL:I = 0x2

.field public static final whitelist EXTRA_MSG_SERVICE_NOT_AUTHORIZED:Ljava/lang/String; = "Forbidden. Not Authorized for Service"
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field private static final blacklist sImsCodeMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public greylist-max-q mCode:I

.field public greylist-max-q mExtraCode:I

.field public greylist-max-q mExtraMessage:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 1109
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    .line 1110
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_UNSPECIFIED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1111
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x65

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_ILLEGAL_ARGUMENT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1112
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x66

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_ILLEGAL_STATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1113
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x67

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_INTERNAL_ERROR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1114
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x6a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_IMS_SERVICE_DOWN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x6b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_NO_PENDING_CALL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1116
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x6c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_ENDED_BY_CONFERENCE_MERGE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1118
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x6f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_POWER_OFF"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1119
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x70

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_LOW_BATTERY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1120
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x79

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_NETWORK_NO_SERVICE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x7a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_NETWORK_NO_LTE_COVERAGE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x7b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_NETWORK_ROAMING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x7c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_NETWORK_IP_CHANGED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x83

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_SERVICE_UNAVAILABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1125
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x84

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_NOT_REGISTERED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1126
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x8d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_CALL_EXCEEDED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1127
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x8e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_CALL_BUSY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1128
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x8f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_CALL_DECLINE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1129
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x90

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_CALL_VCC_ON_PROGRESSING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1130
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x91

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_CALL_RESOURCE_RESERVATION_FAILED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1132
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x92

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_CALL_CS_RETRY_REQUIRED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1133
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x93

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_CALL_VOLTE_RETRY_REQUIRED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1135
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x94

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_CALL_TERMINATED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1136
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x95

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOCAL_HO_NOT_FEASIBLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1137
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0xc9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_TIMEOUT_1XX_WAITING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1138
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0xca

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_TIMEOUT_NO_ANSWER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1139
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0xcb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_TIMEOUT_NO_ANSWER_CALL_UPDATE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1140
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0xf0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_CALL_BARRED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1141
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0xf1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_FDN_BLOCKED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1142
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0xf3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_IMEI_NOT_ACCEPTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1143
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0xf4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_DIAL_MODIFIED_TO_USSD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1144
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0xf5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_DIAL_MODIFIED_TO_SS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1145
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0xf6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_DIAL_MODIFIED_TO_DIAL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1146
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0xf7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_DIAL_MODIFIED_TO_DIAL_VIDEO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1147
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0xf8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_DIAL_VIDEO_MODIFIED_TO_DIAL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1148
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0xf9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_DIAL_VIDEO_MODIFIED_TO_DIAL_VIDEO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1150
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0xfa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_DIAL_VIDEO_MODIFIED_TO_SS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1151
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0xfb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_DIAL_VIDEO_MODIFIED_TO_USSD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1152
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x141

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_REDIRECTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1153
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x14b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_BAD_REQUEST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1154
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x14c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_FORBIDDEN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1155
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x14d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_NOT_FOUND"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1156
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x14e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_NOT_SUPPORTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1157
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x14f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_REQUEST_TIMEOUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1158
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x150

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_TEMPRARILY_UNAVAILABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1159
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x151

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_BAD_ADDRESS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1160
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x152

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_BUSY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1161
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x153

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_REQUEST_CANCELLED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1162
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x154

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_NOT_ACCEPTABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1163
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x155

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_NOT_REACHABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1164
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x156

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_CLIENT_ERROR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1165
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x157

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_TRANSACTION_DOES_NOT_EXIST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1166
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x15f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_SERVER_INTERNAL_ERROR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1167
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x160

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_SERVICE_UNAVAILABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1168
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x161

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_SERVER_TIMEOUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1169
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x162

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_SERVER_ERROR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1170
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x169

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_USER_REJECTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1171
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x16a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_GLOBAL_ERROR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1172
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x16b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_EMERGENCY_TEMP_FAILURE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1173
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x16c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_EMERGENCY_PERM_FAILURE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1174
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x16d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_USER_MARKED_UNWANTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1175
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x16e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_METHOD_NOT_ALLOWED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1176
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x16f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_PROXY_AUTHENTICATION_REQUIRED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1178
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x170

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_REQUEST_ENTITY_TOO_LARGE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1179
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x171

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_REQUEST_URI_TOO_LARGE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1180
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x172

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_EXTENSION_REQUIRED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1181
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x173

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_INTERVAL_TOO_BRIEF"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1182
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x174

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_CALL_OR_TRANS_DOES_NOT_EXIST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1184
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x175

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_LOOP_DETECTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1185
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x176

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_TOO_MANY_HOPS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1186
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x178

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_AMBIGUOUS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1187
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x179

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_REQUEST_PENDING"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1188
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x17a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_UNDECIPHERABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1189
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x191

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_MEDIA_INIT_FAILED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1190
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x192

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_MEDIA_NO_DATA"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1191
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x193

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_MEDIA_NOT_ACCEPTABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1192
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x194

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_MEDIA_UNSPECIFIED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1193
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x1f5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_USER_TERMINATED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x1f6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_USER_NOANSWER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1195
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x1f7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_USER_IGNORE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1196
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x1f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_USER_DECLINE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1197
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x1f9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_LOW_BATTERY"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x1fa

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_BLACKLISTED_CALL_ID"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1199
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x1fe

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_USER_TERMINATED_BY_REMOTE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1200
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x1ff

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_USER_REJECTED_SESSION_MODIFICATION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1202
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_USER_CANCELLED_SESSION_MODIFICATION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1204
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x5ed

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SESSION_MODIFICATION_FAILED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1205
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x321

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_UT_NOT_SUPPORTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1206
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x322

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_UT_SERVICE_UNAVAILABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1207
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x323

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_UT_OPERATION_NOT_ALLOWED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1208
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x324

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_UT_NETWORK_ERROR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1209
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x335

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_UT_CB_PASSWORD_MISMATCH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1210
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x336

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_UT_SS_MODIFIED_TO_DIAL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1211
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x337

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_UT_SS_MODIFIED_TO_USSD"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1212
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x338

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_UT_SS_MODIFIED_TO_SS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1213
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x339

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_UT_SS_MODIFIED_TO_DIAL_VIDEO"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1214
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x385

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_ECBM_NOT_SUPPORTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1215
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x386

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_MULTIENDPOINT_NOT_SUPPORTED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1216
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x3e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REGISTRATION_ERROR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1217
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x3f6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_ANSWERED_ELSEWHERE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1218
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x3f7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_CALL_PULL_OUT_OF_SYNC"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1219
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x3f8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_CALL_END_CAUSE_CALL_PULL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1220
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x44c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_CALL_DROP_IWLAN_TO_LTE_UNAVAILABLE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1222
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x3f9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECTED_ELSEWHERE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1223
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x4b1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SUPP_SVC_FAILED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1224
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x4b2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SUPP_SVC_CANCELLED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x4b3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SUPP_SVC_REINVITE_COLLISION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1226
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x514

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_IWLAN_DPD_FAILURE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1227
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x578

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_EPDG_TUNNEL_ESTABLISH_FAILURE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1228
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x579

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_EPDG_TUNNEL_REKEY_FAILURE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x57a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_EPDG_TUNNEL_LOST_CONNECTION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1230
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x57b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_MAXIMUM_NUMBER_OF_CALLS_REACHED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1232
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x57c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REMOTE_CALL_DECLINE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1233
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x57d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_DATA_LIMIT_REACHED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1234
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x57e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_DATA_DISABLED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1235
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x57f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_WIFI_LOST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1236
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x580

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_IKEV2_AUTH_FAILURE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1237
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x5dc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_RADIO_OFF"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1238
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x5dd

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_NO_VALID_SIM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1239
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x5de

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_RADIO_INTERNAL_ERROR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x5df

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_NETWORK_RESP_TIMEOUT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1241
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x5e0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_NETWORK_REJECT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1242
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x5e1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_RADIO_ACCESS_FAILURE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1243
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x5e2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_RADIO_LINK_FAILURE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1244
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x5e3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_RADIO_LINK_LOST"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1245
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x5e4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_RADIO_UPLINK_FAILURE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1246
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x5e5

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_RADIO_SETUP_FAILURE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1247
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x5e6

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_RADIO_RELEASE_NORMAL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1248
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x5e7

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_RADIO_RELEASE_ABNORMAL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1249
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x5e8

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_ACCESS_CLASS_BLOCKED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1250
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x5e9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_NETWORK_DETACH"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1251
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x5ea

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_SIP_ALTERNATE_EMERGENCY_CALL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1252
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x5eb

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_UNOBTAINABLE_NUMBER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1253
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x5ec

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_NO_CSFB_IN_CS_ROAM"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1254
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x640

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_UNKNOWN"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1255
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x641

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_ONGOING_CALL_WAITING_DISABLED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1257
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x642

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_CALL_ON_OTHER_SUB"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1258
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x643

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_1X_COLLISION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1259
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x644

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_SERVICE_NOT_REGISTERED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1260
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x645

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_CALL_TYPE_NOT_ALLOWED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1261
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x646

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_ONGOING_E911_CALL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1262
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x647

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_ONGOING_CALL_SETUP"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1263
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x648

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_MAX_CALL_LIMIT_REACHED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1264
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x649

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_UNSUPPORTED_SIP_HEADERS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1265
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x64a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_UNSUPPORTED_SDP_HEADERS"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1266
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x64b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_ONGOING_CALL_TRANSFER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1267
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x64c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_INTERNAL_ERROR"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1268
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x64d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_QOS_FAILURE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1269
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x64e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_ONGOING_HANDOVER"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1270
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x64f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_VT_TTY_NOT_ALLOWED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1271
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x650

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_ONGOING_CALL_UPGRADE"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1272
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x651

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_CONFERENCE_TTY_NOT_ALLOWED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1274
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x652

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_ONGOING_CONFERENCE_CALL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1275
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x653

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_VT_AVPF_NOT_ALLOWED"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1276
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x654

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_ONGOING_ENCRYPTED_CALL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1277
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x655

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_REJECT_ONGOING_CS_CALL"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1278
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0x658

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_NETWORK_CONGESTION"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1279
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const/16 v1, 0xbb9

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_RETRY_ON_IMS_WITHOUT_RTT"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1280
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const v1, 0xf001

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_OEM_CAUSE_1"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1281
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const v1, 0xf002

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_OEM_CAUSE_2"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1282
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const v1, 0xf003

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_OEM_CAUSE_3"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1283
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const v1, 0xf004

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_OEM_CAUSE_4"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1284
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const v1, 0xf005

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_OEM_CAUSE_5"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1285
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const v1, 0xf006

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_OEM_CAUSE_6"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1286
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const v1, 0xf007

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_OEM_CAUSE_7"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1287
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const v1, 0xf008

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_OEM_CAUSE_8"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const v1, 0xf009

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_OEM_CAUSE_9"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const v1, 0xf00a

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_OEM_CAUSE_10"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1290
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const v1, 0xf00b

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_OEM_CAUSE_11"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1291
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const v1, 0xf00c

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_OEM_CAUSE_12"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1292
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const v1, 0xf00d

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_OEM_CAUSE_13"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1293
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const v1, 0xf00e

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_OEM_CAUSE_14"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1294
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    const v1, 0xf00f

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "CODE_OEM_CAUSE_15"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1429
    new-instance v0, Landroid/telephony/ims/ImsReasonInfo$1;

    invoke-direct {v0}, Landroid/telephony/ims/ImsReasonInfo$1;-><init>()V

    sput-object v0, Landroid/telephony/ims/ImsReasonInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor greylist-max-o <init>()V
    .registers 2

    .line 1358
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1359
    const/4 v0, 0x0

    iput v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 1360
    iput v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    .line 1361
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 1362
    return-void
.end method

.method public constructor greylist-max-r <init>(II)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "extraCode"    # I

    .line 1372
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1373
    iput p1, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 1374
    iput p2, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    .line 1375
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 1376
    return-void
.end method

.method public constructor whitelist <init>(IILjava/lang/String;)V
    .registers 4
    .param p1, "code"    # I
    .param p2, "extraCode"    # I
    .param p3, "extraMessage"    # Ljava/lang/String;

    .line 1378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1379
    iput p1, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 1380
    iput p2, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    .line 1381
    iput-object p3, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 1382
    return-void
.end method

.method private constructor greylist-max-o <init>(Landroid/os/Parcel;)V
    .registers 3
    .param p1, "in"    # Landroid/os/Parcel;

    .line 1364
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1365
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    .line 1366
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    .line 1367
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    .line 1368
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/os/Parcel;Landroid/telephony/ims/ImsReasonInfo-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Landroid/telephony/ims/ImsReasonInfo;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public whitelist describeContents()I
    .registers 2

    .line 1419
    const/4 v0, 0x0

    return v0
.end method

.method public whitelist getCode()I
    .registers 2

    .line 1388
    iget v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    return v0
.end method

.method public whitelist getExtraCode()I
    .registers 2

    .line 1395
    iget v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    return v0
.end method

.method public whitelist getExtraMessage()Ljava/lang/String;
    .registers 2

    .line 1403
    iget-object v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 5

    .line 1412
    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    iget v1, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    sget-object v0, Landroid/telephony/ims/ImsReasonInfo;->sImsCodeMap:Ljava/util/Map;

    iget v1, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_1f

    :cond_1d
    const-string v0, "UNKNOWN_CODE"

    .line 1413
    .local v0, "imsCode":Ljava/lang/String;
    :goto_1f
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ImsReasonInfo :: {"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v3, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public whitelist writeToParcel(Landroid/os/Parcel;I)V
    .registers 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 1424
    iget v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1425
    iget v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraCode:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1426
    iget-object v0, p0, Landroid/telephony/ims/ImsReasonInfo;->mExtraMessage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1427
    return-void
.end method
