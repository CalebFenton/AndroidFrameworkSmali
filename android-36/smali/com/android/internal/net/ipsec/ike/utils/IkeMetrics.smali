.class public Lcom/android/internal/net/ipsec/ike/utils/IkeMetrics;
.super Ljava/lang/Object;
.source "IkeMetrics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/net/ipsec/ike/utils/IkeMetrics$IkeUnderlyingNetworkType;,
        Lcom/android/internal/net/ipsec/ike/utils/IkeMetrics$IkeError;,
        Lcom/android/internal/net/ipsec/ike/utils/IkeMetrics$IkeState;,
        Lcom/android/internal/net/ipsec/ike/utils/IkeMetrics$KeyLengths;,
        Lcom/android/internal/net/ipsec/ike/utils/IkeMetrics$EncryptionAlgorithms;,
        Lcom/android/internal/net/ipsec/ike/utils/IkeMetrics$PrfAlgorithms;,
        Lcom/android/internal/net/ipsec/ike/utils/IkeMetrics$IntegrityAlgorithms;,
        Lcom/android/internal/net/ipsec/ike/utils/IkeMetrics$DhGroups;,
        Lcom/android/internal/net/ipsec/ike/utils/IkeMetrics$IkeSessionType;,
        Lcom/android/internal/net/ipsec/ike/utils/IkeMetrics$IkeCaller;
    }
.end annotation


# static fields
.field public static final blacklist DH_GROUP_1024_BIT_MODP:I = 0x2

.field public static final blacklist DH_GROUP_1536_BIT_MODP:I = 0x5

.field public static final blacklist DH_GROUP_2048_BIT_MODP:I = 0xe

.field public static final blacklist DH_GROUP_3072_BIT_MODP:I = 0xf

.field public static final blacklist DH_GROUP_4096_BIT_MODP:I = 0x10

.field public static final blacklist DH_GROUP_CURVE_25519:I = 0x1f

.field public static final blacklist DH_GROUP_NONE:I = 0x1

.field public static final blacklist DH_GROUP_UNSPECIFIED:I = 0x0

.field public static final blacklist ENCRYPTION_ALGORITHM_3DES:I = 0x3

.field public static final blacklist ENCRYPTION_ALGORITHM_AES_CBC:I = 0xc

.field public static final blacklist ENCRYPTION_ALGORITHM_AES_CTR:I = 0xd

.field public static final blacklist ENCRYPTION_ALGORITHM_AES_GCM_12:I = 0x13

.field public static final blacklist ENCRYPTION_ALGORITHM_AES_GCM_16:I = 0x14

.field public static final blacklist ENCRYPTION_ALGORITHM_AES_GCM_8:I = 0x12

.field public static final blacklist ENCRYPTION_ALGORITHM_CHACHA20_POLY1305:I = 0x1c

.field public static final blacklist ENCRYPTION_ALGORITHM_UNSPECIFIED:I = 0x0

.field public static final blacklist IKE_CALLER_IWLAN:I = 0x1

.field public static final blacklist IKE_CALLER_UNKNOWN:I = 0x0

.field public static final blacklist IKE_CALLER_VCN:I = 0x2

.field public static final blacklist IKE_CALLER_VPN:I = 0x3

.field public static final blacklist IKE_ERROR_INTERNAL:I = 0x10000

.field public static final blacklist IKE_ERROR_IO_DNS_FAILURE:I = 0x30002

.field public static final blacklist IKE_ERROR_IO_GENERAL:I = 0x30000

.field public static final blacklist IKE_ERROR_IO_TIMEOUT:I = 0x30001

.field public static final blacklist IKE_ERROR_NETWORK_LOST:I = 0x20000

.field public static final blacklist IKE_ERROR_NONE:I = 0x0

.field public static final blacklist IKE_ERROR_PROTOCOL_AUTHENTICATION_FAILED:I = 0x40018

.field public static final blacklist IKE_ERROR_PROTOCOL_CHILD_SA_NOT_FOUND:I = 0x4002c

.field public static final blacklist IKE_ERROR_PROTOCOL_FAILED_CP_REQUIRED:I = 0x40025

.field public static final blacklist IKE_ERROR_PROTOCOL_INTERNAL_ADDRESS_FAILURE:I = 0x40024

.field public static final blacklist IKE_ERROR_PROTOCOL_INVALID_IKE_SPI:I = 0x40004

.field public static final blacklist IKE_ERROR_PROTOCOL_INVALID_KE_PAYLOAD:I = 0x40011

.field public static final blacklist IKE_ERROR_PROTOCOL_INVALID_MAJOR_VERSION:I = 0x40005

.field public static final blacklist IKE_ERROR_PROTOCOL_INVALID_MESSAGE_ID:I = 0x40009

.field public static final blacklist IKE_ERROR_PROTOCOL_INVALID_SELECTORS:I = 0x40027

.field public static final blacklist IKE_ERROR_PROTOCOL_INVALID_SYNTAX:I = 0x40007

