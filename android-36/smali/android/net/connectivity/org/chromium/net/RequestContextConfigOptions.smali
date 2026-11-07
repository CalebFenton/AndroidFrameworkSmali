.class public final Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;
.super Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;
.source "RequestContextConfigOptions.java"

# interfaces
.implements Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptionsOrBuilder;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite<",
        "Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;",
        "Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;",
        ">;",
        "Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptionsOrBuilder;"
    }
.end annotation


# static fields
.field public static final blacklist BROTLI_ENABLED_FIELD_NUMBER:I = 0x6

.field public static final blacklist BYPASS_PUBLIC_KEY_PINNING_FOR_LOCAL_TRUST_ANCHORS_FIELD_NUMBER:I = 0xd

.field private static final blacklist DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

.field public static final blacklist DISABLE_CACHE_FIELD_NUMBER:I = 0x7

.field public static final blacklist ENABLE_NETWORK_QUALITY_ESTIMATOR_FIELD_NUMBER:I = 0xc

.field public static final blacklist EXPERIMENTAL_OPTIONS_FIELD_NUMBER:I = 0xa

.field public static final blacklist HTTP2_ENABLED_FIELD_NUMBER:I = 0x5

.field public static final blacklist HTTP_CACHE_MAX_SIZE_FIELD_NUMBER:I = 0x9

.field public static final blacklist HTTP_CACHE_MODE_FIELD_NUMBER:I = 0x8

.field public static final blacklist MOCK_CERT_VERIFIER_FIELD_NUMBER:I = 0xb

.field public static final blacklist NETWORK_THREAD_PRIORITY_FIELD_NUMBER:I = 0xe

.field private static volatile blacklist PARSER:Landroid/net/connectivity/com/google/protobuf/Parser; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/net/connectivity/com/google/protobuf/Parser<",
            "Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final blacklist QUIC_DEFAULT_USER_AGENT_ID_FIELD_NUMBER:I = 0x4

.field public static final blacklist QUIC_ENABLED_FIELD_NUMBER:I = 0x3

.field public static final blacklist STORAGE_PATH_FIELD_NUMBER:I = 0x2

.field public static final blacklist USER_AGENT_FIELD_NUMBER:I = 0x1


# instance fields
.field private blacklist bitField0_:I

.field private blacklist brotliEnabled_:Z

.field private blacklist bypassPublicKeyPinningForLocalTrustAnchors_:Z

.field private blacklist disableCache_:Z

.field private blacklist enableNetworkQualityEstimator_:Z

.field private blacklist experimentalOptions_:Ljava/lang/String;

.field private blacklist http2Enabled_:Z

.field private blacklist httpCacheMaxSize_:J

.field private blacklist httpCacheMode_:I

.field private blacklist mockCertVerifier_:J

.field private blacklist networkThreadPriority_:I

.field private blacklist quicDefaultUserAgentId_:Ljava/lang/String;

.field private blacklist quicEnabled_:Z

.field private blacklist storagePath_:Ljava/lang/String;

.field private blacklist userAgent_:Ljava/lang/String;


