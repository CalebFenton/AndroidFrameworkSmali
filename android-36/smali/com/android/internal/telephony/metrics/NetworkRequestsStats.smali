.class public Lcom/android/internal/telephony/metrics/NetworkRequestsStats;
.super Ljava/lang/Object;
.source "NetworkRequestsStats.java"


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static blacklist addNetworkRequest(Landroid/net/NetworkRequest;I)V
    .registers 8

    .line 35
    invoke-static {}, Lcom/android/internal/telephony/PhoneFactory;->getMetricsCollector()Lcom/android/internal/telephony/metrics/MetricsCollector;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/telephony/metrics/MetricsCollector;->getAtomsStorage()Lcom/android/internal/telephony/metrics/PersistAtomsStorage;

    move-result-object v0

    .line 37
    new-instance v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;

    invoke-direct {v1}, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;-><init>()V

    .line 38
    invoke-static {p1}, Lcom/android/internal/telephony/metrics/NetworkRequestsStats;->getCarrierId(I)I

    move-result p1

    iput p1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->carrierId:I

    const/4 p1, 0x1

    .line 39
    iput p1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->requestCount:I

    const/16 v2, 0x22

    .line 41
    invoke-virtual {p0, v2}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_23

    .line 42
    iput p1, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    .line 44
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addNetworkRequestsV2(Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;)V

    :cond_23
    const/16 v2, 0x23

    .line 47
    invoke-virtual {p0, v2}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_31

    const/4 v2, 0x2

    .line 48
    iput v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    .line 50
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addNetworkRequestsV2(Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;)V

    :cond_31
    const/4 v2, 0x5

    .line 53
    invoke-virtual {p0, v2}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v3

    if-eqz v3, :cond_3e

    const/4 v3, 0x3

    .line 54
    iput v3, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    .line 55
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addNetworkRequestsV2(Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;)V

    :cond_3e
    const/16 v3, 0x1d

    .line 58
    invoke-virtual {p0, v3}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v3

    const/4 v4, 0x4

    if-eqz v3, :cond_4c

    .line 59
    iput v4, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    .line 60
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addNetworkRequestsV2(Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;)V

    :cond_4c
    const/16 v3, 0xa

    .line 63
    invoke-virtual {p0, v3}, Landroid/net/NetworkRequest;->hasTransport(I)Z

    move-result v5

    if-eqz v5, :cond_a7

    const/16 v5, 0xd

    .line 64
    invoke-virtual {p0, v5}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v5

    if-nez v5, :cond_a7

    const/16 v5, 0xc

    .line 67
    invoke-virtual {p0, v5}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v5

    if-eqz v5, :cond_69

    .line 68
    iput v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    .line 70
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addNetworkRequestsV2(Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;)V

    :cond_69
    const/4 v2, 0x0

    .line 73
    invoke-virtual {p0, v2}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_76

    const/4 v2, 0x6

    .line 74
    iput v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    .line 76
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addNetworkRequestsV2(Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;)V

    .line 79
    :cond_76
    invoke-virtual {p0, v4}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v2

    if-eqz v2, :cond_82

    const/4 v2, 0x7

    .line 80
    iput v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    .line 82
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addNetworkRequestsV2(Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;)V

    :cond_82
    const/16 v2, 0x9

    .line 85
    invoke-virtual {p0, v2}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_91

    const/16 v4, 0x8

    .line 86
    iput v4, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    .line 88
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addNetworkRequestsV2(Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;)V

    .line 91
    :cond_91
    invoke-virtual {p0, v3}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result v4

    if-eqz v4, :cond_9c

    .line 92
    iput v2, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    .line 94
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addNetworkRequestsV2(Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;)V

    .line 97
    :cond_9c
    invoke-virtual {p0, p1}, Landroid/net/NetworkRequest;->hasCapability(I)Z

    move-result p0

    if-eqz p0, :cond_a7

    .line 98
    iput v3, v1, Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;->capability:I

    .line 100
    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/metrics/PersistAtomsStorage;->addNetworkRequestsV2(Lcom/android/internal/telephony/nano/PersistAtomsProto$NetworkRequestsV2;)V

    :cond_a7
    return-void
.end method

.method private static blacklist getCarrierId(I)I
    .registers 1

    .line 107
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result p0

    .line 108
    invoke-static {p0}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object p0

    if-eqz p0, :cond_f

    .line 109
    invoke-virtual {p0}, Lcom/android/internal/telephony/Phone;->getCarrierId()I

    move-result p0

    return p0

    :cond_f
    const/4 p0, -0x1

    return p0
.end method
