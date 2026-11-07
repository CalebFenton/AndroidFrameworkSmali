.class public final Landroid/media/MediaExtractor;
.super Ljava/lang/Object;
.source "MediaExtractor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaExtractor$CasInfo;,
        Landroid/media/MediaExtractor$MetricsConstants;,
        Landroid/media/MediaExtractor$SampleFlag;,
        Landroid/media/MediaExtractor$SeekMode;
    }
.end annotation


# static fields
.field public static final whitelist SAMPLE_FLAG_ENCRYPTED:I = 0x2

.field public static final whitelist SAMPLE_FLAG_PARTIAL_FRAME:I = 0x4

.field public static final whitelist SAMPLE_FLAG_SYNC:I = 0x1

.field public static final whitelist SEEK_TO_CLOSEST_SYNC:I = 0x2

.field public static final whitelist SEEK_TO_NEXT_SYNC:I = 0x1

.field public static final whitelist SEEK_TO_PREVIOUS_SYNC:I


# instance fields
.field private blacklist mLogSessionId:Landroid/media/metrics/LogSessionId;

.field private greylist-max-o mMediaCas:Landroid/media/MediaCas;

.field private greylist-max-o mNativeContext:J


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 813
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 814
    invoke-static {}, Landroid/media/MediaExtractor;->native_init()V

    .line 815
    return-void
.end method

.method public constructor whitelist <init>()V
    .registers 2

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 818
    sget-object v0, Landroid/media/metrics/LogSessionId;->LOG_SESSION_ID_NONE:Landroid/media/metrics/LogSessionId;

    iput-object v0, p0, Landroid/media/MediaExtractor;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 79
    invoke-direct {p0}, Landroid/media/MediaExtractor;->native_setup()V

    .line 80
    return-void
.end method