# direct methods
.method static bridge synthetic blacklist -$$Nest$mclearBrotliEnabled(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->clearBrotliEnabled()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearBypassPublicKeyPinningForLocalTrustAnchors(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->clearBypassPublicKeyPinningForLocalTrustAnchors()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearDisableCache(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->clearDisableCache()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearEnableNetworkQualityEstimator(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->clearEnableNetworkQualityEstimator()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearExperimentalOptions(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->clearExperimentalOptions()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearHttp2Enabled(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->clearHttp2Enabled()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearHttpCacheMaxSize(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->clearHttpCacheMaxSize()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearHttpCacheMode(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->clearHttpCacheMode()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearMockCertVerifier(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->clearMockCertVerifier()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearNetworkThreadPriority(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->clearNetworkThreadPriority()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearQuicDefaultUserAgentId(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->clearQuicDefaultUserAgentId()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearQuicEnabled(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->clearQuicEnabled()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearStoragePath(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->clearStoragePath()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$mclearUserAgent(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;)V
    .registers 1

    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->clearUserAgent()V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetBrotliEnabled(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->setBrotliEnabled(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetBypassPublicKeyPinningForLocalTrustAnchors(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->setBypassPublicKeyPinningForLocalTrustAnchors(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetDisableCache(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->setDisableCache(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetEnableNetworkQualityEstimator(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->setEnableNetworkQualityEstimator(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetExperimentalOptions(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->setExperimentalOptions(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetExperimentalOptionsBytes(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;Landroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->setExperimentalOptionsBytes(Landroid/net/connectivity/com/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetHttp2Enabled(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->setHttp2Enabled(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetHttpCacheMaxSize(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->setHttpCacheMaxSize(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetHttpCacheMode(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->setHttpCacheMode(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetMockCertVerifier(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->setMockCertVerifier(J)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetNetworkThreadPriority(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;I)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->setNetworkThreadPriority(I)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetQuicDefaultUserAgentId(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->setQuicDefaultUserAgentId(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetQuicDefaultUserAgentIdBytes(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;Landroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->setQuicDefaultUserAgentIdBytes(Landroid/net/connectivity/com/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetQuicEnabled(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;Z)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->setQuicEnabled(Z)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetStoragePath(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->setStoragePath(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetStoragePathBytes(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;Landroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->setStoragePathBytes(Landroid/net/connectivity/com/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetUserAgent(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->setUserAgent(Ljava/lang/String;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$msetUserAgentBytes(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;Landroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->setUserAgentBytes(Landroid/net/connectivity/com/google/protobuf/ByteString;)V

    return-void
.end method

.method static bridge synthetic blacklist -$$Nest$sfgetDEFAULT_INSTANCE()Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;
    .registers 1

    sget-object v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    return-object v0
.end method

.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1332
    new-instance v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;-><init>()V

    .line 1335
    .local v0, "defaultInstance":Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;
    sput-object v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    .line 1336
    const-class v1, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v1, v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->registerDefaultInstance(Ljava/lang/Class;Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)V

    .line 1338
    .end local v0    # "defaultInstance":Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;
    return-void
.end method

.method private constructor blacklist <init>()V
    .registers 2

    .line 14
    invoke-direct {p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;-><init>()V

    .line 15
    const-string v0, ""

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->userAgent_:Ljava/lang/String;

    .line 16
    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->storagePath_:Ljava/lang/String;

    .line 17
    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->quicDefaultUserAgentId_:Ljava/lang/String;

    .line 18
    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->experimentalOptions_:Ljava/lang/String;

    .line 19
    return-void
.end method

.method private blacklist clearBrotliEnabled()V
    .registers 2

    .line 281
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 282
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->brotliEnabled_:Z

    .line 283
    return-void
.end method

.method private blacklist clearBypassPublicKeyPinningForLocalTrustAnchors()V
    .registers 2

    .line 539
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x1001

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 540
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bypassPublicKeyPinningForLocalTrustAnchors_:Z

    .line 541
    return-void
.end method

.method private blacklist clearDisableCache()V
    .registers 2

    .line 315
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x41

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 316
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->disableCache_:Z

    .line 317
    return-void
.end method

.method private blacklist clearEnableNetworkQualityEstimator()V
    .registers 2

    .line 505
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x801

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 506
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->enableNetworkQualityEstimator_:Z

    .line 507
    return-void
.end method

.method private blacklist clearExperimentalOptions()V
    .registers 2

    .line 428
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x201

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 429
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->getDefaultInstance()Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->getExperimentalOptions()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->experimentalOptions_:Ljava/lang/String;

    .line 430
    return-void
.end method

.method private blacklist clearHttp2Enabled()V
    .registers 2

    .line 247
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 248
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->http2Enabled_:Z

    .line 249
    return-void
.end method

.method private blacklist clearHttpCacheMaxSize()V
    .registers 3

    .line 383
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 384
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->httpCacheMaxSize_:J

    .line 385
    return-void
.end method

.method private blacklist clearHttpCacheMode()V
    .registers 2

    .line 349
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 350
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->httpCacheMode_:I

    .line 351
    return-void
.end method

.method private blacklist clearMockCertVerifier()V
    .registers 3

    .line 471
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 472
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->mockCertVerifier_:J

    .line 473
    return-void
.end method

.method private blacklist clearNetworkThreadPriority()V
    .registers 2

    .line 573
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    and-int/lit16 v0, v0, -0x2001

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 574
    const/4 v0, 0x0

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->networkThreadPriority_:I

    .line 575
    return-void
.end method

.method private blacklist clearQuicDefaultUserAgentId()V
    .registers 2

    .line 204
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x9

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 205
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->getDefaultInstance()Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->getQuicDefaultUserAgentId()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->quicDefaultUserAgentId_:Ljava/lang/String;

    .line 206
    return-void
.end method

.method private blacklist clearQuicEnabled()V
    .registers 2

    .line 159
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x5

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 160
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->quicEnabled_:Z

    .line 161
    return-void
.end method

.method private blacklist clearStoragePath()V
    .registers 2

    .line 116
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x3

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 117
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->getDefaultInstance()Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->getStoragePath()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->storagePath_:Ljava/lang/String;

    .line 118
    return-void
.end method

.method private blacklist clearUserAgent()V
    .registers 2

    .line 62
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    and-int/lit8 v0, v0, -0x2

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 63
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->getDefaultInstance()Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->getUserAgent()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->userAgent_:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public static blacklist getDefaultInstance()Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;
    .registers 1

    .line 1341
    sget-object v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    return-object v0
.end method

.method public static blacklist newBuilder()Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 1

    .line 652
    sget-object v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->createBuilder()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;

    return-object v0
.end method

.method public static blacklist newBuilder(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;
    .registers 2
    .param p0, "prototype"    # Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    .line 655
    sget-object v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0, p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->createBuilder(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;

    return-object v0
.end method

.method public static blacklist parseDelimitedFrom(Ljava/io/InputStream;)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 629
    sget-object v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0, p0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->parseDelimitedFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    return-object v0
.end method

.method public static blacklist parseDelimitedFrom(Ljava/io/InputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 635
    sget-object v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->parseDelimitedFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;
    .registers 2
    .param p0, "data"    # Landroid/net/connectivity/com/google/protobuf/ByteString;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 593
    sget-object v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0, p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Landroid/net/connectivity/com/google/protobuf/ByteString;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;
    .registers 3
    .param p0, "data"    # Landroid/net/connectivity/com/google/protobuf/ByteString;
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 600
    sget-object v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Landroid/net/connectivity/com/google/protobuf/ByteString;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;
    .registers 2
    .param p0, "input"    # Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 640
    sget-object v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0, p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Landroid/net/connectivity/com/google/protobuf/CodedInputStream;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    return-object v0
.end method

.method public static blacklist parseFrom(Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;
    .registers 3
    .param p0, "input"    # Landroid/net/connectivity/com/google/protobuf/CodedInputStream;
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 647
    sget-object v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Landroid/net/connectivity/com/google/protobuf/CodedInputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/io/InputStream;)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;
    .registers 2
    .param p0, "input"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 617
    sget-object v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0, p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/io/InputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;
    .registers 3
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 624
    sget-object v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/io/InputStream;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/nio/ByteBuffer;)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;
    .registers 2
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 580
    sget-object v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0, p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    return-object v0
.end method

.method public static blacklist parseFrom(Ljava/nio/ByteBuffer;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;
    .registers 3
    .param p0, "data"    # Ljava/nio/ByteBuffer;
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 587
    sget-object v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;Ljava/nio/ByteBuffer;Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    return-object v0
.end method

.method public static blacklist parseFrom([B)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;
    .registers 2
    .param p0, "data"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 605
    sget-object v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0, p0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;[B)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    return-object v0
.end method

.method public static blacklist parseFrom([BLandroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;
    .registers 3
    .param p0, "data"    # [B
    .param p1, "extensionRegistry"    # Landroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/net/connectivity/com/google/protobuf/InvalidProtocolBufferException;
        }
    .end annotation

    .line 612
    sget-object v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v0, p0, p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->parseFrom(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;[BLandroid/net/connectivity/com/google/protobuf/ExtensionRegistryLite;)Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    return-object v0
.end method

.method public static blacklist parser()Landroid/net/connectivity/com/google/protobuf/Parser;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/net/connectivity/com/google/protobuf/Parser<",
            "Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;",
            ">;"
        }
    .end annotation

    .line 1347
    sget-object v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->getParserForType()Landroid/net/connectivity/com/google/protobuf/Parser;

    move-result-object v0

    return-object v0
.end method

.method private blacklist setBrotliEnabled(Z)V
    .registers 3
    .param p1, "value"    # Z

    .line 274
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 275
    iput-boolean p1, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->brotliEnabled_:Z

    .line 276
    return-void
.end method

.method private blacklist setBypassPublicKeyPinningForLocalTrustAnchors(Z)V
    .registers 3
    .param p1, "value"    # Z

    .line 532
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 533
    iput-boolean p1, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bypassPublicKeyPinningForLocalTrustAnchors_:Z

    .line 534
    return-void
.end method

.method private blacklist setDisableCache(Z)V
    .registers 3
    .param p1, "value"    # Z

    .line 308
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 309
    iput-boolean p1, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->disableCache_:Z

    .line 310
    return-void
.end method

.method private blacklist setEnableNetworkQualityEstimator(Z)V
    .registers 3
    .param p1, "value"    # Z

    .line 498
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 499
    iput-boolean p1, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->enableNetworkQualityEstimator_:Z

    .line 500
    return-void
.end method

.method private blacklist setExperimentalOptions(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 420
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 421
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v1, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    or-int/lit16 v1, v1, 0x200

    iput v1, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 422
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->experimentalOptions_:Ljava/lang/String;

    .line 423
    return-void
.end method

.method private blacklist setExperimentalOptionsBytes(Landroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 3
    .param p1, "value"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 437
    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->experimentalOptions_:Ljava/lang/String;

    .line 438
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 439
    return-void
.end method

.method private blacklist setHttp2Enabled(Z)V
    .registers 3
    .param p1, "value"    # Z

    .line 240
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 241
    iput-boolean p1, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->http2Enabled_:Z

    .line 242
    return-void
.end method

.method private blacklist setHttpCacheMaxSize(J)V
    .registers 4
    .param p1, "value"    # J

    .line 376
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 377
    iput-wide p1, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->httpCacheMaxSize_:J

    .line 378
    return-void
.end method

.method private blacklist setHttpCacheMode(I)V
    .registers 3
    .param p1, "value"    # I

    .line 342
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 343
    iput p1, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->httpCacheMode_:I

    .line 344
    return-void
.end method

.method private blacklist setMockCertVerifier(J)V
    .registers 4
    .param p1, "value"    # J

    .line 464
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 465
    iput-wide p1, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->mockCertVerifier_:J

    .line 466
    return-void
.end method

.method private blacklist setNetworkThreadPriority(I)V
    .registers 3
    .param p1, "value"    # I

    .line 566
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 567
    iput p1, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->networkThreadPriority_:I

    .line 568
    return-void
.end method

.method private blacklist setQuicDefaultUserAgentId(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 196
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 197
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v1, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    or-int/lit8 v1, v1, 0x8

    iput v1, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 198
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->quicDefaultUserAgentId_:Ljava/lang/String;

    .line 199
    return-void
.end method

.method private blacklist setQuicDefaultUserAgentIdBytes(Landroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 3
    .param p1, "value"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 213
    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->quicDefaultUserAgentId_:Ljava/lang/String;

    .line 214
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 215
    return-void
.end method

.method private blacklist setQuicEnabled(Z)V
    .registers 3
    .param p1, "value"    # Z

    .line 152
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 153
    iput-boolean p1, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->quicEnabled_:Z

    .line 154
    return-void
.end method

.method private blacklist setStoragePath(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 109
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v1, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    or-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 110
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->storagePath_:Ljava/lang/String;

    .line 111
    return-void
.end method

.method private blacklist setStoragePathBytes(Landroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 3
    .param p1, "value"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 125
    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->storagePath_:Ljava/lang/String;

    .line 126
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 127
    return-void
.end method

.method private blacklist setUserAgent(Ljava/lang/String;)V
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 54
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 55
    .local v0, "valueClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    iget v1, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    or-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 56
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->userAgent_:Ljava/lang/String;

    .line 57
    return-void
.end method

.method private blacklist setUserAgentBytes(Landroid/net/connectivity/com/google/protobuf/ByteString;)V
    .registers 3
    .param p1, "value"    # Landroid/net/connectivity/com/google/protobuf/ByteString;

    .line 71
    invoke-virtual {p1}, Landroid/net/connectivity/com/google/protobuf/ByteString;->toStringUtf8()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->userAgent_:Ljava/lang/String;

    .line 72
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    .line 73
    return-void
.end method


# virtual methods
.method protected final blacklist dynamicMethod(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$MethodToInvoke;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .registers 20
    .param p1, "method"    # Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$MethodToInvoke;
    .param p2, "arg0"    # Ljava/lang/Object;
    .param p3, "arg1"    # Ljava/lang/Object;

    .line 1267
    sget-object v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$1;->$SwitchMap$com$google$protobuf$GeneratedMessageLite$MethodToInvoke:[I

    invoke-virtual/range {p1 .. p1}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$MethodToInvoke;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_70

    .line 1325
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1322
    :pswitch_12
    return-object v1

    .line 1319
    :pswitch_13
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v0

    return-object v0

    .line 1304
    :pswitch_19
    sget-object v1, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->PARSER:Landroid/net/connectivity/com/google/protobuf/Parser;

    .line 1305
    .local v1, "parser":Landroid/net/connectivity/com/google/protobuf/Parser;, "Landroid/net/connectivity/com/google/protobuf/Parser<Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;>;"
    if-nez v1, :cond_34

    .line 1306
    const-class v2, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    monitor-enter v2

    .line 1307
    :try_start_20
    sget-object v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->PARSER:Landroid/net/connectivity/com/google/protobuf/Parser;

    move-object v1, v0

    .line 1308
    if-nez v1, :cond_2f

    .line 1309
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;

    sget-object v3, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-direct {v0, v3}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite$DefaultInstanceBasedParser;-><init>(Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;)V

    move-object v1, v0

    .line 1312
    sput-object v1, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->PARSER:Landroid/net/connectivity/com/google/protobuf/Parser;

    .line 1314
    :cond_2f
    monitor-exit v2

    goto :goto_34

    :catchall_31
    move-exception v0

    monitor-exit v2
    :try_end_33
    .catchall {:try_start_20 .. :try_end_33} :catchall_31

    throw v0

    .line 1316
    :cond_34
    :goto_34
    return-object v1

    .line 1301
    .end local v1    # "parser":Landroid/net/connectivity/com/google/protobuf/Parser;, "Landroid/net/connectivity/com/google/protobuf/Parser<Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;>;"
    :pswitch_35
    sget-object v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    return-object v0

    .line 1275
    :pswitch_38
    const-string v1, "bitField0_"

    const-string v2, "userAgent_"

    const-string v3, "storagePath_"

    const-string v4, "quicEnabled_"

    const-string v5, "quicDefaultUserAgentId_"

    const-string v6, "http2Enabled_"

    const-string v7, "brotliEnabled_"

    const-string v8, "disableCache_"

    const-string v9, "httpCacheMode_"

    const-string v10, "httpCacheMaxSize_"

    const-string v11, "experimentalOptions_"

    const-string v12, "mockCertVerifier_"

    const-string v13, "enableNetworkQualityEstimator_"

    const-string v14, "bypassPublicKeyPinningForLocalTrustAnchors_"

    const-string v15, "networkThreadPriority_"

    filled-new-array/range {v1 .. v15}, [Ljava/lang/Object;

    move-result-object v0

    .line 1292
    .local v0, "objects":[Ljava/lang/Object;
    const-string v1, "\u0001\u000e\u0000\u0001\u0001\u000e\u000e\u0000\u0000\u0000\u0001\u1008\u0000\u0002\u1008\u0001\u0003\u1007\u0002\u0004\u1008\u0003\u0005\u1007\u0004\u0006\u1007\u0005\u0007\u1007\u0006\u0008\u1004\u0007\t\u1002\u0008\n\u1008\t\u000b\u1002\n\u000c\u1007\u000b\r\u1007\u000c\u000e\u1004\r"

    .line 1297
    .local v1, "info":Ljava/lang/String;
    sget-object v2, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->DEFAULT_INSTANCE:Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-static {v2, v1, v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->newMessageInfo(Landroid/net/connectivity/com/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1272
    .end local v0    # "objects":[Ljava/lang/Object;
    .end local v1    # "info":Ljava/lang/String;
    :pswitch_63
    new-instance v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;

    invoke-direct {v0, v1}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions$Builder;-><init>(Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions-IA;)V

    return-object v0

    .line 1269
    :pswitch_69
    new-instance v0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;-><init>()V

    return-object v0

    nop

    :pswitch_data_70
    .packed-switch 0x1
        :pswitch_69
        :pswitch_63
        :pswitch_38
        :pswitch_35
        :pswitch_19
        :pswitch_13
        :pswitch_12
    .end packed-switch
.end method

.method public blacklist getBrotliEnabled()Z
    .registers 2

    .line 267
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->brotliEnabled_:Z

    return v0
.end method

.method public blacklist getBypassPublicKeyPinningForLocalTrustAnchors()Z
    .registers 2

    .line 525
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bypassPublicKeyPinningForLocalTrustAnchors_:Z

    return v0
.end method

.method public blacklist getDisableCache()Z
    .registers 2

    .line 301
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->disableCache_:Z

    return v0
.end method

.method public blacklist getEnableNetworkQualityEstimator()Z
    .registers 2

    .line 491
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->enableNetworkQualityEstimator_:Z

    return v0
.end method

.method public blacklist getExperimentalOptions()Ljava/lang/String;
    .registers 2

    .line 403
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->experimentalOptions_:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getExperimentalOptionsBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 2

    .line 412
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->experimentalOptions_:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getHttp2Enabled()Z
    .registers 2

    .line 233
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->http2Enabled_:Z

    return v0
.end method

.method public blacklist getHttpCacheMaxSize()J
    .registers 3

    .line 369
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->httpCacheMaxSize_:J

    return-wide v0
.end method

.method public blacklist getHttpCacheMode()I
    .registers 2

    .line 335
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->httpCacheMode_:I

    return v0
.end method

.method public blacklist getMockCertVerifier()J
    .registers 3

    .line 457
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->mockCertVerifier_:J

    return-wide v0
.end method

.method public blacklist getNetworkThreadPriority()I
    .registers 2

    .line 559
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->networkThreadPriority_:I

    return v0
.end method

.method public blacklist getQuicDefaultUserAgentId()Ljava/lang/String;
    .registers 2

    .line 179
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->quicDefaultUserAgentId_:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getQuicDefaultUserAgentIdBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 2

    .line 188
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->quicDefaultUserAgentId_:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getQuicEnabled()Z
    .registers 2

    .line 145
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->quicEnabled_:Z

    return v0
.end method

.method public blacklist getStoragePath()Ljava/lang/String;
    .registers 2

    .line 91
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->storagePath_:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getStoragePathBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 2

    .line 100
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->storagePath_:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist getUserAgent()Ljava/lang/String;
    .registers 2

    .line 37
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->userAgent_:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getUserAgentBytes()Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 2

    .line 46
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->userAgent_:Ljava/lang/String;

    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/ByteString;->copyFromUtf8(Ljava/lang/String;)Landroid/net/connectivity/com/google/protobuf/ByteString;

    move-result-object v0

    return-object v0
.end method

.method public blacklist hasBrotliEnabled()Z
    .registers 2

    .line 259
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasBypassPublicKeyPinningForLocalTrustAnchors()Z
    .registers 2

    .line 517
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x1000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasDisableCache()Z
    .registers 2

    .line 293
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasEnableNetworkQualityEstimator()Z
    .registers 2

    .line 483
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x800

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasExperimentalOptions()Z
    .registers 2

    .line 395
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x200

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasHttp2Enabled()Z
    .registers 2

    .line 225
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasHttpCacheMaxSize()Z
    .registers 2

    .line 361
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasHttpCacheMode()Z
    .registers 2

    .line 327
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasMockCertVerifier()Z
    .registers 2

    .line 449
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x400

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasNetworkThreadPriority()Z
    .registers 2

    .line 551
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    and-int/lit16 v0, v0, 0x2000

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasQuicDefaultUserAgentId()Z
    .registers 2

    .line 171
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasQuicEnabled()Z
    .registers 2

    .line 137
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasStoragePath()Z
    .registers 2

    .line 83
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public blacklist hasUserAgent()Z
    .registers 3

    .line 29
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/RequestContextConfigOptions;->bitField0_:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_7

    goto :goto_8

    :cond_7
    const/4 v1, 0x0

    :goto_8
    return v1
.end method
