.class public Landroid/hardware/camera2/MultiResolutionImageReader;
.super Ljava/lang/Object;
.source "MultiResolutionImageReader.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# static fields
.field private static final blacklist TAG:Ljava/lang/String; = "MultiResolutionImageReader"


# instance fields
.field private final blacklist mFormat:I

.field private final blacklist mMaxImages:I

.field private final blacklist mReaders:[Landroid/media/ImageReader;

.field private final blacklist mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;


# direct methods
.method public constructor whitelist <init>(Ljava/util/Collection;II)V
    .registers 11
    .param p2, "format"    # I
    .param p3, "maxImages"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/params/MultiResolutionStreamInfo;",
            ">;II)V"
        }
    .end annotation

    .line 136
    .local p1, "streams":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/camera2/params/MultiResolutionStreamInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 137
    iput p2, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mFormat:I

    .line 138
    iput p3, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mMaxImages:I

    .line 140
    if-eqz p1, :cond_5e

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_5e

    .line 144
    iget v0, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mMaxImages:I

    if-lt v0, v1, :cond_56

    .line 149
    const/16 v0, 0x11

    if-eq p2, v0, :cond_4e

    .line 154
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 155
    .local v0, "numImageReaders":I
    new-array v1, v0, [Landroid/media/ImageReader;

    iput-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    .line 156
    new-array v1, v0, [Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    iput-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    .line 157
    const/4 v1, 0x0

    .line 158
    .local v1, "index":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4d

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    .line 159
    .local v3, "streamInfo":Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
    iget-object v4, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getWidth()I

    move-result v5

    .line 160
    invoke-virtual {v3}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getHeight()I

    move-result v6

    .line 159
    invoke-static {v5, v6, p2, p3}, Landroid/media/ImageReader;->newInstance(IIII)Landroid/media/ImageReader;

    move-result-object v5

    aput-object v5, v4, v1

    .line 161
    iget-object v4, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    aput-object v3, v4, v1

    .line 162
    nop

    .end local v3    # "streamInfo":Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
    add-int/lit8 v1, v1, 0x1

    .line 163
    goto :goto_29

    .line 164
    :cond_4d
    return-void

    .line 150
    .end local v0    # "numImageReaders":I
    .end local v1    # "index":I
    :cond_4e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NV21 format is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 145
    :cond_56
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum outstanding image count must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 141
    :cond_5e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The streams info collection must contain at least 2 entries"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor whitelist <init>(Ljava/util/Collection;IIJ)V
    .registers 17
    .param p2, "format"    # I
    .param p3, "maxImages"    # I
    .param p4, "usage"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Landroid/hardware/camera2/params/MultiResolutionStreamInfo;",
            ">;IIJ)V"
        }
    .end annotation

    .line 233
    .local p1, "streams":Ljava/util/Collection;, "Ljava/util/Collection<Landroid/hardware/camera2/params/MultiResolutionStreamInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    iput p2, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mFormat:I

    .line 235
    iput p3, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mMaxImages:I

    .line 237
    if-eqz p1, :cond_61

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_61

    .line 241
    iget v0, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mMaxImages:I

    if-lt v0, v1, :cond_59

    .line 246
    const/16 v0, 0x11

    if-eq p2, v0, :cond_51

    .line 251
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    .line 252
    .local v0, "numImageReaders":I
    new-array v1, v0, [Landroid/media/ImageReader;

    iput-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    .line 253
    new-array v1, v0, [Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    iput-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    .line 254
    const/4 v1, 0x0

    .line 255
    .local v1, "index":I
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_29
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_50

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    .line 256
    .local v3, "streamInfo":Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
    iget-object v4, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    invoke-virtual {v3}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getWidth()I

    move-result v5

    .line 257
    invoke-virtual {v3}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getHeight()I

    move-result v6

    .line 256
    move v7, p2

    move v8, p3

    move-wide v9, p4

    invoke-static/range {v5 .. v10}, Landroid/media/ImageReader;->newInstance(IIIIJ)Landroid/media/ImageReader;

    move-result-object v5

    aput-object v5, v4, v1

    .line 258
    iget-object v4, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    aput-object v3, v4, v1

    .line 259
    nop

    .end local v3    # "streamInfo":Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
    add-int/lit8 v1, v1, 0x1

    .line 260
    goto :goto_29

    .line 261
    :cond_50
    return-void

    .line 247
    .end local v0    # "numImageReaders":I
    .end local v1    # "index":I
    :cond_51
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "NV21 format is not supported"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 242
    :cond_59
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Maximum outstanding image count must be at least 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 238
    :cond_61
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The streams info collection must contain at least 2 entries"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 3

    .line 290
    invoke-virtual {p0}, Landroid/hardware/camera2/MultiResolutionImageReader;->flush()V

    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    array-length v1, v1

    if-ge v0, v1, :cond_13

    .line 293
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ImageReader;->close()V

    .line 292
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 295
    .end local v0    # "i":I
    :cond_13
    return-void
.end method

.method protected whitelist test-api finalize()V
    .registers 1

    .line 299
    invoke-virtual {p0}, Landroid/hardware/camera2/MultiResolutionImageReader;->close()V

    .line 300
    return-void
.end method

.method public whitelist flush()V
    .registers 2

    .line 310
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/hardware/camera2/MultiResolutionImageReader;->flushOther(Landroid/media/ImageReader;)V

    .line 311
    return-void
.end method

.method public blacklist flushOther(Landroid/media/ImageReader;)V
    .registers 4
    .param p1, "reader"    # Landroid/media/ImageReader;

    .line 324
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    array-length v1, v1

    if-ge v0, v1, :cond_21

    .line 325
    if-eqz p1, :cond_f

    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_f

    .line 326
    goto :goto_1a

    .line 330
    :cond_f
    :goto_f
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ImageReader;->acquireNextImageNoThrowISE()Landroid/media/Image;

    move-result-object v1

    .line 331
    .local v1, "image":Landroid/media/Image;
    if-nez v1, :cond_1d

    .line 332
    nop

    .line 324
    .end local v1    # "image":Landroid/media/Image;
    :goto_1a
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 334
    .restart local v1    # "image":Landroid/media/Image;
    :cond_1d
    invoke-virtual {v1}, Landroid/media/Image;->close()V

    .line 336
    .end local v1    # "image":Landroid/media/Image;
    goto :goto_f

    .line 338
    .end local v0    # "i":I
    :cond_21
    return-void
.end method

.method public blacklist getReaders()[Landroid/media/ImageReader;
    .registers 2

    .line 346
    iget-object v0, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    return-object v0
.end method

.method public whitelist getStreamInfoForImageReader(Landroid/media/ImageReader;)Landroid/hardware/camera2/params/MultiResolutionStreamInfo;
    .registers 4
    .param p1, "reader"    # Landroid/media/ImageReader;

    .line 437
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    array-length v1, v1

    if-ge v0, v1, :cond_14

    .line 438
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    if-ne p1, v1, :cond_11

    .line 439
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    aget-object v1, v1, v0

    return-object v1

    .line 437
    :cond_11
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 443
    .end local v0    # "i":I
    :cond_14
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "ImageReader doesn\'t belong to this multi-resolution imagereader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist getSurface()Landroid/view/Surface;
    .registers 6

    .line 412
    iget-object v0, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/media/ImageReader;->getWidth()I

    move-result v0

    iget-object v2, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/media/ImageReader;->getHeight()I

    move-result v2

    mul-int/2addr v0, v2

    .line 413
    .local v0, "minReaderSize":I
    iget-object v2, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v1, v2, v1

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 414
    .local v1, "candidateSurface":Landroid/view/Surface;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1b
    iget-object v3, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    array-length v3, v3

    if-ge v2, v3, :cond_3f

    .line 415
    iget-object v3, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Landroid/media/ImageReader;->getWidth()I

    move-result v3

    iget-object v4, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/media/ImageReader;->getHeight()I

    move-result v4

    mul-int/2addr v3, v4

    .line 416
    .local v3, "readerSize":I
    if-ge v3, v0, :cond_3c

    .line 417
    move v0, v3

    .line 418
    iget-object v4, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v4, v4, v2

    invoke-virtual {v4}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    .line 414
    .end local v3    # "readerSize":I
    :cond_3c
    add-int/lit8 v2, v2, 0x1

    goto :goto_1b

    .line 421
    .end local v2    # "i":I
    :cond_3f
    return-object v1
.end method

.method public blacklist getSurface(Landroid/util/Size;Ljava/lang/String;)Landroid/view/Surface;
    .registers 6
    .param p1, "configuredSize"    # Landroid/util/Size;
    .param p2, "physicalCameraId"    # Ljava/lang/String;

    .line 381
    const-string v0, "configuredSize must not be null"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 382
    const-string/jumbo v0, "physicalCameraId must not be null"

    invoke-static {p2, v0}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 384
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_c
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    array-length v1, v1

    if-ge v0, v1, :cond_47

    .line 385
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getWidth()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    if-ne v1, v2, :cond_44

    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    aget-object v1, v1, v0

    .line 386
    invoke-virtual {v1}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getHeight()I

    move-result v1

    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    if-ne v1, v2, :cond_44

    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mStreamInfo:[Landroid/hardware/camera2/params/MultiResolutionStreamInfo;

    aget-object v1, v1, v0

    .line 387
    invoke-virtual {v1}, Landroid/hardware/camera2/params/MultiResolutionStreamInfo;->getPhysicalCameraId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_44

    .line 388
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Landroid/media/ImageReader;->getSurface()Landroid/view/Surface;

    move-result-object v1

    return-object v1

    .line 384
    :cond_44
    add-int/lit8 v0, v0, 0x1

    goto :goto_c

    .line 391
    .end local v0    # "i":I
    :cond_47
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "configuredSize and physicalCameraId don\'t match with this MultiResolutionImageReader"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public whitelist setOnImageAvailableListener(Landroid/media/ImageReader$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V
    .registers 5
    .param p1, "listener"    # Landroid/media/ImageReader$OnImageAvailableListener;
    .param p2, "executor"    # Ljava/util/concurrent/Executor;

    .line 283
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    array-length v1, v1

    if-ge v0, v1, :cond_10

    .line 284
    iget-object v1, p0, Landroid/hardware/camera2/MultiResolutionImageReader;->mReaders:[Landroid/media/ImageReader;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1, p2}, Landroid/media/ImageReader;->setOnImageAvailableListenerWithExecutor(Landroid/media/ImageReader$OnImageAvailableListener;Ljava/util/concurrent/Executor;)V

    .line 283
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 286
    .end local v0    # "i":I
    :cond_10
    return-void
.end method