.method private native greylist-max-o getFileFormatNative()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private native greylist-max-o getTrackFormatNative(I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method static synthetic blacklist lambda$getDrmInitData$0(Ljava/util/Map$Entry;)Landroid/media/DrmInitData$SchemeInitData;
    .registers 5
    .param p0, "entry"    # Ljava/util/Map$Entry;

    .line 394
    new-instance v0, Landroid/media/DrmInitData$SchemeInitData;

    .line 395
    invoke-interface {p0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/UUID;

    invoke-interface {p0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    const-string v3, "cenc"

    invoke-direct {v0, v1, v3, v2}, Landroid/media/DrmInitData$SchemeInitData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    .line 394
    return-object v0
.end method

.method static synthetic blacklist lambda$getDrmInitData$1(I)[Landroid/media/DrmInitData$SchemeInitData;
    .registers 2
    .param p0, "x$0"    # I

    .line 396
    new-array v0, p0, [Landroid/media/DrmInitData$SchemeInitData;

    return-object v0
.end method

.method static synthetic blacklist lambda$getDrmInitData$2(Landroid/media/DrmInitData$SchemeInitData;)Ljava/util/UUID;
    .registers 2
    .param p0, "initData"    # Landroid/media/DrmInitData$SchemeInitData;

    .line 399
    iget-object v0, p0, Landroid/media/DrmInitData$SchemeInitData;->uuid:Ljava/util/UUID;

    return-object v0
.end method

.method static synthetic blacklist lambda$getDrmInitData$3(Landroid/media/DrmInitData$SchemeInitData;)Landroid/media/DrmInitData$SchemeInitData;
    .registers 1
    .param p0, "initData"    # Landroid/media/DrmInitData$SchemeInitData;

    .line 399
    return-object p0
.end method

.method private final native greylist-max-o nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private final native greylist-max-o nativeSetMediaCas(Landroid/os/IHwBinder;)V
.end method

.method private final native greylist-max-o native_finalize()V
.end method

.method private native blacklist native_getAudioPresentations(I)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;"
        }
    .end annotation
.end method

.method private native greylist-max-o native_getMetrics()Landroid/os/PersistableBundle;
.end method

.method private static final native greylist-max-o native_init()V
.end method

.method private native blacklist native_setLogSessionId(Ljava/lang/String;)V
.end method

.method private final native greylist-max-o native_setup()V
.end method


# virtual methods
.method public native whitelist advance()Z
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 360
    invoke-direct {p0}, Landroid/media/MediaExtractor;->native_finalize()V

    .line 361
    return-void
.end method

.method public whitelist getAudioPresentations(I)Ljava/util/List;
    .registers 3
    .param p1, "trackIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/media/AudioPresentation;",
            ">;"
        }
    .end annotation

    .line 458
    invoke-direct {p0, p1}, Landroid/media/MediaExtractor;->native_getAudioPresentations(I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public native whitelist getCachedDuration()J
.end method

.method public whitelist getCasInfo(I)Landroid/media/MediaExtractor$CasInfo;
    .registers 9
    .param p1, "index"    # I

    .line 335
    invoke-direct {p0, p1}, Landroid/media/MediaExtractor;->getTrackFormatNative(I)Ljava/util/Map;

    move-result-object v0

    .line 336
    .local v0, "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v1, "ca-system-id"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5c

    .line 337
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 338
    .local v1, "systemId":I
    const/4 v2, 0x0

    .line 339
    .local v2, "session":Landroid/media/MediaCas$Session;
    const/4 v3, 0x0

    .line 340
    .local v3, "privateData":[B
    const-string v4, "ca-private-data"

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_32

    .line 341
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 342
    .local v4, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 343
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    new-array v3, v5, [B

    .line 344
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 346
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    :cond_32
    iget-object v4, p0, Landroid/media/MediaExtractor;->mMediaCas:Landroid/media/MediaCas;

    if-eqz v4, :cond_56

    const-string v4, "ca-session-id"

    invoke-interface {v0, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_56

    .line 347
    invoke-interface {v0, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/ByteBuffer;

    .line 348
    .restart local v4    # "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 349
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    new-array v5, v5, [B

    .line 350
    .local v5, "sessionId":[B
    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 351
    iget-object v6, p0, Landroid/media/MediaExtractor;->mMediaCas:Landroid/media/MediaCas;

    invoke-virtual {v6, v5}, Landroid/media/MediaCas;->createFromSessionId([B)Landroid/media/MediaCas$Session;

    move-result-object v2

    .line 353
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    .end local v5    # "sessionId":[B
    :cond_56
    new-instance v4, Landroid/media/MediaExtractor$CasInfo;

    invoke-direct {v4, v1, v2, v3}, Landroid/media/MediaExtractor$CasInfo;-><init>(ILandroid/media/MediaCas$Session;[B)V

    return-object v4

    .line 355
    .end local v1    # "systemId":I
    .end local v2    # "session":Landroid/media/MediaCas$Session;
    .end local v3    # "privateData":[B
    :cond_5c
    const/4 v1, 0x0

    return-object v1
.end method

.method public whitelist getDrmInitData()Landroid/media/DrmInitData;
    .registers 10

    .line 386
    invoke-direct {p0}, Landroid/media/MediaExtractor;->getFileFormatNative()Ljava/util/Map;

    move-result-object v0

    .line 387
    .local v0, "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 388
    return-object v1

    .line 390
    :cond_8
    const-string v2, "pssh"

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_50

    .line 391
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getPsshInfo()Ljava/util/Map;

    move-result-object v1

    .line 392
    .local v1, "psshMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    nop

    .line 393
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/MediaExtractor$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Landroid/media/MediaExtractor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Landroid/media/MediaExtractor$$ExternalSyntheticLambda1;

    invoke-direct {v3}, Landroid/media/MediaExtractor$$ExternalSyntheticLambda1;-><init>()V

    .line 396
    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->toArray(Ljava/util/function/IntFunction;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/media/DrmInitData$SchemeInitData;

    .line 397
    .local v2, "schemeInitDatas":[Landroid/media/DrmInitData$SchemeInitData;
    nop

    .line 398
    invoke-static {v2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v3

    new-instance v4, Landroid/media/MediaExtractor$$ExternalSyntheticLambda2;

    invoke-direct {v4}, Landroid/media/MediaExtractor$$ExternalSyntheticLambda2;-><init>()V

    new-instance v5, Landroid/media/MediaExtractor$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Landroid/media/MediaExtractor$$ExternalSyntheticLambda3;-><init>()V

    .line 399
    invoke-static {v4, v5}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;)Ljava/util/stream/Collector;

    move-result-object v4

    .line 398
    invoke-interface {v3, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map;

    .line 400
    .local v3, "initDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Landroid/media/DrmInitData$SchemeInitData;>;"
    new-instance v4, Landroid/media/MediaExtractor$1;

    invoke-direct {v4, p0, v3, v2}, Landroid/media/MediaExtractor$1;-><init>(Landroid/media/MediaExtractor;Ljava/util/Map;[Landroid/media/DrmInitData$SchemeInitData;)V

    return-object v4

    .line 416
    .end local v1    # "psshMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    .end local v2    # "schemeInitDatas":[Landroid/media/DrmInitData$SchemeInitData;
    .end local v3    # "initDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Landroid/media/DrmInitData$SchemeInitData;>;"
    :cond_50
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    move-result v2

    .line 417
    .local v2, "numTracks":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_55
    if-ge v3, v2, :cond_88

    .line 418
    invoke-direct {p0, v3}, Landroid/media/MediaExtractor;->getTrackFormatNative(I)Ljava/util/Map;

    move-result-object v4

    .line 419
    .local v4, "trackFormatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string v5, "crypto-key"

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_67

    .line 420
    nop

    .line 417
    .end local v4    # "trackFormatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_55

    .line 422
    .restart local v4    # "trackFormatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_67
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/nio/ByteBuffer;

    .line 423
    .local v1, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 424
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v5

    new-array v5, v5, [B

    .line 425
    .local v5, "data":[B
    invoke-virtual {v1, v5}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 427
    new-instance v6, Landroid/media/DrmInitData$SchemeInitData;

    sget-object v7, Landroid/media/DrmInitData$SchemeInitData;->UUID_NIL:Ljava/util/UUID;

    const-string v8, "webm"

    invoke-direct {v6, v7, v8, v5}, Landroid/media/DrmInitData$SchemeInitData;-><init>(Ljava/util/UUID;Ljava/lang/String;[B)V

    .line 430
    .local v6, "webmSchemeInitData":Landroid/media/DrmInitData$SchemeInitData;
    new-instance v7, Landroid/media/MediaExtractor$2;

    invoke-direct {v7, p0, v6}, Landroid/media/MediaExtractor$2;-><init>(Landroid/media/MediaExtractor;Landroid/media/DrmInitData$SchemeInitData;)V

    return-object v7

    .line 447
    .end local v1    # "buf":Ljava/nio/ByteBuffer;
    .end local v2    # "numTracks":I
    .end local v3    # "i":I
    .end local v4    # "trackFormatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v5    # "data":[B
    .end local v6    # "webmSchemeInitData":Landroid/media/DrmInitData$SchemeInitData;
    :cond_88
    return-object v1
.end method

.method public whitelist getLogSessionId()Landroid/media/metrics/LogSessionId;
    .registers 2

    .line 785
    iget-object v0, p0, Landroid/media/MediaExtractor;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    return-object v0
.end method

.method public whitelist getMetrics()Landroid/os/PersistableBundle;
    .registers 2

    .line 801
    invoke-direct {p0}, Landroid/media/MediaExtractor;->native_getMetrics()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 802
    .local v0, "bundle":Landroid/os/PersistableBundle;
    return-object v0
.end method

.method public whitelist getPsshInfo()Ljava/util/Map;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    .line 476
    const/4 v0, 0x0

    .line 477
    .local v0, "psshMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    invoke-direct {p0}, Landroid/media/MediaExtractor;->getFileFormatNative()Ljava/util/Map;

    move-result-object v1

    .line 478
    .local v1, "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_54

    const-string v2, "pssh"

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_54

    .line 479
    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/nio/ByteBuffer;

    .line 480
    .local v3, "rawpssh":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 481
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 482
    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 484
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    move-object v0, v2

    .line 485
    :goto_28
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    if-lez v2, :cond_54

    .line 486
    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v2}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 487
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v4

    .line 488
    .local v4, "msb":J
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    .line 489
    .local v6, "lsb":J
    new-instance v2, Ljava/util/UUID;

    invoke-direct {v2, v4, v5, v6, v7}, Ljava/util/UUID;-><init>(JJ)V

    .line 490
    .local v2, "uuid":Ljava/util/UUID;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 491
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v8

    .line 492
    .local v8, "datalen":I
    new-array v9, v8, [B

    .line 493
    .local v9, "psshdata":[B
    invoke-virtual {v3, v9}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    .line 494
    invoke-interface {v0, v2, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 495
    .end local v2    # "uuid":Ljava/util/UUID;
    .end local v4    # "msb":J
    .end local v6    # "lsb":J
    .end local v8    # "datalen":I
    .end local v9    # "psshdata":[B
    goto :goto_28

    .line 497
    .end local v3    # "rawpssh":Ljava/nio/ByteBuffer;
    :cond_54
    return-object v0
.end method

.method public native whitelist getSampleCryptoInfo(Landroid/media/MediaCodec$CryptoInfo;)Z
.end method

.method public native whitelist getSampleFlags()I
.end method

.method public native whitelist getSampleSize()J
.end method

.method public native whitelist getSampleTime()J
.end method

.method public native whitelist getSampleTrackIndex()I
.end method

.method public final native whitelist getTrackCount()I
.end method

.method public whitelist getTrackFormat(I)Landroid/media/MediaFormat;
    .registers 4
    .param p1, "index"    # I

    .line 615
    new-instance v0, Landroid/media/MediaFormat;

    invoke-direct {p0, p1}, Landroid/media/MediaExtractor;->getTrackFormatNative(I)Ljava/util/Map;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    return-object v0
.end method

.method public native whitelist hasCacheReachedEndOfStream()Z
.end method

.method public native whitelist readSampleData(Ljava/nio/ByteBuffer;I)I
.end method

.method public final native whitelist release()V
.end method

.method public native whitelist seekTo(JI)V
.end method

.method public native whitelist selectTrack(I)V
.end method

.method public final whitelist setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .registers 13
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v1

    .line 109
    .local v1, "scheme":Ljava/lang/String;
    if-eqz v1, :cond_72

    const-string v0, "file"

    invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    move-object v3, p0

    goto/16 :goto_73

    .line 114
    :cond_11
    const/4 v2, 0x0

    .line 116
    .local v2, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_12
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 117
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string v3, "r"

    invoke-virtual {v0, p2, v3}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v3
    :try_end_1c
    .catch Ljava/lang/SecurityException; {:try_start_12 .. :try_end_1c} :catch_65
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_1c} :catch_5d
    .catchall {:try_start_12 .. :try_end_1c} :catchall_55

    move-object v2, v3

    .line 118
    if-nez v2, :cond_25

    .line 136
    if-eqz v2, :cond_24

    .line 137
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 119
    :cond_24
    return-void

    .line 124
    :cond_25
    :try_start_25
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gez v3, :cond_38

    .line 125
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    move-object v3, p0

    goto :goto_49

    .line 127
    :cond_38
    nop

    .line 128
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v4

    .line 129
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v5

    .line 130
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v7
    :try_end_45
    .catch Ljava/lang/SecurityException; {:try_start_25 .. :try_end_45} :catch_65
    .catch Ljava/io/IOException; {:try_start_25 .. :try_end_45} :catch_5d
    .catchall {:try_start_25 .. :try_end_45} :catchall_55

    .line 127
    move-object v3, p0

    :try_start_46
    invoke-virtual/range {v3 .. v8}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_49
    .catch Ljava/lang/SecurityException; {:try_start_46 .. :try_end_49} :catch_53
    .catch Ljava/io/IOException; {:try_start_46 .. :try_end_49} :catch_51
    .catchall {:try_start_46 .. :try_end_49} :catchall_4f

    .line 136
    :goto_49
    if-eqz v2, :cond_4e

    .line 137
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 132
    :cond_4e
    return-void

    .line 136
    .end local v0    # "resolver":Landroid/content/ContentResolver;
    :catchall_4f
    move-exception v0

    goto :goto_57

    .line 134
    :catch_51
    move-exception v0

    goto :goto_5f

    .line 133
    :catch_53
    move-exception v0

    goto :goto_67

    .line 136
    :catchall_55
    move-exception v0

    move-object v3, p0

    :goto_57
    if-eqz v2, :cond_5c

    .line 137
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    .line 139
    :cond_5c
    throw v0

    .line 134
    :catch_5d
    move-exception v0

    move-object v3, p0

    .line 136
    :goto_5f
    if-eqz v2, :cond_6a

    .line 137
    :goto_61
    invoke-virtual {v2}, Landroid/content/res/AssetFileDescriptor;->close()V

    goto :goto_6a

    .line 133
    :catch_65
    move-exception v0

    move-object v3, p0

    .line 136
    :goto_67
    if-eqz v2, :cond_6a

    .line 137
    goto :goto_61

    .line 141
    :cond_6a
    :goto_6a
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    .line 142
    return-void

    .line 109
    .end local v2    # "fd":Landroid/content/res/AssetFileDescriptor;
    :cond_72
    move-object v3, p0

    .line 110
    :goto_73
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    .line 111
    return-void
.end method

.method public final whitelist setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .registers 9
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .line 218
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_15

    .line 223
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    goto :goto_25

    .line 225
    :cond_15
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    move-result-wide v3

    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    move-result-wide v5

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 227
    :goto_25
    return-void
.end method

.method public final native whitelist setDataSource(Landroid/media/MediaDataSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final whitelist setDataSource(Ljava/io/FileDescriptor;)V
    .registers 8
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 236
    const-wide/16 v2, 0x0

    const-wide v4, 0x7ffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    .end local p1    # "fd":Ljava/io/FileDescriptor;
    .local v1, "fd":Ljava/io/FileDescriptor;
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    .line 237
    return-void
.end method

.method public final native whitelist setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final whitelist setDataSource(Ljava/lang/String;)V
    .registers 4
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 202
    nop

    .line 203
    invoke-static {p1}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 202
    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, v1, v1}, Landroid/media/MediaExtractor;->nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 207
    return-void
.end method

.method public final whitelist setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .registers 9
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 158
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 159
    .local v0, "keys":[Ljava/lang/String;
    const/4 v1, 0x0

    .line 161
    .local v1, "values":[Ljava/lang/String;
    if-eqz p2, :cond_39

    .line 162
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v0, v2, [Ljava/lang/String;

    .line 163
    invoke-interface {p2}, Ljava/util/Map;->size()I

    move-result v2

    new-array v1, v2, [Ljava/lang/String;

    .line 165
    const/4 v2, 0x0

    .line 166
    .local v2, "i":I
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_39

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 167
    .local v4, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v0, v2

    .line 168
    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v1, v2

    .line 169
    nop

    .end local v4    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    add-int/lit8 v2, v2, 0x1

    .line 170
    goto :goto_19

    .line 173
    .end local v2    # "i":I
    :cond_39
    nop

    .line 174
    invoke-static {p1}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    .line 173
    invoke-direct {p0, v2, p1, v0, v1}, Landroid/media/MediaExtractor;->nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    .line 178
    return-void
.end method

.method public whitelist setLogSessionId(Landroid/media/metrics/LogSessionId;)V
    .registers 3
    .param p1, "logSessionId"    # Landroid/media/metrics/LogSessionId;

    .line 776
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/metrics/LogSessionId;

    iput-object v0, p0, Landroid/media/MediaExtractor;->mLogSessionId:Landroid/media/metrics/LogSessionId;

    .line 777
    invoke-virtual {p1}, Landroid/media/metrics/LogSessionId;->getStringId()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaExtractor;->native_setLogSessionId(Ljava/lang/String;)V

    .line 778
    return-void
.end method

.method public final whitelist setMediaCas(Landroid/media/MediaCas;)V
    .registers 3
    .param p1, "mediaCas"    # Landroid/media/MediaCas;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 264
    iput-object p1, p0, Landroid/media/MediaExtractor;->mMediaCas:Landroid/media/MediaCas;

    .line 265
    invoke-virtual {p1}, Landroid/media/MediaCas;->getBinder()Landroid/os/IHwBinder;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/media/MediaExtractor;->nativeSetMediaCas(Landroid/os/IHwBinder;)V

    .line 266
    return-void
.end method

.method public native whitelist unselectTrack(I)V
.end method
