.class public final Landroid/media/MediaMuxer;
.super Ljava/lang/Object;
.source "MediaMuxer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaMuxer$OutputFormat;,
        Landroid/media/MediaMuxer$Format;
    }
.end annotation


# static fields
.field private static final greylist-max-o MUXER_STATE_INITIALIZED:I = 0x0

.field private static final greylist-max-r MUXER_STATE_STARTED:I = 0x1

.field private static final greylist-max-r MUXER_STATE_STOPPED:I = 0x2

.field private static final greylist-max-r MUXER_STATE_UNINITIALIZED:I = -0x1


# instance fields
.field private final greylist-max-r mCloseGuard:Ldalvik/system/CloseGuard;

.field private greylist-max-o mLastTrackIndex:I

.field private greylist-max-r mNativeObject:J

.field private greylist-max-r mState:I


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 1

    .line 250
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 251
    return-void
.end method

.method public constructor whitelist <init>(Ljava/io/FileDescriptor;I)V
    .registers 5
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    .line 321
    nop

    .line 322
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 323
    iput v0, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    .line 387
    invoke-direct {p0, p1, p2}, Landroid/media/MediaMuxer;->setUpMediaMuxer(Ljava/io/FileDescriptor;I)V

    .line 388
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;I)V
    .registers 6
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 318
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    .line 321
    nop

    .line 322
    invoke-static {}, Ldalvik/system/CloseGuard;->get()Ldalvik/system/CloseGuard;

    move-result-object v1

    iput-object v1, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    .line 323
    iput v0, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    .line 353
    if-eqz p1, :cond_32

    .line 358
    const/4 v0, 0x0

    .line 360
    .local v0, "file":Ljava/io/RandomAccessFile;
    :try_start_12
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v2, "rws"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 361
    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->setLength(J)V

    .line 362
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v1

    .line 363
    .local v1, "fd":Ljava/io/FileDescriptor;
    invoke-direct {p0, v1, p2}, Landroid/media/MediaMuxer;->setUpMediaMuxer(Ljava/io/FileDescriptor;I)V
    :try_end_26
    .catchall {:try_start_12 .. :try_end_26} :catchall_2b

    .line 365
    .end local v1    # "fd":Ljava/io/FileDescriptor;
    nop

    .line 366
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 369
    return-void

    .line 365
    :catchall_2b
    move-exception v1

    if-eqz v0, :cond_31

    .line 366
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V

    .line 368
    :cond_31
    throw v1

    .line 354
    .end local v0    # "file":Ljava/io/RandomAccessFile;
    :cond_32
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "path must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private blacklist convertMuxerStateCodeToString(I)Ljava/lang/String;
    .registers 3
    .param p1, "aState"    # I

    .line 329
    packed-switch p1, :pswitch_data_12

    .line 339
    const-string v0, "UNKNOWN"

    return-object v0

    .line 337
    :pswitch_6
    const-string v0, "STOPPED"

    return-object v0

    .line 335
    :pswitch_9
    const-string v0, "STARTED"

    return-object v0

    .line 333
    :pswitch_c
    const-string v0, "INITIALIZED"

    return-object v0

    .line 331
    :pswitch_f
    const-string v0, "UNINITIALIZED"

    return-object v0

    :pswitch_data_12
    .packed-switch -0x1
        :pswitch_f
        :pswitch_c
        :pswitch_9
        :pswitch_6
    .end packed-switch
.end method

