.class public interface abstract Lcom/android/internal/telephony/CallFailCause;
.super Ljava/lang/Object;
.source "CallFailCause.java"


# static fields
.field public static final blacklist ACCESS_CLASS_BLOCKED:I = 0x104

.field public static final blacklist ACCESS_INFORMATION_DISCARDED:I = 0x2b

.field public static final blacklist ACM_LIMIT_EXCEEDED:I = 0x44

.field public static final blacklist ANSWERED_ELSEWHERE:I = 0x834

.field public static final blacklist BEARER_CAPABILITY_NOT_AUTHORISED:I = 0x39

.field public static final blacklist BEARER_NOT_AVAIL:I = 0x3a

.field public static final blacklist BEARER_SERVICE_NOT_IMPLEMENTED:I = 0x41

.field public static final blacklist BLACKLISTED_CALL_ID:I = 0x5e1

.field public static final blacklist CALL_BARRED:I = 0xf0

.field public static final blacklist CALL_DROP_IWLAN_TO_LTE_UNAVAILABLE:I = 0x7d0

.field public static final blacklist CALL_PULLED:I = 0x836

.field public static final blacklist CALL_PULL_OUT_OF_SYNC:I = 0x835

.field public static final blacklist CALL_REJECTED:I = 0x15

.field public static final blacklist CDMA_ACCESS_BLOCKED:I = 0x3f1

.field public static final blacklist CDMA_ACCESS_FAILURE:I = 0x3ee

.field public static final blacklist CDMA_DROP:I = 0x3e9

.field public static final blacklist CDMA_INTERCEPT:I = 0x3ea

.field public static final blacklist CDMA_LOCKED_UNTIL_POWER_CYCLE:I = 0x3e8

.field public static final blacklist CDMA_NOT_EMERGENCY:I = 0x3f0

.field public static final blacklist CDMA_PREEMPTED:I = 0x3ef

.field public static final blacklist CDMA_REORDER:I = 0x3eb

.field public static final blacklist CDMA_RETRY_ORDER:I = 0x3ed

.field public static final blacklist CDMA_SO_REJECT:I = 0x3ec

.field public static final blacklist CHANNEL_NOT_AVAIL:I = 0x2c

.field public static final blacklist CHANNEL_UNACCEPTABLE:I = 0x6

.field public static final blacklist CONDITIONAL_IE_ERROR:I = 0x64

.field public static final blacklist DATA_DISABLED:I = 0x9ca

.field public static final blacklist DATA_LIMIT_REACHED:I = 0x9c9

.field public static final blacklist DESTINATION_OUT_OF_ORDER:I = 0x1b

.field public static final blacklist DIAL_MODIFIED_TO_DIAL:I = 0xf6

.field public static final blacklist DIAL_MODIFIED_TO_SS:I = 0xf5

.field public static final blacklist DIAL_MODIFIED_TO_USSD:I = 0xf4

.field public static final blacklist ECBM_NOT_SUPPORTED:I = 0x76c

.field public static final blacklist EMC_REDIAL_ON_IMS:I = 0xbb9

.field public static final blacklist EMC_REDIAL_ON_VOWIFI:I = 0xbba

.field public static final blacklist EMERGENCY_PERM_FAILURE:I = 0x146

.field public static final blacklist EMERGENCY_TEMP_FAILURE:I = 0x145

.field public static final blacklist EPDG_TUNNEL_ESTABLISH_FAILURE:I = 0x9c4

.field public static final blacklist EPDG_TUNNEL_LOST_CONNECTION:I = 0x9c6

.field public static final blacklist EPDG_TUNNEL_REKEY_FAILURE:I = 0x9c5

.field public static final blacklist ERROR_UNSPECIFIED:I = 0xffff

.field public static final blacklist FACILITY_REJECTED:I = 0x1d

.field public static final blacklist FDN_BLOCKED:I = 0xf1

