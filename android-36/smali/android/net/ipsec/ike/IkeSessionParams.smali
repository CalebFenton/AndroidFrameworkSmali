.class public final Landroid/net/ipsec/ike/IkeSessionParams;
.super Ljava/lang/Object;
.source "IkeSessionParams.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;,
        Landroid/net/ipsec/ike/IkeSessionParams$Builder;,
        Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthEapConfig;,
        Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignLocalConfig;,
        Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthDigitalSignRemoteConfig;,
        Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthPskConfig;,
        Landroid/net/ipsec/ike/IkeSessionParams$ConfigRequestIpv6PcscfServer;,
        Landroid/net/ipsec/ike/IkeSessionParams$ConfigRequestIpv4PcscfServer;,
        Landroid/net/ipsec/ike/IkeSessionParams$IkeConfigRequest;,
        Landroid/net/ipsec/ike/IkeSessionParams$EspEncapType;,
        Landroid/net/ipsec/ike/IkeSessionParams$EspIpVersion;,
        Landroid/net/ipsec/ike/IkeSessionParams$IkeOption;,
        Landroid/net/ipsec/ike/IkeSessionParams$AuthDirection;,
        Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthMethod;
    }
.end annotation


# static fields
.field public static final blacklist AUTH_DIRECTION_BOTH:I = 0x3

.field public static final blacklist AUTH_DIRECTION_LOCAL:I = 0x1

.field public static final blacklist AUTH_DIRECTION_REMOTE:I = 0x2

.field private static final blacklist CONFIG_ATTRIBUTES_KEY:Ljava/lang/String; = "mConfigRequests"

.field private static final blacklist DPD_DELAY_SEC_KEY:Ljava/lang/String; = "mDpdDelaySec"

.field static final blacklist DSCP_DEFAULT:I = 0x0

.field private static final blacklist DSCP_KEY:Ljava/lang/String; = "mDscp"

.field static final blacklist DSCP_MAX:I = 0x3f

.field static final blacklist DSCP_MIN:I = 0x0

.field private static final blacklist ENCAP_TYPE_KEY:Ljava/lang/String; = "mEncapType"

.field public static final blacklist ENCAP_TYPE_TO_STR:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist ESP_ENCAP_TYPE_AUTO:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist ESP_ENCAP_TYPE_NONE:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist ESP_ENCAP_TYPE_UDP:I = 0x11
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist ESP_IP_VERSION_AUTO:I = 0x0
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist ESP_IP_VERSION_IPV4:I = 0x4
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field public static final blacklist ESP_IP_VERSION_IPV6:I = 0x6
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field private static final blacklist HARD_LIFETIME_SEC_KEY:Ljava/lang/String; = "mHardLifetimeSec"

.field public static final blacklist IKE_AUTH_METHOD_EAP:I = 0x3

.field public static final blacklist IKE_AUTH_METHOD_PSK:I = 0x1

.field public static final blacklist IKE_AUTH_METHOD_PUB_KEY_SIGNATURE:I = 0x2

.field static final blacklist IKE_DPD_DELAY_SEC_DEFAULT:I = 0x78

.field public static final whitelist IKE_DPD_DELAY_SEC_DISABLED:I = 0x7fffffff

.field static final blacklist IKE_DPD_DELAY_SEC_MAX:I = 0x708

.field static final blacklist IKE_DPD_DELAY_SEC_MIN:I = 0x14

.field static final blacklist IKE_HARD_LIFETIME_SEC_DEFAULT:I = 0x3840

.field static final blacklist IKE_HARD_LIFETIME_SEC_MAXIMUM:I = 0x15180

.field static final blacklist IKE_HARD_LIFETIME_SEC_MINIMUM:I = 0x12c

.field static final blacklist IKE_LIFETIME_MARGIN_SEC_MINIMUM:I

.field static final blacklist IKE_NATT_KEEPALIVE_DELAY_SEC_DEFAULT:I = 0xa

.field public static final blacklist IKE_NATT_KEEPALIVE_DELAY_SEC_MAX:I = 0xe10

.field public static final blacklist IKE_NATT_KEEPALIVE_DELAY_SEC_MIN:I = 0xa

.field private static final blacklist IKE_OPTIONS_KEY:Ljava/lang/String; = "mIkeOptions"

.field public static final whitelist IKE_OPTION_ACCEPT_ANY_REMOTE_ID:I = 0x0

.field public static final blacklist IKE_OPTION_AUTOMATIC_ADDRESS_FAMILY_SELECTION:I = 0x6

.field public static final whitelist IKE_OPTION_AUTOMATIC_KEEPALIVE_ON_OFF:I = 0x8
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field public static final blacklist IKE_OPTION_AUTOMATIC_NATT_KEEPALIVES:I = 0x7

.field public static final whitelist IKE_OPTION_EAP_ONLY_AUTH:I = 0x1

.field public static final blacklist IKE_OPTION_FORCE_DNS_RESOLUTION:I = 0x9

.field public static final whitelist IKE_OPTION_FORCE_PORT_4500:I = 0x3

.field public static final whitelist IKE_OPTION_INITIAL_CONTACT:I = 0x4

.field public static final whitelist IKE_OPTION_MOBIKE:I = 0x2

.field public static final whitelist IKE_OPTION_REKEY_MOBILITY:I = 0x5
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation
.end field

.field static final blacklist IKE_RETRANS_MAX_ATTEMPTS_MAX:I = 0xa

