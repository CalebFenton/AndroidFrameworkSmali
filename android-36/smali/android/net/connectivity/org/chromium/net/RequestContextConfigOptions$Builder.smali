.class public final Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
.super Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;
.source "RequestContextConfigOptions.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder<",
        "Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;",
        "Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;",
        ">;",
        "Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptionsOrBuilder;"
    }
.end annotation


# direct methods
.method private constructor blacklist <init>()V
    .registers 2

    .line 668
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$sfgetDEFAULT_INSTANCE()Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;-><init>(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)V

    .line 669
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist clearBrotliEnabled()Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 2

    .line 946
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 947
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$mclearBrotliEnabled(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;)V

    .line 948
    return-object p0
.end method

.method public blacklist clearBypassPublicKeyPinningForLocalTrustAnchors()Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 2

    .line 1219
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1220
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$mclearBypassPublicKeyPinningForLocalTrustAnchors(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;)V

    .line 1221
    return-object p0
.end method

.method public blacklist clearDisableCache()Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 2

    .line 982
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 983
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$mclearDisableCache(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;)V

    .line 984
    return-object p0
.end method

.method public blacklist clearEnableNetworkQualityEstimator()Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 2

    .line 1183
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1184
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$mclearEnableNetworkQualityEstimator(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;)V

    .line 1185
    return-object p0
.end method

.method public blacklist clearExperimentalOptions()Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 2

    .line 1100
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1101
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$mclearExperimentalOptions(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;)V

    .line 1102
    return-object p0
.end method

.method public blacklist clearHttp2Enabled()Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 2

    .line 910
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 911
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$mclearHttp2Enabled(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;)V

    .line 912
    return-object p0
.end method

.method public blacklist clearHttpCacheMaxSize()Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 2

    .line 1054
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1055
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$mclearHttpCacheMaxSize(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;)V

    .line 1056
    return-object p0
.end method

.method public blacklist clearHttpCacheMode()Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 2

    .line 1018
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1019
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$mclearHttpCacheMode(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;)V

    .line 1020
    return-object p0
.end method

.method public blacklist clearMockCertVerifier()Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 2

    .line 1147
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1148
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$mclearMockCertVerifier(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;)V

    .line 1149
    return-object p0
.end method

.method public blacklist clearNetworkThreadPriority()Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 2

    .line 1255
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1256
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$mclearNetworkThreadPriority(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;)V

    .line 1257
    return-object p0
.end method

.method public blacklist clearQuicDefaultUserAgentId()Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 2

    .line 863
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 864
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$mclearQuicDefaultUserAgentId(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;)V

    .line 865
    return-object p0
.end method

.method public blacklist clearQuicEnabled()Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 2

    .line 817
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 818
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$mclearQuicEnabled(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;)V

    .line 819
    return-object p0
.end method

.method public blacklist clearStoragePath()Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 2

    .line 770
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 771
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$mclearStoragePath(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;)V

    .line 772
    return-object p0
.end method

.method public blacklist clearUserAgent()Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 2

    .line 713
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 714
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$mclearUserAgent(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;)V

    .line 715
    return-object p0
.end method

.method public blacklist getBrotliEnabled()Z
    .registers 2

    .line 929
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->getBrotliEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist getBypassPublicKeyPinningForLocalTrustAnchors()Z
    .registers 2

    .line 1202
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->getBypassPublicKeyPinningForLocalTrustAnchors()Z

    move-result v0

    return v0
.end method

.method public blacklist getDisableCache()Z
    .registers 2

    .line 965
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->getDisableCache()Z

    move-result v0

    return v0
.end method

.method public blacklist getEnableNetworkQualityEstimator()Z
    .registers 2

    .line 1166
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->getEnableNetworkQualityEstimator()Z

    move-result v0

    return v0
.end method

.method public blacklist getExperimentalOptions()Ljava/lang/String;
    .registers 2

    .line 1073
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->getExperimentalOptions()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getExperimentalOptionsBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 2

    .line 1082
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->getExperimentalOptionsBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHttp2Enabled()Z
    .registers 2

    .line 893
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->getHttp2Enabled()Z

    move-result v0

    return v0