.field public static final blacklist IE_NON_EXISTENT_OR_NOT_IMPLEMENTED:I = 0x63

.field public static final blacklist IMEI_NOT_ACCEPTED:I = 0xf3

.field public static final blacklist IMS_EMERGENCY_PERM_FAILURE:I = 0x53f

.field public static final blacklist IMS_EMERGENCY_TEMP_FAILURE:I = 0x53e

.field public static final blacklist INCOMING_CALL_BARRED_WITHIN_CUG:I = 0x37

.field public static final blacklist INCOMPATIBLE_DESTINATION:I = 0x58

.field public static final blacklist INTERWORKING_UNSPECIFIED:I = 0x7f

.field public static final blacklist INVALID_MANDATORY_INFORMATION:I = 0x60

.field public static final blacklist INVALID_NUMBER_FORMAT:I = 0x1c

.field public static final blacklist INVALID_TRANSACTION_ID_VALUE:I = 0x51

.field public static final blacklist INVALID_TRANSIT_NETWORK_SELECTION:I = 0x5b

.field public static final blacklist IWLAN_DPD_FAILURE:I = 0x960

.field public static final blacklist LOCAL_CALL_CS_RETRY_REQUIRED:I = 0x4c1

.field public static final blacklist LOCAL_CALL_DECLINE:I = 0x4be

.field public static final blacklist LOCAL_CALL_RESOURCE_RESERVATION_FAILED:I = 0x4c0

.field public static final blacklist LOCAL_CALL_TERMINATED:I = 0x4c3

.field public static final blacklist LOCAL_CALL_VCC_ON_PROGRESSING:I = 0x4bf

.field public static final blacklist LOCAL_CALL_VOLTE_RETRY_REQUIRED:I = 0x4c2

.field public static final blacklist LOCAL_HO_NOT_FEASIBLE:I = 0x4c4

.field public static final blacklist LOCAL_ILLEGAL_ARGUMENT:I = 0x4b0

.field public static final blacklist LOCAL_ILLEGAL_STATE:I = 0x4b1

.field public static final blacklist LOCAL_IMS_SERVICE_DOWN:I = 0x4b3

.field public static final blacklist LOCAL_INTERNAL_ERROR:I = 0x4b2

.field public static final blacklist LOCAL_LOW_BATTERY:I = 0x4b6

.field public static final blacklist LOCAL_MAX_CALL_EXCEEDED:I = 0x4bd

.field public static final blacklist LOCAL_NETWORK_IP_CHANGED:I = 0x4ba

.field public static final blacklist LOCAL_NETWORK_NO_LTE_COVERAGE:I = 0x4b8

.field public static final blacklist LOCAL_NETWORK_NO_SERVICE:I = 0x4b7

.field public static final blacklist LOCAL_NETWORK_ROAMING:I = 0x4b9

.field public static final blacklist LOCAL_NOT_REGISTERED:I = 0x4bc

.field public static final blacklist LOCAL_NO_PENDING_CALL:I = 0x4b4

.field public static final blacklist LOCAL_POWER_OFF:I = 0x4b5

.field public static final blacklist LOCAL_SERVICE_UNAVAILABLE:I = 0x4bb

.field public static final blacklist LOW_BATTERY:I = 0x5e0

.field public static final blacklist MAXIMUM_NUMBER_OF_CALLS_REACHED:I = 0x9c7

.field public static final blacklist MEDIA_INIT_FAILED:I = 0x578

.field public static final blacklist MEDIA_NOT_ACCEPTABLE:I = 0x57a

.field public static final blacklist MEDIA_NO_DATA:I = 0x579

.field public static final blacklist MEDIA_UNSPECIFIED:I = 0x57b

.field public static final blacklist MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE:I = 0x65

.field public static final blacklist MESSAGE_TYPE_NON_EXISTENT:I = 0x61

.field public static final blacklist MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROT_STATE:I = 0x62

