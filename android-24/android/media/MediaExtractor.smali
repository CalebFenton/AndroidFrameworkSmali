.class public final Landroid/media/MediaExtractor;
.super Ljava/lang/Object;
.source "MediaExtractor.java"


# static fields
.field public static final SAMPLE_FLAG_ENCRYPTED:I = 0x2

.field public static final SAMPLE_FLAG_SYNC:I = 0x1

.field public static final SEEK_TO_CLOSEST_SYNC:I = 0x2

.field public static final SEEK_TO_NEXT_SYNC:I = 0x1

.field public static final SEEK_TO_PREVIOUS_SYNC:I


# instance fields
.field private mNativeContext:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 587
    const-string/jumbo v0, "media_jni"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 588
    invoke-static {}, Landroid/media/MediaExtractor;->native_init()V

    #@9
    .line 72
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 74
    invoke-direct {p0}, Landroid/media/MediaExtractor;->native_setup()V

    #@6
    .line 73
    return-void
.end method

.method private native getFileFormatNative()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private native getTrackFormatNative(I)Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end method

.method private final native nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private final native native_finalize()V
.end method

.method private static final native native_init()V
.end method

.method private final native native_setup()V
.end method


# virtual methods
.method public native advance()Z
.end method

.method protected finalize()V
    .locals 0

    #@0
    .prologue
    .line 237
    invoke-direct {p0}, Landroid/media/MediaExtractor;->native_finalize()V

    #@3
    .line 236
    return-void
.end method

.method public native getCachedDuration()J
.end method

