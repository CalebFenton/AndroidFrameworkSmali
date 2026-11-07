.class public abstract Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
.super Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
.source "CronetEngineBuilderImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;,
        Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$QuicHint;,
        Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$Pkp;,
        Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheSetting;
    }
.end annotation


# static fields
.field private static final blacklist INVALID_PKP_HOST_NAME:Ljava/util/regex/Pattern;

.field private static final blacklist INVALID_THREAD_PRIORITY:I = 0x14

.field static blacklist sApiLevel:I


# instance fields
.field private final blacklist mApplicationContext:Landroid/content/Context;

.field private blacklist mBrotiEnabled:Z

.field private blacklist mExperimentalOptions:Ljava/lang/String;

.field private blacklist mHttp2Enabled:Z

.field private blacklist mHttpCacheMaxSize:J

.field private blacklist mHttpCacheMode:Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

.field protected final blacklist mLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

.field protected blacklist mMockCertVerifier:J

.field private blacklist mNetworkQualityEstimatorEnabled:Z

.field private final blacklist mPkps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$Pkp;",
            ">;"
        }
    .end annotation
.end field

.field private blacklist mPublicKeyPinningBypassForLocalTrustAnchorsEnabled:Z

.field private blacklist mQuicEnabled:Z

.field private final blacklist mQuicHints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$QuicHint;",
            ">;"
        }
    .end annotation
.end field

.field private final blacklist mSource:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

.field private blacklist mStoragePath:Ljava/lang/String;

.field private blacklist mThreadPriority:I

