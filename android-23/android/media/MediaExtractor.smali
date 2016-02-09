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
    .line 410
    const-string/jumbo v0, "media_jni"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 411
    invoke-static {}, Landroid/media/MediaExtractor;->native_init()V

    #@9
    .line 68
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 70
    invoke-direct {p0}, Landroid/media/MediaExtractor;->native_setup()V

    #@6
    .line 69
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
    .line 213
    invoke-direct {p0}, Landroid/media/MediaExtractor;->native_finalize()V

    #@3
    .line 212
    return-void
.end method

.method public native getCachedDuration()J
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
    .line 236
    const/4 v6, 0x0

    #@1
    .line 237
    .local v6, "psshMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    invoke-direct {p0}, Landroid/media/MediaExtractor;->getFileFormatNative()Ljava/util/Map;

    #@4
    move-result-object v1

    #@5
    .line 238
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
    .line 239
    const-string/jumbo v10, "pssh"

    #@13
    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    #@16
    move-result-object v8

    #@17
    check-cast v8, Ljava/nio/ByteBuffer;

    #@19
    .line 240
    .local v8, "rawpssh":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@1c
    move-result-object v10

    #@1d
    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@20
    .line 241
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    #@23
    .line 242
    const-string/jumbo v10, "pssh"

    #@26
    invoke-interface {v1, v10}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    #@29
    .line 244
    new-instance v6, Ljava/util/HashMap;

    #@2b
    .end local v6    # "psshMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    #@2e
    .line 245
    .local v6, "psshMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/util/UUID;[B>;"
    :goto_0
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->remaining()I

    #@31
    move-result v10

    #@32
    if-lez v10, :cond_0

    #@34
    .line 246
    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    #@36
    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@39
    .line 247
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getLong()J

    #@3c
    move-result-wide v4

    #@3d
    .line 248
    .local v4, "msb":J
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getLong()J

    #@40
    move-result-wide v2

    #@41
    .line 249
    .local v2, "lsb":J
    new-instance v9, Ljava/util/UUID;

    #@43
    invoke-direct {v9, v4, v5, v2, v3}, Ljava/util/UUID;-><init>(JJ)V

    #@46
    .line 250
    .local v9, "uuid":Ljava/util/UUID;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    #@49
    move-result-object v10

    #@4a
    invoke-virtual {v8, v10}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    #@4d
    .line 251
    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->getInt()I

    #@50
    move-result v0

    #@51
    .line 252
    .local v0, "datalen":I
    new-array v7, v0, [B

    #@53
    .line 253
    .local v7, "psshdata":[B
    invoke-virtual {v8, v7}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    #@56
    .line 254
    invoke-interface {v6, v9, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    #@59
    goto :goto_0

    #@5a
    .line 257
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
    .line 269
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
    .line 95
    .local p3, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {p2}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    #@3
    move-result-object v10

    #@4
    .line 96
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
    .line 97
    :cond_0
    invoke-virtual {p2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    #@12
    move-result-object v0

    #@13
    invoke-virtual {p0, v0}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;)V

    #@16
    .line 98
    return-void

    #@17
    .line 101
    :cond_1
    const/4 v8, 0x0

    #@18
    .line 103
    .local v8, "fd":Landroid/content/res/AssetFileDescriptor;
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    #@1b
    move-result-object v9

    #@1c
    .line 104
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
    .line 105
    .local v8, "fd":Landroid/content/res/AssetFileDescriptor;
    if-nez v8, :cond_3

    #@25
    .line 123
    if-eqz v8, :cond_2

    #@27
    .line 124
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    #@2a
    .line 106
    :cond_2
    return-void

    #@2b
    .line 111
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
    .line 112
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
    .line 123
    :goto_0
    if-eqz v8, :cond_4

    #@3e
    .line 124
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    #@41
    .line 119
    :cond_4
    return-void

    #@42
    .line 115
    :cond_5
    :try_start_2
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    #@45
    move-result-object v1

    #@46
    .line 116
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getStartOffset()J

    #@49
    move-result-wide v2

    #@4a
    .line 117
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->getDeclaredLength()J

    #@4d
    move-result-wide v4

    #@4e
    move-object v0, p0

    #@4f
    .line 114
    invoke-virtual/range {v0 .. v5}, Landroid/media/MediaExtractor;->setDataSource(Ljava/io/FileDescriptor;JJ)V
    :try_end_2
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@52
    goto :goto_0

    #@53
    .line 120
    .end local v8    # "fd":Landroid/content/res/AssetFileDescriptor;
    .end local v9    # "resolver":Landroid/content/ContentResolver;
    :catch_0
    move-exception v7

    #@54
    .line 123
    .local v7, "ex":Ljava/lang/SecurityException;
    if-eqz v8, :cond_6

    #@56
    .line 124
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    #@59
    .line 128
    .end local v7    # "ex":Ljava/lang/SecurityException;
    :cond_6
    :goto_1
    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    #@5c
    move-result-object v0

    #@5d
    invoke-virtual {p0, v0, p3}, Landroid/media/MediaExtractor;->setDataSource(Ljava/lang/String;Ljava/util/Map;)V

    #@60
    .line 94
    return-void

    #@61
    .line 121
    :catch_1
    move-exception v6

    #@62
    .line 123
    .local v6, "ex":Ljava/io/IOException;
    if-eqz v8, :cond_6

    #@64
    .line 124
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    #@67
    goto :goto_1

    #@68
    .line 122
    .end local v6    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v0

    #@69
    .line 123
    if-eqz v8, :cond_7

    #@6b
    .line 124
    invoke-virtual {v8}, Landroid/content/res/AssetFileDescriptor;->close()V

    #@6e
    .line 122
    :cond_7
    throw v0
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
    .line 196
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
    .line 195
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
    .line 183
    invoke-static {p1}, Landroid/media/MediaHTTPService;->createHttpServiceBinderIfNecessary(Ljava/lang/String;)Landroid/os/IBinder;

    #@4
    move-result-object v0

    #@5
    .line 182
    invoke-direct {p0, v0, p1, v1, v1}, Landroid/media/MediaExtractor;->nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    #@8
    .line 181
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
    .line 141
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v3, 0x0

    #@1
    .line 142
    .local v3, "keys":[Ljava/lang/String;
    const/4 v4, 0x0

    #@2
    .line 144
    .local v4, "values":[Ljava/lang/String;
    if-eqz p2, :cond_0

    #@4
    .line 145
    invoke-interface {p2}, Ljava/util/Map;->size()I

    #@7
    move-result v5

    #@8
    new-array v3, v5, [Ljava/lang/String;

    #@a
    .line 146
    .local v3, "keys":[Ljava/lang/String;
    invoke-interface {p2}, Ljava/util/Map;->size()I

    #@d
    move-result v5

    #@e
    new-array v4, v5, [Ljava/lang/String;

    #@10
    .line 148
    .local v4, "values":[Ljava/lang/String;
    const/4 v2, 0x0

    #@11
    .line 149
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
    .line 150
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@28
    move-result-object v5

    #@29
    check-cast v5, Ljava/lang/String;

    #@2b
    aput-object v5, v3, v2

    #@2d
    .line 151
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@30
    move-result-object v5

    #@31
    check-cast v5, Ljava/lang/String;

    #@33
    aput-object v5, v4, v2

    #@35
    .line 152
    add-int/lit8 v2, v2, 0x1

    #@37
    goto :goto_0

    #@38
    .line 157
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
    .line 156
    invoke-direct {p0, v5, p1, v3, v4}, Landroid/media/MediaExtractor;->nativeSetDataSource(Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;)V

    #@3f
    .line 140
    return-void
.end method

.method public native unselectTrack(I)V
.end method