.method private static native greylist-max-o nativeAddTrack(J[Ljava/lang/String;[Ljava/lang/Object;)I
.end method

.method private static native greylist-max-r nativeRelease(J)V
.end method

.method private static native greylist-max-o nativeSetLocation(JII)V
.end method

.method private static native greylist-max-o nativeSetOrientationHint(JI)V
.end method

.method private static native greylist-max-r nativeSetup(Ljava/io/FileDescriptor;I)J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method private static native greylist-max-o nativeStart(J)V
.end method

.method private static native greylist-max-o nativeStop(J)V
.end method

.method private static native greylist-max-o nativeWriteSampleData(JILjava/nio/ByteBuffer;IIJI)V
.end method

.method private greylist-max-o setUpMediaMuxer(Ljava/io/FileDescriptor;I)V
    .registers 6
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "format"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 391
    if-ltz p2, :cond_16

    const/4 v0, 0x4

    if-gt p2, v0, :cond_16

    .line 394
    invoke-static {p1, p2}, Landroid/media/MediaMuxer;->nativeSetup(Ljava/io/FileDescriptor;I)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    .line 395
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    .line 396
    iget-object v0, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    const-string v1, "release"

    invoke-virtual {v0, v1}, Ldalvik/system/CloseGuard;->open(Ljava/lang/String;)V

    .line 397
    return-void

    .line 392
    :cond_16
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "format: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is invalid"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist addTrack(Landroid/media/MediaFormat;)I
    .registers 11
    .param p1, "format"    # Landroid/media/MediaFormat;

    .line 705
    if-eqz p1, :cond_74

    .line 708
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    if-nez v0, :cond_6c

    .line 711
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_64

    .line 714
    const/4 v0, -0x1

    .line 716
    .local v0, "trackIndex":I
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    move-result-object v1

    .line 718
    .local v1, "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    const/4 v2, 0x0

    .line 719
    .local v2, "keys":[Ljava/lang/String;
    const/4 v3, 0x0

    .line 720
    .local v3, "values":[Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v4

    .line 721
    .local v4, "mapSize":I
    if-lez v4, :cond_5c

    .line 722
    new-array v2, v4, [Ljava/lang/String;

    .line 723
    new-array v3, v4, [Ljava/lang/Object;

    .line 724
    const/4 v5, 0x0

    .line 725
    .local v5, "i":I
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_28
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_46

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/Map$Entry;

    .line 726
    .local v7, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v7}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    aput-object v8, v2, v5

    .line 727
    invoke-interface {v7}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    aput-object v8, v3, v5

    .line 728
    nop

    .end local v7    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    add-int/lit8 v5, v5, 0x1

    .line 729
    goto :goto_28

    .line 730
    :cond_46
    iget-wide v6, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    invoke-static {v6, v7, v2, v3}, Landroid/media/MediaMuxer;->nativeAddTrack(J[Ljava/lang/String;[Ljava/lang/Object;)I

    move-result v0

    .line 731
    .end local v5    # "i":I
    nop

    .line 737
    iget v5, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    if-ge v5, v0, :cond_54

    .line 740
    iput v0, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    .line 741
    return v0

    .line 738
    :cond_54
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "Invalid format."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 732
    :cond_5c
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string v6, "format must not be empty."

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 712
    .end local v0    # "trackIndex":I
    .end local v1    # "formatMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "keys":[Ljava/lang/String;
    .end local v3    # "values":[Ljava/lang/Object;
    .end local v4    # "mapSize":I
    :cond_64
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Muxer has been released!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 709
    :cond_6c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Muxer is not initialized."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 706
    :cond_74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "format must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 505
    :try_start_0
    iget-object v0, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    if-eqz v0, :cond_9

    .line 506
    iget-object v0, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->warnIfOpen()V

    .line 508
    :cond_9
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_18

    .line 509
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/media/MediaMuxer;->nativeRelease(J)V

    .line 510
    iput-wide v2, p0, Landroid/media/MediaMuxer;->mNativeObject:J
    :try_end_18
    .catchall {:try_start_0 .. :try_end_18} :catchall_1d

    .line 513
    :cond_18
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 514
    nop

    .line 515
    return-void

    .line 513
    :catchall_1d
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 514
    throw v0
.end method

.method public whitelist release()V
    .registers 5

    .line 803
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    .line 804
    invoke-virtual {p0}, Landroid/media/MediaMuxer;->stop()V

    .line 806
    :cond_8
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1c

    .line 807
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/media/MediaMuxer;->nativeRelease(J)V

    .line 808
    iput-wide v2, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    .line 809
    iget-object v0, p0, Landroid/media/MediaMuxer;->mCloseGuard:Ldalvik/system/CloseGuard;

    invoke-virtual {v0}, Ldalvik/system/CloseGuard;->close()V

    .line 811
    :cond_1c
    const/4 v0, -0x1

    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    .line 812
    return-void
.end method

.method public whitelist setLocation(FF)V
    .registers 9
    .param p1, "latitude"    # F
    .param p2, "longitude"    # F

    .line 442
    const v0, 0x461c4000    # 10000.0f

    mul-float v1, p1, v0

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 443
    .local v1, "latitudex10000":I
    mul-float/2addr v0, p2

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 445
    .local v0, "longitudex10000":I
    const v2, 0xdbba0

    if-gt v1, v2, :cond_78

    const v2, -0xdbba0

    if-lt v1, v2, :cond_78

    .line 449
    const v2, 0x1b7740

    if-gt v0, v2, :cond_59

    const v2, -0x1b7740

    if-lt v0, v2, :cond_59

    .line 454
    iget v2, p0, Landroid/media/MediaMuxer;->mState:I

    if-nez v2, :cond_34

    iget-wide v2, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_34

    .line 455
    iget-wide v2, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    invoke-static {v2, v3, v1, v0}, Landroid/media/MediaMuxer;->nativeSetLocation(JII)V

    .line 460
    return-void

    .line 457
    :cond_34
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Can\'t set location due to wrong state("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/media/MediaMuxer;->mState:I

    .line 458
    invoke-direct {p0, v4}, Landroid/media/MediaMuxer;->convertMuxerStateCodeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 450
    :cond_59
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Longitude: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 451
    .local v2, "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 446
    .end local v2    # "msg":Ljava/lang/String;
    :cond_78
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Latitude: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " out of range."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 447
    .restart local v2    # "msg":Ljava/lang/String;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public whitelist setOrientationHint(I)V
    .registers 5
    .param p1, "degrees"    # I

    .line 415
    if-eqz p1, :cond_28

    const/16 v0, 0x5a

    if-eq p1, v0, :cond_28

    const/16 v0, 0xb4

    if-eq p1, v0, :cond_28

    const/16 v0, 0x10e

    if-ne p1, v0, :cond_f

    goto :goto_28

    .line 416
    :cond_f
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported angle: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 418
    :cond_28
    :goto_28
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    if-nez v0, :cond_32

    .line 419
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    invoke-static {v0, v1, p1}, Landroid/media/MediaMuxer;->nativeSetOrientationHint(JI)V

    .line 424
    return-void

    .line 421
    :cond_32
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t set rotation degrees due to wrong state("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/MediaMuxer;->mState:I

    .line 422
    invoke-direct {p0, v2}, Landroid/media/MediaMuxer;->convertMuxerStateCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist start()V
    .registers 5

    .line 470
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3a

    .line 473
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    if-nez v0, :cond_15

    .line 474
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    invoke-static {v0, v1}, Landroid/media/MediaMuxer;->nativeStart(J)V

    .line 475
    const/4 v0, 0x1

    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    .line 480
    return-void

    .line 477
    :cond_15
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t start due to wrong state("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/MediaMuxer;->mState:I

    .line 478
    invoke-direct {p0, v2}, Landroid/media/MediaMuxer;->convertMuxerStateCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 471
    :cond_3a
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Muxer has been released!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist stop()V
    .registers 4

    .line 488
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_17

    .line 490
    const/4 v0, 0x2

    :try_start_6
    iget-wide v1, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    invoke-static {v1, v2}, Landroid/media/MediaMuxer;->nativeStop(J)V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_11
    .catchall {:try_start_6 .. :try_end_b} :catchall_f

    .line 494
    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    .line 495
    nop

    .line 500
    return-void

    .line 494
    :catchall_f
    move-exception v1

    goto :goto_14

    .line 491
    :catch_11
    move-exception v1

    .line 492
    .local v1, "e":Ljava/lang/Exception;
    nop

    .end local p0    # "this":Landroid/media/MediaMuxer;
    :try_start_13
    throw v1
    :try_end_14
    .catchall {:try_start_13 .. :try_end_14} :catchall_f

    .line 494
    .end local v1    # "e":Ljava/lang/Exception;
    .restart local p0    # "this":Landroid/media/MediaMuxer;
    :goto_14
    iput v0, p0, Landroid/media/MediaMuxer;->mState:I

    .line 495
    throw v1

    .line 497
    :cond_17
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t stop due to wrong state("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/MediaMuxer;->mState:I

    .line 498
    invoke-direct {p0, v2}, Landroid/media/MediaMuxer;->convertMuxerStateCodeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist writeSampleData(ILjava/nio/ByteBuffer;Landroid/media/MediaCodec$BufferInfo;)V
    .registers 15
    .param p1, "trackIndex"    # I
    .param p2, "byteBuf"    # Ljava/nio/ByteBuffer;
    .param p3, "bufferInfo"    # Landroid/media/MediaCodec$BufferInfo;

    .line 767
    if-ltz p1, :cond_6f

    iget v0, p0, Landroid/media/MediaMuxer;->mLastTrackIndex:I

    if-gt p1, v0, :cond_6f

    .line 771
    if-eqz p2, :cond_65

    .line 775
    if-eqz p3, :cond_5b

    .line 778
    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    if-ltz v0, :cond_51

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    if-ltz v0, :cond_51

    iget v0, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v1, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    add-int/2addr v0, v1

    .line 779
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-gt v0, v1, :cond_4e

    .line 784
    iget-wide v0, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_44

    .line 788
    iget v0, p0, Landroid/media/MediaMuxer;->mState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3a

    .line 792
    iget-wide v2, p0, Landroid/media/MediaMuxer;->mNativeObject:J

    iget v6, p3, Landroid/media/MediaCodec$BufferInfo;->offset:I

    iget v7, p3, Landroid/media/MediaCodec$BufferInfo;->size:I

    iget-wide v8, p3, Landroid/media/MediaCodec$BufferInfo;->presentationTimeUs:J

    iget v10, p3, Landroid/media/MediaCodec$BufferInfo;->flags:I

    move v4, p1

    move-object v5, p2

    .end local p1    # "trackIndex":I
    .end local p2    # "byteBuf":Ljava/nio/ByteBuffer;
    .local v4, "trackIndex":I
    .local v5, "byteBuf":Ljava/nio/ByteBuffer;
    invoke-static/range {v2 .. v10}, Landroid/media/MediaMuxer;->nativeWriteSampleData(JILjava/nio/ByteBuffer;IIJI)V

    .line 795
    return-void

    .line 789
    .end local v4    # "trackIndex":I
    .end local v5    # "byteBuf":Ljava/nio/ByteBuffer;
    .restart local p1    # "trackIndex":I
    .restart local p2    # "byteBuf":Ljava/nio/ByteBuffer;
    :cond_3a
    move v4, p1

    move-object v5, p2

    .end local p1    # "trackIndex":I
    .end local p2    # "byteBuf":Ljava/nio/ByteBuffer;
    .restart local v4    # "trackIndex":I
    .restart local v5    # "byteBuf":Ljava/nio/ByteBuffer;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Can\'t write, muxer is not started"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 785
    .end local v4    # "trackIndex":I
    .end local v5    # "byteBuf":Ljava/nio/ByteBuffer;
    .restart local p1    # "trackIndex":I
    .restart local p2    # "byteBuf":Ljava/nio/ByteBuffer;
    :cond_44
    move v4, p1

    move-object v5, p2

    .end local p1    # "trackIndex":I
    .end local p2    # "byteBuf":Ljava/nio/ByteBuffer;
    .restart local v4    # "trackIndex":I
    .restart local v5    # "byteBuf":Ljava/nio/ByteBuffer;
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Muxer has been released!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 779
    .end local v4    # "trackIndex":I
    .end local v5    # "byteBuf":Ljava/nio/ByteBuffer;
    .restart local p1    # "trackIndex":I
    .restart local p2    # "byteBuf":Ljava/nio/ByteBuffer;
    :cond_4e
    move v4, p1

    move-object v5, p2

    .end local p1    # "trackIndex":I
    .end local p2    # "byteBuf":Ljava/nio/ByteBuffer;
    .restart local v4    # "trackIndex":I
    .restart local v5    # "byteBuf":Ljava/nio/ByteBuffer;
    goto :goto_53

    .line 778
    .end local v4    # "trackIndex":I
    .end local v5    # "byteBuf":Ljava/nio/ByteBuffer;
    .restart local p1    # "trackIndex":I
    .restart local p2    # "byteBuf":Ljava/nio/ByteBuffer;
    :cond_51
    move v4, p1

    move-object v5, p2

    .line 780
    .end local p1    # "trackIndex":I
    .end local p2    # "byteBuf":Ljava/nio/ByteBuffer;
    .restart local v4    # "trackIndex":I
    .restart local v5    # "byteBuf":Ljava/nio/ByteBuffer;
    :goto_53
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bufferInfo must specify a valid buffer offset and size"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 776
    .end local v4    # "trackIndex":I
    .end local v5    # "byteBuf":Ljava/nio/ByteBuffer;
    .restart local p1    # "trackIndex":I
    .restart local p2    # "byteBuf":Ljava/nio/ByteBuffer;
    :cond_5b
    move v4, p1

    move-object v5, p2

    .end local p1    # "trackIndex":I
    .end local p2    # "byteBuf":Ljava/nio/ByteBuffer;
    .restart local v4    # "trackIndex":I
    .restart local v5    # "byteBuf":Ljava/nio/ByteBuffer;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "bufferInfo must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 772
    .end local v4    # "trackIndex":I
    .end local v5    # "byteBuf":Ljava/nio/ByteBuffer;
    .restart local p1    # "trackIndex":I
    .restart local p2    # "byteBuf":Ljava/nio/ByteBuffer;
    :cond_65
    move v4, p1

    move-object v5, p2

    .end local p1    # "trackIndex":I
    .end local p2    # "byteBuf":Ljava/nio/ByteBuffer;
    .restart local v4    # "trackIndex":I
    .restart local v5    # "byteBuf":Ljava/nio/ByteBuffer;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "byteBuffer must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 767
    .end local v4    # "trackIndex":I
    .end local v5    # "byteBuf":Ljava/nio/ByteBuffer;
    .restart local p1    # "trackIndex":I
    .restart local p2    # "byteBuf":Ljava/nio/ByteBuffer;
    :cond_6f
    move v4, p1

    move-object v5, p2

    .line 768
    .end local p1    # "trackIndex":I
    .end local p2    # "byteBuf":Ljava/nio/ByteBuffer;
    .restart local v4    # "trackIndex":I
    .restart local v5    # "byteBuf":Ljava/nio/ByteBuffer;
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "trackIndex is invalid"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
