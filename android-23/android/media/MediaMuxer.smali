.class public final Landroid/media/MediaMuxer;
.super Ljava/lang/Object;
.source "MediaMuxer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaMuxer$OutputFormat;
    }
.end annotation


# static fields
.field private static final MUXER_STATE_INITIALIZED:I = 0x0

.field private static final MUXER_STATE_STARTED:I = 0x1

.field private static final MUXER_STATE_STOPPED:I = 0x2

.field private static final MUXER_STATE_UNINITIALIZED:I = -0x1


# instance fields
.field private final mCloseGuard:Ldalvik/system/CloseGuard;

.field private mLastTrackIndex:I

.field private mNativeObject:J

.field private mState:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 73
    const-string/jumbo v0, "media_jni"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 70
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    #@0
    .prologue
    const/4 v4, -0x1

    #@1
    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@4
    .line 117
    iput v4, p0, Landroid/media/MediaMuxer;->mState:I

    #@6
    .line 119
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    #@9
    move-result-object v3

    #@a
    iput-object v3, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@c
    .line 120
    iput v4, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    #@e
    .line 133
    if-nez p1, :cond_0

    #@10
    .line 134
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@12
    const-string/jumbo v4, "path must not be null"

    #@15
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@18
    throw v3

    #@19
    .line 136
    :cond_0
    if-eqz p2, :cond_1

    #@1b
    .line 137
    const/4 v3, 0x1

    #@1c
    if-eq p2, v3, :cond_1

    #@1e
    .line 138
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@20
    const-string/jumbo v4, "format is invalid"

    #@23
    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v3

    #@27
    .line 142
    :cond_1
    const/4 v1, 0x0

    #@28
    .line 144
    .local v1, "file":Ljava/io/RandomAccessFile;
    :try_start_0
    new-instance v2, Ljava/io/RandomAccessFile;

    #@2a
    const-string/jumbo v3, "rws"

    #@2d
    invoke-direct {v2, p1, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@30
    .line 145
    .local v2, "file":Ljava/io/RandomAccessFile;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    #@33
    .end local v1    # "file":Ljava/io/RandomAccessFile;
    move-result-object v0

    #@34
    .line 146
    .local v0, "fd":Ljava/io/FileDescriptor;
    invoke-static {v0, p2}, Landroid/media/MediaMuxer;->nativeSetup(Ljava/io/FileDescriptor;I)J

    #@37
    move-result-wide v4

    #@38
    iput-wide v4, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    #@3a
    .line 147
    const/4 v3, 0x0

    #@3b
    iput v3, p0, Landroid/media/MediaMuxer;->mState:I

    #@3d
    .line 148
    iget-object v3, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@3f
    const-string/jumbo v4, "release"

    #@42
    invoke-virtual {v3, v4}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    #@45
    .line 150
    if-eqz v2, :cond_2

    #@47
    .line 151
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V

    #@4a
    .line 132
    :cond_2
    return-void

    #@4b
    .line 149
    .end local v0    # "fd":Ljava/io/FileDescriptor;
    .end local v2    # "file":Ljava/io/RandomAccessFile;
    .restart local v1    # "file":Ljava/io/RandomAccessFile;
    :catchall_0
    move-exception v3

    #@4c
    .line 150
    .end local v1    # "file":Ljava/io/RandomAccessFile;
    :goto_0
    if-eqz v1, :cond_3

    #@4e
    .line 151
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    #@51
    .line 149
    :cond_3
    throw v3

    #@52
    .restart local v2    # "file":Ljava/io/RandomAccessFile;
    :catchall_1
    move-exception v3

    #@53
    move-object v1, v2

    #@54
    .end local v2    # "file":Ljava/io/RandomAccessFile;
    .local v1, "file":Ljava/io/RandomAccessFile;
    goto :goto_0
.end method

.method private static native nativeAddTrack(J[Ljava/lang/String;[Ljava/lang/Object;)I
.end method

.method private static native nativeRelease(J)V
.end method

.method private static native nativeSetLocation(JII)V
.end method

.method private static native nativeSetOrientationHint(JI)V
.end method

.method private static native nativeSetup(Ljava/io/FileDescriptor;I)J
.end method

.method private static native nativeStart(J)V
.end method

.method private static native nativeStop(J)V
.end method

.method private static native nativeWriteSampleData(JILjava/nio/ByteBuffer;IIJI)V
.end method


# virtual methods
.method public addTrack(Landroid/media/MediaFormat;)I
    .locals 12
    .param p1, "format"    # Landroid/media/MediaFormat;

    #@0
    .prologue
    .line 269
    if-nez p1, :cond_0

    #@2
    .line 270
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v9, "format must not be null."

    #@7
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v8

    #@b
    .line 272
    :cond_0
    iget v8, p0, Landroid/media/MediaMuxer;->mState:I

    #@d
    if-eqz v8, :cond_1

    #@f
    .line 273
    new-instance v8, Ljava/lang/IllegalStateException;

    #@11
    const-string/jumbo v9, "Muxer is not initialized."

    #@14
    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@17
    throw v8

    #@18
    .line 275
    :cond_1
    iget-wide v8, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    #@1a
    const-wide/16 v10, 0x0

    #@1c
    cmp-long v8, v8, v10

    #@1e
    if-nez v8, :cond_2

    #@20
    .line 276
    new-instance v8, Ljava/lang/IllegalStateException;

    #@22
    const-string/jumbo v9, "Muxer has been released!"

    #@25
    invoke-direct {v8, v9}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@28
    throw v8

    #@29
    .line 278
    :cond_2
    const/4 v6, -0x1

    #@2a
    .line 280
    .local v6, "trackIndex":I
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    #@2d
    move-result-object v2

    #@2e
    .line 282
    .local v2, "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v4, 0x0

    #@2f
    .line 283
    .local v4, "keys":[Ljava/lang/String;
    const/4 v7, 0x0

    #@30
    .line 284
    .local v7, "values":[Ljava/lang/Object;
    invoke-interface {v2}, Ljava/util/Map;->size()I

    #@33
    move-result v5

    #@34
    .line 285
    .local v5, "mapSize":I
    if-lez v5, :cond_4

    #@36
    .line 286
    new-array v4, v5, [Ljava/lang/String;

    #@38
    .line 287
    .local v4, "keys":[Ljava/lang/String;
    new-array v7, v5, [Ljava/lang/Object;

    #@3a
    .line 288
    .local v7, "values":[Ljava/lang/Object;
    const/4 v3, 0x0

    #@3b
    .line 289
    .local v3, "i":I
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    #@3e
    move-result-object v8

    #@3f
    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@42
    move-result-object v1

    #@43
    .local v1, "entry$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@46
    move-result v8

    #@47
    if-eqz v8, :cond_3

    #@49
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@4c
    move-result-object v0

    #@4d
    check-cast v0, Ljava/util/Map$Entry;

    #@4f
    .line 290
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    #@52
    move-result-object v8

    #@53
    check-cast v8, Ljava/lang/String;

    #@55
    aput-object v8, v4, v3

    #@57
    .line 291
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    #@5a
    move-result-object v8

    #@5b
    aput-object v8, v7, v3

    #@5d
    .line 292
    add-int/lit8 v3, v3, 0x1

    #@5f
    goto :goto_0

    #@60
    .line 294
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_3
    iget-wide v8, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    #@62
    invoke-static {v8, v9, v4, v7}, Landroid/media/MediaMuxer;->nativeAddTrack(J[Ljava/lang/String;[Ljava/lang/Object;)I

    #@65
    move-result v6

    #@66
    .line 301
    iget v8, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    #@68
    if-lt v8, v6, :cond_5

    #@6a
    .line 302
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@6c
    const-string/jumbo v9, "Invalid format."

    #@6f
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@72
    throw v8

    #@73
    .line 296
    .end local v1    # "entry$iterator":Ljava/util/Iterator;
    .end local v3    # "i":I
    .local v4, "keys":[Ljava/lang/String;
    .local v7, "values":[Ljava/lang/Object;
    :cond_4
    new-instance v8, Ljava/lang/IllegalArgumentException;

    #@75
    const-string/jumbo v9, "format must not be empty."

    #@78
    invoke-direct {v8, v9}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@7b
    throw v8

    #@7c
    .line 304
    .restart local v1    # "entry$iterator":Ljava/util/Iterator;
    .restart local v3    # "i":I
    .local v4, "keys":[Ljava/lang/String;
    .local v7, "values":[Ljava/lang/Object;
    :cond_5
    iput v6, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    #@7e
    .line 305
    return v6
.end method

.method protected finalize()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 249
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@4
    if-eqz v0, :cond_0

    #@6
    .line 250
    iget-object v0, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@8
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    #@b
    .line 252
    :cond_0
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    #@d
    cmp-long v0, v0, v2

    #@f
    if-eqz v0, :cond_1

    #@11
    .line 253
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    #@13
    invoke-static {v0, v1}, Landroid/media/MediaMuxer;->nativeRelease(J)V

    #@16
    .line 254
    const-wide/16 v0, 0x0

    #@18
    iput-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@1a
    .line 257
    :cond_1
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@1d
    .line 247
    return-void

    #@1e
    .line 256
    :catchall_0
    move-exception v0

    #@1f
    .line 257
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@22
    .line 256
    throw v0
.end method

.method public release()V
    .locals 4

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 359
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    #@4
    const/4 v1, 0x1

    #@5
    if-ne v0, v1, :cond_0

    #@7
    .line 360
    invoke-virtual {p0}, Landroid/media/MediaMuxer;->stop()V

    #@a
    .line 362
    :cond_0
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    #@c
    cmp-long v0, v0, v2

    #@e
    if-eqz v0, :cond_1

    #@10
    .line 363
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    #@12
    invoke-static {v0, v1}, Landroid/media/MediaMuxer;->nativeRelease(J)V

    #@15
    .line 364
    iput-wide v2, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    #@17
    .line 365
    iget-object v0, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    #@19
    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    #@1c
    .line 367
    :cond_1
    const/4 v0, -0x1

    #@1d
    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    #@1f
    .line 358
    return-void
.end method

.method public setLocation(FF)V
    .locals 9
    .param p1, "latitude"    # F
    .param p2, "longitude"    # F

    #@0
    .prologue
    const v8, 0x461c4000    # 10000.0f

    #@3
    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    #@5
    .line 197
    mul-float v3, p1, v8

    #@7
    float-to-double v4, v3

    #@8
    add-double/2addr v4, v6

    #@9
    double-to-int v0, v4

    #@a
    .line 198
    .local v0, "latitudex10000":I
    mul-float v3, p2, v8

    #@c
    float-to-double v4, v3

    #@d
    add-double/2addr v4, v6

    #@e
    double-to-int v1, v4

    #@f
    .line 200
    .local v1, "longitudex10000":I
    const v3, 0xdbba0

    #@12
    if-gt v0, v3, :cond_0

    #@14
    const v3, -0xdbba0

    #@17
    if-ge v0, v3, :cond_1

    #@19
    .line 201
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    #@1b
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@1e
    const-string/jumbo v4, "Latitude: "

    #@21
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@24
    move-result-object v3

    #@25
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@28
    move-result-object v3

    #@29
    const-string/jumbo v4, " out of range."

    #@2c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@33
    move-result-object v2

    #@34
    .line 202
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@36
    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@39
    throw v3

    #@3a
    .line 204
    .end local v2    # "msg":Ljava/lang/String;
    :cond_1
    const v3, 0x1b7740

    #@3d
    if-gt v1, v3, :cond_2

    #@3f
    const v3, -0x1b7740

    #@42
    if-ge v1, v3, :cond_3

    #@44
    .line 205
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    #@46
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@49
    const-string/jumbo v4, "Longitude: "

    #@4c
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@4f
    move-result-object v3

    #@50
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    #@53
    move-result-object v3

    #@54
    const-string/jumbo v4, " out of range"

    #@57
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@5a
    move-result-object v3

    #@5b
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@5e
    move-result-object v2

    #@5f
    .line 206
    .restart local v2    # "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    #@61
    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@64
    throw v3

    #@65
    .line 209
    .end local v2    # "msg":Ljava/lang/String;
    :cond_3
    iget v3, p0, Landroid/media/MediaMuxer;->mState:I

    #@67
    if-nez v3, :cond_4

    #@69
    iget-wide v4, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    #@6b
    const-wide/16 v6, 0x0

    #@6d
    cmp-long v3, v4, v6

    #@6f
    if-eqz v3, :cond_4

    #@71
    .line 210
    iget-wide v4, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    #@73
    invoke-static {v4, v5, v0, v1}, Landroid/media/MediaMuxer;->nativeSetLocation(JII)V

    #@76
    .line 196
    return-void

    #@77
    .line 212
    :cond_4
    new-instance v3, Ljava/lang/IllegalStateException;

    #@79
    const-string/jumbo v4, "Can\'t set location due to wrong state."

    #@7c
    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@7f
    throw v3
.end method

.method public setOrientationHint(I)V
    .locals 3
    .param p1, "degrees"    # I

    #@0
    .prologue
    .line 170
    if-eqz p1, :cond_0

    #@2
    const/16 v0, 0x5a

    #@4
    if-eq p1, v0, :cond_0

    #@6
    const/16 v0, 0xb4

    #@8
    if-eq p1, v0, :cond_0

    #@a
    const/16 v0, 0x10e

    #@c
    if-eq p1, v0, :cond_0

    #@e
    .line 171
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "Unsupported angle: "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@23
    move-result-object v1

    #@24
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@27
    throw v0

    #@28
    .line 173
    :cond_0
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    #@2a
    if-nez v0, :cond_1

    #@2c
    .line 174
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    #@2e
    invoke-static {v0, v1, p1}, Landroid/media/MediaMuxer;->nativeSetOrientationHint(JI)V

    #@31
    .line 169
    return-void

    #@32
    .line 176
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    #@34
    const-string/jumbo v1, "Can\'t set rotation degrees due to wrong state."

    #@37
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0
.end method

.method public start()V
    .locals 4

    #@0
    .prologue
    .line 222
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    #@2
    const-wide/16 v2, 0x0

    #@4
    cmp-long v0, v0, v2

    #@6
    if-nez v0, :cond_0

    #@8
    .line 223
    new-instance v0, Ljava/lang/IllegalStateException;

    #@a
    const-string/jumbo v1, "Muxer has been released!"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 225
    :cond_0
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    #@13
    if-nez v0, :cond_1

    #@15
    .line 226
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    #@17
    invoke-static {v0, v1}, Landroid/media/MediaMuxer;->nativeStart(J)V

    #@1a
    .line 227
    const/4 v0, 0x1

    #@1b
    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    #@1d
    .line 221
    return-void

    #@1e
    .line 229
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    #@20
    const-string/jumbo v1, "Can\'t start due to wrong state."

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0
.end method

.method public stop()V
    .locals 2

    #@0
    .prologue
    .line 238
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    #@2
    const/4 v1, 0x1

    #@3
    if-ne v0, v1, :cond_0

    #@5
    .line 239
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    #@7
    invoke-static {v0, v1}, Landroid/media/MediaMuxer;->nativeStop(J)V

    #@a
    .line 240
    const/4 v0, 0x2

    #@b
    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    #@d
    .line 237
    return-void

    #@e
    .line 242
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    #@10
    const-string/jumbo v1, "Can\'t stop due to wrong state."

    #@13
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@16
    throw v0
.end method

.method public writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .locals 9
    .param p1, "trackIndex"    # I
    .param p2, "byteBuf"    # Ljava/nio/ByteBuffer;
    .param p3, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    #@0
    .prologue
    const-wide/16 v2, 0x0

    #@2
    .line 322
    if-ltz p1, :cond_0

    #@4
    iget v0, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    #@6
    if-le p1, v0, :cond_1

    #@8
    .line 323
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@a
    const-string/jumbo v1, "trackIndex is invalid"

    #@d
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@10
    throw v0

    #@11
    .line 326
    :cond_1
    if-nez p2, :cond_2

    #@13
    .line 327
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@15
    const-string/jumbo v1, "byteBuffer must not be null"

    #@18
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v0

    #@1c
    .line 330
    :cond_2
    if-nez p3, :cond_3

    #@1e
    .line 331
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@20
    const-string/jumbo v1, "bufferInfo must not be null"

    #@23
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@26
    throw v0

    #@27
    .line 333
    :cond_3
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    #@29
    if-ltz v0, :cond_4

    #@2b
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    #@2d
    if-gez v0, :cond_5

    #@2f
    .line 336
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@31
    const-string/jumbo v1, "bufferInfo must specify a valid buffer offset, size and presentation time"

    #@34
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@37
    throw v0

    #@38
    .line 334
    :cond_5
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    #@3a
    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    #@3c
    add-int/2addr v0, v1

    #@3d
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    #@40
    move-result v1

    #@41
    if-gt v0, v1, :cond_4

    #@43
    .line 335
    iget-wide v0, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    #@45
    cmp-long v0, v0, v2

    #@47
    if-ltz v0, :cond_4

    #@49
    .line 340
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    #@4b
    cmp-long v0, v0, v2

    #@4d
    if-nez v0, :cond_6

    #@4f
    .line 341
    new-instance v0, Ljava/lang/IllegalStateException;

    #@51
    const-string/jumbo v1, "Muxer has been released!"

    #@54
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@57
    throw v0

    #@58
    .line 344
    :cond_6
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    #@5a
    const/4 v1, 0x1

    #@5b
    if-eq v0, v1, :cond_7

    #@5d
    .line 345
    new-instance v0, Ljava/lang/IllegalStateException;

    #@5f
    const-string/jumbo v1, "Can\'t write, muxer is not started"

    #@62
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@65
    throw v0

    #@66
    .line 348
    :cond_7
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    #@68
    .line 349
    iget v4, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    #@6a
    iget v5, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    #@6c
    .line 350
    iget-wide v6, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    #@6e
    iget v8, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    #@70
    move v2, p1

    #@71
    move-object v3, p2

    #@72
    .line 348
    invoke-static/range {v0 .. v8}, Landroid/media/MediaMuxer;->nativeWriteSampleData(JILjava/nio/ByteBuffer;IIJI)V

    #@75
    .line 321
    return-void
.end method