.field private blacklist mUserAgent:Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 128
    const-string v0, "^[0-9\\.]*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->INVALID_PKP_HOST_NAME:Ljava/util/regex/Pattern;

    .line 133
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$ApiVersion;->getMaximumAvailableApiLevel()I

    move-result v0

    sput v0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->sApiLevel:I

    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;)V
    .registers 3
    .param p1, "context"    # Landroid/content/Context;

    .line 183
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->CRONET_SOURCE_UNSPECIFIED:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    invoke-direct {p0, p1, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;-><init>(Landroid/content/Context;Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;)V

    .line 184
    return-void
.end method

.method public constructor blacklist <init>(Landroid/content/Context;Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;)V
    .registers 10
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "source"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    .line 161
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;-><init>()V

    .line 140
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mQuicHints:Ljava/util/List;

    .line 141
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mPkps:Ljava/util/List;

    .line 154
    const/16 v0, 0x14

    iput v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mThreadPriority:I

    .line 162
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 163
    .local v0, "startUptimeMillis":J
    const/4 v2, 0x0

    .line 164
    .local v2, "successful":Z
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mApplicationContext:Landroid/content/Context;

    .line 165
    iput-object p2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mSource:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    .line 166
    iget-object v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mApplicationContext:Landroid/content/Context;

    iget-object v4, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mSource:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    invoke-static {v3, v4}, Landroid/net/connectivity/org/chromium/net/impl/CronetLoggerFactory;->createLogger(Landroid/content/Context;Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;)Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

    move-result-object v3

    iput-object v3, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

    .line 168
    const/4 v3, 0x1

    :try_start_2d
    invoke-virtual {p0, v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->enableQuic(Z)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;

    .line 169
    invoke-virtual {p0, v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->enableHttp2(Z)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;

    .line 170
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->enableBrotli(Z)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;

    .line 171
    const-wide/16 v5, 0x0

    invoke-virtual {p0, v4, v5, v6}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->enableHttpCache(IJ)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;

    .line 172
    invoke-virtual {p0, v4}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->enableNetworkQualityEstimator(Z)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;

    .line 173
    invoke-virtual {p0, v3}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->enablePublicKeyPinningBypassForLocalTrustAnchors(Z)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    :try_end_42
    .catchall {:try_start_2d .. :try_end_42} :catchall_48

    .line 175
    const/4 v2, 0x1

    .line 177
    invoke-direct {p0, v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->maybeLogCronetEngineBuilderInitializedInfo(JZ)V

    .line 178
    nop

    .line 179
    return-void

    .line 177
    :catchall_48
    move-exception v3

    invoke-direct {p0, v0, v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->maybeLogCronetEngineBuilderInitializedInfo(JZ)V

    .line 178
    throw v3
.end method

.method private blacklist maybeLogCronetEngineBuilderInitializedInfo(JZ)V
    .registers 8
    .param p1, "startUptimeMillis"    # J
    .param p3, "successful"    # Z

    .line 194
    sget v0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->sApiLevel:I

    const/16 v1, 0x1e

    if-lt v0, v1, :cond_7

    return-void

    .line 196
    :cond_7
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;

    invoke-direct {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;-><init>()V

    .line 197
    .local v0, "logInfo":Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->creationSuccessful:Ljava/lang/Boolean;

    .line 199
    :try_start_13
    sget-object v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;->IMPL:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    iput-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->author:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    .line 200
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v1

    iput v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->uid:I

    .line 201
    new-instance v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;

    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/ImplVersion;->getCronetVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->implVersion:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;

    .line 202
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mSource:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    iput-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->source:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    .line 203
    new-instance v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;

    .line 205
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$ApiVersion;->getCronetVersion()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;-><init>(Ljava/lang/String;)V

    iput-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->apiVersion:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;

    .line 206
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->getLogCronetInitializationRef()J

    move-result-wide v1

    iput-wide v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->cronetInitializationRef:J

    .line 207
    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->creationSuccessful:Ljava/lang/Boolean;
    :try_end_43
    .catchall {:try_start_13 .. :try_end_43} :catchall_53

    .line 209
    nop

    .line 210
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    sub-long/2addr v1, p1

    long-to-int v1, v1

    iput v1, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->engineBuilderCreatedLatencyMillis:I

    .line 211
    iget-object v1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

    invoke-virtual {v1, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;->logCronetEngineBuilderInitializedInfo(Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;)V

    .line 212
    nop

    .line 213
    return-void

    .line 209
    :catchall_53
    move-exception v1

    .line 210
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    sub-long/2addr v2, p1

    long-to-int v2, v2

    iput v2, v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->engineBuilderCreatedLatencyMillis:I

    .line 211
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mLogger:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;

    invoke-virtual {v2, v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;->logCronetEngineBuilderInitializedInfo(Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;)V

    .line 212
    throw v1
.end method

.method private static blacklist validateHostNameForPinningAndConvert(Ljava/lang/String;)Ljava/lang/String;
    .registers 5
    .param p0, "hostName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 434
    sget-object v0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->INVALID_PKP_HOST_NAME:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/regex/Matcher;->matches()Z

    move-result v0

    const-string v1, "Hostname "

    if-nez v0, :cond_57

    .line 442
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0xff

    if-gt v0, v2, :cond_3a

    .line 450
    const/4 v0, 0x2

    :try_start_17
    invoke-static {p0, v0}, Ljava/net/IDN;->toASCII(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0
    :try_end_1b
    .catch Ljava/lang/IllegalArgumentException; {:try_start_17 .. :try_end_1b} :catch_1c

    return-object v0

    .line 451
    :catch_1c
    move-exception v0

    .line 452
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " is illegal. The name of the host does not comply with RFC 1122 and RFC 1123."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 443
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_3a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is too long. The name of the host does not comply with RFC 1122 and RFC 1123."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 435
    :cond_57
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is illegal. A hostname should not consist of digits and/or dots only."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bridge synthetic blacklist addPublicKeyPins(Ljava/lang/String;Ljava/util/Set;ZLjava/util/Date;)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
    .registers 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null,
            null
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->addPublicKeyPins(Ljava/lang/String;Ljava/util/Set;ZLjava/util/Date;)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addPublicKeyPins(Ljava/lang/String;Ljava/util/Set;ZLjava/util/Date;)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .registers 11
    .param p1, "hostName"    # Ljava/lang/String;
    .param p3, "includeSubdomains"    # Z
    .param p4, "expirationDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "[B>;Z",
            "Ljava/util/Date;",
            ")",
            "Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;"
        }
    .end annotation

    .line 375
    .local p2, "pinsSha256":Ljava/util/Set;, "Ljava/util/Set<[B>;"
    const-string v0, "The hostname cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 376
    const-string v0, "The set of SHA256 pins cannot be null."

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 377
    const-string v0, "The pin expiration date cannot be null."

    invoke-static {p4, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 379
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->validateHostNameForPinningAndConvert(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    .local v0, "idnHostName":Ljava/lang/String;
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 382
    .local v1, "hashes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[B>;"
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1c
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_40

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 383
    .local v3, "pinSha256":[B
    if-eqz v3, :cond_38

    array-length v4, v3

    const/16 v5, 0x20

    if-ne v4, v5, :cond_38

    .line 386
    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v1, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 387
    .end local v3    # "pinSha256":[B
    goto :goto_1c

    .line 384
    .restart local v3    # "pinSha256":[B
    :cond_38
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v4, "Public key pin is invalid"

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 389
    .end local v3    # "pinSha256":[B
    :cond_40
    iget-object v2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mPkps:Ljava/util/List;

    new-instance v3, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$Pkp;

    .line 392
    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v5

    new-array v5, v5, [[B

    invoke-interface {v4, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[B

    invoke-direct {v3, v0, v4, p3, p4}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$Pkp;-><init>(Ljava/lang/String;[[BZLjava/util/Date;)V

    .line 389
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 395
    return-object p0
.end method

.method public bridge synthetic blacklist addQuicHint(Ljava/lang/String;II)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000,
            0x1000
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->addQuicHint(Ljava/lang/String;II)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist addQuicHint(Ljava/lang/String;II)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .registers 7
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .param p3, "alternatePort"    # I

    .line 358
    const-string v0, "/"

    invoke-virtual {p1, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_13

    .line 361
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mQuicHints:Ljava/util/List;

    new-instance v1, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$QuicHint;

    invoke-direct {v1, p1, p2, p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$QuicHint;-><init>(Ljava/lang/String;II)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 362
    return-object p0

    .line 359
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal QUIC Hint Host: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method blacklist brotliEnabled()Z
    .registers 2

    .line 312
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mBrotiEnabled:Z

    return v0
.end method

.method blacklist cacheDisabled()Z
    .registers 2

    .line 339
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mHttpCacheMode:Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->isContentCacheEnabled()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public bridge synthetic blacklist enableBrotli(Z)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->enableBrotli(Z)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist enableBrotli(Z)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 306
    iput-boolean p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mBrotiEnabled:Z

    .line 307
    return-object p0
.end method

.method public bridge synthetic blacklist enableHttp2(Z)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->enableHttp2(Z)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist enableHttp2(Z)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 290
    iput-boolean p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mHttp2Enabled:Z

    .line 291
    return-object p0
.end method

.method public bridge synthetic blacklist enableHttpCache(IJ)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1, p2, p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->enableHttpCache(IJ)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist enableHttpCache(IJ)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .registers 7
    .param p1, "cacheMode"    # I
    .param p2, "maxSize"    # J

    .line 326
    invoke-static {p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->fromPublicBuilderCacheMode(I)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    move-result-object v0

    .line 328
    .local v0, "cacheModeEnum":Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->getType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_1a

    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->storagePath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_12

    goto :goto_1a

    .line 329
    :cond_12
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Storage path must be set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 332
    :cond_1a
    :goto_1a
    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mHttpCacheMode:Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    .line 333
    iput-wide p2, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mHttpCacheMaxSize:J

    .line 335
    return-object p0
.end method

.method public bridge synthetic blacklist enableNetworkQualityEstimator(Z)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->enableNetworkQualityEstimator(Z)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist enableNetworkQualityEstimator(Z)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 497
    iput-boolean p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mNetworkQualityEstimatorEnabled:Z

    .line 498
    return-object p0
.end method

.method public bridge synthetic blacklist enablePublicKeyPinningBypassForLocalTrustAnchors(Z)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->enablePublicKeyPinningBypassForLocalTrustAnchors(Z)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist enablePublicKeyPinningBypassForLocalTrustAnchors(Z)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 408
    iput-boolean p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mPublicKeyPinningBypassForLocalTrustAnchorsEnabled:Z

    .line 409
    return-object p0
.end method

.method public bridge synthetic blacklist enableQuic(Z)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->enableQuic(Z)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist enableQuic(Z)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 269
    iput-boolean p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mQuicEnabled:Z

    .line 270
    return-object p0
.end method

.method public bridge synthetic blacklist enableSdch(Z)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->enableSdch(Z)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist enableSdch(Z)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .registers 2
    .param p1, "value"    # Z

    .line 301
    return-object p0
.end method

.method public blacklist experimentalOptions()Ljava/lang/String;
    .registers 2

    .line 467
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mExperimentalOptions:Ljava/lang/String;

    return-object v0
.end method

.method blacklist getContext()Landroid/content/Context;
    .registers 2

    .line 529
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mApplicationContext:Landroid/content/Context;

    return-object v0
.end method

.method blacklist getCronetSource()Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;
    .registers 2

    .line 216
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mSource:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    return-object v0
.end method

.method blacklist getDefaultQuicUserAgentId()Ljava/lang/String;
    .registers 2

    .line 285
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mQuicEnabled:Z

    if-eqz v0, :cond_9

    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/UserAgent;->getDefaultQuicUserAgentId()Ljava/lang/String;

    move-result-object v0

    goto :goto_b

    :cond_9
    const-string v0, ""

    :goto_b
    return-object v0
.end method

.method public blacklist getDefaultUserAgent()Ljava/lang/String;
    .registers 2

    .line 221
    invoke-static {}, Landroid/net/connectivity/org/chromium/net/impl/UserAgent;->getDefault()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected blacklist getLogCronetInitializationRef()J
    .registers 3

    .line 512
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method blacklist getUserAgent()Ljava/lang/String;
    .registers 2

    .line 232
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mUserAgent:Ljava/lang/String;

    return-object v0
.end method

.method blacklist http2Enabled()Z
    .registers 2

    .line 296
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mHttp2Enabled:Z

    return v0
.end method

.method blacklist httpCacheMaxSize()J
    .registers 3

    .line 343
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mHttpCacheMaxSize:J

    return-wide v0
.end method

.method blacklist httpCacheMode()I
    .registers 2

    .line 348
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mHttpCacheMode:Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->getType()I

    move-result v0

    return v0
.end method

.method blacklist libraryLoader()Landroid/net/connectivity/org/chromium/net/impl/VersionSafeCallbacks$LibraryLoader;
    .registers 2

    .line 264
    const/4 v0, 0x0

    return-object v0
.end method

.method blacklist mockCertVerifier()J
    .registers 3

    .line 483
    iget-wide v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mMockCertVerifier:J

    return-wide v0
.end method

.method blacklist networkQualityEstimatorEnabled()Z
    .registers 2

    .line 492
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mNetworkQualityEstimatorEnabled:Z

    return v0
.end method

.method blacklist publicBuilderHttpCacheMode()I
    .registers 2

    .line 353
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mHttpCacheMode:Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$HttpCacheMode;->toPublicBuilderCacheMode()I

    move-result v0

    return v0
.end method

.method blacklist publicKeyPinningBypassForLocalTrustAnchorsEnabled()Z
    .registers 2

    .line 414
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mPublicKeyPinningBypassForLocalTrustAnchorsEnabled:Z

    return v0
.end method

.method blacklist publicKeyPins()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$Pkp;",
            ">;"
        }
    .end annotation

    .line 403
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mPkps:Ljava/util/List;

    return-object v0
.end method

.method blacklist quicEnabled()Z
    .registers 2

    .line 275
    iget-boolean v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mQuicEnabled:Z

    return v0
.end method

.method blacklist quicHints()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl$QuicHint;",
            ">;"
        }
    .end annotation

    .line 366
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mQuicHints:Ljava/util/List;

    return-object v0
.end method

.method public bridge synthetic blacklist setExperimentalOptions(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->setExperimentalOptions(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setExperimentalOptions(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .registers 2
    .param p1, "options"    # Ljava/lang/String;

    .line 462
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mExperimentalOptions:Ljava/lang/String;

    .line 463
    return-object p0
.end method

.method public bridge synthetic blacklist setLibraryLoader(Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$LibraryLoader;)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->setLibraryLoader(Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$LibraryLoader;)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setLibraryLoader(Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$LibraryLoader;)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .registers 2
    .param p1, "loader"    # Landroid/net/connectivity/org/chromium/net/CronetEngine$Builder$LibraryLoader;

    .line 255
    return-object p0
.end method

.method public blacklist setMockCertVerifierForTesting(J)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .registers 3
    .param p1, "mockCertVerifier"    # J

    .line 478
    iput-wide p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mMockCertVerifier:J

    .line 479
    return-object p0
.end method

.method public bridge synthetic blacklist setStoragePath(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->setStoragePath(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setStoragePath(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .registers 4
    .param p1, "value"    # Ljava/lang/String;

    .line 237
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 240
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mStoragePath:Ljava/lang/String;

    .line 241
    return-object p0

    .line 238
    :cond_e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Storage path must be set to existing directory"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic blacklist setThreadPriority(I)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->setThreadPriority(I)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setThreadPriority(I)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .registers 4
    .param p1, "priority"    # I

    .line 503
    const/16 v0, 0x13

    if-gt p1, v0, :cond_b

    const/16 v0, -0x14

    if-lt p1, v0, :cond_b

    .line 506
    iput p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mThreadPriority:I

    .line 507
    return-object p0

    .line 504
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Thread priority invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic blacklist setUserAgent(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/ICronetEngineBuilder;
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 35
    invoke-virtual {p0, p1}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->setUserAgent(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;

    move-result-object p1

    return-object p1
.end method

.method public blacklist setUserAgent(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;
    .registers 2
    .param p1, "userAgent"    # Ljava/lang/String;

    .line 226
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mUserAgent:Ljava/lang/String;

    .line 227
    return-object p0
.end method

.method blacklist storagePath()Ljava/lang/String;
    .registers 2

    .line 246
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mStoragePath:Ljava/lang/String;

    return-object v0
.end method

.method blacklist threadPriority(I)I
    .registers 4
    .param p1, "defaultThreadPriority"    # I

    .line 520
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mThreadPriority:I

    const/16 v1, 0x14

    if-ne v0, v1, :cond_8

    move v0, p1

    goto :goto_a

    :cond_8
    iget v0, p0, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->mThreadPriority:I

    :goto_a
    return v0
.end method

.method blacklist toLoggerInfo()Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;
    .registers 14

    .line 533
    new-instance v0, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;

    .line 534
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->publicKeyPinningBypassForLocalTrustAnchorsEnabled()Z

    move-result v1

    .line 535
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    .line 536
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->storagePath()Ljava/lang/String;

    move-result-object v3

    .line 537
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->quicEnabled()Z

    move-result v4

    .line 538
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->http2Enabled()Z

    move-result v5

    .line 539
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->brotliEnabled()Z

    move-result v6

    .line 540
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->publicBuilderHttpCacheMode()I

    move-result v7

    .line 541
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->experimentalOptions()Ljava/lang/String;

    move-result-object v8

    .line 542
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->networkQualityEstimatorEnabled()Z

    move-result v9

    .line 543
    const/16 v10, 0xa

    invoke-virtual {p0, v10}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->threadPriority(I)I

    move-result v10

    .line 544
    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetEngineBuilderImpl;->getLogCronetInitializationRef()J

    move-result-wide v11

    invoke-direct/range {v0 .. v12}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;-><init>(ZLjava/lang/String;Ljava/lang/String;ZZZILjava/lang/String;ZIJ)V

    .line 533
    return-object v0
.end method