.field public static final blacklist MULTIENDPOINT_NOT_SUPPORTED:I = 0x76d

.field public static final blacklist NETWORK_DETACH:I = 0x105

.field public static final blacklist NETWORK_OUT_OF_ORDER:I = 0x26

.field public static final blacklist NETWORK_REJECT:I = 0xfc

.field public static final blacklist NETWORK_RESP_TIMEOUT:I = 0xfb

.field public static final blacklist NON_SELECTED_USER_CLEARING:I = 0x1a

.field public static final blacklist NORMAL_CLEARING:I = 0x10

.field public static final blacklist NORMAL_UNSPECIFIED:I = 0x1f

.field public static final blacklist NOT_VALID:I = -0x1

.field public static final blacklist NO_CIRCUIT_AVAIL:I = 0x22

.field public static final blacklist NO_ROUTE_TO_DEST:I = 0x3

.field public static final blacklist NO_USER_RESPONDING:I = 0x12

.field public static final blacklist NO_VALID_SIM:I = 0xf9

.field public static final blacklist NUMBER_CHANGED:I = 0x16

.field public static final blacklist OEM_CAUSE_1:I = 0xf001

.field public static final blacklist OEM_CAUSE_10:I = 0xf00a

.field public static final blacklist OEM_CAUSE_11:I = 0xf00b

.field public static final blacklist OEM_CAUSE_12:I = 0xf00c

.field public static final blacklist OEM_CAUSE_13:I = 0xf00d

.field public static final blacklist OEM_CAUSE_14:I = 0xf00e

.field public static final blacklist OEM_CAUSE_15:I = 0xf00f

.field public static final blacklist OEM_CAUSE_2:I = 0xf002

.field public static final blacklist OEM_CAUSE_3:I = 0xf003

.field public static final blacklist OEM_CAUSE_4:I = 0xf004

.field public static final blacklist OEM_CAUSE_5:I = 0xf005

.field public static final blacklist OEM_CAUSE_6:I = 0xf006

.field public static final blacklist OEM_CAUSE_7:I = 0xf007

.field public static final blacklist OEM_CAUSE_8:I = 0xf008

.field public static final blacklist OEM_CAUSE_9:I = 0xf009

.field public static final blacklist ONLY_RESTRICTED_DIGITAL_INFO_BC_AVAILABLE:I = 0x46

.field public static final blacklist OPERATOR_DETERMINED_BARRING:I = 0x8

.field public static final blacklist PRE_EMPTION:I = 0x19

.field public static final blacklist PROTOCOL_ERROR_UNSPECIFIED:I = 0x6f

.field public static final blacklist QOS_NOT_AVAIL:I = 0x31

.field public static final blacklist RADIO_ACCESS_FAILURE:I = 0xfd

.field public static final blacklist RADIO_INTERNAL_ERROR:I = 0xfa

.field public static final blacklist RADIO_LINK_FAILURE:I = 0xfe

.field public static final blacklist RADIO_LINK_LOST:I = 0xff

.field public static final blacklist RADIO_OFF:I = 0xf7

.field public static final blacklist RADIO_RELEASE_ABNORMAL:I = 0x103

.field public static final blacklist RADIO_RELEASE_NORMAL:I = 0x102

.field public static final blacklist RADIO_SETUP_FAILURE:I = 0x101

.field public static final blacklist RADIO_UPLINK_FAILURE:I = 0x100

.field public static final blacklist RECOVERY_ON_TIMER_EXPIRY:I = 0x66

.field public static final blacklist REMOTE_CALL_DECLINE:I = 0x9c8

.field public static final blacklist REQUESTED_FACILITY_NOT_IMPLEMENTED:I = 0x45

.field public static final blacklist REQUESTED_FACILITY_NOT_SUBSCRIBED:I = 0x32

.field public static final blacklist RESOURCES_UNAVAILABLE_UNSPECIFIED:I = 0x2f

