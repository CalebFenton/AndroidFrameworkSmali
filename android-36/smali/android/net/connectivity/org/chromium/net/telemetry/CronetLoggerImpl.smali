.class public Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;
.super Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;
.source "CronetLoggerImpl.java"


# static fields
.field private static final blacklist TAG:Ljava/lang/String;


# instance fields
.field private final blacklist mRateLimiter:Landroid/net/connectivity/org/chromium/net/telemetry/RateLimiter;

.field private final blacklist mSamplesRateLimited:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 24
    const-class v0, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor blacklist <init>(I)V
    .registers 3
    .param p1, "sampleRatePerSecond"    # I

    .line 30
    new-instance v0, Landroid/net/connectivity/org/chromium/net/telemetry/RateLimiter;

    invoke-direct {v0, p1}, Landroid/net/connectivity/org/chromium/net/telemetry/RateLimiter;-><init>(I)V

    invoke-direct {p0, v0}, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;-><init>(Landroid/net/connectivity/org/chromium/net/telemetry/RateLimiter;)V

    .line 31
    return-void
.end method

.method public constructor blacklist <init>(Landroid/net/connectivity/org/chromium/net/telemetry/RateLimiter;)V
    .registers 3
    .param p1, "rateLimiter"    # Landroid/net/connectivity/org/chromium/net/telemetry/RateLimiter;

    .line 35
    invoke-direct {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger;-><init>()V

    .line 26
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;->mSamplesRateLimited:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 36
    iput-object p1, p0, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;->mRateLimiter:Landroid/net/connectivity/org/chromium/net/telemetry/RateLimiter;

    .line 37
    return-void
.end method

.method private static blacklist convertToProtoConnectionCloseSource(I)I
    .registers 2
    .param p0, "source"    # I

    .line 250
    packed-switch p0, :pswitch_data_a

    .line 258
    const/4 v0, 0x0

    return v0

    .line 252
    :pswitch_5
    const/4 v0, 0x1

    return v0

    .line 255
    :pswitch_7
    const/4 v0, 0x2

    return v0

    nop

    :pswitch_data_a
    .packed-switch 0x1
        :pswitch_7
        :pswitch_5
    .end packed-switch
.end method

.method private static blacklist convertToProtoCronetEngineBuilderInitializedAuthor(Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;)I
    .registers 3
    .param p0, "author"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    .line 264
    sget-object v0, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl$1;->$SwitchMap$org$chromium$net$impl$CronetLogger$CronetEngineBuilderInitializedInfo$Author:[I

    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_12

    .line 270
    const/4 v0, 0x0

    return v0

    .line 268
    :pswitch_d
    const/4 v0, 0x2

    return v0

    .line 266
    :pswitch_f
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_f
        :pswitch_d
    .end packed-switch
.end method

.method private static blacklist convertToProtoCronetEngineBuilderInitializedSource(Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;)I
    .registers 3
    .param p0, "source"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    .line 288
    sget-object v0, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl$1;->$SwitchMap$org$chromium$net$impl$CronetLogger$CronetSource:[I

    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_16

    .line 302
    const/4 v0, 0x0

    return v0

    .line 299
    :pswitch_d
    const/4 v0, 0x4

    return v0

    .line 296
    :pswitch_f
    const/4 v0, 0x3

    return v0

    .line 293
    :pswitch_11
    const/4 v0, 0x2

    return v0

    .line 290
    :pswitch_13
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_16
    .packed-switch 0x1
        :pswitch_13
        :pswitch_11
        :pswitch_f
        :pswitch_d
    .end packed-switch
.end method

.method private static blacklist convertToProtoCronetEngineCreatedSource(Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;)I
    .registers 3
    .param p0, "source"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    .line 308
    sget-object v0, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl$1;->$SwitchMap$org$chromium$net$impl$CronetLogger$CronetSource:[I

    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_14

    .line 319
    :pswitch_c
    return v1

    .line 317
    :pswitch_d
    return v1

    .line 315
    :pswitch_e
    const/4 v0, 0x3

    return v0

    .line 313
    :pswitch_10
    const/4 v0, 0x2

    return v0

    .line 310
    :pswitch_12
    const/4 v0, 0x1

    return v0

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_12
        :pswitch_10
        :pswitch_e
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method private static blacklist convertToProtoCronetRequestTerminalState(Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;)I
    .registers 3
    .param p0, "requestTerminalState"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    .line 275
    sget-object v0, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl$1;->$SwitchMap$org$chromium$net$impl$CronetLogger$CronetTrafficInfo$RequestTerminalState:[I

    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_14

    .line 283
    const/4 v0, 0x0

    return v0

    .line 281
    :pswitch_d
    const/4 v0, 0x3

    return v0

    .line 279
    :pswitch_f
    const/4 v0, 0x2

    return v0

    .line 277
    :pswitch_11
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x1
        :pswitch_11
        :pswitch_f
        :pswitch_d
    .end packed-switch
.end method

.method private static blacklist convertToProtoFailureReason(Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;)I
    .registers 3
    .param p0, "failureReason"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    .line 237
    sget-object v0, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl$1;->$SwitchMap$org$chromium$net$impl$CronetLogger$CronetTrafficInfo$RequestFailureReason:[I

    invoke-virtual {p0}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_12

    .line 244
    const/4 v0, 0x0

    return v0

    .line 242
    :pswitch_d
    const/16 v0, 0x64

    return v0

    .line 239
    :pswitch_10
    const/4 v0, 0x1

    return v0

    :pswitch_data_12
    .packed-switch 0x1
        :pswitch_10
        :pswitch_d
    .end packed-switch
.end method

.method private static blacklist convertToProtoHttpCacheMode(I)I
    .registers 3
    .param p0, "httpCacheMode"    # I

    .line 324
    packed-switch p0, :pswitch_data_14

    .line 335
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expected httpCacheMode to range from 0 to 3"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 333
    :pswitch_b
    const/4 v0, 0x4

    return v0

    .line 330
    :pswitch_d
    const/4 v0, 0x3

    return v0

    .line 328
    :pswitch_f
    const/4 v0, 0x2

    return v0

    .line 326
    :pswitch_11
    const/4 v0, 0x1

    return v0

    nop

    :pswitch_data_14
    .packed-switch 0x0
        :pswitch_11
        :pswitch_f
        :pswitch_d
        :pswitch_b
    .end packed-switch
.end method

.method private static blacklist longListToLongArray(Ljava/util/List;)[J
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;)[J"
        }
    .end annotation

    .line 342
    .local p0, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v0

    new-array v0, v0, [J

    .line 343
    .local v0, "array":[J
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_1c

    .line 344
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    aput-wide v2, v0, v1

    .line 343
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 346
    .end local v1    # "i":I
    :cond_1c
    return-object v0
.end method


# virtual methods
.method public blacklist generateId()J
    .registers 6

    .line 43
    invoke-static {}, Ljava/util/concurrent/ThreadLocalRandom;->current()Ljava/util/concurrent/ThreadLocalRandom;

    move-result-object v0

    const-wide v1, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v3, 0x7ffffffffffffffdL

    invoke-virtual {v0, v1, v2, v3, v4}, Ljava/util/concurrent/ThreadLocalRandom;->nextLong(JJ)J

    move-result-wide v0

    .line 44
    .local v0, "id":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-ltz v2, :cond_1c

    const-wide/16 v2, 0x2

    add-long/2addr v2, v0

    goto :goto_1d

    :cond_1c
    move-wide v2, v0

    :goto_1d
    return-wide v2
.end method

.method public blacklist logCronetEngineBuilderInitializedInfo(Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;)V
    .registers 21
    .param p1, "info"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;

    .line 49
    move-object/from16 v1, p1

    .line 50
    const-string v0, "CronetLoggerImpl#logCronetEngineBuilderInitializedInfo"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v2

    .line 52
    .local v2, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_8
    iget-wide v4, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->cronetInitializationRef:J

    iget-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->author:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;

    .line 55
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;->convertToProtoCronetEngineBuilderInitializedAuthor(Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo$Author;)I

    move-result v6

    iget v7, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->engineBuilderCreatedLatencyMillis:I

    iget-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->source:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    .line 57
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;->convertToProtoCronetEngineBuilderInitializedSource(Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;)I

    move-result v8

    iget-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->creationSuccessful:Ljava/lang/Boolean;

    .line 58
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->getValue()I

    move-result v9

    iget-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->apiVersion:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;

    .line 59
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;->getMajorVersion()I

    move-result v10

    iget-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->apiVersion:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;

    .line 60
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;->getMinorVersion()I

    move-result v11

    iget-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->apiVersion:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;

    .line 61
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;->getBuildVersion()I

    move-result v12

    iget-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->apiVersion:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;

    .line 62
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;->getPatchVersion()I

    move-result v13

    .line 64
    iget-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->implVersion:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;

    const/4 v3, -0x1

    if-nez v0, :cond_41

    move v14, v3

    goto :goto_48

    :cond_41
    iget-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->implVersion:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;->getMajorVersion()I

    move-result v0

    move v14, v0

    .line 65
    :goto_48
    iget-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->implVersion:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;

    if-nez v0, :cond_4e

    move v15, v3

    goto :goto_55

    :cond_4e
    iget-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->implVersion:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;->getMinorVersion()I

    move-result v0

    move v15, v0

    .line 66
    :goto_55
    iget-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->implVersion:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;

    if-nez v0, :cond_5c

    move/from16 v16, v3

    goto :goto_64

    :cond_5c
    iget-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->implVersion:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;->getBuildVersion()I

    move-result v0

    move/from16 v16, v0

    .line 67
    :goto_64
    iget-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->implVersion:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;

    if-nez v0, :cond_6b

    :goto_68
    move/from16 v17, v3

    goto :goto_72

    :cond_6b
    iget-object v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->implVersion:Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;->getPatchVersion()I

    move-result v3

    goto :goto_68

    :goto_72
    iget v0, v1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInitializedInfo;->uid:I

    .line 52
    const/16 v3, 0x2fa

    move/from16 v18, v0

    invoke-static/range {v3 .. v18}, Landroid/net/connectivity/org/chromium/net/telemetry/CronetStatsLog;->write(IJIIIIIIIIIIIII)V
    :try_end_7b
    .catchall {:try_start_8 .. :try_end_7b} :catchall_81

    .line 69
    if-eqz v2, :cond_80

    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 70
    .end local v2    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_80
    return-void

    .line 49
    .restart local v2    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_81
    move-exception v0

    move-object v3, v0

    if-eqz v2, :cond_8d

    :try_start_85
    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_88
    .catchall {:try_start_85 .. :try_end_88} :catchall_89

    goto :goto_8d

    :catchall_89
    move-exception v0

    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_8d
    :goto_8d
    throw v3
.end method

.method public blacklist logCronetEngineCreation(JLandroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;)V
    .registers 6
    .param p1, "cronetEngineId"    # J
    .param p3, "builder"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;
    .param p4, "version"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;
    .param p5, "source"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    .line 100
    if-eqz p3, :cond_b

    if-eqz p4, :cond_b

    if-nez p5, :cond_7

    goto :goto_b

    .line 104
    :cond_7
    invoke-virtual/range {p0 .. p5}, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;->writeCronetEngineCreation(JLandroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;)V

    .line 105
    return-void

    .line 101
    :cond_b
    :goto_b
    return-void
.end method

.method public blacklist logCronetInitializedInfo(Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;)V
    .registers 13
    .param p1, "info"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;

    .line 78
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x21

    if-ge v0, v1, :cond_7

    return-void

    .line 80
    :cond_7
    nop

    .line 81
    const-string v0, "CronetLoggerImpl#logCronetInitializedInfo"

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v1

    .line 82
    .local v1, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_e
    iget-wide v3, p1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;->cronetInitializationRef:J

    iget v5, p1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;->engineCreationLatencyMillis:I

    iget v6, p1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;->engineAsyncLatencyMillis:I

    iget v7, p1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;->httpFlagsLatencyMillis:I

    iget-object v0, p1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;->httpFlagsSuccessful:Ljava/lang/Boolean;

    .line 88
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->getValue()I

    move-result v8

    iget-object v0, p1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;->httpFlagsNames:Ljava/util/List;

    .line 89
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;->longListToLongArray(Ljava/util/List;)[J

    move-result-object v9

    iget-object v0, p1, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetInitializedInfo;->httpFlagsValues:Ljava/util/List;

    .line 90
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;->longListToLongArray(Ljava/util/List;)[J

    move-result-object v10

    .line 82
    const/16 v2, 0x2fc

    invoke-static/range {v2 .. v10}, Landroid/net/connectivity/org/chromium/net/telemetry/CronetStatsLog;->write(IJIIII[J[J)V
    :try_end_31
    .catchall {:try_start_e .. :try_end_31} :catchall_37

    .line 91
    if-eqz v1, :cond_36

    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V

    .line 92
    .end local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_36
    return-void

    .line 80
    .restart local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_37
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_43

    :try_start_3b
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_3e
    .catchall {:try_start_3b .. :try_end_3e} :catchall_3f

    goto :goto_43

    :catchall_3f
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_43
    :goto_43
    throw v2
.end method

.method public blacklist logCronetTrafficInfo(JLandroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;)V
    .registers 6
    .param p1, "cronetEngineId"    # J
    .param p3, "trafficInfo"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;

    .line 109
    if-nez p3, :cond_3

    .line 110
    return-void

    .line 113
    :cond_3
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;->mRateLimiter:Landroid/net/connectivity/org/chromium/net/telemetry/RateLimiter;

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/RateLimiter;->tryAcquire()Z

    move-result v0

    if-nez v0, :cond_11

    .line 114
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;->mSamplesRateLimited:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 115
    return-void

    .line 118
    :cond_11
    iget-object v0, p0, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;->mSamplesRateLimited:Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndSet(I)I

    move-result v0

    invoke-virtual {p0, p1, p2, p3, v0}, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;->writeCronetTrafficReported(JLandroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;I)V

    .line 119
    return-void
.end method

.method public blacklist writeCronetEngineCreation(JLandroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;)V
    .registers 47
    .param p1, "cronetEngineId"    # J
    .param p3, "builder"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;
    .param p4, "version"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;
    .param p5, "source"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;

    .line 127
    :try_start_0
    const-string v0, "CronetLoggerImpl#writeCronetEngineCreation"

    .line 128
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_ef

    move-object v1, v0

    .line 130
    .local v1, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :try_start_7
    new-instance v0, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;

    .line 131
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->getExperimentalOptions()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;-><init>(Ljava/lang/String;)V

    .line 133
    .local v0, "experimentalOptions":Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;
    nop

    .line 136
    invoke-virtual/range {p4 .. p4}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;->getMajorVersion()I

    move-result v5

    .line 137
    invoke-virtual/range {p4 .. p4}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;->getMinorVersion()I

    move-result v6

    .line 138
    invoke-virtual/range {p4 .. p4}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;->getBuildVersion()I

    move-result v7

    .line 139
    invoke-virtual/range {p4 .. p4}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;->getPatchVersion()I

    move-result v8

    .line 140
    invoke-static/range {p5 .. p5}, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;->convertToProtoCronetEngineCreatedSource(Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;)I

    move-result v9

    .line 141
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->isBrotliEnabled()Z

    move-result v10

    .line 142
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->isHttp2Enabled()Z

    move-result v11

    .line 143
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->getHttpCacheMode()I

    move-result v2

    invoke-static {v2}, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;->convertToProtoHttpCacheMode(I)I

    move-result v12

    .line 144
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->isPublicKeyPinningBypassForLocalTrustAnchorsEnabled()Z

    move-result v13

    .line 145
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->isQuicEnabled()Z

    move-result v14

    .line 146
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->isNetworkQualityEstimatorEnabled()Z

    move-result v15

    .line 147
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->getThreadPriority()I

    move-result v16

    .line 149
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getConnectionOptionsOption()Ljava/lang/String;

    move-result-object v17

    .line 150
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getStoreServerConfigsInPropertiesOption()Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->getValue()I

    move-result v18

    .line 151
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getMaxServerConfigsStoredInPropertiesOption()I

    move-result v19

    .line 152
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getIdleConnectionTimeoutSecondsOption()I

    move-result v20

    .line 153
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getGoawaySessionsOnIpChangeOption()Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->getValue()I

    move-result v21

    .line 154
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getCloseSessionsOnIpChangeOption()Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->getValue()I

    move-result v22

    .line 155
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getMigrateSessionsOnNetworkChangeV2Option()Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->getValue()I

    move-result v23

    .line 156
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getMigrateSessionsEarlyV2()Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->getValue()I

    move-result v24

    .line 157
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getDisableBidirectionalStreamsOption()Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->getValue()I

    move-result v25

    .line 158
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getMaxTimeBeforeCryptoHandshakeSecondsOption()I

    move-result v26

    .line 159
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getMaxIdleTimeBeforeCryptoHandshakeSecondsOption()I

    move-result v27

    .line 160
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getEnableSocketRecvOptimizationOption()Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->getValue()I

    move-result v28

    .line 162
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getAsyncDnsEnableOption()Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->getValue()I

    move-result v29

    .line 164
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getStaleDnsEnableOption()Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->getValue()I

    move-result v30

    .line 165
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getStaleDnsDelayMillisOption()I

    move-result v31

    .line 166
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getStaleDnsMaxExpiredTimeMillisOption()I

    move-result v32

    .line 167
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getStaleDnsMaxStaleUsesOption()I

    move-result v33

    .line 168
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getStaleDnsAllowOtherNetworkOption()Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->getValue()I

    move-result v34

    .line 169
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getStaleDnsPersistToDiskOption()Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->getValue()I

    move-result v35

    .line 170
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getStaleDnsPersistDelayMillisOption()I

    move-result v36

    .line 171
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getStaleDnsUseStaleOnNameNotResolvedOption()Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->getValue()I

    move-result v37

    .line 172
    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;->getDisableIpv6OnWifiOption()Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->getValue()I

    move-result v38

    .line 173
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;->getCronetInitializationRef()J

    move-result-wide v39

    .line 133
    const/16 v2, 0x2bf

    move-wide/from16 v3, p1

    invoke-static/range {v2 .. v40}, Landroid/net/connectivity/org/chromium/net/telemetry/CronetStatsLog;->write(IJIIIIIZZIZZZILjava/lang/String;IIIIIIIIIIIIIIIIIIIIIJ)V
    :try_end_dc
    .catchall {:try_start_7 .. :try_end_dc} :catchall_e2

    .line 174
    .end local v0    # "experimentalOptions":Landroid/net/connectivity/org/chromium/net/telemetry/ExperimentalOptions;
    if-eqz v1, :cond_e1

    :try_start_de
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_e1
    .catch Ljava/lang/Exception; {:try_start_de .. :try_end_e1} :catch_ef

    .line 182
    .end local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_e1
    goto :goto_110

    .line 127
    .restart local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_e2
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_ee

    :try_start_e6
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_e9
    .catchall {:try_start_e6 .. :try_end_e9} :catchall_ea

    goto :goto_ee

    :catchall_ea
    move-exception v0

    :try_start_eb
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;
    .end local p1    # "cronetEngineId":J
    .end local p3    # "builder":Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;
    .end local p4    # "version":Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;
    .end local p5    # "source":Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;
    :cond_ee
    :goto_ee
    throw v2
    :try_end_ef
    .catch Ljava/lang/Exception; {:try_start_eb .. :try_end_ef} :catch_ef

    .line 174
    .end local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;
    .restart local p1    # "cronetEngineId":J
    .restart local p3    # "builder":Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetEngineBuilderInfo;
    .restart local p4    # "version":Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetVersion;
    .restart local p5    # "source":Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetSource;
    :catch_ef
    move-exception v0

    .line 175
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;->TAG:Ljava/lang/String;

    const/4 v2, 0x3

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_110

    .line 176
    sget-object v1, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;->TAG:Ljava/lang/String;

    .line 180
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    filled-new-array {v2, v3}, [Ljava/lang/Object;

    move-result-object v2

    .line 178
    const-string v3, "Failed to log CronetEngine:%s creation: %s"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 176
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_110
    :goto_110
    return-void
.end method

.method public blacklist writeCronetTrafficReported(JLandroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;I)V
    .registers 40
    .param p1, "cronetEngineId"    # J
    .param p3, "trafficInfo"    # Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;
    .param p4, "samplesRateLimitedCount"    # I

    .line 189
    :try_start_0
    const-string v0, "CronetLoggerImpl#writeCronetTrafficReported"

    .line 190
    invoke-static {v0}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->scoped(Ljava/lang/String;)Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;

    move-result-object v0
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_6} :catch_d2

    move-object v1, v0

    .line 191
    .local v1, "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    nop

    .line 195
    :try_start_8
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->getRequestHeaderSizeInBytes()J

    move-result-wide v2

    .line 194
    invoke-static {v2, v3}, Landroid/net/connectivity/org/chromium/net/telemetry/SizeBuckets;->calcRequestHeadersSizeBucket(J)I

    move-result v7

    .line 196
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->getRequestBodySizeInBytes()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroid/net/connectivity/org/chromium/net/telemetry/SizeBuckets;->calcRequestBodySizeBucket(J)I

    move-result v8

    .line 198
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->getResponseHeaderSizeInBytes()J

    move-result-wide v2

    .line 197
    invoke-static {v2, v3}, Landroid/net/connectivity/org/chromium/net/telemetry/SizeBuckets;->calcResponseHeadersSizeBucket(J)I

    move-result v9

    .line 200
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->getResponseBodySizeInBytes()J

    move-result-wide v2

    .line 199
    invoke-static {v2, v3}, Landroid/net/connectivity/org/chromium/net/telemetry/SizeBuckets;->calcResponseBodySizeBucket(J)I

    move-result v10

    .line 201
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->getResponseStatusCode()I

    move-result v11

    .line 202
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->getNegotiatedProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/Hash;->hash(Ljava/lang/String;)J

    move-result-wide v12

    .line 203
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->getHeadersLatency()Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    long-to-int v14, v2

    .line 204
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->getTotalLatency()Ljava/time/Duration;

    move-result-object v0

    invoke-virtual {v0}, Ljava/time/Duration;->toMillis()J

    move-result-wide v2

    long-to-int v15, v2

    .line 205
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->wasConnectionMigrationAttempted()Z

    move-result v16

    .line 206
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->didConnectionMigrationSucceed()Z

    move-result v17

    .line 208
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->getTerminalState()Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;->convertToProtoCronetRequestTerminalState(Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestTerminalState;)I

    move-result v19

    .line 209
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->getNonfinalUserCallbackExceptionCount()I

    move-result v20

    .line 212
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->getReadCount()I

    move-result v25

    .line 213
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->getOnUploadReadCount()I

    move-result v26

    .line 214
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->getIsBidiStream()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->getValue()I

    move-result v27

    .line 215
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->getFinalUserCallbackThrew()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->getValue()I

    move-result v28

    .line 216
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->getUid()I

    move-result v29

    .line 217
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->getNetworkInternalErrorCode()I

    move-result v30

    .line 218
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->getQuicErrorCode()I

    move-result v31

    .line 219
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->getConnectionCloseSource()I

    move-result v0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;->convertToProtoConnectionCloseSource(I)I

    move-result v32

    .line 220
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->getFailureReason()Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;->convertToProtoFailureReason(Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo$RequestFailureReason;)I

    move-result v33

    .line 221
    invoke-virtual/range {p3 .. p3}, Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;->getIsSocketReused()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->fromBoolean(Ljava/lang/Boolean;)Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/connectivity/org/chromium/net/telemetry/OptionalBoolean;->getValue()I

    move-result v34

    .line 191
    const/16 v4, 0x2c0

    const-wide/16 v21, -0x1

    const-wide/16 v23, -0x1

    move-wide/from16 v5, p1

    move/from16 v18, p4

    invoke-static/range {v4 .. v34}, Landroid/net/connectivity/org/chromium/net/telemetry/CronetStatsLog;->write(IJIIIIIJIIZZIIIJJIIIIIIIIII)V
    :try_end_bb
    .catchall {:try_start_8 .. :try_end_bb} :catchall_c5

    .line 222
    if-eqz v1, :cond_c0

    :try_start_bd
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_c0
    .catch Ljava/lang/Exception; {:try_start_bd .. :try_end_c0} :catch_d2

    .line 232
    .end local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :cond_c0
    move-object/from16 v1, p0

    move/from16 v3, p4

    goto :goto_fc

    .line 189
    .restart local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    :catchall_c5
    move-exception v0

    move-object v2, v0

    if-eqz v1, :cond_d1

    :try_start_c9
    invoke-virtual {v1}, Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;->close()V
    :try_end_cc
    .catchall {:try_start_c9 .. :try_end_cc} :catchall_cd

    goto :goto_d1

    :catchall_cd
    move-exception v0

    :try_start_ce
    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p0    # "this":Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;
    .end local p1    # "cronetEngineId":J
    .end local p3    # "trafficInfo":Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;
    .end local p4    # "samplesRateLimitedCount":I
    :cond_d1
    :goto_d1
    throw v2
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_ce .. :try_end_d2} :catch_d2

    .line 222
    .end local v1    # "traceEvent":Landroid/net/connectivity/org/chromium/base/metrics/ScopedSysTraceEvent;
    .restart local p0    # "this":Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;
    .restart local p1    # "cronetEngineId":J
    .restart local p3    # "trafficInfo":Landroid/net/connectivity/org/chromium/net/impl/CronetLogger$CronetTrafficInfo;
    .restart local p4    # "samplesRateLimitedCount":I
    :catch_d2
    move-exception v0

    .line 224
    .local v0, "e":Ljava/lang/Exception;
    move-object/from16 v1, p0

    iget-object v2, v1, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;->mSamplesRateLimited:Ljava/util/concurrent/atomic/AtomicInteger;

    move/from16 v3, p4

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 225
    sget-object v2, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;->TAG:Ljava/lang/String;

    const/4 v4, 0x3

    invoke-static {v2, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_fc

    .line 226
    sget-object v2, Landroid/net/connectivity/org/chromium/net/telemetry/CronetLoggerImpl;->TAG:Ljava/lang/String;

    .line 230
    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    filled-new-array {v4, v5}, [Ljava/lang/Object;

    move-result-object v4

    .line 228
    const-string v5, "Failed to log cronet traffic sample for CronetEngine %s: %s"

    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 226
    invoke-static {v2, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_fc
    :goto_fc
    return-void
.end method