.method public getDrmInitData()Landroid/media/DrmInitData;
    .locals 13

    #@0
    .prologue
    const/4 v12, 0x0

    #@1
    .line 260
    invoke-direct {p0}, Landroid/media/MediaExtractor;->getFileFormatNative()Ljava/util/Map;

    #@4
    move-result-object v4

    #@5
    .line 261
    .local v4, "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-nez v4, :cond_0

    #@7
    .line 262
    return-object v12

    #@8
    .line 264
    :cond_0
    const-string/jumbo v11, "pssh"

    #@b
    invoke-interface {v4, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@e
    move-result v11

    #@f
    if-eqz v11, :cond_2

    #@11
    .line 265
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getPsshInfo()Ljava/util/Map;

    #@14
    move-result-object v8

    #@15
    .line 267
    .local v8, "psshMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    new-instance v6, Ljava/util/HashMap;

    #@17
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@1a
    .line 268
    .local v6, "initDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Landroid/media/DrmInitData$SchemeInitData;>;"
    invoke-interface {v8}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@1d
    move-result-object v11

    #@1e
    invoke-interface {v11}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@21
    move-result-object v3

    #@22
    .local v3, "e$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    #@25
    move-result v11

    #@26
    if-eqz v11, :cond_1

    #@28
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@2b
    move-result-object v2

    #@2c
    check-cast v2, Ljava/util/Map$Entry;

    #@2e
    .line 269
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;[B>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@31
    move-result-object v10

    #@32
    check-cast v10, Ljava/util/UUID;

    #@34
    .line 270
    .local v10, "uuid":Ljava/util/UUID;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@37
    move-result-object v1

    #@38
    check-cast v1, [B

    #@3a
    .line 271
    .local v1, "data":[B
    new-instance v11, Landroid/media/DrmInitData$SchemeInitData;

    #@3c
    const-string/jumbo v12, "cenc"

    #@3f
    invoke-direct {v11, v12, v1}, Landroid/media/DrmInitData$SchemeInitData;-><init>(Ljava/lang/String;[B)V

    #@42
    invoke-interface {v6, v10, v11}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@45
    goto :goto_0

    #@46
    .line 273
    .end local v1    # "data":[B
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/util/UUID;[B>;"
    .end local v10    # "uuid":Ljava/util/UUID;
    :cond_1
    new-instance v11, Landroid/media/MediaExtractor$1;

    #@48
    invoke-direct {v11, p0, v6}, Landroid/media/MediaExtractor$1;-><init>(Landroid/media/MediaExtractor;Ljava/util/Map;)V

    #@4b
    return-object v11

    #@4c
    .line 279
    .end local v3    # "e$iterator":Ljava/util/Iterator;
    .end local v6    # "initDataMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;Landroid/media/DrmInitData$SchemeInitData;>;"
    .end local v8    # "psshMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    :cond_2
    invoke-virtual {p0}, Landroid/media/MediaExtractor;->getTrackCount()I

    #@4f
    move-result v7

    #@50
    .line 280
    .local v7, "numTracks":I
    const/4 v5, 0x0

    #@51
    .local v5, "i":I
    :goto_1
    if-ge v5, v7, :cond_4

    #@53
    .line 281
    invoke-direct {p0, v5}, Landroid/media/MediaExtractor;->getTrackFormatNative(I)Ljava/util/Map;

    #@56
    move-result-object v9

    #@57
    .line 282
    .local v9, "trackFormatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const-string/jumbo v11, "crypto-key"

    #@5a
    invoke-interface {v9, v11}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@5d
    move-result v11

    #@5e
    if-nez v11, :cond_3

    #@60
    .line 280
    add-int/lit8 v5, v5, 0x1

    #@62
    goto :goto_1

    #@63
    .line 285
    :cond_3
    const-string/jumbo v11, "crypto-key"

    #@66
    invoke-interface {v9, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@69
    move-result-object v0

    #@6a
    check-cast v0, Ljava/nio/ByteBuffer;

    #@6c
    .line 286
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    #@6f
    .line 287
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    #@72
    move-result v11

    #@73
    new-array v1, v11, [B

    #@75
    .line 288
    .restart local v1    # "data":[B
    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@78
    .line 289
    new-instance v11, Landroid/media/MediaExtractor$2;

    #@7a
    invoke-direct {v11, p0, v1}, Landroid/media/MediaExtractor$2;-><init>(Landroid/media/MediaExtractor;[B)V

    #@7d
    return-object v11

    #@7e
    .line 296
    .end local v0    # "buf":Ljava/nio/ByteBuffer;
    .end local v1    # "data":[B
    .end local v9    # "trackFormatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    return-object v12
.end method

.method public getPsshInfo()Ljava/util/Map;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/util/UUID;",
            "[B>;"
        }
    .end annotation

    #@0
    .prologue
    .line 307
    const/4 v6, 0x0

    #@1
    .line 308
    .local v6, "psshMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    invoke-direct {p0}, Landroid/media/MediaExtractor;->getFileFormatNative()Ljava/util/Map;

    #@4
    move-result-object v1

    #@5
    .line 309
    .local v1, "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v1, :cond_0

    #@7
    const-string/jumbo v10, "pssh"

    #@a
    invoke-interface {v1, v10}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    #@d
    move-result v10

    #@e
    if-eqz v10, :cond_0

    #@10
    .line 310
    const-string/jumbo v10, "pssh"

    #@13
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v8

    #@17
    check-cast v8, Ljava/nio/ByteBuffer;

    #@19
    .line 311
    .local v8, "rawpssh":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@1c
    move-result-object v10

    #@1d
    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@20
    .line 312
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    #@23
    .line 313
    const-string/jumbo v10, "pssh"

    #@26
    invoke-interface {v1, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    .line 315
    new-instance v6, Ljava/util/HashMap;

    #@2b
    .end local v6    # "psshMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@2e
    .line 316
    .local v6, "psshMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    :goto_0
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    #@31
    move-result v10

    #@32
    if-lez v10, :cond_0

    #@34
    .line 317
    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@36
    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@39
    .line 318
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getLong()J

    #@3c
    move-result-wide v4

    #@3d
    .line 319
    .local v4, "msb":J
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getLong()J

    #@40
    move-result-wide v2

    #@41
    .line 320
    .local v2, "lsb":J
    new-instance v9, Ljava/util/UUID;

    #@43
    invoke-direct {v9, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    #@46
    .line 321
    .local v9, "uuid":Ljava/util/UUID;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@49
    move-result-object v10

    #@4a
    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@4d
    .line 322
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    #@50
    move-result v0

    #@51
    .line 323
    .local v0, "datalen":I
    new-array v7, v0, [B

    #@53
    .line 324
    .local v7, "psshdata":[B
    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@56
    .line 325
    invoke-interface {v6, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    goto :goto_0

    #@5a
    .line 328
    .end local v0    # "datalen":I
    .end local v2    # "lsb":J
    .end local v4    # "msb":J
    .end local v6    # "psshMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    .end local v7    # "psshdata":[B
    .end local v8    # "rawpssh":Ljava/nio/ByteBuffer;
    .end local v9    # "uuid":Ljava/util/UUID;
    :cond_0
    return-object v6
.end method

.method public native getSampleCryptoInfo(Landroid/media/MediaCodec$CryptoInfo;)Z
.end method

.method public native getSampleFlags()I
.end method

.method public native getSampleTime()J
.end method

.method public native getSampleTrackIndex()I
.end method

.method public final native getTrackCount()I
.end method

.method public getTrackFormat(I)Landroid/media/MediaFormat;
    .locals 2
    .param p1, "index"    # I

    #@0
    .prologue
    .line 446
    new-instance v0, Landroid/media/MediaFormat;

    #@2
    invoke-direct {p0, p1}, Landroid/media/MediaExtractor;->getTrackFormatNative(I)Ljava/util/Map;

    #@5
    move-result-object v1

    #@6
    invoke-direct {v0, v1}, Landroid/media/MediaFormat;-><init>(Ljava/util/Map;)V

    #@9
    return-object v0
.end method

.method public native hasCacheReachedEndOfStream()Z
.end method

.method public native readSampleData(Ljava/nio/ByteBuffer;I)I
.end method

.method public final native release()V
.end method

.method public native seekTo(JI)V
.end method

.method public native selectTrack(I)V
.end method

.method public final setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
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

    #@0
    .prologue
    .line 99
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@3
    move-result-object v10

    #@4
    .line 100
    .local v10, "scheme":Ljava/lang/String;
    if-eqz v10, :cond_0

    #@6
    const-string/jumbo v0, "file"

    #@9
    invoke-virtual {v10, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@c
    move-result v0

    #@d
    if-eqz v0, :cond_1

    #@f
    .line 101
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    #@16
    .line 102
    return-void

    #@17
    .line 105
    :cond_1
    const/4 v8, 0x0

    #@18
    .line 107
    .local v8, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1b
    move-result-object v9

    #@1c
    .line 108
    .local v9, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v0, "r"

    #@1f
    invoke-virtual {v9, p2, v0}, Landroid/content/ContentResolver;->openAssetFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@22
    move-result-object v8

    #@23
    .line 109
    .local v8, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v8, :cond_3

    #@25
    .line 127
    if-eqz v8, :cond_2

    #@27
    .line 128
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    #@2a
    .line 110
    :cond_2
    return-void

    #@2b
    .line 115
    :cond_3
    :try_start_1
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    #@2e
    move-result-wide v0

    #@2f
    const-wide/16 v2, 0x0

    #@31
    cmp-long v0, v0, v2

    #@33
    if-gez v0, :cond_5

    #@35
    .line 116
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@38
    move-result-object v0

    #@39
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@3c
    .line 127
    :goto_0
    if-eqz v8, :cond_4

    #@3e
    .line 128
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    #@41
    .line 123
    :cond_4
    return-void

    #@42
    .line 119
    :cond_5
    :try_start_2
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@45
    move-result-object v1

    #@46
    .line 120
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    #@49
    move-result-wide v2

    #@4a
    .line 121
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    #@4d
    move-result-wide v4

    #@4e
    move-object v0, p0

    #@4f
    .line 118
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@52
    goto :goto_0

    #@53
    .line 124
    .end local v8    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v9    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v7

    #@54
    .line 127
    .local v7, "ex":Ljava/lang/SecurityException;
    if-eqz v8, :cond_6

    #@56
    .line 128
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    #@59
    .line 132
    .end local v7    # "ex":Ljava/lang/SecurityException;
    :cond_6
    :goto_1
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@5c
    move-result-object v0

    #@5d
    invoke-virtual {p0, v0, p3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    #@60
    .line 98
    return-void

    #@61
    .line 125
    :catch_1
    move-exception v6

    #@62
    .line 127
    .local v6, "ex":Ljava/io/IOException;
    if-eqz v8, :cond_6

    #@64
    .line 128
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    #@67
    goto :goto_1

    #@68
    .line 126
    .end local v6    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    #@69
    .line 127
    if-eqz v8, :cond_7

    #@6b
    .line 128
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    #@6e
    .line 126
    :cond_7
    throw v0
.end method

.method public final setDataSource(Landroid/content/res/AssetFileDescriptor;)V
    .locals 6
    .param p1, "afd"    # Landroid/content/res/AssetFileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    #@0
    .prologue
    .line 202
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    #@3
    .line 206
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    #@6
    move-result-wide v0

    #@7
    const-wide/16 v2, 0x0

    #@9
    cmp-long v0, v0, v2

    #@b
    if-gez v0, :cond_0

    #@d
    .line 207
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@10
    move-result-object v0

    #@11
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;)V

    #@14
    .line 201
    :goto_0
    return-void

    #@15
    .line 209
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@18
    move-result-object v1

    #@19
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    #@1c
    move-result-wide v2

    #@1d
    invoke-virtual {p1}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    #@20
    move-result-wide v4

    #@21
    move-object v0, p0

    #@22
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    #@25
    goto :goto_0
.end method

.method public final native setDataSource(Landroid/media/MediaDataSource;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final setDataSource(Ljava/io/FileDescriptor;)V
    .locals 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    .line 220
    const-wide/16 v2, 0x0

    #@2
    const-wide v4, 0x7ffffffffffffffL

    #@7
    move-object v0, p0

    #@8
    move-object v1, p1

    #@9
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V

    #@c
    .line 219
    return-void
.end method

.method public final native setDataSource(Ljava/io/FileDescriptor;JJ)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public final setDataSource(Ljava/lang/String;)V
    .locals 2
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 187
    invoke-static {p1}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;)Landroid/os/IBinder;

    #@4
    move-result-object v0

    #@5
    .line 186
    invoke-direct {p0, v0, p1, v1, v1}, Landroid/media/MediaExtractor;->nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    #@8
    .line 185
    return-void
.end method

.method public final setDataSource(Ljava/lang/String;Ljava/util/Map;)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
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

    #@0
    .prologue
    .line 145
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    #@1
    .line 146
    .local v3, "keys":[Ljava/lang/String;
    const/4 v4, 0x0

    #@2
    .line 148
    .local v4, "values":[Ljava/lang/String;
    if-eqz p2, :cond_0

    #@4
    .line 149
    invoke-interface {p2}, Ljava/util/Map;->size()I

    #@7
    move-result v5

    #@8
    new-array v3, v5, [Ljava/lang/String;

    #@a
    .line 150
    .local v3, "keys":[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->size()I

    #@d
    move-result v5

    #@e
    new-array v4, v5, [Ljava/lang/String;

    #@10
    .line 152
    .local v4, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    #@11
    .line 153
    .local v2, "i":I
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@14
    move-result-object v5

    #@15
    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@18
    move-result-object v1

    #@19
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@1c
    move-result v5

    #@1d
    if-eqz v5, :cond_0

    #@1f
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@22
    move-result-object v0

    #@23
    check-cast v0, Ljava/util/Map$Entry;

    #@25
    .line 154
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@28
    move-result-object v5

    #@29
    check-cast v5, Ljava/lang/String;

    #@2b
    aput-object v5, v3, v2

    #@2d
    .line 155
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@30
    move-result-object v5

    #@31
    check-cast v5, Ljava/lang/String;

    #@33
    aput-object v5, v4, v2

    #@35
    .line 156
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_0

    #@38
    .line 161
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v2    # "i":I
    .end local v3    # "keys":[Ljava/lang/String;
    .end local v4    # "values":[Ljava/lang/String;
    :cond_0
    invoke-static {p1}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;)Landroid/os/IBinder;

    #@3b
    move-result-object v5

    #@3c
    .line 160
    invoke-direct {p0, v5, p1, v3, v4}, Landroid/media/MediaExtractor;->nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    #@3f
    .line 144
    return-void
.end method

.method public native unselectTrack(I)V
.end method
