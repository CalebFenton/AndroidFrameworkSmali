.class public Lcom/android/internal/telephony/data/TelephonyNetworkRequest;
.super Ljava/lang/Object;
.source "TelephonyNetworkRequest.java"


# static fields
.field public static final blacklist CAPABILITY_ATTRIBUTE_APN_SETTING:I = 0x1

.field private static final blacklist CAPABILITY_ATTRIBUTE_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist CAPABILITY_ATTRIBUTE_NONE:I = 0x0

.field public static final blacklist CAPABILITY_ATTRIBUTE_TRAFFIC_DESCRIPTOR_DNN:I = 0x2

.field public static final blacklist CAPABILITY_ATTRIBUTE_TRAFFIC_DESCRIPTOR_OS_APP_ID:I = 0x4

.field public static final blacklist REQUEST_STATE_SATISFIED:I = 0x1

.field public static final blacklist REQUEST_STATE_UNSATISFIED:I


# instance fields
.field private blacklist mAttachedDataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

.field private final blacklist mCapabilitiesAttributes:I

.field private final blacklist mCreatedTimeMillis:J

.field private blacklist mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

.field private blacklist mEvaluation:Lcom/android/internal/telephony/data/DataEvaluation;

.field private final blacklist mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

.field private final blacklist mNativeNetworkRequest:Landroid/net/NetworkRequest;

.field private blacklist mPriority:I

.field private blacklist mState:I


# direct methods
.method public static synthetic blacklist $r8$lambda$6fzZqIg42q63ZK3Bgq0ufbPHjT8(Ljava/lang/Integer;)Z
    .registers 1

    .line 412
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    invoke-static {p0}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToApnType(I)I

    move-result p0

    if-eqz p0, :cond_c

    const/4 p0, 0x1

    return p0

    :cond_c
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$BWRkqhw9FVDMjLjTaazVWwKZjBQ(Ljava/util/Set;Ljava/lang/Integer;)Z
    .registers 2

    .line 444
    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$caix5lRLRYWuoTi_4dC08O3KLYM(Ljava/lang/Integer;)Z
    .registers 1

    .line 360
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    if-eqz p0, :cond_8

    const/4 p0, 0x1

    return p0

    :cond_8
    const/4 p0, 0x0

    return p0
.end method

