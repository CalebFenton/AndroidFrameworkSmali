.class public final Landroid/net/vcn/VcnGatewayConnectionConfig;
.super Ljava/lang/Object;
.source "VcnGatewayConnectionConfig.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/vcn/VcnGatewayConnectionConfig$Builder;,
        Landroid/net/vcn/VcnGatewayConnectionConfig$VcnGatewayOption;,
        Landroid/net/vcn/VcnGatewayConnectionConfig$VcnSupportedCapability;
    }
.end annotation


# static fields
.field public static final blacklist ALLOWED_CAPABILITIES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist ALLOWED_GATEWAY_OPTIONS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist DEFAULT_MAX_MTU:I = 0x5dc

.field private static final blacklist DEFAULT_RETRY_INTERVALS_MS:[J

.field public static final blacklist DEFAULT_UNDERLYING_NETWORK_TEMPLATES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;"
        }
    .end annotation
.end field

.field private static final blacklist EXPOSED_CAPABILITIES_KEY:Ljava/lang/String; = "mExposedCapabilities"

.field private static final blacklist GATEWAY_CONNECTION_NAME_KEY:Ljava/lang/String; = "mGatewayConnectionName"

.field private static final blacklist GATEWAY_OPTIONS_KEY:Ljava/lang/String; = "mGatewayOptions"

.field private static final blacklist IS_SAFE_MODE_DISABLED_KEY:Ljava/lang/String; = "mIsSafeModeDisabled"

.field private static final blacklist MAX_MTU_KEY:Ljava/lang/String; = "mMaxMtu"

.field private static final blacklist MAX_RETRY_INTERVAL_COUNT:I = 0xa

.field private static final blacklist MINIMUM_REPEATING_RETRY_INTERVAL_MS:J

.field static final blacklist MIN_MTU_V6:I = 0x500

.field public static final blacklist MIN_UDP_PORT_4500_NAT_TIMEOUT_SECONDS:I = 0x78

.field private static final blacklist MIN_UDP_PORT_4500_NAT_TIMEOUT_SECONDS_KEY:Ljava/lang/String; = "mMinUdpPort4500NatTimeoutSeconds"

.field public static final whitelist MIN_UDP_PORT_4500_NAT_TIMEOUT_UNSET:I = -0x1

.field private static final blacklist RETRY_INTERVAL_MS_KEY:Ljava/lang/String; = "mRetryIntervalsMs"

.field private static final blacklist TUNNEL_CONNECTION_PARAMS_KEY:Ljava/lang/String; = "mTunnelConnectionParams"

.field public static final blacklist UNDERLYING_NETWORK_TEMPLATES_KEY:Ljava/lang/String; = "mUnderlyingNetworkTemplates"

.field public static final whitelist VCN_GATEWAY_OPTION_ENABLE_DATA_STALL_RECOVERY_WITH_MOBILITY:I


# instance fields
.field private final blacklist mExposedCapabilities:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mGatewayConnectionName:Ljava/lang/String;

.field private final blacklist mGatewayOptions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mIsSafeModeDisabled:Z

.field private final blacklist mMaxMtu:I

.field private final blacklist mMinUdpPort4500NatTimeoutSeconds:I