.end method

.method public blacklist getHttpCacheMaxSize()J
    .registers 3

    .line 1037
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->getHttpCacheMaxSize()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getHttpCacheMode()I
    .registers 2

    .line 1001
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->getHttpCacheMode()I

    move-result v0

    return v0
.end method

.method public blacklist getMockCertVerifier()J
    .registers 3

    .line 1130
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->getMockCertVerifier()J

    move-result-wide v0

    return-wide v0
.end method

.method public blacklist getNetworkThreadPriority()I
    .registers 2

    .line 1238
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->getNetworkThreadPriority()I

    move-result v0

    return v0
.end method

.method public blacklist getQuicDefaultUserAgentId()Ljava/lang/String;
    .registers 2

    .line 836
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->getQuicDefaultUserAgentId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getQuicDefaultUserAgentIdBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 2

    .line 845
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->getQuicDefaultUserAgentIdBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getQuicEnabled()Z
    .registers 2

    .line 800
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->getQuicEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist getStoragePath()Ljava/lang/String;
    .registers 2

    .line 743
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->getStoragePath()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getStoragePathBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 2

    .line 752
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->getStoragePathBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUserAgent()Ljava/lang/String;
    .registers 2

    .line 686
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUserAgentBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 2

    .line 695
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->getUserAgentBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasBrotliEnabled()Z
    .registers 2

    .line 921
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->hasBrotliEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist hasBypassPublicKeyPinningForLocalTrustAnchors()Z
    .registers 2

    .line 1194
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->hasBypassPublicKeyPinningForLocalTrustAnchors()Z

    move-result v0

    return v0
.end method

.method public blacklist hasDisableCache()Z
    .registers 2

    .line 957
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->hasDisableCache()Z

    move-result v0

    return v0
.end method

.method public blacklist hasEnableNetworkQualityEstimator()Z
    .registers 2

    .line 1158
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->hasEnableNetworkQualityEstimator()Z

    move-result v0

    return v0
.end method

.method public blacklist hasExperimentalOptions()Z
    .registers 2

    .line 1065
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->hasExperimentalOptions()Z

    move-result v0

    return v0
.end method

.method public blacklist hasHttp2Enabled()Z
    .registers 2

    .line 885
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->hasHttp2Enabled()Z

    move-result v0

    return v0
.end method

.method public blacklist hasHttpCacheMaxSize()Z
    .registers 2

    .line 1029
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->hasHttpCacheMaxSize()Z

    move-result v0

    return v0
.end method

.method public blacklist hasHttpCacheMode()Z
    .registers 2

    .line 993
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->hasHttpCacheMode()Z

    move-result v0

    return v0
.end method

.method public blacklist hasMockCertVerifier()Z
    .registers 2

    .line 1122
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->hasMockCertVerifier()Z

    move-result v0

    return v0
.end method

.method public blacklist hasNetworkThreadPriority()Z
    .registers 2

    .line 1230
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->hasNetworkThreadPriority()Z

    move-result v0

    return v0
.end method

.method public blacklist hasQuicDefaultUserAgentId()Z
    .registers 2

    .line 828
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->hasQuicDefaultUserAgentId()Z

    move-result v0

    return v0
.end method

.method public blacklist hasQuicEnabled()Z
    .registers 2

    .line 792
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->hasQuicEnabled()Z

    move-result v0

    return v0
.end method

.method public blacklist hasStoragePath()Z
    .registers 2

    .line 735
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->hasStoragePath()Z

    move-result v0

    return v0
.end method

.method public blacklist hasUserAgent()Z
    .registers 2

    .line 678
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->hasUserAgent()Z

    move-result v0

    return v0
.end method

.method public blacklist setBrotliEnabled(Z)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 3
    .param p1, "value"    # Z

    .line 937
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 938
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$msetBrotliEnabled(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;Z)V

    .line 939
    return-object p0
.end method