.field public static final blacklist IKE_ERROR_PROTOCOL_NO_ADDITIONAL_SAS:I = 0x40023

.field public static final blacklist IKE_ERROR_PROTOCOL_NO_PROPOSAL_CHOSEN:I = 0x4000e

.field public static final blacklist IKE_ERROR_PROTOCOL_SINGLE_PAIR_REQUIRED:I = 0x40022

.field public static final blacklist IKE_ERROR_PROTOCOL_TEMPORARY_FAILURE:I = 0x4002b

.field public static final blacklist IKE_ERROR_PROTOCOL_TS_UNACCEPTABLE:I = 0x40026

.field public static final blacklist IKE_ERROR_PROTOCOL_UNKNOWN:I = 0x40000

.field public static final blacklist IKE_ERROR_PROTOCOL_UNSUPPORTED_CRITICAL_PAYLOAD:I = 0x40001

.field public static final blacklist IKE_ERROR_UNKNOWN:I = 0xfffffff

.field public static final blacklist IKE_SESSION_TYPE_CHILD:I = 0x2

.field public static final blacklist IKE_SESSION_TYPE_IKE:I = 0x1

.field public static final blacklist IKE_SESSION_TYPE_UNKNOWN:I = 0x0

.field public static final blacklist IKE_STATE_CHILD_CLOSE_AND_AWAIT_RESPONSE:I = 0x6a

.field public static final blacklist IKE_STATE_CHILD_CREATE_LOCAL_CREATE:I = 0x67

.field public static final blacklist IKE_STATE_CHILD_DELETE_LOCAL_DELETE:I = 0x6b

.field public static final blacklist IKE_STATE_CHILD_DELETE_REMOTE_DELETE:I = 0x6c

.field public static final blacklist IKE_STATE_CHILD_IDLE:I = 0x68

.field public static final blacklist IKE_STATE_CHILD_IDLE_WITH_DEFERRED_REQUEST:I = 0x69

.field public static final blacklist IKE_STATE_CHILD_INITIAL:I = 0x66

.field public static final blacklist IKE_STATE_CHILD_KILL:I = 0x65

.field public static final blacklist IKE_STATE_CHILD_MOBIKE_REKEY_LOCAL_CREATE:I = 0x6e

.field public static final blacklist IKE_STATE_CHILD_REKEY_LOCAL_CREATE:I = 0x6d

.field public static final blacklist IKE_STATE_CHILD_REKEY_LOCAL_DELETE:I = 0x70

.field public static final blacklist IKE_STATE_CHILD_REKEY_REMOTE_CREATE:I = 0x6f

.field public static final blacklist IKE_STATE_CHILD_REKEY_REMOTE_DELETE:I = 0x71

.field public static final blacklist IKE_STATE_IKE_CHILD_PROCEDURE_ONGOING:I = 0x8

.field public static final blacklist IKE_STATE_IKE_CREATE_LOCAL_IKE_AUTH:I = 0x4

.field public static final blacklist IKE_STATE_IKE_CREATE_LOCAL_IKE_AUTH_IN_EAP:I = 0x5

.field public static final blacklist IKE_STATE_IKE_CREATE_LOCAL_IKE_AUTH_POST_EAP:I = 0x6

.field public static final blacklist IKE_STATE_IKE_CREATE_LOCAL_IKE_INIT:I = 0x3

.field public static final blacklist IKE_STATE_IKE_DELETE_LOCAL_DELETE:I = 0x11

.field public static final blacklist IKE_STATE_IKE_DPD_LOCAL_INFO:I = 0x12

.field public static final blacklist IKE_STATE_IKE_DPD_ON_DEMAND_LOCAL_INFO:I = 0x14

.field public static final blacklist IKE_STATE_IKE_IDLE:I = 0x7

.field public static final blacklist IKE_STATE_IKE_INITIAL:I = 0x2

.field public static final blacklist IKE_STATE_IKE_KILL:I = 0x1

.field public static final blacklist IKE_STATE_IKE_MOBIKE_LOCAL_INFO:I = 0x13

.field public static final blacklist IKE_STATE_IKE_RECEIVING:I = 0x9

.field public static final blacklist IKE_STATE_IKE_REKEY_LOCAL_CREATE:I = 0xa

.field public static final blacklist IKE_STATE_IKE_REKEY_LOCAL_DELETE:I = 0xf

.field public static final blacklist IKE_STATE_IKE_REKEY_REMOTE_DELETE:I = 0x10

.field public static final blacklist IKE_STATE_IKE_SIMULTANEOUS_REKEY_LOCAL_CREATE:I = 0xb

.field public static final blacklist IKE_STATE_IKE_SIMULTANEOUS_REKEY_LOCAL_DELETE:I = 0xd

.field public static final blacklist IKE_STATE_IKE_SIMULTANEOUS_REKEY_LOCAL_DELETE_REMOTE_DELETE:I = 0xc

.field public static final blacklist IKE_STATE_IKE_SIMULTANEOUS_REKEY_REMOTE_DELETE:I = 0xe

