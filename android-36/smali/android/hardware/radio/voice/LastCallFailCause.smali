.class public interface abstract annotation Landroid/hardware/radio/voice/LastCallFailCause;
.super Ljava/lang/Object;
.source "LastCallFailCause.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/hardware/radio/voice/LastCallFailCause$$;
    }
.end annotation


# static fields
.field public static final blacklist ACCESS_CLASS_BLOCKED:I = 0x104

.field public static final blacklist ACCESS_INFORMATION_DISCARDED:I = 0x2b

.field public static final blacklist ACM_LIMIT_EXCEEDED:I = 0x44

.field public static final blacklist BEARER_CAPABILITY_NOT_AUTHORIZED:I = 0x39

.field public static final blacklist BEARER_CAPABILITY_UNAVAILABLE:I = 0x3a

.field public static final blacklist BEARER_SERVICE_NOT_IMPLEMENTED:I = 0x41

.field public static final blacklist BUSY:I = 0x11

.field public static final blacklist CALL_BARRED:I = 0xf0

.field public static final blacklist CALL_REJECTED:I = 0x15

.field public static final blacklist CDMA_ACCESS_BLOCKED:I = 0x3f1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CDMA_ACCESS_FAILURE:I = 0x3ee
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CDMA_DROP:I = 0x3e9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CDMA_INTERCEPT:I = 0x3ea
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CDMA_LOCKED_UNTIL_POWER_CYCLE:I = 0x3e8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CDMA_NOT_EMERGENCY:I = 0x3f0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CDMA_PREEMPTED:I = 0x3ef
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CDMA_REORDER:I = 0x3eb
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CDMA_RETRY_ORDER:I = 0x3ed
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CDMA_SO_REJECT:I = 0x3ec
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final blacklist CHANNEL_UNACCEPTABLE:I = 0x6

.field public static final blacklist CONDITIONAL_IE_ERROR:I = 0x64

.field public static final blacklist CONGESTION:I = 0x22

.field public static final blacklist DESTINATION_OUT_OF_ORDER:I = 0x1b

.field public static final blacklist DIAL_MODIFIED_TO_DIAL:I = 0xf6

.field public static final blacklist DIAL_MODIFIED_TO_SS:I = 0xf5

.field public static final blacklist DIAL_MODIFIED_TO_USSD:I = 0xf4

.field public static final blacklist ERROR_UNSPECIFIED:I = 0xffff

.field public static final blacklist FACILITY_REJECTED:I = 0x1d

.field public static final blacklist FDN_BLOCKED:I = 0xf1

.field public static final blacklist IMEI_NOT_ACCEPTED:I = 0xf3

.field public static final blacklist IMSI_UNKNOWN_IN_VLR:I = 0xf2

.field public static final blacklist INCOMING_CALLS_BARRED_WITHIN_CUG:I = 0x37

.field public static final blacklist INCOMPATIBLE_DESTINATION:I = 0x58

.field public static final blacklist INFORMATION_ELEMENT_NON_EXISTENT:I = 0x63

.field public static final blacklist INTERWORKING_UNSPECIFIED:I = 0x7f

.field public static final blacklist INVALID:I = 0x0

.field public static final blacklist INVALID_MANDATORY_INFORMATION:I = 0x60

.field public static final blacklist INVALID_NUMBER_FORMAT:I = 0x1c

.field public static final blacklist INVALID_TRANSACTION_IDENTIFIER:I = 0x51

.field public static final blacklist INVALID_TRANSIT_NW_SELECTION:I = 0x5b

.field public static final blacklist MESSAGE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE:I = 0x65

.field public static final blacklist MESSAGE_TYPE_NON_IMPLEMENTED:I = 0x61

.field public static final blacklist MESSAGE_TYPE_NOT_COMPATIBLE_WITH_PROTOCOL_STATE:I = 0x62

.field public static final blacklist NETWORK_DETACH:I = 0x105

.field public static final blacklist NETWORK_OUT_OF_ORDER:I = 0x26

.field public static final blacklist NETWORK_REJECT:I = 0xfc

.field public static final blacklist NETWORK_RESP_TIMEOUT:I = 0xfb

.field public static final blacklist NORMAL:I = 0x10

.field public static final blacklist NORMAL_UNSPECIFIED:I = 0x1f

.field public static final blacklist NO_ANSWER_FROM_USER:I = 0x13

.field public static final blacklist NO_ROUTE_TO_DESTINATION:I = 0x3

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

.field public static final blacklist ONLY_DIGITAL_INFORMATION_BEARER_AVAILABLE:I = 0x46

.field public static final blacklist OPERATOR_DETERMINED_BARRING:I = 0x8

.field public static final blacklist OUT_OF_SERVICE:I = 0xf8

.field public static final blacklist PREEMPTION:I = 0x19

.field public static final blacklist PROTOCOL_ERROR_UNSPECIFIED:I = 0x6f

.field public static final blacklist QOS_UNAVAILABLE:I = 0x31

.field public static final blacklist RADIO_ACCESS_FAILURE:I = 0xfd

.field public static final blacklist RADIO_INTERNAL_ERROR:I = 0xfa

.field public static final blacklist RADIO_LINK_FAILURE:I = 0xfe

.field public static final blacklist RADIO_LINK_LOST:I = 0xff

.field public static final blacklist RADIO_OFF:I = 0xf7

.field public static final blacklist RADIO_RELEASE_ABNORMAL:I = 0x103

.field public static final blacklist RADIO_RELEASE_NORMAL:I = 0x102

.field public static final blacklist RADIO_SETUP_FAILURE:I = 0x101

.field public static final blacklist RADIO_UPLINK_FAILURE:I = 0x100

.field public static final blacklist RECOVERY_ON_TIMER_EXPIRED:I = 0x66

.field public static final blacklist REQUESTED_CIRCUIT_OR_CHANNEL_NOT_AVAILABLE:I = 0x2c

.field public static final blacklist REQUESTED_FACILITY_NOT_IMPLEMENTED:I = 0x45

.field public static final blacklist REQUESTED_FACILITY_NOT_SUBSCRIBED:I = 0x32

.field public static final blacklist RESOURCES_UNAVAILABLE_OR_UNSPECIFIED:I = 0x2f

.field public static final blacklist RESP_TO_STATUS_ENQUIRY:I = 0x1e

.field public static final blacklist SEMANTICALLY_INCORRECT_MESSAGE:I = 0x5f

.field public static final blacklist SERVICE_OPTION_NOT_AVAILABLE:I = 0x3f

.field public static final blacklist SERVICE_OR_OPTION_NOT_IMPLEMENTED:I = 0x4f

.field public static final blacklist SWITCHING_EQUIPMENT_CONGESTION:I = 0x2a

.field public static final blacklist TEMPORARY_FAILURE:I = 0x29

.field public static final blacklist UNOBTAINABLE_NUMBER:I = 0x1

.field public static final blacklist USER_NOT_MEMBER_OF_CUG:I = 0x57