.method public static synthetic blacklist $r8$lambda$oFTgr8_Nw1igCWCzQw-29pmuwLU(Ljava/lang/Integer;)Z
    .registers 4

    .line 529
    sget-object v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->CAPABILITY_ATTRIBUTE_MAP:Ljava/util/Map;

    const/4 v1, 0x0

    .line 530
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 529
    invoke-interface {v0, p0, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    and-int/lit8 p0, p0, 0x4

    if-eqz p0, :cond_17

    const/4 p0, 0x1

    return p0

    :cond_17
    return v1
.end method

.method static constructor blacklist <clinit>()V
    .registers 10

    const/16 v0, 0x10

    .line 105
    new-array v0, v0, [Ljava/util/Map$Entry;

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const/4 v2, 0x0

    .line 106
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x3

    .line 107
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v3, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const/4 v2, 0x1

    .line 108
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 109
    invoke-direct {v1, v3, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const/4 v2, 0x2

    .line 110
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 111
    invoke-direct {v1, v3, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 113
    invoke-direct {v1, v5, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const/4 v2, 0x4

    .line 114
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 115
    invoke-direct {v1, v3, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const/4 v2, 0x5

    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v6, 0x7

    .line 117
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v1, v4, v7}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const/16 v2, 0x9

    .line 119
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 120
    invoke-direct {v1, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/4 v4, 0x6

    aput-object v1, v0, v4

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const/16 v4, 0xa

    .line 121
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 122
    invoke-direct {v1, v8, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v6

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const/16 v6, 0xc

    .line 123
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 124
    invoke-direct {v1, v8, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v8, 0x8

    aput-object v1, v0, v8

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const/16 v9, 0x17

    .line 125
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    .line 126
    invoke-direct {v1, v9, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const/16 v2, 0x1d

    .line 127
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 128
    invoke-direct {v1, v2, v7}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v4

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const/16 v2, 0x1e

    .line 130
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 131
    invoke-direct {v1, v2, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const/16 v2, 0x1f

    .line 132
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 133
    invoke-direct {v1, v2, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v1, v0, v6

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const/16 v2, 0x22

    .line 134
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 135
    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    const/16 v2, 0x23

    .line 136
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 137
    invoke-direct {v1, v2, v3}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 138
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 139
    invoke-direct {v1, v2, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 105
    invoke-static {v0}, Ljava/util/Map;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->CAPABILITY_ATTRIBUTE_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/NetworkRequest;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 9

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 219
    iput-object p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mNativeNetworkRequest:Landroid/net/NetworkRequest;

    .line 220
    iput-object p2, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mFeatureFlags:Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;

    .line 223
    invoke-virtual {p1}, Landroid/net/NetworkRequest;->getCapabilities()[I

    move-result-object p1

    array-length p2, p1

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    :goto_f
    if-ge v1, p2, :cond_2b

    aget v3, p1, v1

    .line 224
    sget-object v4, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->CAPABILITY_ATTRIBUTE_MAP:Ljava/util/Map;

    .line 225
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 224
    invoke-interface {v4, v3, v5}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    or-int/2addr v2, v3

    add-int/lit8 v1, v1, 0x1

    goto :goto_f

    .line 227
    :cond_2b
    iput v2, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mCapabilitiesAttributes:I

    .line 229
    iput v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mPriority:I

    const/4 p1, 0x0

    .line 230
    iput-object p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mAttachedDataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    .line 233
    iput v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mState:I

    .line 234
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mCreatedTimeMillis:J

    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/NetworkRequest;Lcom/android/internal/telephony/Phone;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V
    .registers 4

    .line 206
    invoke-direct {p0, p1, p3}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;-><init>(Landroid/net/NetworkRequest;Lcom/android/internal/hidden_from_bootclasspath/com/android/internal/telephony/flags/FeatureFlags;)V

    .line 207
    invoke-virtual {p2}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object p1

    iput-object p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 208
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->updatePriority()V

    return-void
.end method

.method public static blacklist getAllSupportedNetworkCapabilities()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 440
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getDefaultPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v0

    .line 441
    invoke-virtual {v0}, Lcom/android/internal/telephony/Phone;->getDataNetworkController()Lcom/android/internal/telephony/data/DataNetworkController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataNetworkController;->getDataConfigManager()Lcom/android/internal/telephony/data/DataConfigManager;

    move-result-object v0

    .line 442
    invoke-virtual {v0}, Lcom/android/internal/telephony/data/DataConfigManager;->getUnsupportedNetworkCapabilities()Ljava/util/Set;

    move-result-object v0

    .line 443
    sget-object v1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->CAPABILITY_ATTRIBUTE_MAP:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v1

    new-instance v2, Lcom/android/internal/telephony/data/TelephonyNetworkRequest$$ExternalSyntheticLambda0;

    invoke-direct {v2, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest$$ExternalSyntheticLambda0;-><init>(Ljava/util/Set;)V

    .line 444
    invoke-interface {v1, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->toList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static blacklist requestStateToString(I)Ljava/lang/String;
    .registers 3

    if-eqz p0, :cond_1f

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1c

    .line 559
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "UNKNOWN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, ")"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 558
    :cond_1c
    const-string p0, "SATISFIED"

    return-object p0

    .line 557
    :cond_1f
    const-string p0, "UNSATISFIED"

    return-object p0
.end method


# virtual methods
.method public blacklist canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z
    .registers 2

    .line 292
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mNativeNetworkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {p0, p1}, Landroid/net/NetworkRequest;->canBeSatisfiedBy(Landroid/net/NetworkCapabilities;)Z

    move-result p0

    return p0
.end method

.method public blacklist canBeSatisfiedBy(Landroid/telephony/data/DataProfile;)Z
    .registers 7

    const/4 v0, 0x4

    .line 317
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasAttribute(I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2b

    .line 318
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getOsAppId()Landroid/telephony/data/TrafficDescriptor$OsAppId;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 321
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object v0

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getOsAppId()Landroid/telephony/data/TrafficDescriptor$OsAppId;

    move-result-object v0

    invoke-virtual {v0}, Landroid/telephony/data/TrafficDescriptor$OsAppId;->getBytes()[B

    move-result-object v0

    .line 322
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getTrafficDescriptor()Landroid/telephony/data/TrafficDescriptor;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/data/TrafficDescriptor;->getOsAppId()[B

    move-result-object v2

    .line 321
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_2b

    return v1

    .line 329
    :cond_2b
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasAttribute(I)Z

    move-result v0

    const/4 v2, 0x2

    const/4 v3, 0x0

    if-nez v0, :cond_39

    .line 330
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasAttribute(I)Z

    move-result v0

    if-eqz v0, :cond_e9

    .line 331
    :cond_39
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    if-eqz v0, :cond_e9

    .line 332
    iget-object v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mNativeNetworkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v3}, Landroid/net/NetworkRequest;->hasTransport(I)Z

    move-result v0

    const/16 v4, 0xa

    if-eqz v0, :cond_7c

    iget-object v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mNativeNetworkRequest:Landroid/net/NetworkRequest;

    .line 333
    invoke-virtual {v0, v4}, Landroid/net/NetworkRequest;->hasTransport(I)Z

    move-result v0

    if-nez v0, :cond_7c

    .line 335
    iget-object v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    if-eqz v0, :cond_97

    .line 336
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getCapabilities()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 337
    invoke-virtual {v2}, Lcom/android/internal/telephony/data/DataConfigManager;->getForcedCellularTransportCapabilities()Ljava/util/Set;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda38;

    invoke-direct {v4, v2}, Lcom/android/internal/telephony/data/DataNetworkController$$ExternalSyntheticLambda38;-><init>(Ljava/util/Set;)V

    .line 336
    invoke-interface {v0, v4}, Ljava/util/stream/IntStream;->noneMatch(Ljava/util/function/IntPredicate;)Z

    move-result v0

    if-eqz v0, :cond_97

    .line 340
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/telephony/data/ApnSetting;->isForInfrastructure(I)Z

    move-result v0

    if-nez v0, :cond_97

    return v3

    .line 346
    :cond_7c
    iget-object v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mNativeNetworkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v4}, Landroid/net/NetworkRequest;->hasTransport(I)Z

    move-result v0

    if-eqz v0, :cond_97

    iget-object v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mNativeNetworkRequest:Landroid/net/NetworkRequest;

    .line 348
    invoke-virtual {v0, v3}, Landroid/net/NetworkRequest;->hasTransport(I)Z

    move-result v0

    if-nez v0, :cond_97

    .line 352
    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/telephony/data/ApnSetting;->isForInfrastructure(I)Z

    move-result v0

    if-nez v0, :cond_97

    return v3

    .line 358
    :cond_97
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getCapabilities()[I

    move-result-object p0

    invoke-static {p0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object p0

    invoke-interface {p0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest$$ExternalSyntheticLambda1;-><init>()V

    .line 359
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p0

    new-instance v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest$$ExternalSyntheticLambda2;-><init>()V

    .line 360
    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object p0

    .line 361
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/List;

    const/16 v0, 0x4000

    .line 370
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d4

    const/16 v0, 0x11

    .line 371
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 374
    :cond_d4
    invoke-interface {p0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object p0

    invoke-virtual {p1}, Landroid/telephony/data/DataProfile;->getApnSetting()Landroid/telephony/data/ApnSetting;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest$$ExternalSyntheticLambda3;

    invoke-direct {v0, p1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest$$ExternalSyntheticLambda3;-><init>(Landroid/telephony/data/ApnSetting;)V

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->allMatch(Ljava/util/function/Predicate;)Z

    move-result p0

    return p0

    :cond_e9
    return v3
.end method

.method public whitelist test-api equals(Ljava/lang/Object;)Z
    .registers 4

    if-ne p0, p1, :cond_4

    const/4 p0, 0x1

    return p0

    :cond_4
    if-eqz p1, :cond_1c

    .line 576
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    if-eq v0, v1, :cond_11

    goto :goto_1c

    .line 577
    :cond_11
    check-cast p1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;

    .line 579
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mNativeNetworkRequest:Landroid/net/NetworkRequest;

    iget-object p1, p1, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mNativeNetworkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1c
    :goto_1c
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist getAttachedNetwork()Lcom/android/internal/telephony/data/DataNetwork;
    .registers 1

    .line 470
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mAttachedDataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    return-object p0
.end method

.method public blacklist getCapabilities()[I
    .registers 1

    .line 261
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mNativeNetworkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {p0}, Landroid/net/NetworkRequest;->getCapabilities()[I

    move-result-object p0

    return-object p0
.end method

.method public blacklist getCapabilityDifferentiator()I
    .registers 3

    const/16 v0, 0x1d

    .line 507
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasCapability(I)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    .line 508
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mNativeNetworkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {p0}, Landroid/net/NetworkRequest;->getEnterpriseIds()[I

    move-result-object p0

    .line 510
    array-length v0, p0

    if-lez v0, :cond_15

    aget p0, p0, v1

    return p0

    :cond_15
    return v1
.end method

.method public blacklist getHighestPriorityApnTypeNetworkCapability()I
    .registers 4

    const/4 v0, 0x1

    .line 409
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasAttribute(I)Z

    move-result v0

    const/4 v1, -0x1

    if-nez v0, :cond_9

    return v1

    .line 410
    :cond_9
    iget-object v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    if-nez v0, :cond_e

    return v1

    .line 411
    :cond_e
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getCapabilities()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/data/TelephonyNetworkRequest$$ExternalSyntheticLambda5;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest$$ExternalSyntheticLambda5;-><init>()V

    .line 412
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 413
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/DataConfigManager;)V

    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p0

    .line 414
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getHighestPrioritySupportedNetworkCapability()I
    .registers 5

    .line 427
    iget-object v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    const/4 v1, -0x1

    if-nez v0, :cond_6

    return v1

    .line 428
    :cond_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getCapabilities()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->CAPABILITY_ATTRIBUTE_MAP:Ljava/util/Map;

    .line 429
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/internal/telephony/data/TelephonyNetworkRequest$$ExternalSyntheticLambda4;

    invoke-direct {v3, v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest$$ExternalSyntheticLambda4;-><init>(Ljava/util/Map;)V

    invoke-interface {v0, v3}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 430
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/data/DataNetwork$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/telephony/data/DataConfigManager;)V

    invoke-static {v2}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/stream/Stream;->max(Ljava/util/Comparator;)Ljava/util/Optional;

    move-result-object p0

    .line 431
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Integer;

    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    move-result p0

    return p0
.end method

.method public blacklist getNativeNetworkRequest()Landroid/net/NetworkRequest;
    .registers 1

    .line 452
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mNativeNetworkRequest:Landroid/net/NetworkRequest;

    return-object p0
.end method

.method public blacklist getNetworkSpecifier()Landroid/net/NetworkSpecifier;
    .registers 1

    .line 252
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mNativeNetworkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {p0}, Landroid/net/NetworkRequest;->getNetworkSpecifier()Landroid/net/NetworkSpecifier;

    move-result-object p0

    return-object p0
.end method

.method public blacklist getOsAppId()Landroid/telephony/data/TrafficDescriptor$OsAppId;
    .registers 5

    const/4 v0, 0x4

    .line 523
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->hasAttribute(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_9

    return-object v1

    .line 528
    :cond_9
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getCapabilities()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/IntStream;->boxed()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lcom/android/internal/telephony/data/TelephonyNetworkRequest$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest$$ExternalSyntheticLambda6;-><init>()V

    .line 529
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 532
    invoke-interface {v0}, Ljava/util/stream/Stream;->findFirst()Ljava/util/Optional;

    move-result-object v0

    const/4 v2, -0x1

    .line 533
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-ne v0, v2, :cond_34

    return-object v1

    .line 537
    :cond_34
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->getCapabilityDifferentiator()I

    move-result p0

    if-lez p0, :cond_46

    .line 539
    new-instance v1, Landroid/telephony/data/TrafficDescriptor$OsAppId;

    sget-object v2, Landroid/telephony/data/TrafficDescriptor$OsAppId;->ANDROID_OS_ID:Ljava/util/UUID;

    .line 540
    invoke-static {v0}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v2, v0, p0}, Landroid/telephony/data/TrafficDescriptor$OsAppId;-><init>(Ljava/util/UUID;Ljava/lang/String;I)V

    return-object v1

    .line 542
    :cond_46
    new-instance p0, Landroid/telephony/data/TrafficDescriptor$OsAppId;

    sget-object v1, Landroid/telephony/data/TrafficDescriptor$OsAppId;->ANDROID_OS_ID:Ljava/util/UUID;

    .line 543
    invoke-static {v0}, Lcom/android/internal/telephony/data/DataUtils;->networkCapabilityToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Landroid/telephony/data/TrafficDescriptor$OsAppId;-><init>(Ljava/util/UUID;Ljava/lang/String;)V

    return-object p0
.end method

.method public blacklist getPriority()I
    .registers 1

    .line 385
    iget p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mPriority:I

    return p0
.end method

.method public blacklist getState()I
    .registers 1

    .line 487
    iget p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mState:I

    return p0
.end method

.method public blacklist getTransportTypes()[I
    .registers 1

    .line 277
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mNativeNetworkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {p0}, Landroid/net/NetworkRequest;->getTransportTypes()[I

    move-result-object p0

    return-object p0
.end method

.method public blacklist hasAttribute(I)Z
    .registers 2

    .line 305
    iget p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mCapabilitiesAttributes:I

    and-int/2addr p0, p1

    if-ne p0, p1, :cond_7

    const/4 p0, 0x1

    return p0

    :cond_7
    const/4 p0, 0x0

    return p0
.end method

.method public blacklist hasCapability(I)Z
    .registers 2

    .line 268
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mNativeNetworkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {p0, p1}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result p0

    return p0
.end method

.method public blacklist hasTransport(I)Z
    .registers 2

    .line 285
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mNativeNetworkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {p0, p1}, Landroid/net/NetworkRequest;->hasTransport(I)Z

    move-result p0

    return p0
.end method

.method public whitelist test-api hashCode()I
    .registers 1

    .line 585
    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mNativeNetworkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    return p0
.end method

.method public blacklist setAttachedNetwork(Lcom/android/internal/telephony/data/DataNetwork;)V
    .registers 2

    .line 461
    iput-object p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mAttachedDataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    return-void
.end method

.method public blacklist setEvaluation(Lcom/android/internal/telephony/data/DataEvaluation;)V
    .registers 2

    .line 496
    iput-object p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mEvaluation:Lcom/android/internal/telephony/data/DataEvaluation;

    return-void
.end method

.method public blacklist setState(I)V
    .registers 2

    .line 479
    iput p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mState:I

    return-void
.end method

.method public whitelist test-api toString()Ljava/lang/String;
    .registers 4

    .line 565
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mNativeNetworkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mPriority="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mPriority:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", state="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mState:I

    .line 566
    invoke-static {v1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->requestStateToString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", mAttachedDataNetwork="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    iget-object v1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mAttachedDataNetwork:Lcom/android/internal/telephony/data/DataNetwork;

    if-eqz v1, :cond_35

    .line 568
    invoke-virtual {v1}, Lcom/android/internal/telephony/data/DataNetwork;->name()Ljava/lang/String;

    move-result-object v1

    goto :goto_36

    :cond_35
    const/4 v1, 0x0

    :goto_36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", created time="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mCreatedTimeMillis:J

    .line 569
    invoke-static {v1, v2}, Lcom/android/internal/telephony/data/DataUtils;->elapsedTimeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", evaluation result="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mEvaluation:Lcom/android/internal/telephony/data/DataEvaluation;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p0, "]"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public blacklist updateDataConfig(Lcom/android/internal/telephony/data/DataConfigManager;)V
    .registers 2

    .line 243
    iput-object p1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 244
    invoke-virtual {p0}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->updatePriority()V

    return-void
.end method

.method public blacklist updatePriority()V
    .registers 4

    .line 392
    iget-object v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    if-eqz v0, :cond_27

    .line 393
    iget-object v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mNativeNetworkRequest:Landroid/net/NetworkRequest;

    invoke-virtual {v0}, Landroid/net/NetworkRequest;->getCapabilities()[I

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->stream([I)Ljava/util/stream/IntStream;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mDataConfigManager:Lcom/android/internal/telephony/data/DataConfigManager;

    .line 394
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lcom/android/internal/telephony/data/TelephonyNetworkRequest$$ExternalSyntheticLambda7;

    invoke-direct {v2, v1}, Lcom/android/internal/telephony/data/TelephonyNetworkRequest$$ExternalSyntheticLambda7;-><init>(Lcom/android/internal/telephony/data/DataConfigManager;)V

    invoke-interface {v0, v2}, Ljava/util/stream/IntStream;->map(Ljava/util/function/IntUnaryOperator;)Ljava/util/stream/IntStream;

    move-result-object v0

    .line 395
    invoke-interface {v0}, Ljava/util/stream/IntStream;->max()Ljava/util/OptionalInt;

    move-result-object v0

    const/4 v1, 0x0

    .line 396
    invoke-virtual {v0, v1}, Ljava/util/OptionalInt;->orElse(I)I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/data/TelephonyNetworkRequest;->mPriority:I

    :cond_27
    return-void
.end method
