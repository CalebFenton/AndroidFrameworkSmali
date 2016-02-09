.class public final enum Lcom/android/internal/telephony/dataconnection/DcFailCause;
.super Ljava/lang/Enum;
.source "DcFailCause.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/internal/telephony/dataconnection/DcFailCause;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum CONNECTION_TO_DATACONNECTIONAC_BROKEN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ERROR_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum ONLY_SINGLE_BEARER_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum REGULAR_DEACTIVATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum RESET_BY_FRAMEWORK:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field public static final enum USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

.field private static final sErrorCodeToFailCauseMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Lcom/android/internal/telephony/dataconnection/DcFailCause;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mErrorCode:I

.field private final mRestartRadioOnRegularDeactivation:Z


# direct methods
.method static constructor <clinit>()V
    .locals 10

    #@0
    .prologue
    const/16 v9, 0x1c

    #@2
    const/16 v8, 0x1b

    #@4
    const/16 v7, 0x1a

    #@6
    const/16 v6, 0x8

    #@8
    const/4 v1, 0x0

    #@9
    .line 26
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@b
    const-string/jumbo v3, "NONE"

    #@e
    invoke-direct {v2, v3, v1, v1}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    #@11
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@13
    .line 28
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@15
    const-string/jumbo v3, "OPERATOR_BARRED"

    #@18
    const/4 v4, 0x1

    #@19
    invoke-direct {v2, v3, v4, v6}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    #@1c
    .line 30
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1e
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@20
    const-string/jumbo v3, "INSUFFICIENT_RESOURCES"

    #@23
    const/4 v4, 0x2

    #@24
    invoke-direct {v2, v3, v4, v7}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    #@27
    .line 31
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@29
    .line 32
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@2b
    const-string/jumbo v3, "MISSING_UNKNOWN_APN"

    #@2e
    const/4 v4, 0x3

    #@2f
    invoke-direct {v2, v3, v4, v8}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    #@32
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@34
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@36
    const-string/jumbo v3, "UNKNOWN_PDP_ADDRESS_TYPE"

    #@39
    const/4 v4, 0x4

    #@3a
    invoke-direct {v2, v3, v4, v9}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    #@3d
    .line 33
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@3f
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@41
    const-string/jumbo v3, "USER_AUTHENTICATION"

    #@44
    const/4 v4, 0x5

    #@45
    .line 34
    const/16 v5, 0x1d

    #@47
    .line 33
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    #@4a
    .line 34
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@4c
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@4e
    const-string/jumbo v3, "ACTIVATION_REJECT_GGSN"

    #@51
    const/4 v4, 0x6

    #@52
    .line 35
    const/16 v5, 0x1e

    #@54
    .line 34
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    #@57
    .line 35
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@59
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@5b
    const-string/jumbo v3, "ACTIVATION_REJECT_UNSPECIFIED"

    #@5e
    const/4 v4, 0x7

    #@5f
    .line 36
    const/16 v5, 0x1f

    #@61
    .line 35
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    #@64
    .line 36
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@66
    .line 37
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@68
    const-string/jumbo v3, "SERVICE_OPTION_NOT_SUPPORTED"

    #@6b
    const/16 v4, 0x20

    #@6d
    invoke-direct {v2, v3, v6, v4}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    #@70
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@72
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@74
    const-string/jumbo v3, "SERVICE_OPTION_NOT_SUBSCRIBED"

    #@77
    const/16 v4, 0x9

    #@79
    .line 38
    const/16 v5, 0x21

    #@7b
    .line 37
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    #@7e
    .line 38
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@80
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@82
    const-string/jumbo v3, "SERVICE_OPTION_OUT_OF_ORDER"

    #@85
    const/16 v4, 0xa

    #@87
    .line 39
    const/16 v5, 0x22

    #@89
    .line 38
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    #@8c
    .line 39
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@8e
    .line 40
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@90
    const-string/jumbo v3, "NSAPI_IN_USE"

    #@93
    const/16 v4, 0xb

    #@95
    const/16 v5, 0x23

    #@97
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    #@9a
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@9c
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@9e
    const-string/jumbo v3, "REGULAR_DEACTIVATION"

    #@a1
    const/16 v4, 0xc

    #@a3
    .line 41
    const/16 v5, 0x24

    #@a5
    .line 40
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    #@a8
    .line 41
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REGULAR_DEACTIVATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@aa
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@ac
    const-string/jumbo v3, "ONLY_IPV4_ALLOWED"

    #@af
    const/16 v4, 0xd

    #@b1
    .line 42
    const/16 v5, 0x32

    #@b3
    .line 41
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    #@b6
    .line 42
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@b8
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@ba
    const-string/jumbo v3, "ONLY_IPV6_ALLOWED"

    #@bd
    const/16 v4, 0xe

    #@bf
    .line 43
    const/16 v5, 0x33

    #@c1
    .line 42
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    #@c4
    .line 43
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@c6
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@c8
    const-string/jumbo v3, "ONLY_SINGLE_BEARER_ALLOWED"

    #@cb
    const/16 v4, 0xf

    #@cd
    .line 44
    const/16 v5, 0x34

    #@cf
    .line 43
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    #@d2
    .line 44
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_SINGLE_BEARER_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@d4
    .line 45
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@d6
    const-string/jumbo v3, "PROTOCOL_ERRORS"

    #@d9
    const/16 v4, 0x10

    #@db
    const/16 v5, 0x6f

    #@dd
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    #@e0
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@e2
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@e4
    const-string/jumbo v3, "REGISTRATION_FAIL"

    #@e7
    const/16 v4, 0x11

    #@e9
    .line 49
    const/4 v5, -0x1

    #@ea
    .line 45
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    #@ed
    .line 49
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@ef
    .line 50
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@f1
    const-string/jumbo v3, "GPRS_REGISTRATION_FAIL"

    #@f4
    const/16 v4, 0x12

    #@f6
    const/4 v5, -0x2

    #@f7
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    #@fa
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@fc
    .line 51
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@fe
    const-string/jumbo v3, "SIGNAL_LOST"

    #@101
    const/16 v4, 0x13

    #@103
    const/4 v5, -0x3

    #@104
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    #@107
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@109
    .line 52
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@10b
    const-string/jumbo v3, "PREF_RADIO_TECH_CHANGED"

    #@10e
    const/16 v4, 0x14

    #@110
    const/4 v5, -0x4

    #@111
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    #@114
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@116
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@118
    const-string/jumbo v3, "RADIO_POWER_OFF"

    #@11b
    const/16 v4, 0x15

    #@11d
    .line 53
    const/4 v5, -0x5

    #@11e
    .line 52
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    #@121
    .line 53
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@123
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@125
    const-string/jumbo v3, "TETHERED_CALL_ACTIVE"

    #@128
    const/16 v4, 0x16

    #@12a
    .line 54
    const/4 v5, -0x6

    #@12b
    .line 53
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    #@12e
    .line 54
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@130
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@132
    const-string/jumbo v3, "ERROR_UNSPECIFIED"

    #@135
    const/16 v4, 0x17

    #@137
    .line 55
    const v5, 0xffff

    #@13a
    .line 54
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    #@13d
    .line 55
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@13f
    .line 57
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@141
    const-string/jumbo v3, "UNKNOWN"

    #@144
    const/16 v4, 0x18

    #@146
    .line 59
    const/high16 v5, 0x10000

    #@148
    .line 57
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    #@14b
    .line 59
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@14d
    .line 60
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@14f
    const-string/jumbo v3, "RADIO_NOT_AVAILABLE"

    #@152
    const/16 v4, 0x19

    #@154
    const v5, 0x10001

    #@157
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    #@15a
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@15c
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@15e
    const-string/jumbo v3, "UNACCEPTABLE_NETWORK_PARAMETER"

    #@161
    .line 61
    const v4, 0x10002

    #@164
    .line 60
    invoke-direct {v2, v3, v7, v4}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    #@167
    .line 61
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@169
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@16b
    const-string/jumbo v3, "CONNECTION_TO_DATACONNECTIONAC_BROKEN"

    #@16e
    .line 62
    const v4, 0x10003

    #@171
    .line 61
    invoke-direct {v2, v3, v8, v4}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    #@174
    .line 62
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->CONNECTION_TO_DATACONNECTIONAC_BROKEN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@176
    .line 63
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@178
    const-string/jumbo v3, "LOST_CONNECTION"

    #@17b
    const v4, 0x10004

    #@17e
    invoke-direct {v2, v3, v9, v4}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    #@181
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@183
    .line 64
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@185
    const-string/jumbo v3, "RESET_BY_FRAMEWORK"

    #@188
    const/16 v4, 0x1d

    #@18a
    const v5, 0x10005

    #@18d
    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DcFailCause;-><init>(Ljava/lang/String;II)V

    #@190
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RESET_BY_FRAMEWORK:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@192
    .line 25
    const/16 v2, 0x1e

    #@194
    new-array v2, v2, [Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@196
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NONE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@198
    aput-object v3, v2, v1

    #@19a
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@19c
    const/4 v4, 0x1

    #@19d
    aput-object v3, v2, v4

    #@19f
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1a1
    const/4 v4, 0x2

    #@1a2
    aput-object v3, v2, v4

    #@1a4
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1a6
    const/4 v4, 0x3

    #@1a7
    aput-object v3, v2, v4

    #@1a9
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1ab
    const/4 v4, 0x4

    #@1ac
    aput-object v3, v2, v4

    #@1ae
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1b0
    const/4 v4, 0x5

    #@1b1
    aput-object v3, v2, v4

    #@1b3
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1b5
    const/4 v4, 0x6

    #@1b6
    aput-object v3, v2, v4

    #@1b8
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1ba
    const/4 v4, 0x7

    #@1bb
    aput-object v3, v2, v4

    #@1bd
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1bf
    aput-object v3, v2, v6

    #@1c1
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1c3
    const/16 v4, 0x9

    #@1c5
    aput-object v3, v2, v4

    #@1c7
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1c9
    const/16 v4, 0xa

    #@1cb
    aput-object v3, v2, v4

    #@1cd
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1cf
    const/16 v4, 0xb

    #@1d1
    aput-object v3, v2, v4

    #@1d3
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REGULAR_DEACTIVATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1d5
    const/16 v4, 0xc

    #@1d7
    aput-object v3, v2, v4

    #@1d9
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1db
    const/16 v4, 0xd

    #@1dd
    aput-object v3, v2, v4

    #@1df
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1e1
    const/16 v4, 0xe

    #@1e3
    aput-object v3, v2, v4

    #@1e5
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_SINGLE_BEARER_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1e7
    const/16 v4, 0xf

    #@1e9
    aput-object v3, v2, v4

    #@1eb
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1ed
    const/16 v4, 0x10

    #@1ef
    aput-object v3, v2, v4

    #@1f1
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1f3
    const/16 v4, 0x11

    #@1f5
    aput-object v3, v2, v4

    #@1f7
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->GPRS_REGISTRATION_FAIL:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1f9
    const/16 v4, 0x12

    #@1fb
    aput-object v3, v2, v4

    #@1fd
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1ff
    const/16 v4, 0x13

    #@201
    aput-object v3, v2, v4

    #@203
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PREF_RADIO_TECH_CHANGED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@205
    const/16 v4, 0x14

    #@207
    aput-object v3, v2, v4

    #@209
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@20b
    const/16 v4, 0x15

    #@20d
    aput-object v3, v2, v4

    #@20f
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@211
    const/16 v4, 0x16

    #@213
    aput-object v3, v2, v4

    #@215
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ERROR_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@217
    const/16 v4, 0x17

    #@219
    aput-object v3, v2, v4

    #@21b
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@21d
    const/16 v4, 0x18

    #@21f
    aput-object v3, v2, v4

    #@221
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@223
    const/16 v4, 0x19

    #@225
    aput-object v3, v2, v4

    #@227
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@229
    aput-object v3, v2, v7

    #@22b
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->CONNECTION_TO_DATACONNECTIONAC_BROKEN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@22d
    aput-object v3, v2, v8

    #@22f
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->LOST_CONNECTION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@231
    aput-object v3, v2, v9

    #@233
    sget-object v3, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RESET_BY_FRAMEWORK:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@235
    const/16 v4, 0x1d

    #@237
    aput-object v3, v2, v4

    #@239
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@23b
    .line 71
    new-instance v2, Ljava/util/HashMap;

    #@23d
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    #@240
    sput-object v2, Lcom/android/internal/telephony/dataconnection/DcFailCause;->sErrorCodeToFailCauseMap:Ljava/util/HashMap;

    #@242
    .line 72
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->values()[Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@245
    move-result-object v2

    #@246
    array-length v3, v2

    #@247
    .local v0, "fc":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    :goto_0
    if-ge v1, v3, :cond_0

    #@249
    aget-object v0, v2, v1

    #@24b
    .line 73
    sget-object v4, Lcom/android/internal/telephony/dataconnection/DcFailCause;->sErrorCodeToFailCauseMap:Ljava/util/HashMap;

    #@24d
    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcFailCause;->getErrorCode()I

    #@250
    move-result v5

    #@251
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@254
    move-result-object v5

    #@255
    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@258
    .line 72
    add-int/lit8 v1, v1, 0x1

    #@25a
    goto :goto_0

    #@25b
    .line 25
    :cond_0
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 2
    .param p3, "errorCode"    # I

    #@0
    .prologue
    .line 77
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    #@3
    .line 66
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    #@6
    move-result-object v0

    #@7
    .line 67
    const v1, 0x1120090

    #@a
    .line 66
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    #@d
    move-result v0

    #@e
    iput-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->mRestartRadioOnRegularDeactivation:Z

    #@10
    .line 78
    iput p3, p0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->mErrorCode:I

    #@12
    .line 77
    return-void
.end method

.method public static fromInt(I)Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 3
    .param p0, "errorCode"    # I

    #@0
    .prologue
    .line 116
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->sErrorCodeToFailCauseMap:Ljava/util/HashMap;

    #@2
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@5
    move-result-object v2

    #@6
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@9
    move-result-object v0

    #@a
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@c
    .line 117
    .local v0, "fc":Lcom/android/internal/telephony/dataconnection/DcFailCause;
    if-nez v0, :cond_0

    #@e
    .line 118
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@10
    .line 120
    :cond_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 25
    const-class v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@2
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    #@5
    move-result-object v0

    #@6
    check-cast v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@8
    return-object v0
.end method

.method public static values()[Lcom/android/internal/telephony/dataconnection/DcFailCause;
    .locals 1

    #@0
    .prologue
    .line 25
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->$VALUES:[Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@2
    return-object v0
.end method


# virtual methods
.method public getErrorCode()I
    .locals 1

    #@0
    .prologue
    .line 82
    iget v0, p0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->mErrorCode:I

    #@2
    return v0
.end method

.method public isEventLoggable()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 103
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@3
    if-eq p0, v1, :cond_0

    #@5
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->INSUFFICIENT_RESOURCES:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@7
    if-ne p0, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    .line 104
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@c
    if-eq p0, v1, :cond_0

    #@e
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@10
    if-eq p0, v1, :cond_0

    #@12
    .line 105
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@14
    if-eq p0, v1, :cond_0

    #@16
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_UNSPECIFIED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@18
    if-eq p0, v1, :cond_0

    #@1a
    .line 106
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1c
    if-eq p0, v1, :cond_0

    #@1e
    .line 107
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@20
    if-eq p0, v1, :cond_0

    #@22
    .line 108
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_OUT_OF_ORDER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@24
    if-eq p0, v1, :cond_0

    #@26
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@28
    if-eq p0, v1, :cond_0

    #@2a
    .line 109
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@2c
    if-eq p0, v1, :cond_0

    #@2e
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@30
    if-eq p0, v1, :cond_0

    #@32
    .line 110
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@34
    if-eq p0, v1, :cond_0

    #@36
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@38
    if-eq p0, v1, :cond_0

    #@3a
    .line 111
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@3c
    if-eq p0, v1, :cond_0

    #@3e
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@40
    if-eq p0, v1, :cond_0

    #@42
    .line 112
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@44
    if-eq p0, v1, :cond_0

    #@46
    const/4 v0, 0x0

    #@47
    goto :goto_0
.end method

.method public isPermanentFail()Z
    .locals 2

    #@0
    .prologue
    const/4 v0, 0x1

    #@1
    .line 91
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->OPERATOR_BARRED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@3
    if-eq p0, v1, :cond_0

    #@5
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->MISSING_UNKNOWN_APN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@7
    if-ne p0, v1, :cond_1

    #@9
    :cond_0
    :goto_0
    return v0

    #@a
    .line 92
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNKNOWN_PDP_ADDRESS_TYPE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@c
    if-eq p0, v1, :cond_0

    #@e
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->USER_AUTHENTICATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@10
    if-eq p0, v1, :cond_0

    #@12
    .line 93
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ACTIVATION_REJECT_GGSN:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@14
    if-eq p0, v1, :cond_0

    #@16
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUPPORTED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@18
    if-eq p0, v1, :cond_0

    #@1a
    .line 94
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SERVICE_OPTION_NOT_SUBSCRIBED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@1c
    if-eq p0, v1, :cond_0

    #@1e
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->NSAPI_IN_USE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@20
    if-eq p0, v1, :cond_0

    #@22
    .line 95
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV4_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@24
    if-eq p0, v1, :cond_0

    #@26
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->ONLY_IPV6_ALLOWED:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@28
    if-eq p0, v1, :cond_0

    #@2a
    .line 96
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->PROTOCOL_ERRORS:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@2c
    if-eq p0, v1, :cond_0

    #@2e
    .line 97
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_POWER_OFF:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@30
    if-eq p0, v1, :cond_0

    #@32
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->TETHERED_CALL_ACTIVE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@34
    if-eq p0, v1, :cond_0

    #@36
    .line 98
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->RADIO_NOT_AVAILABLE:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@38
    if-eq p0, v1, :cond_0

    #@3a
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->UNACCEPTABLE_NETWORK_PARAMETER:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@3c
    if-eq p0, v1, :cond_0

    #@3e
    .line 99
    sget-object v1, Lcom/android/internal/telephony/dataconnection/DcFailCause;->SIGNAL_LOST:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@40
    if-eq p0, v1, :cond_0

    #@42
    const/4 v0, 0x0

    #@43
    goto :goto_0
.end method

.method public isRestartRadioFail()Z
    .locals 1

    #@0
    .prologue
    .line 87
    sget-object v0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->REGULAR_DEACTIVATION:Lcom/android/internal/telephony/dataconnection/DcFailCause;

    #@2
    if-ne p0, v0, :cond_0

    #@4
    iget-boolean v0, p0, Lcom/android/internal/telephony/dataconnection/DcFailCause;->mRestartRadioOnRegularDeactivation:Z

    #@6
    :goto_0
    return v0

    #@7
    :cond_0
    const/4 v0, 0x0

    #@8
    goto :goto_0
.end method