.field public static final blacklist IKE_STATE_UNKNOWN:I = 0x0

.field public static final blacklist IKE_TASK_UNSPECIFIED:I = 0x0

.field public static final blacklist IKE_UNDERLYING_NETWORK_TYPE_CELLULAR:I = 0x2

.field public static final blacklist IKE_UNDERLYING_NETWORK_TYPE_UNSPECIFIED:I = 0x0

.field public static final blacklist IKE_UNDERLYING_NETWORK_TYPE_WIFI:I = 0x1

.field public static final blacklist INTEGRITY_ALGORITHM_AES_CMAC_96:I = 0x8

.field public static final blacklist INTEGRITY_ALGORITHM_AES_XCBC_96:I = 0x5

.field public static final blacklist INTEGRITY_ALGORITHM_HMAC_SHA1_96:I = 0x2

.field public static final blacklist INTEGRITY_ALGORITHM_HMAC_SHA2_256_128:I = 0xc

.field public static final blacklist INTEGRITY_ALGORITHM_HMAC_SHA2_384_192:I = 0xd

.field public static final blacklist INTEGRITY_ALGORITHM_HMAC_SHA2_512_256:I = 0xe

.field public static final blacklist INTEGRITY_ALGORITHM_NONE:I = 0x1

.field public static final blacklist INTEGRITY_ALGORITHM_UNSPECIFIED:I = 0x0

.field public static final blacklist KEY_LEN_AES_128:I = 0x80

.field public static final blacklist KEY_LEN_AES_192:I = 0xc0

.field public static final blacklist KEY_LEN_AES_256:I = 0x100

.field public static final blacklist KEY_LEN_UNSPECIFIED:I = 0x0

.field public static final blacklist KEY_LEN_UNUSED:I = 0x1

.field public static final blacklist PSEUDORANDOM_FUNCTION_AES128_CMAC:I = 0x8

.field public static final blacklist PSEUDORANDOM_FUNCTION_AES128_XCBC:I = 0x4

.field public static final blacklist PSEUDORANDOM_FUNCTION_HMAC_SHA1:I = 0x2

.field public static final blacklist PSEUDORANDOM_FUNCTION_SHA2_256:I = 0x5

.field public static final blacklist PSEUDORANDOM_FUNCTION_SHA2_384:I = 0x6

.field public static final blacklist PSEUDORANDOM_FUNCTION_SHA2_512:I = 0x7

.field public static final blacklist PSEUDORANDOM_FUNCTION_UNSPECIFIED:I


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist logLivenessCheckCompleted(IIIIIZ)V
    .registers 15
    .param p1, "ikeCaller"    # I
    .param p2, "ikeState"    # I
    .param p3, "ikeUnderlyingNetworkType"    # I
    .param p4, "elapsedTimeInMillis"    # I
    .param p5, "numberOfOnGoing"    # I
    .param p6, "resultSuccess"    # Z

    .line 685
    const/16 v0, 0x2f8

    const/4 v2, 0x0

    move v1, p1

    move v7, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    .end local p1    # "ikeCaller":I
    .end local p2    # "ikeState":I
    .end local p3    # "ikeUnderlyingNetworkType":I
    .end local p4    # "elapsedTimeInMillis":I
    .end local p5    # "numberOfOnGoing":I
    .end local p6    # "resultSuccess":Z
    .local v1, "ikeCaller":I
    .local v3, "ikeUnderlyingNetworkType":I
    .local v4, "elapsedTimeInMillis":I
    .local v5, "numberOfOnGoing":I
    .local v6, "resultSuccess":Z
    .local v7, "ikeState":I
    invoke-static/range {v0 .. v7}, Lcom/android/internal/net/ipsec/ike/utils/IkeMetricsInterface;->write(IIIIIIZI)V

    .line 694
    return-void
.end method

.method public blacklist logSaNegotiation(IIIIIIIII)V
    .registers 20
    .param p1, "ikeCaller"    # I
    .param p2, "ikeSessionType"    # I
    .param p3, "ikeState"    # I
    .param p4, "dhGroup"    # I
    .param p5, "encryptionAlgorithm"    # I
    .param p6, "keyLength"    # I
    .param p7, "integrityAlgorithm"    # I
    .param p8, "prfAlgorithm"    # I
    .param p9, "ikeError"    # I

    .line 712
    const/16 v0, 0x335

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    invoke-static/range {v0 .. v9}, Lcom/android/internal/net/ipsec/ike/utils/IkeMetricsInterface;->write(IIIIIIIIII)V

    .line 723
    return-void
.end method

.method public blacklist logSessionTerminated(IIII)V
    .registers 6
    .param p1, "ikeCaller"    # I
    .param p2, "ikeSessionType"    # I
    .param p3, "ikeState"    # I
    .param p4, "ikeError"    # I

    .line 664
    const/16 v0, 0x2a6

    invoke-static {v0, p1, p2, p3, p4}, Lcom/android/internal/net/ipsec/ike/utils/IkeMetricsInterface;->write(IIIII)V

    .line 670
    return-void
.end method