.field private final blacklist mRetryIntervalsMs:[J

.field private blacklist mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

.field private final blacklist mUnderlyingNetworkTemplates:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_RETRY_INTERVALS_MS()[J
    .registers 1

    sget-object v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_RETRY_INTERVALS_MS:[J

    return-object v0
.end method

.method static bridge synthetic blacklist -$$Nest$smcheckValidCapability(I)V
    .registers 1

    invoke-static {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->checkValidCapability(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateGatewayOption(I)V
    .registers 1

    invoke-static {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->validateGatewayOption(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateNetworkTemplateList(Ljava/util/List;)V
    .registers 1

    invoke-static {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->validateNetworkTemplateList(Ljava/util/List;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$smvalidateRetryInterval([J)V
    .registers 1

    invoke-static {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->validateRetryInterval([J)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 22

    .line 112
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 113
    .local v0, "allowedCaps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 114
    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 115
    const/4 v4, 0x2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 116
    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    const/4 v6, 0x4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v0, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    const/4 v7, 0x5

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 120
    const/16 v9, 0x8

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 121
    const/16 v9, 0x9

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 122
    const/16 v9, 0xa

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 123
    const/16 v9, 0xc

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 124
    const/16 v9, 0x17

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-interface {v0, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 126
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v9

    sput-object v9, Landroid/net/vcn/VcnGatewayConnectionConfig;->ALLOWED_CAPABILITIES:Ljava/util/Set;

    .line 167
    .end local v0    # "allowedCaps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    sput-object v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->ALLOWED_GATEWAY_OPTIONS:Ljava/util/Set;

    .line 170
    sget-object v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->ALLOWED_GATEWAY_OPTIONS:Ljava/util/Set;

    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 190
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v9, 0xf

    invoke-virtual {v0, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    sput-wide v11, Landroid/net/vcn/VcnGatewayConnectionConfig;->MINIMUM_REPEATING_RETRY_INTERVAL_MS:J

    .line 192
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 194
    const-wide/16 v11, 0x1

    invoke-virtual {v0, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 195
    move v15, v1

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 196
    move/from16 v16, v4

    move/from16 v17, v5

    const-wide/16 v4, 0x5

    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v18

    sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 197
    move/from16 v20, v6

    move/from16 v21, v7

    const-wide/16 v6, 0x1e

    invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 198
    invoke-virtual {v2, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 199
    invoke-virtual {v2, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    .line 200
    invoke-virtual {v2, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    new-array v2, v8, [J

    aput-wide v13, v2, v15

    aput-wide v0, v2, v3

    aput-wide v18, v2, v16

    aput-wide v6, v2, v17

    aput-wide v11, v2, v20

    aput-wide v4, v2, v21

    const/4 v0, 0x6

    aput-wide v9, v2, v0

    sput-object v2, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_RETRY_INTERVALS_MS:[J

    .line 205
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_UNDERLYING_NETWORK_TEMPLATES:Ljava/util/List;

    .line 209
    sget-object v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_UNDERLYING_NETWORK_TEMPLATES:Ljava/util/List;

    new-instance v1, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;

    invoke-direct {v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;-><init>()V

    .line 211
    invoke-virtual {v1, v3}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->setOpportunistic(I)Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;

    move-result-object v1

    .line 212
    invoke-virtual {v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->build()Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    move-result-object v1

    .line 209
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    sget-object v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_UNDERLYING_NETWORK_TEMPLATES:Ljava/util/List;

    new-instance v1, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;

    invoke-direct {v1}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;-><init>()V

    .line 216
    invoke-virtual {v1}, Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate$Builder;->build()Landroid/net/vcn/VcnWifiUnderlyingNetworkTemplate;

    move-result-object v1

    .line 214
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 218
    sget-object v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_UNDERLYING_NETWORK_TEMPLATES:Ljava/util/List;

    new-instance v1, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;

    invoke-direct {v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;-><init>()V

    .line 220
    invoke-virtual {v1}, Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate$Builder;->build()Landroid/net/vcn/VcnCellUnderlyingNetworkTemplate;

    move-result-object v1

    .line 218
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 221
    return-void
.end method

.method public constructor blacklist <init>(Landroid/os/PersistableBundle;)V
    .registers 8
    .param p1, "in"    # Landroid/os/PersistableBundle;

    .line 286
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 287
    nop

    .line 288
    const-string v0, "mTunnelConnectionParams"

    invoke-virtual {p1, v0}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v0

    .line 289
    .local v0, "tunnelConnectionParamsBundle":Landroid/os/PersistableBundle;
    const-string v1, "tunnelConnectionParamsBundle was null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 292
    nop

    .line 293
    const-string v1, "mExposedCapabilities"

    invoke-virtual {p1, v1}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 294
    .local v1, "exposedCapsBundle":Landroid/os/PersistableBundle;
    const-string v2, "mGatewayConnectionName"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    .line 295
    nop

    .line 296
    invoke-static {v0}, Landroid/net/connectivity/android/net/vcn/persistablebundleutils/TunnelConnectionParamsUtils;->fromPersistableBundle(Landroid/os/PersistableBundle;)Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    move-result-object v2

    iput-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 297
    new-instance v2, Ljava/util/TreeSet;

    sget-object v3, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->INTEGER_DESERIALIZER:Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Deserializer;

    invoke-static {v1, v3}, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    iput-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    .line 300
    nop

    .line 301
    const-string v2, "mUnderlyingNetworkTemplates"

    invoke-virtual {p1, v2}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 303
    .local v2, "networkTemplatesBundle":Landroid/os/PersistableBundle;
    if-nez v2, :cond_45

    .line 307
    new-instance v3, Ljava/util/ArrayList;

    sget-object v4, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_UNDERLYING_NETWORK_TEMPLATES:Ljava/util/List;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v3, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    goto :goto_50

    .line 309
    :cond_45
    new-instance v3, Landroid/net/vcn/VcnGatewayConnectionConfig$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/net/vcn/VcnGatewayConnectionConfig$$ExternalSyntheticLambda0;-><init>()V

    .line 310
    invoke-static {v2, v3}, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    .line 315
    :goto_50
    const-string v3, "mGatewayOptions"

    invoke-virtual {p1, v3}, Landroid/os/PersistableBundle;->getPersistableBundle(Ljava/lang/String;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 317
    .local v3, "gatewayOptionsBundle":Landroid/os/PersistableBundle;
    if-nez v3, :cond_5f

    .line 320
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v4

    iput-object v4, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayOptions:Ljava/util/Set;

    goto :goto_6c

    .line 322
    :cond_5f
    new-instance v4, Landroid/util/ArraySet;

    sget-object v5, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->INTEGER_DESERIALIZER:Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Deserializer;

    .line 324
    invoke-static {v3, v5}, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->toList(Landroid/os/PersistableBundle;Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Deserializer;)Ljava/util/List;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayOptions:Ljava/util/Set;

    .line 329
    :goto_6c
    const-string v4, "mRetryIntervalsMs"

    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getLongArray(Ljava/lang/String;)[J

    move-result-object v4

    iput-object v4, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    .line 330
    const-string v4, "mMaxMtu"

    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iput v4, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    .line 331
    nop

    .line 332
    const-string v4, "mMinUdpPort4500NatTimeoutSeconds"

    const/4 v5, -0x1

    invoke-virtual {p1, v4, v5}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMinUdpPort4500NatTimeoutSeconds:I

    .line 335
    const-string v4, "mIsSafeModeDisabled"

    invoke-virtual {p1, v4}, Landroid/os/PersistableBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mIsSafeModeDisabled:Z

    .line 337
    invoke-direct {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->validate()V

    .line 338
    return-void
.end method

.method private constructor blacklist <init>(Ljava/lang/String;Landroid/net/ipsec/ike/IkeTunnelConnectionParams;Ljava/util/Set;Ljava/util/List;[JIIZLjava/util/Set;)V
    .registers 12
    .param p1, "gatewayConnectionName"    # Ljava/lang/String;
    .param p2, "tunnelConnectionParams"    # Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    .param p5, "retryIntervalsMs"    # [J
    .param p6, "maxMtu"    # I
    .param p7, "minUdpPort4500NatTimeoutSeconds"    # I
    .param p8, "isSafeModeDisabled"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Landroid/net/ipsec/ike/IkeTunnelConnectionParams;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;",
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;[JIIZ",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .line 264
    .local p3, "exposedCapabilities":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    .local p4, "underlyingNetworkTemplates":Ljava/util/List;, "Ljava/util/List<Landroid/net/vcn/VcnUnderlyingNetworkTemplate;>;"
    .local p9, "gatewayOptions":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 265
    iput-object p1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    .line 266
    iput-object p2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 267
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p3}, Ljava/util/TreeSet;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    .line 268
    iput-object p5, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    .line 269
    iput p6, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    .line 270
    iput p7, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMinUdpPort4500NatTimeoutSeconds:I

    .line 271
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0, p9}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayOptions:Ljava/util/Set;

    .line 272
    iput-boolean p8, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mIsSafeModeDisabled:Z

    .line 274
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    .line 275
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_37

    .line 276
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    sget-object v1, Landroid/net/vcn/VcnGatewayConnectionConfig;->DEFAULT_UNDERLYING_NETWORK_TEMPLATES:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 279
    :cond_37
    invoke-direct {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->validate()V

    .line 280
    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/lang/String;Landroid/net/ipsec/ike/IkeTunnelConnectionParams;Ljava/util/Set;Ljava/util/List;[JIIZLjava/util/Set;Landroid/net/vcn/VcnGatewayConnectionConfig-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/net/vcn/VcnGatewayConnectionConfig;-><init>(Ljava/lang/String;Landroid/net/ipsec/ike/IkeTunnelConnectionParams;Ljava/util/Set;Ljava/util/List;[JIIZLjava/util/Set;)V

    return-void
.end method

.method private static blacklist checkValidCapability(I)V
    .registers 4
    .param p0, "capability"    # I

    .line 370
    sget-object v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->ALLOWED_CAPABILITIES:Ljava/util/Set;

    .line 371
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "NetworkCapability "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "out of range"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 370
    invoke-static {v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 373
    return-void
.end method

.method private blacklist validate()V
    .registers 6

    .line 341
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    const-string v1, "gatewayConnectionName was null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 342
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    const-string v1, "tunnel connection parameter was null"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 344
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    .line 345
    invoke-interface {v0}, Ljava/util/SortedSet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1e

    move v0, v1

    goto :goto_1f

    :cond_1e
    move v0, v2

    .line 344
    :goto_1f
    const-string v3, "exposedCapsBundle was null or empty"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 347
    invoke-virtual {p0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->getAllExposedCapabilities()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 348
    .local v3, "cap":Ljava/lang/Integer;
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v4}, Landroid/net/vcn/VcnGatewayConnectionConfig;->checkValidCapability(I)V

    .line 349
    .end local v3    # "cap":Ljava/lang/Integer;
    goto :goto_2c

    .line 351
    :cond_40
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    invoke-static {v0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->validateNetworkTemplateList(Ljava/util/List;)V

    .line 352
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    const-string v3, "retryIntervalsMs was null"

    invoke-static {v0, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 353
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    invoke-static {v0}, Landroid/net/vcn/VcnGatewayConnectionConfig;->validateRetryInterval([J)V

    .line 355
    iget v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    const/16 v3, 0x500

    if-lt v0, v3, :cond_59

    move v0, v1

    goto :goto_5a

    :cond_59
    move v0, v2

    :goto_5a
    const-string v3, "maxMtu must be at least IPv6 min MTU (1280)"

    invoke-static {v0, v3}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 358
    iget v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMinUdpPort4500NatTimeoutSeconds:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_6c

    iget v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMinUdpPort4500NatTimeoutSeconds:I

    const/16 v3, 0x78

    if-lt v0, v3, :cond_6b

    goto :goto_6c

    :cond_6b
    move v1, v2

    :cond_6c
    :goto_6c
    const-string v0, "minUdpPort4500NatTimeoutSeconds must be at least 120s"

    invoke-static {v1, v0}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 364
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayOptions:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_77
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 365
    .local v1, "option":I
    invoke-static {v1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->validateGatewayOption(I)V

    .line 366
    .end local v1    # "option":I
    goto :goto_77

    .line 367
    :cond_8b
    return-void
.end method

.method private static blacklist validateGatewayOption(I)V
    .registers 4
    .param p0, "option"    # I

    .line 404
    sget-object v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->ALLOWED_GATEWAY_OPTIONS:Ljava/util/Set;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 407
    return-void

    .line 405
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid vcn gateway option: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static blacklist validateNetworkTemplateList(Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;)V"
        }
    .end annotation

    .line 392
    .local p0, "networkPriorityRules":Ljava/util/List;, "Ljava/util/List<Landroid/net/vcn/VcnUnderlyingNetworkTemplate;>;"
    const-string v0, "networkPriorityRules is null"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 394
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 395
    .local v0, "existingRules":Ljava/util/Set;, "Ljava/util/Set<Landroid/net/vcn/VcnUnderlyingNetworkTemplate;>;"
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2e

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/vcn/VcnUnderlyingNetworkTemplate;

    .line 396
    .local v2, "rule":Landroid/net/vcn/VcnUnderlyingNetworkTemplate;
    const-string v3, "Found null value VcnUnderlyingNetworkTemplate"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 397
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_26

    .line 400
    .end local v2    # "rule":Landroid/net/vcn/VcnUnderlyingNetworkTemplate;
    goto :goto_e

    .line 398
    .restart local v2    # "rule":Landroid/net/vcn/VcnUnderlyingNetworkTemplate;
    :cond_26
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v3, "Found duplicate VcnUnderlyingNetworkTemplate"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 401
    .end local v2    # "rule":Landroid/net/vcn/VcnUnderlyingNetworkTemplate;
    :cond_2e
    return-void
.end method

.method private static blacklist validateRetryInterval([J)V
    .registers 6
    .param p0, "retryIntervalsMs"    # [J

    .line 376
    const/4 v0, 0x1

    if-eqz p0, :cond_d

    array-length v1, p0

    if-lez v1, :cond_d

    array-length v1, p0

    const/16 v2, 0xa

    if-gt v1, v2, :cond_d

    move v1, v0

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    const-string v2, "retryIntervalsMs was null, empty or exceed max interval count"

    invoke-static {v1, v2}, Lcom/android/internal/util/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 382
    array-length v1, p0

    sub-int/2addr v1, v0

    aget-wide v0, p0, v1

    .line 383
    .local v0, "repeatingInterval":J
    sget-wide v2, Landroid/net/vcn/VcnGatewayConnectionConfig;->MINIMUM_REPEATING_RETRY_INTERVAL_MS:J

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1e

    .line 388
    return-void

    .line 384
    :cond_1e
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Repeating retry interval was too short, must be a minimum of 15 minutes: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 6
    .param p1, "other"    # Ljava/lang/Object;

    .line 585
    instance-of v0, p1, Landroid/net/vcn/VcnGatewayConnectionConfig;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 586
    return v1

    .line 589
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/net/vcn/VcnGatewayConnectionConfig;

    .line 590
    .local v0, "rhs":Landroid/net/vcn/VcnGatewayConnectionConfig;
    iget-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    iget-object v3, v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 591
    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    iget-object v3, v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    .line 592
    invoke-interface {v2, v3}, Ljava/util/SortedSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    iget-object v3, v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    .line 593
    invoke-interface {v2, v3}, Ljava/util/List;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    iget-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    iget-object v3, v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    .line 594
    invoke-static {v2, v3}, Ljava/util/Arrays;->equals([J[J)Z

    move-result v2

    if-eqz v2, :cond_59

    iget v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    iget v3, v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    if-ne v2, v3, :cond_59

    iget v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMinUdpPort4500NatTimeoutSeconds:I

    iget v3, v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMinUdpPort4500NatTimeoutSeconds:I

    if-ne v2, v3, :cond_59

    iget-boolean v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mIsSafeModeDisabled:Z

    iget-boolean v3, v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mIsSafeModeDisabled:Z

    if-ne v2, v3, :cond_59

    iget-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayOptions:Ljava/util/Set;

    iget-object v3, v0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayOptions:Ljava/util/Set;

    .line 598
    invoke-interface {v2, v3}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_59

    const/4 v1, 0x1

    goto :goto_5a

    :cond_59
    nop

    .line 590
    :goto_5a
    return v1
.end method

.method public blacklist getAllExposedCapabilities()Ljava/util/Set;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 466
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public whitelist getExposedCapabilities()[I
    .registers 6

    .line 445
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    new-array v0, v0, [I

    .line 447
    .local v0, "caps":[I
    const/4 v1, 0x0

    .line 448
    .local v1, "i":I
    iget-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    invoke-interface {v2}, Ljava/util/SortedSet;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_f
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_25

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 449
    .local v3, "c":I
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "i":I
    .local v4, "i":I
    aput v3, v0, v1

    .line 450
    .end local v3    # "c":I
    move v1, v4

    goto :goto_f

    .line 452
    .end local v4    # "i":I
    .restart local v1    # "i":I
    :cond_25
    return-object v0
.end method

.method public whitelist getGatewayConnectionName()Ljava/lang/String;
    .registers 2

    .line 420
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    return-object v0
.end method

.method public whitelist getMaxMtu()I
    .registers 2

    .line 496
    iget v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    return v0
.end method

.method public whitelist getMinUdpPort4500NatTimeoutSeconds()I
    .registers 2

    .line 505
    iget v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMinUdpPort4500NatTimeoutSeconds:I

    return v0
.end method

.method public whitelist getRetryIntervalsMillis()[J
    .registers 3

    .line 486
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    iget-object v1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v0

    return-object v0
.end method

.method public blacklist getTunnelConnectionParams()Landroid/net/ipsec/ike/IkeTunnelConnectionParams;
    .registers 2

    .line 430
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    return-object v0
.end method

.method public whitelist getVcnUnderlyingNetworkPriorities()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/vcn/VcnUnderlyingNetworkTemplate;",
            ">;"
        }
    .end annotation

    .line 476
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public whitelist hasGatewayOption(I)Z
    .registers 4
    .param p1, "option"    # I

    .line 527
    invoke-static {p1}, Landroid/net/vcn/VcnGatewayConnectionConfig;->validateGatewayOption(I)V

    .line 528
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayOptions:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public whitelist test-api hashCode()I
    .registers 10

    .line 571
    iget-object v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    iget-object v1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    iget-object v2, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    iget-object v3, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    iget-object v4, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    .line 576
    invoke-static {v4}, Ljava/util/Arrays;->hashCode([J)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    iget v5, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    .line 577
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget v6, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMinUdpPort4500NatTimeoutSeconds:I

    .line 578
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    iget-boolean v7, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mIsSafeModeDisabled:Z

    .line 579
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    iget-object v8, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayOptions:Ljava/util/Set;

    filled-new-array/range {v0 .. v8}, [Ljava/lang/Object;

    move-result-object v0

    .line 571
    invoke-static {v0}, Ljava/util/Objects;->hash([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public whitelist isSafeModeEnabled()Z
    .registers 2

    .line 515
    iget-boolean v0, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mIsSafeModeDisabled:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public blacklist toPersistableBundle()Landroid/os/PersistableBundle;
    .registers 8

    .line 539
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 541
    .local v0, "result":Landroid/os/PersistableBundle;
    iget-object v1, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mTunnelConnectionParams:Landroid/net/ipsec/ike/IkeTunnelConnectionParams;

    .line 542
    invoke-static {v1}, Landroid/net/connectivity/android/net/vcn/persistablebundleutils/TunnelConnectionParamsUtils;->toPersistableBundle(Landroid/net/ipsec/ike/IkeTunnelConnectionParams;)Landroid/os/PersistableBundle;

    move-result-object v1

    .line 543
    .local v1, "tunnelConnectionParamsBundle":Landroid/os/PersistableBundle;
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mExposedCapabilities:Ljava/util/SortedSet;

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v3, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->INTEGER_SERIALIZER:Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Serializer;

    .line 544
    invoke-static {v2, v3}, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->fromList(Ljava/util/List;Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v2

    .line 547
    .local v2, "exposedCapsBundle":Landroid/os/PersistableBundle;
    iget-object v3, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mUnderlyingNetworkTemplates:Ljava/util/List;

    new-instance v4, Landroid/net/vcn/VcnGatewayConnectionConfig$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Landroid/net/vcn/VcnGatewayConnectionConfig$$ExternalSyntheticLambda1;-><init>()V

    .line 548
    invoke-static {v3, v4}, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->fromList(Ljava/util/List;Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v3

    .line 551
    .local v3, "networkTemplatesBundle":Landroid/os/PersistableBundle;
    new-instance v4, Ljava/util/ArrayList;

    iget-object v5, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayOptions:Ljava/util/Set;

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    sget-object v5, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->INTEGER_SERIALIZER:Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Serializer;

    .line 552
    invoke-static {v4, v5}, Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils;->fromList(Ljava/util/List;Landroid/net/connectivity/android/net/vcn/util/PersistableBundleUtils$Serializer;)Landroid/os/PersistableBundle;

    move-result-object v4

    .line 556
    .local v4, "gatewayOptionsBundle":Landroid/os/PersistableBundle;
    const-string v5, "mGatewayConnectionName"

    iget-object v6, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mGatewayConnectionName:Ljava/lang/String;

    invoke-virtual {v0, v5, v6}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 557
    const-string v5, "mTunnelConnectionParams"

    invoke-virtual {v0, v5, v1}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 558
    const-string v5, "mExposedCapabilities"

    invoke-virtual {v0, v5, v2}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 559
    const-string v5, "mUnderlyingNetworkTemplates"

    invoke-virtual {v0, v5, v3}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 560
    const-string v5, "mGatewayOptions"

    invoke-virtual {v0, v5, v4}, Landroid/os/PersistableBundle;->putPersistableBundle(Ljava/lang/String;Landroid/os/PersistableBundle;)V

    .line 561
    const-string v5, "mRetryIntervalsMs"

    iget-object v6, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mRetryIntervalsMs:[J

    invoke-virtual {v0, v5, v6}, Landroid/os/PersistableBundle;->putLongArray(Ljava/lang/String;[J)V

    .line 562
    const-string v5, "mMaxMtu"

    iget v6, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMaxMtu:I

    invoke-virtual {v0, v5, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 563
    const-string v5, "mMinUdpPort4500NatTimeoutSeconds"

    iget v6, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mMinUdpPort4500NatTimeoutSeconds:I

    invoke-virtual {v0, v5, v6}, Landroid/os/PersistableBundle;->putInt(Ljava/lang/String;I)V

    .line 564
    const-string v5, "mIsSafeModeDisabled"

    iget-boolean v6, p0, Landroid/net/vcn/VcnGatewayConnectionConfig;->mIsSafeModeDisabled:Z

    invoke-virtual {v0, v5, v6}, Landroid/os/PersistableBundle;->putBoolean(Ljava/lang/String;Z)V

    .line 566
    return-object v0
.end method