.method public blacklist setBypassPublicKeyPinningForLocalTrustAnchors(Z)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 3
    .param p1, "value"    # Z

    .line 1210
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1211
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$msetBypassPublicKeyPinningForLocalTrustAnchors(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;Z)V

    .line 1212
    return-object p0
.end method

.method public blacklist setDisableCache(Z)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 3
    .param p1, "value"    # Z

    .line 973
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 974
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$msetDisableCache(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;Z)V

    .line 975
    return-object p0
.end method

.method public blacklist setEnableNetworkQualityEstimator(Z)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 3
    .param p1, "value"    # Z

    .line 1174
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1175
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$msetEnableNetworkQualityEstimator(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;Z)V

    .line 1176
    return-object p0
.end method

.method public blacklist setExperimentalOptions(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 1091
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1092
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$msetExperimentalOptions(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;Ljava/lang/String;)V

    .line 1093
    return-object p0
.end method

.method public blacklist setExperimentalOptionsBytes(Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 3
    .param p1, "value"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 1111
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1112
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$msetExperimentalOptionsBytes(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;Landroid/net/connectivity/com/google/protobuf/ByteString;)V

    .line 1113
    return-object p0
.end method

.method public blacklist setHttp2Enabled(Z)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 3
    .param p1, "value"    # Z

    .line 901
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 902
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$msetHttp2Enabled(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;Z)V

    .line 903
    return-object p0
.end method

.method public blacklist setHttpCacheMaxSize(J)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 4
    .param p1, "value"    # J

    .line 1045
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1046
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0, p1, p2}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$msetHttpCacheMaxSize(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;J)V

    .line 1047
    return-object p0
.end method

.method public blacklist setHttpCacheMode(I)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 3
    .param p1, "value"    # I

    .line 1009
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1010
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$msetHttpCacheMode(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;I)V

    .line 1011
    return-object p0
.end method

.method public blacklist setMockCertVerifier(J)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 4
    .param p1, "value"    # J

    .line 1138
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1139
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0, p1, p2}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$msetMockCertVerifier(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;J)V

    .line 1140
    return-object p0
.end method

.method public blacklist setNetworkThreadPriority(I)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 3
    .param p1, "value"    # I

    .line 1246
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 1247
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$msetNetworkThreadPriority(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;I)V

    .line 1248
    return-object p0
.end method

.method public blacklist setQuicDefaultUserAgentId(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 854
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 855
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$msetQuicDefaultUserAgentId(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;Ljava/lang/String;)V

    .line 856
    return-object p0
.end method

.method public blacklist setQuicDefaultUserAgentIdBytes(Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 3
    .param p1, "value"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 874
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 875
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$msetQuicDefaultUserAgentIdBytes(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;Landroid/net/connectivity/com/google/protobuf/ByteString;)V

    .line 876
    return-object p0
.end method

.method public blacklist setQuicEnabled(Z)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 3
    .param p1, "value"    # Z

    .line 808
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 809
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$msetQuicEnabled(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;Z)V

    .line 810
    return-object p0
.end method

.method public blacklist setStoragePath(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 761
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 762
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$msetStoragePath(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;Ljava/lang/String;)V

    .line 763
    return-object p0
.end method

.method public blacklist setStoragePathBytes(Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 3
    .param p1, "value"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 781
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 782
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$msetStoragePathBytes(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;Landroid/net/connectivity/com/google/protobuf/ByteString;)V

    .line 783
    return-object p0
.end method

.method public blacklist setUserAgent(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 3
    .param p1, "value"    # Ljava/lang/String;

    .line 704
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 705
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$msetUserAgent(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;Ljava/lang/String;)V

    .line 706
    return-object p0
.end method

.method public blacklist setUserAgentBytes(Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 3
    .param p1, "value"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 724
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->copyOnWrite()V

    .line 725
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;->instance:Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->-$$Nest$msetUserAgentBytes(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;Landroid/net/connectivity/com/google/protobuf/ByteString;)V

    .line 726
    return-object p0
.end method