.field static final blacklist IKE_RETRANS_TIMEOUT_MS_LIST_DEFAULT:[I

.field static final blacklist IKE_RETRANS_TIMEOUT_MS_MAX:I

.field static final blacklist IKE_RETRANS_TIMEOUT_MS_MIN:I = 0x1f4

.field static final blacklist IKE_SOFT_LIFETIME_SEC_DEFAULT:I = 0x1c20

.field static final blacklist IKE_SOFT_LIFETIME_SEC_MINIMUM:I = 0x78

.field private static final blacklist IP_VERSION_KEY:Ljava/lang/String; = "mIpVersion"

.field public static final blacklist IP_VERSION_TO_STR:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist IS_IKE_FRAGMENT_SUPPORTED_KEY:Ljava/lang/String; = "mIsIkeFragmentationSupported"

.field static final blacklist LIVENESS_RETRANS_MAX_ATTEMPTS_MAX:I = 0xa

.field private static final blacklist LIVENESS_RETRANS_TIMEOUTS_KEY:Ljava/lang/String; = "mLivenessRetransTimeoutMsList"

.field static final blacklist LIVENESS_RETRANS_TIMEOUT_MS_LIST_DEFAULT:[I

.field static final blacklist LIVENESS_RETRANS_TIMEOUT_MS_MAX:I = 0x7530

.field static final blacklist LIVENESS_RETRANS_TIMEOUT_MS_MIN:I = 0x1f4

.field static final blacklist LIVENESS_RETRANS_TIMEOUT_MS_TOTAL:I = 0x7530

.field private static final blacklist LOCAL_AUTH_KEY:Ljava/lang/String; = "mLocalAuthConfig"

.field private static final blacklist LOCAL_ID_KEY:Ljava/lang/String; = "mLocalIdentification"

.field private static final blacklist MAX_IKE_OPTION:I = 0x9

.field private static final blacklist MIN_IKE_OPTION:I = 0x0

.field private static final blacklist NATT_KEEPALIVE_DELAY_SEC_KEY:Ljava/lang/String; = "mNattKeepaliveDelaySec"

.field public static final blacklist NATT_KEEPALIVE_INTERVAL_AUTO:I = -0x1
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation
.end field

.field private static final blacklist REMOTE_AUTH_KEY:Ljava/lang/String; = "mRemoteAuthConfig"

.field private static final blacklist REMOTE_ID_KEY:Ljava/lang/String; = "mRemoteIdentification"

.field private static final blacklist RETRANS_TIMEOUTS_KEY:Ljava/lang/String; = "mRetransTimeoutMsList"

.field private static final blacklist SA_PROPOSALS_KEY:Ljava/lang/String; = "mSaProposals"

.field private static final blacklist SERVER_HOST_NAME_KEY:Ljava/lang/String; = "mServerHostname"

.field private static final blacklist SOFT_LIFETIME_SEC_KEY:Ljava/lang/String; = "mSoftLifetimeSec"


# instance fields
.field private final blacklist mCallerConfiguredNetwork:Landroid/net/Network;

.field private final blacklist mConfigRequests:[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;

.field private final blacklist mDefaultOrConfiguredNetwork:Landroid/net/Network;

.field private final blacklist mDpdDelaySec:I

.field private final blacklist mDscp:I

.field private final blacklist mEncapType:I

.field private final blacklist mHardLifetimeSec:I

.field private final blacklist mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

.field private final blacklist mIkeOptions:J

.field private final blacklist mIpVersion:I

.field private final blacklist mIsIkeFragmentationSupported:Z

.field private final blacklist mLivenessRetransTimeoutMsList:[I

.field private final blacklist mLocalAuthConfig:Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

.field private final blacklist mLocalIdentification:Landroid/net/ipsec/ike/IkeIdentification;

.field private final blacklist mNattKeepaliveDelaySec:I

.field private final blacklist mRemoteAuthConfig:Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

.field private final blacklist mRemoteIdentification:Landroid/net/ipsec/ike/IkeIdentification;

.field private final blacklist mRetransTimeoutMsList:[I

.field private final blacklist mSaProposals:[Landroid/net/ipsec/ike/IkeSaProposal;

.field private final blacklist mServerHostname:Ljava/lang/String;

.field private final blacklist mSoftLifetimeSec:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmConfigRequests(Landroid/net/ipsec/ike/IkeSessionParams;)[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;
    .registers 1

    iget-object p0, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mConfigRequests:[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIkeOptions(Landroid/net/ipsec/ike/IkeSessionParams;)J
    .registers 3

    iget-wide v0, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mIkeOptions:J

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsIkeFragmentationSupported(Landroid/net/ipsec/ike/IkeSessionParams;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mIsIkeFragmentationSupported:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmLivenessRetransTimeoutMsList(Landroid/net/ipsec/ike/IkeSessionParams;)[I
    .registers 1

    iget-object p0, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mLivenessRetransTimeoutMsList:[I

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$smgetOptionBitValue(I)J
    .registers 3

    invoke-static {p0}, Landroid/net/ipsec/ike/IkeSessionParams;->getOptionBitValue(I)J

    move-result-wide v0

    return-wide v0
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateIkeOptionOrThrow(I)V
    .registers 1

    invoke-static {p0}, Landroid/net/ipsec/ike/IkeSessionParams;->validateIkeOptionOrThrow(I)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 6

    .line 380
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/ipsec/ike/IkeSessionParams;->IP_VERSION_TO_STR:Landroid/util/SparseArray;

    .line 381
    sget-object v0, Landroid/net/ipsec/ike/IkeSessionParams;->IP_VERSION_TO_STR:Landroid/util/SparseArray;

    const/4 v1, 0x0

    const-string v2, "AUTO"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 382
    sget-object v0, Landroid/net/ipsec/ike/IkeSessionParams;->IP_VERSION_TO_STR:Landroid/util/SparseArray;

    const/4 v3, 0x4

    const-string v4, "IPV4"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 383
    sget-object v0, Landroid/net/ipsec/ike/IkeSessionParams;->IP_VERSION_TO_STR:Landroid/util/SparseArray;

    const/4 v3, 0x6

    const-string v4, "IPV6"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 390
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    sput-object v0, Landroid/net/ipsec/ike/IkeSessionParams;->ENCAP_TYPE_TO_STR:Landroid/util/SparseArray;

    .line 391
    sget-object v0, Landroid/net/ipsec/ike/IkeSessionParams;->ENCAP_TYPE_TO_STR:Landroid/util/SparseArray;

    const/4 v3, -0x1

    const-string v4, "NONE"

    invoke-virtual {v0, v3, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 392
    sget-object v0, Landroid/net/ipsec/ike/IkeSessionParams;->ENCAP_TYPE_TO_STR:Landroid/util/SparseArray;

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 393
    sget-object v0, Landroid/net/ipsec/ike/IkeSessionParams;->ENCAP_TYPE_TO_STR:Landroid/util/SparseArray;

    const/16 v1, 0x11

    const-string v2, "UDP"

    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 410
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Landroid/net/ipsec/ike/IkeSessionParams;->IKE_LIFETIME_MARGIN_SEC_MINIMUM:I

    .line 437
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x1e

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    long-to-int v0, v0

    sput v0, Landroid/net/ipsec/ike/IkeSessionParams;->IKE_RETRANS_TIMEOUT_MS_MAX:I

    .line 442
    const/16 v0, 0x1f4

    const/16 v1, 0x3e8

    const/16 v2, 0x7d0

    const/16 v3, 0xfa0

    const/16 v4, 0x1f40

    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v5

    sput-object v5, Landroid/net/ipsec/ike/IkeSessionParams;->IKE_RETRANS_TIMEOUT_MS_LIST_DEFAULT:[I

    .line 455
    filled-new-array {v0, v1, v2, v3, v4}, [I

    move-result-object v0

    sput-object v0, Landroid/net/ipsec/ike/IkeSessionParams;->LIVENESS_RETRANS_TIMEOUT_MS_LIST_DEFAULT:[I

    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Landroid/net/Network;Landroid/net/Network;[Landroid/net/ipsec/ike/IkeSaProposal;Landroid/net/ipsec/ike/IkeIdentification;Landroid/net/ipsec/ike/IkeIdentification;Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;[I[ILandroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;JIIIIIIIZ)V
    .registers 39
    .param p1, "serverHostname"    # Ljava/lang/String;
    .param p2, "defaultOrConfiguredNetwork"    # Landroid/net/Network;
    .param p3, "callerConfiguredNetwork"    # Landroid/net/Network;
    .param p4, "proposals"    # [Landroid/net/ipsec/ike/IkeSaProposal;
    .param p5, "localIdentification"    # Landroid/net/ipsec/ike/IkeIdentification;
    .param p6, "remoteIdentification"    # Landroid/net/ipsec/ike/IkeIdentification;
    .param p7, "localAuthConfig"    # Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;
    .param p8, "remoteAuthConfig"    # Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;
    .param p9, "configRequests"    # [Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;
    .param p10, "retransTimeoutMsList"    # [I
    .param p11, "livenessRetransTimeoutMsList"    # [I
    .param p12, "ike3gppExtension"    # Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;
    .param p13, "ikeOptions"    # J
    .param p15, "hardLifetimeSec"    # I
    .param p16, "softLifetimeSec"    # I
    .param p17, "dpdDelaySec"    # I
    .param p18, "nattKeepaliveDelaySec"    # I
    .param p19, "dscp"    # I
    .param p20, "espIpVersion"    # I
    .param p21, "espEncapType"    # I
    .param p22, "isIkeFragmentationSupported"    # Z

    .line 539
    move-object/from16 v0, p0

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 540
    move-object/from16 v1, p1

    iput-object v1, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mServerHostname:Ljava/lang/String;

    .line 541
    move-object/from16 v2, p2

    iput-object v2, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mDefaultOrConfiguredNetwork:Landroid/net/Network;

    .line 542
    move-object/from16 v3, p3

    iput-object v3, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mCallerConfiguredNetwork:Landroid/net/Network;

    .line 544
    move-object/from16 v4, p4

    iput-object v4, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mSaProposals:[Landroid/net/ipsec/ike/IkeSaProposal;

    .line 546
    move-object/from16 v5, p5

    iput-object v5, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mLocalIdentification:Landroid/net/ipsec/ike/IkeIdentification;

    .line 547
    move-object/from16 v6, p6

    iput-object v6, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mRemoteIdentification:Landroid/net/ipsec/ike/IkeIdentification;

    .line 549
    move-object/from16 v7, p7

    iput-object v7, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mLocalAuthConfig:Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    .line 550
    move-object/from16 v8, p8

    iput-object v8, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mRemoteAuthConfig:Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    .line 552
    move-object/from16 v9, p9

    iput-object v9, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mConfigRequests:[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;

    .line 554
    move-object/from16 v10, p10

    iput-object v10, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mRetransTimeoutMsList:[I

    .line 555
    move-object/from16 v11, p11

    iput-object v11, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mLivenessRetransTimeoutMsList:[I

    .line 557
    move-object/from16 v12, p12

    iput-object v12, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    .line 559
    move-wide/from16 v13, p13

    iput-wide v13, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mIkeOptions:J

    .line 561
    move/from16 v15, p15

    iput v15, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mHardLifetimeSec:I

    .line 562
    move/from16 v1, p16

    iput v1, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mSoftLifetimeSec:I

    .line 564
    move/from16 v1, p17

    iput v1, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mDpdDelaySec:I

    .line 565
    move/from16 v1, p18

    iput v1, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mNattKeepaliveDelaySec:I

    .line 566
    move/from16 v1, p19

    iput v1, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mDscp:I

    .line 568
    move/from16 v1, p20

    iput v1, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mIpVersion:I

    .line 569
    move/from16 v1, p21

    iput v1, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mEncapType:I

    .line 571
    move/from16 v1, p22

    iput-boolean v1, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mIsIkeFragmentationSupported:Z

    .line 572
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/net/Network;Landroid/net/Network;[Landroid/net/ipsec/ike/IkeSaProposal;Landroid/net/ipsec/ike/IkeIdentification;Landroid/net/ipsec/ike/IkeIdentification;Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;[I[ILandroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;JIIIIIIIZLandroid/net/ipsec/ike/IkeSessionParams-IA;)V
    .registers 24

    invoke-direct/range {p0 .. p22}, Landroid/net/ipsec/ike/IkeSessionParams;-><init>(Ljava/lang/String;Landroid/net/Network;Landroid/net/Network;[Landroid/net/ipsec/ike/IkeSaProposal;Landroid/net/ipsec/ike/IkeIdentification;Landroid/net/ipsec/ike/IkeIdentification;Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;[I[ILandroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;JIIIIIIIZ)V

    return-void
.end method

.method public static blacklist fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeSessionParams;
    .registers 10
    .param p0, "in"    # Landroid/os/PersistableBundle;

    .line 594
    const-string v0, "PersistableBundle is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 596
    new-instance v0, Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    invoke-direct {v0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;-><init>()V

    .line 598
    .local v0, "builder":Landroid/net/ipsec/ike/IkeSessionParams$Builder;
    const-string v1, "mServerHostname"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setServerHostname(Ljava/lang/String;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 600
    const-string v1, "mSaProposals"

    invoke-virtual {p0, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 601
    .local v1, "proposalBundle":Landroid/os/PersistableBundle;
    const-string v2, "SA Proposals is null"

    invoke-static {p0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 602
    new-instance v2, Landroid/net/ipsec/ike/IkeSessionParams$$ExternalSyntheticLambda2;

    invoke-direct {v2}, Landroid/net/ipsec/ike/IkeSessionParams$$ExternalSyntheticLambda2;-><init>()V

    .line 603
    invoke-static {v1, v2}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v2

    .line 604
    .local v2, "saProposals":Ljava/util/List;, "Ljava/util/List<Landroid/net/ipsec/ike/IkeSaProposal;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/ipsec/ike/IkeSaProposal;

    .line 605
    .local v4, "proposal":Landroid/net/ipsec/ike/IkeSaProposal;
    invoke-virtual {v0, v4}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->addSaProposal(Landroid/net/ipsec/ike/IkeSaProposal;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 606
    .end local v4    # "proposal":Landroid/net/ipsec/ike/IkeSaProposal;
    goto :goto_2b

    .line 608
    :cond_3b
    nop

    .line 609
    const-string v3, "mLocalIdentification"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-static {v3}, Landroid/net/ipsec/ike/IkeIdentification;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeIdentification;

    move-result-object v3

    .line 608
    invoke-virtual {v0, v3}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setLocalIdentification(Landroid/net/ipsec/ike/IkeIdentification;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 610
    nop

    .line 611
    const-string v3, "mRemoteIdentification"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-static {v3}, Landroid/net/ipsec/ike/IkeIdentification;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeIdentification;

    move-result-object v3

    .line 610
    invoke-virtual {v0, v3}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setRemoteIdentification(Landroid/net/ipsec/ike/IkeIdentification;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 612
    nop

    .line 613
    const-string v3, "mLocalAuthConfig"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v3

    invoke-static {v3}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    move-result-object v3

    .line 614
    const-string v4, "mRemoteAuthConfig"

    invoke-virtual {p0, v4}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v4

    invoke-static {v4}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    move-result-object v4

    .line 612
    invoke-static {v0, v3, v4}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->-$$Nest$msetAuth(Landroid/net/ipsec/ike/IkeSessionParams$Builder;Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 616
    const-string v3, "mConfigRequests"

    invoke-virtual {p0, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 617
    .local v3, "configBundle":Landroid/os/PersistableBundle;
    const-string v4, "configBundle is null"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 618
    new-instance v4, Landroid/net/ipsec/ike/IkeSessionParams$$ExternalSyntheticLambda3;

    invoke-direct {v4}, Landroid/net/ipsec/ike/IkeSessionParams$$ExternalSyntheticLambda3;-><init>()V

    .line 619
    invoke-static {v3, v4}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v4

    .line 620
    .local v4, "configList":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_87
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_9a

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;

    .line 621
    .local v6, "configAttribute":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;
    move-object v7, v6

    check-cast v7, Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;

    invoke-static {v0, v7}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->-$$Nest$maddConfigRequest(Landroid/net/ipsec/ike/IkeSessionParams$Builder;Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 622
    .end local v6    # "configAttribute":Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$ConfigAttribute;
    goto :goto_87

    .line 624
    :cond_9a
    const-string v5, "mRetransTimeoutMsList"

    invoke-virtual {p0, v5}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setRetransmissionTimeoutsMillis([I)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 625
    nop

    .line 626
    const-string v5, "mLivenessRetransTimeoutMsList"

    invoke-virtual {p0, v5}, Landroid/os/PersistableBundle;->getIntArray(Ljava/lang/String;)[I

    move-result-object v5

    .line 625
    invoke-virtual {v0, v5}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setLivenessRetransmissionTimeoutsMillis([I)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 628
    const-string v5, "mIkeOptions"

    invoke-virtual {p0, v5}, Landroid/os/PersistableBundle;->getLong(Ljava/lang/String;)J

    move-result-wide v5

    .line 629
    .local v5, "ikeOptions":J
    const/4 v7, 0x0

    .local v7, "option":I
    :goto_b4
    const/16 v8, 0x9

    if-gt v7, v8, :cond_c8

    .line 630
    invoke-static {v5, v6, v7}, Landroid/net/ipsec/ike/IkeSessionParams;->hasIkeOption(JI)Z

    move-result v8

    if-eqz v8, :cond_c2

    .line 631
    invoke-virtual {v0, v7}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->addIkeOptionInternal(I)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    goto :goto_c5

    .line 633
    :cond_c2
    invoke-virtual {v0, v7}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->removeIkeOption(I)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 629
    :goto_c5
    add-int/lit8 v7, v7, 0x1

    goto :goto_b4

    .line 637
    .end local v7    # "option":I
    :cond_c8
    nop

    .line 638
    const-string v7, "mHardLifetimeSec"

    invoke-virtual {p0, v7}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    const-string v8, "mSoftLifetimeSec"

    invoke-virtual {p0, v8}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v8

    .line 637
    invoke-virtual {v0, v7, v8}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setLifetimeSeconds(II)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 639
    const-string v7, "mDpdDelaySec"

    invoke-virtual {p0, v7}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setDpdDelaySeconds(I)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 640
    const-string v7, "mNattKeepaliveDelaySec"

    invoke-virtual {p0, v7}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setNattKeepAliveDelaySeconds(I)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 642
    const-string v7, "mIpVersion"

    invoke-virtual {p0, v7}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setIpVersion(I)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 643
    const-string v7, "mEncapType"

    invoke-virtual {p0, v7}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v0, v7}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->setEncapType(I)Landroid/net/ipsec/ike/IkeSessionParams$Builder;

    .line 647
    const-string v7, "mIsIkeFragmentationSupported"

    invoke-virtual {p0, v7}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_109

    .line 651
    invoke-virtual {v0}, Landroid/net/ipsec/ike/IkeSessionParams$Builder;->build()Landroid/net/ipsec/ike/IkeSessionParams;

    move-result-object v7

    return-object v7

    .line 648
    :cond_109
    new-instance v7, Ljava/lang/IllegalArgumentException;

    const-string v8, "Invalid fragmentation policy"

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v7
.end method

.method private static blacklist getOptionBitValue(I)J
    .registers 3
    .param p0, "ikeOption"    # I

    .line 581
    const/4 v0, 0x1

    shl-int/2addr v0, p0

    int-to-long v0, v0

    return-wide v0
.end method

.method private static blacklist hasIkeOption(JI)Z
    .registers 7
    .param p0, "ikeOptionsRecord"    # J
    .param p2, "ikeOption"    # I

    .line 894
    invoke-static {p2}, Landroid/net/ipsec/ike/IkeSessionParams;->validateIkeOptionOrThrow(I)V

    .line 895
    invoke-static {p2}, Landroid/net/ipsec/ike/IkeSessionParams;->getOptionBitValue(I)J

    move-result-wide v0

    and-long/2addr v0, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method private static blacklist validateIkeOptionOrThrow(I)V
    .registers 4
    .param p0, "ikeOption"    # I

    .line 575
    if-ltz p0, :cond_7

    const/16 v0, 0x9

    if-gt p0, v0, :cond_7

    .line 578
    return-void

    .line 576
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid IKE Option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public blacklist dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 8
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;

    .line 2390
    const-string v0, "------------------------------"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2391
    const-string v1, "IkeSessionParams:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2392
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Caller configured network: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mCallerConfiguredNetwork:Landroid/net/Network;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2393
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Dpd Delay timer in secs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mDpdDelaySec:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2394
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Dscp: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mDscp:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2395
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Esp ip version: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/ipsec/ike/IkeSessionParams;->IP_VERSION_TO_STR:Landroid/util/SparseArray;

    iget v3, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mIpVersion:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2396
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Esp encap type: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Landroid/net/ipsec/ike/IkeSessionParams;->ENCAP_TYPE_TO_STR:Landroid/util/SparseArray;

    iget v3, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mEncapType:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Force port4500 status: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Landroid/net/ipsec/ike/IkeSessionParams;->hasIkeOption(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2398
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Hard life time in secs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mHardLifetimeSec:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2399
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Liveness retransmission timer in millis : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mLivenessRetransTimeoutMsList:[I

    .line 2402
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2399
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2403
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Nat keep alive delay in secs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mNattKeepaliveDelaySec:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2404
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Soft life time in secs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mSoftLifetimeSec:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2405
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Remote host name: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mServerHostname:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2406
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Retransmission timer in millis : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mRetransTimeoutMsList:[I

    .line 2409
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2406
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2410
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSessionParams;->getIkeSaProposals()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_17d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/ipsec/ike/IkeSaProposal;

    .line 2411
    .local v2, "saProposal":Landroid/net/ipsec/ike/IkeSaProposal;
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2412
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "IkeSaProposal:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2413
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Encryption algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2416
    invoke-virtual {v2}, Landroid/net/ipsec/ike/IkeSaProposal;->getEncryptionAlgorithms()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2413
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2417
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Integrity algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2420
    invoke-virtual {v2}, Landroid/net/ipsec/ike/IkeSaProposal;->getIntegrityAlgorithms()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2417
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2421
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Dh Group algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Landroid/net/ipsec/ike/IkeSaProposal;->getDhGroups()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2422
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Prf algorithm: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2423
    invoke-virtual {v2}, Landroid/net/ipsec/ike/IkeSaProposal;->getPseudorandomFunctions()Ljava/util/List;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2422
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2424
    .end local v2    # "saProposal":Landroid/net/ipsec/ike/IkeSaProposal;
    goto/16 :goto_17d

    .line 2425
    :cond_22c
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2426
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2427
    return-void
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 8
    .param p1, "o"    # Ljava/lang/Object;

    .line 993
    instance-of v0, p1, Landroid/net/ipsec/ike/IkeSessionParams;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 994
    return v1

    .line 997
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/ipsec/ike/IkeSessionParams;

    .line 999
    .local v0, "other":Landroid/net/ipsec/ike/IkeSessionParams;
    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mServerHostname:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mServerHostname:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mCallerConfiguredNetwork:Landroid/net/Network;

    iget-object v3, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mCallerConfiguredNetwork:Landroid/net/Network;

    .line 1000
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mSaProposals:[Landroid/net/ipsec/ike/IkeSaProposal;

    iget-object v3, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mSaProposals:[Landroid/net/ipsec/ike/IkeSaProposal;

    .line 1001
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mLocalIdentification:Landroid/net/ipsec/ike/IkeIdentification;

    iget-object v3, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mLocalIdentification:Landroid/net/ipsec/ike/IkeIdentification;

    .line 1002
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mRemoteIdentification:Landroid/net/ipsec/ike/IkeIdentification;

    iget-object v3, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mRemoteIdentification:Landroid/net/ipsec/ike/IkeIdentification;

    .line 1003
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mLocalAuthConfig:Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    iget-object v3, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mLocalAuthConfig:Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    .line 1004
    invoke-virtual {v2, v3}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mRemoteAuthConfig:Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    iget-object v3, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mRemoteAuthConfig:Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    .line 1005
    invoke-virtual {v2, v3}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    iget-object v3, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    .line 1006
    invoke-static {v2, v3}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mConfigRequests:[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;

    iget-object v3, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mConfigRequests:[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;

    .line 1007
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b1

    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mRetransTimeoutMsList:[I

    iget-object v3, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mRetransTimeoutMsList:[I

    .line 1008
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_b1

    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mLivenessRetransTimeoutMsList:[I

    iget-object v3, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mLivenessRetransTimeoutMsList:[I

    .line 1009
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    if-eqz v2, :cond_b1

    iget-wide v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mIkeOptions:J

    iget-wide v4, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mIkeOptions:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_b1

    iget v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mHardLifetimeSec:I

    iget v3, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mHardLifetimeSec:I

    if-ne v2, v3, :cond_b1

    iget v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mSoftLifetimeSec:I

    iget v3, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mSoftLifetimeSec:I

    if-ne v2, v3, :cond_b1

    iget v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mDpdDelaySec:I

    iget v3, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mDpdDelaySec:I

    if-ne v2, v3, :cond_b1

    iget v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mNattKeepaliveDelaySec:I

    iget v3, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mNattKeepaliveDelaySec:I

    if-ne v2, v3, :cond_b1

    iget v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mDscp:I

    iget v3, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mDscp:I

    if-ne v2, v3, :cond_b1

    iget-boolean v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mIsIkeFragmentationSupported:Z

    iget-boolean v3, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mIsIkeFragmentationSupported:Z

    if-ne v2, v3, :cond_b1

    iget v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mIpVersion:I

    iget v3, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mIpVersion:I

    if-ne v2, v3, :cond_b1

    iget v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mEncapType:I

    iget v3, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mEncapType:I

    if-ne v2, v3, :cond_b1

    const/4 v1, 0x1

    goto :goto_b2

    :cond_b1
    nop

    .line 999
    :goto_b2
    return v1
.end method

.method public blacklist getConfigurationAttributesInternal()[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;
    .registers 2

    .line 950
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mConfigRequests:[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;

    return-object v0
.end method

.method public whitelist getConfigurationRequests()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/IkeSessionParams$IkeConfigRequest;",
            ">;"
        }
    .end annotation

    .line 961
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mConfigRequests:[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getConfiguredNetwork()Landroid/net/Network;
    .registers 2

    .line 720
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mCallerConfiguredNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public whitelist getDpdDelaySeconds()I
    .registers 2

    .line 812
    iget v0, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mDpdDelaySec:I

    return v0
.end method

.method public whitelist getDscp()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 831
    iget v0, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mDscp:I

    return v0
.end method

.method public blacklist getEncapType()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 849
    iget v0, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mEncapType:I

    return v0
.end method

.method public blacklist getHardLifetimeMsInternal()J
    .registers 4

    .line 935
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mHardLifetimeSec:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getHardLifetimeSeconds()I
    .registers 2

    .line 796
    iget v0, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mHardLifetimeSec:I

    return v0
.end method

.method public whitelist getIke3gppExtension()Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 890
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    return-object v0
.end method

.method public whitelist getIkeOptions()Ljava/util/Set;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 918
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 920
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    iget-wide v1, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mIkeOptions:J

    .line 921
    .local v1, "ikeOptionBits":J
    const/4 v3, 0x0

    .line 922
    .local v3, "optionValue":I
    :goto_8
    const-wide/16 v4, 0x0

    cmp-long v4, v1, v4

    if-lez v4, :cond_22

    .line 923
    const-wide/16 v4, 0x1

    and-long v6, v1, v4

    cmp-long v4, v6, v4

    if-nez v4, :cond_1d

    .line 924
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 926
    :cond_1d
    const/4 v4, 0x1

    ushr-long/2addr v1, v4

    .line 927
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 930
    :cond_22
    return-object v0
.end method

.method public whitelist getIkeSaProposals()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/IkeSaProposal;",
            ">;"
        }
    .end annotation

    .line 759
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mSaProposals:[Landroid/net/ipsec/ike/IkeSaProposal;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getIpVersion()I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
        client = .enum Landroid/annotation/SystemApi$Client;->MODULE_LIBRARIES:Landroid/annotation/SystemApi$Client;
    .end annotation

    .line 840
    iget v0, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mIpVersion:I

    return v0
.end method

.method public whitelist getLivenessRetransmissionTimeoutsMillis()[I
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .line 879
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mLivenessRetransTimeoutMsList:[I

    return-object v0
.end method

.method public whitelist getLocalAuthConfig()Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;
    .registers 2

    .line 782
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mLocalAuthConfig:Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    return-object v0
.end method

.method public whitelist getLocalIdentification()Landroid/net/ipsec/ike/IkeIdentification;
    .registers 2

    .line 770
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mLocalIdentification:Landroid/net/ipsec/ike/IkeIdentification;

    return-object v0
.end method

.method public whitelist getNattKeepAliveDelaySeconds()I
    .registers 2

    .line 820
    iget v0, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mNattKeepaliveDelaySec:I

    return v0
.end method

.method public whitelist getNetwork()Landroid/net/Network;
    .registers 2

    .line 739
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mDefaultOrConfiguredNetwork:Landroid/net/Network;

    return-object v0
.end method

.method public whitelist getRemoteAuthConfig()Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;
    .registers 2

    .line 788
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mRemoteAuthConfig:Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    return-object v0
.end method

.method public whitelist getRemoteIdentification()Landroid/net/ipsec/ike/IkeIdentification;
    .registers 2

    .line 776
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mRemoteIdentification:Landroid/net/ipsec/ike/IkeIdentification;

    return-object v0
.end method

.method public whitelist getRetransmissionTimeoutsMillis()[I
    .registers 2

    .line 859
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mRetransTimeoutMsList:[I

    return-object v0
.end method

.method public whitelist getSaProposals()Ljava/util/List;
    .registers 2
    .annotation runtime Landroid/annotation/SystemApi;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/ipsec/ike/IkeSaProposal;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 753
    invoke-virtual {p0}, Landroid/net/ipsec/ike/IkeSessionParams;->getIkeSaProposals()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getSaProposalsInternal()[Landroid/net/ipsec/ike/IkeSaProposal;
    .registers 2

    .line 764
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mSaProposals:[Landroid/net/ipsec/ike/IkeSaProposal;

    return-object v0
.end method

.method public whitelist getServerHostname()Ljava/lang/String;
    .registers 2

    .line 706
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mServerHostname:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSoftLifetimeMsInternal()J
    .registers 4

    .line 940
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget v1, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mSoftLifetimeSec:I

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public whitelist getSoftLifetimeSeconds()I
    .registers 2

    .line 804
    iget v0, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mSoftLifetimeSec:I

    return v0
.end method

.method public whitelist hasIkeOption(I)Z
    .registers 4
    .param p1, "ikeOption"    # I

    .line 905
    iget-wide v0, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mIkeOptions:J

    invoke-static {v0, v1, p1}, Landroid/net/ipsec/ike/IkeSessionParams;->hasIkeOption(JI)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 23

    .line 967
    move-object/from16 v0, p0

    iget-object v1, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mServerHostname:Ljava/lang/String;

    iget-object v2, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mCallerConfiguredNetwork:Landroid/net/Network;

    iget-object v3, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mSaProposals:[Landroid/net/ipsec/ike/IkeSaProposal;

    .line 970
    invoke-static {v3}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-object v4, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mLocalIdentification:Landroid/net/ipsec/ike/IkeIdentification;

    iget-object v5, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mRemoteIdentification:Landroid/net/ipsec/ike/IkeIdentification;

    iget-object v6, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mLocalAuthConfig:Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    iget-object v7, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mRemoteAuthConfig:Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    iget-object v8, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    iget-object v9, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mConfigRequests:[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;

    .line 976
    invoke-static {v9}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    iget-object v10, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mRetransTimeoutMsList:[I

    .line 977
    invoke-static {v10}, Ljava/util/Arrays;->hashCode([I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    iget-object v11, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mLivenessRetransTimeoutMsList:[I

    .line 978
    invoke-static {v11}, Ljava/util/Arrays;->hashCode([I)I

    move-result v11

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    iget-wide v12, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mIkeOptions:J

    .line 979
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    iget v13, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mHardLifetimeSec:I

    .line 980
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    iget v14, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mSoftLifetimeSec:I

    .line 981
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    iget v15, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mDpdDelaySec:I

    .line 982
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v16, v1

    iget v1, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mNattKeepaliveDelaySec:I

    .line 983
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v17, v1

    iget v1, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mDscp:I

    .line 984
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v18, v1

    iget-boolean v1, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mIsIkeFragmentationSupported:Z

    .line 985
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    move-object/from16 v19, v1

    iget v1, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mIpVersion:I

    .line 986
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v20, v1

    iget v1, v0, Landroid/net/ipsec/ike/IkeSessionParams;->mEncapType:I

    .line 987
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    move-object/from16 v21, v20

    move-object/from16 v20, v1

    move-object/from16 v1, v16

    move-object/from16 v16, v17

    move-object/from16 v17, v18

    move-object/from16 v18, v19

    move-object/from16 v19, v21

    filled-new-array/range {v1 .. v20}, [Ljava/lang/Object;

    move-result-object v1

    .line 967
    invoke-static {v1}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v1

    return v1
.end method

.method public blacklist isIkeFragmentationSupported()Z
    .registers 2

    .line 945
    iget-boolean v0, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mIsIkeFragmentationSupported:Z

    return v0
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 7

    .line 660
    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mCallerConfiguredNetwork:Landroid/net/Network;

    if-nez v0, :cond_b6

    iget-object v0, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mIke3gppExtension:Landroid/net/ipsec/ike/ike3gpp/Ike3gppExtension;

    if-nez v0, :cond_b6

    .line 665
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 667
    .local v0, "result":Landroid/os/PersistableBundle;
    const-string v1, "mServerHostname"

    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mServerHostname:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 669
    iget-object v1, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mSaProposals:[Landroid/net/ipsec/ike/IkeSaProposal;

    .line 671
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    new-instance v2, Landroid/net/ipsec/ike/IkeSessionParams$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Landroid/net/ipsec/ike/IkeSessionParams$$ExternalSyntheticLambda0;-><init>()V

    .line 670
    invoke-static {v1, v2}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->fromList(Ljava/util/List;Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 672
    .local v1, "saProposalBundle":Landroid/os/PersistableBundle;
    const-string v2, "mSaProposals"

    invoke-virtual {v0, v2, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 674
    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mLocalIdentification:Landroid/net/ipsec/ike/IkeIdentification;

    invoke-virtual {v2}, Landroid/net/ipsec/ike/IkeIdentification;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "mLocalIdentification"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 675
    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mRemoteIdentification:Landroid/net/ipsec/ike/IkeIdentification;

    invoke-virtual {v2}, Landroid/net/ipsec/ike/IkeIdentification;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "mRemoteIdentification"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 676
    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mLocalAuthConfig:Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    invoke-virtual {v2}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "mLocalAuthConfig"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 677
    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mRemoteAuthConfig:Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;

    invoke-virtual {v2}, Landroid/net/ipsec/ike/IkeSessionParams$IkeAuthConfig;->toPersistableBundle()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "mRemoteAuthConfig"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 679
    iget-object v2, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mConfigRequests:[Lcom/android/internal/net/ipsec/ike/message/IkeConfigPayload$IkeConfigAttribute;

    .line 681
    invoke-static {v2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    new-instance v3, Landroid/net/ipsec/ike/IkeSessionParams$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/net/ipsec/ike/IkeSessionParams$$ExternalSyntheticLambda1;-><init>()V

    .line 680
    invoke-static {v2, v3}, Lcom/android/internal/net/vcn/util/PersistableBundleUtils;->fromList(Ljava/util/List;Lcom/android/internal/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 682
    .local v2, "configAttributeBundle":Landroid/os/PersistableBundle;
    const-string v3, "mConfigRequests"

    invoke-virtual {v0, v3, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 684
    const-string v3, "mRetransTimeoutMsList"

    iget-object v4, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mRetransTimeoutMsList:[I

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 685
    const-string v3, "mLivenessRetransTimeoutMsList"

    iget-object v4, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mLivenessRetransTimeoutMsList:[I

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putIntArray(Ljava/lang/String;[I)V

    .line 686
    const-string v3, "mIkeOptions"

    iget-wide v4, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mIkeOptions:J

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/PersistableBundle;->putLong(Ljava/lang/String;J)V

    .line 687
    const-string v3, "mHardLifetimeSec"

    iget v4, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mHardLifetimeSec:I

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 688
    const-string v3, "mSoftLifetimeSec"

    iget v4, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mSoftLifetimeSec:I

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 689
    const-string v3, "mDpdDelaySec"

    iget v4, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mDpdDelaySec:I

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 690
    const-string v3, "mNattKeepaliveDelaySec"

    iget v4, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mNattKeepaliveDelaySec:I

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 691
    const-string v3, "mDscp"

    iget v4, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mDscp:I

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 692
    const-string v3, "mIsIkeFragmentationSupported"

    iget-boolean v4, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mIsIkeFragmentationSupported:Z

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 693
    const-string v3, "mIpVersion"

    iget v4, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mIpVersion:I

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 694
    const-string v3, "mEncapType"

    iget v4, p0, Landroid/net/ipsec/ike/IkeSessionParams;->mEncapType:I

    invoke-virtual {v0, v3, v4}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 696
    return-object v0

    .line 661
    .end local v0    # "result":Landroid/os/PersistableBundle;
    .end local v1    # "saProposalBundle":Landroid/os/PersistableBundle;
    .end local v2    # "configAttributeBundle":Landroid/os/PersistableBundle;
    :cond_b6
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot convert a IkeSessionParams with a caller configured network or with 3GPP extension enabled"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