.field public static final blacklist SEMANTICALLY_INCORRECT_MESSAGE:I = 0x5f

.field public static final blacklist SERVICE_OR_OPTION_NOT_AVAILABLE:I = 0x3f

.field public static final blacklist SERVICE_OR_OPTION_NOT_IMPLEMENTED:I = 0x4f

.field public static final blacklist SIP_BAD_ADDRESS:I = 0x524

.field public static final blacklist SIP_BAD_REQUEST:I = 0x51e

.field public static final blacklist SIP_BUSY:I = 0x525

.field public static final blacklist SIP_CLIENT_ERROR:I = 0x529

.field public static final blacklist SIP_FORBIDDEN:I = 0x51f

.field public static final blacklist SIP_GLOBAL_ERROR:I = 0x53d

.field public static final blacklist SIP_NOT_ACCEPTABLE:I = 0x527

.field public static final blacklist SIP_NOT_FOUND:I = 0x520

.field public static final blacklist SIP_NOT_REACHABLE:I = 0x528

.field public static final blacklist SIP_NOT_SUPPORTED:I = 0x521

.field public static final blacklist SIP_REDIRECTED:I = 0x514

.field public static final blacklist SIP_REQUEST_CANCELLED:I = 0x526

.field public static final blacklist SIP_REQUEST_TIMEOUT:I = 0x522

.field public static final blacklist SIP_SERVER_ERROR:I = 0x535

.field public static final blacklist SIP_SERVER_INTERNAL_ERROR:I = 0x532

.field public static final blacklist SIP_SERVER_TIMEOUT:I = 0x534

.field public static final blacklist SIP_SERVICE_UNAVAILABLE:I = 0x533

.field public static final blacklist SIP_TEMPRARILY_UNAVAILABLE:I = 0x523

.field public static final blacklist SIP_TRANSACTION_DOES_NOT_EXIST:I = 0x52a

.field public static final blacklist SIP_USER_REJECTED:I = 0x53c

.field public static final blacklist STATUS_ENQUIRY:I = 0x1e

.field public static final blacklist SUPP_SVC_CANCELLED:I = 0x8fd

.field public static final blacklist SUPP_SVC_FAILED:I = 0x8fc

.field public static final blacklist SUPP_SVC_REINVITE_COLLISION:I = 0x8fe

.field public static final blacklist SWITCHING_CONGESTION:I = 0x2a

.field public static final blacklist TEMPORARY_FAILURE:I = 0x29

.field public static final blacklist TIMEOUT_1XX_WAITING:I = 0x4c5

.field public static final blacklist TIMEOUT_NO_ANSWER:I = 0x4c6

.field public static final blacklist TIMEOUT_NO_ANSWER_CALL_UPDATE:I = 0x4c7

.field public static final blacklist UNOBTAINABLE_NUMBER:I = 0x1

.field public static final blacklist USER_ALERTING_NO_ANSWER:I = 0x13

.field public static final blacklist USER_BUSY:I = 0x11

.field public static final blacklist USER_DECLINE:I = 0x5df

.field public static final blacklist USER_IGNORE:I = 0x5de

.field public static final blacklist USER_NOANSWER:I = 0x5dd

.field public static final blacklist USER_NOT_MEMBER_OF_CUG:I = 0x57

.field public static final blacklist USER_TERMINATED:I = 0x5dc

.field public static final blacklist USER_TERMINATED_BY_REMOTE:I = 0x5e6

.field public static final blacklist UT_CB_PASSWORD_MISMATCH:I = 0x70c

.field public static final blacklist UT_NETWORK_ERROR:I = 0x70b

.field public static final blacklist UT_NOT_SUPPORTED:I = 0x708

.field public static final blacklist UT_OPERATION_NOT_ALLOWED:I = 0x70a

.field public static final blacklist UT_SERVICE_UNAVAILABLE:I = 0x709

.field public static final blacklist WIFI_LOST:I = 0x9cb
