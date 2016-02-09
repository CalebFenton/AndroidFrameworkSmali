.class public Landroid/media/ImageWriter;
.super Ljava/lang/Object;
.source "ImageWriter.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageWriter$OnImageReleasedListener;,
        Landroid/media/ImageWriter$ListenerHandler;,
        Landroid/media/ImageWriter$WriterSurfaceImage;
    }
.end annotation


# instance fields
.field private mDequeuedImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

.field private mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

.field private final mListenerLock:Ljava/lang/Object;

.field private final mMaxImages:I

.field private mNativeContext:J

.field private mWriterFormat:I


# direct methods
.method static synthetic -get0(Landroid/media/ImageWriter;)Landroid/media/ImageWriter$OnImageReleasedListener;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/ImageWriter;->mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

    #@2
    return-object v0
.end method

.method static synthetic -get1(Landroid/media/ImageWriter;)Ljava/lang/Object;
    .locals 1

    #@0
    iget-object v0, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    #@2
    return-object v0
.end method

.method static synthetic -wrap0(Landroid/media/ImageWriter;Landroid/media/Image;)V
    .locals 0
    .param p1, "image"    # Landroid/media/Image;

    #@0
    .prologue
    invoke-direct {p0, p1}, Landroid/media/ImageWriter;->abortImage(Landroid/media/Image;)V

    #@3
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    #@0
    .prologue
    .line 811
    const-string/jumbo v0, "media_jni"

    #@3
    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    #@6
    .line 812
    invoke-static {}, Landroid/media/ImageWriter;->nativeClassInit()V

    #@9
    .line 76
    return-void
.end method

.method protected constructor <init>(Landroid/view/Surface;I)V
    .locals 3
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "maxImages"    # I

    #@0
    .prologue
    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 77
    new-instance v0, Ljava/lang/Object;

    #@5
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    #@8
    iput-object v0, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    #@a
    .line 87
    new-instance v0, Ljava/util/ArrayList;

    #@c
    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    #@f
    iput-object v0, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    #@11
    .line 122
    if-eqz p1, :cond_0

    #@13
    const/4 v0, 0x1

    #@14
    if-ge p2, v0, :cond_1

    #@16
    .line 123
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    #@18
    new-instance v1, Ljava/lang/StringBuilder;

    #@1a
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@1d
    const-string/jumbo v2, "Illegal input argument: surface "

    #@20
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@23
    move-result-object v1

    #@24
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@27
    move-result-object v1

    #@28
    .line 124
    const-string/jumbo v2, ", maxImages: "

    #@2b
    .line 123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2e
    move-result-object v1

    #@2f
    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@32
    move-result-object v1

    #@33
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@36
    move-result-object v1

    #@37
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@3a
    throw v0

    #@3b
    .line 127
    :cond_1
    iput p2, p0, Landroid/media/ImageWriter;->mMaxImages:I

    #@3d
    .line 130
    new-instance v0, Ljava/lang/ref/WeakReference;

    #@3f
    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    #@42
    invoke-direct {p0, v0, p1, p2}, Landroid/media/ImageWriter;->nativeInit(Ljava/lang/Object;Landroid/view/Surface;I)J

    #@45
    move-result-wide v0

    #@46
    iput-wide v0, p0, Landroid/media/ImageWriter;->mNativeContext:J

    #@48
    .line 121
    return-void
.end method

.method private abortImage(Landroid/media/Image;)V
    .locals 4
    .param p1, "image"    # Landroid/media/Image;

    #@0
    .prologue
    .line 562
    if-nez p1, :cond_0

    #@2
    .line 563
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "image shouldn\'t be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 566
    :cond_0
    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    #@d
    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    #@10
    move-result v1

    #@11
    if-nez v1, :cond_1

    #@13
    .line 567
    new-instance v1, Ljava/lang/IllegalStateException;

    #@15
    const-string/jumbo v2, "It is illegal to abort some image that is not dequeued yet"

    #@18
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@1b
    throw v1

    #@1c
    :cond_1
    move-object v0, p1

    #@1d
    .line 571
    check-cast v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    #@1f
    .line 573
    .local v0, "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    iget-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    #@21
    if-nez v1, :cond_2

    #@23
    .line 574
    new-instance v1, Ljava/lang/IllegalStateException;

    #@25
    const-string/jumbo v2, "Image is invalid"

    #@28
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v1

    #@2c
    .line 583
    :cond_2
    iget-wide v2, p0, Landroid/media/ImageWriter;->mNativeContext:J

    #@2e
    invoke-direct {p0, v2, v3, p1}, Landroid/media/ImageWriter;->cancelImage(JLandroid/media/Image;)V

    #@31
    .line 584
    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    #@33
    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@36
    .line 585
    invoke-static {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->-wrap0(Landroid/media/ImageWriter$WriterSurfaceImage;)V

    #@39
    .line 586
    const/4 v1, 0x0

    #@3a
    iput-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    #@3c
    .line 561
    return-void
.end method

.method private attachAndQueueInputImage(Landroid/media/Image;)V
    .locals 13
    .param p1, "image"    # Landroid/media/Image;

    #@0
    .prologue
    .line 474
    if-nez p1, :cond_0

    #@2
    .line 475
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v2, "image shouldn\'t be null"

    #@7
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v1

    #@b
    .line 477
    :cond_0
    invoke-direct {p0, p1}, Landroid/media/ImageWriter;->isImageOwnedByMe(Landroid/media/Image;)Z

    #@e
    move-result v1

    #@f
    if-eqz v1, :cond_1

    #@11
    .line 478
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@13
    .line 479
    const-string/jumbo v2, "Can not attach an image that is owned ImageWriter already"

    #@16
    .line 478
    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@19
    throw v1

    #@1a
    .line 487
    :cond_1
    invoke-virtual {p1}, Landroid/media/Image;->isAttachable()Z

    #@1d
    move-result v1

    #@1e
    if-nez v1, :cond_2

    #@20
    .line 488
    new-instance v1, Ljava/lang/IllegalStateException;

    #@22
    const-string/jumbo v2, "Image was not detached from last owner, or image  is not detachable"

    #@25
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@28
    throw v1

    #@29
    .line 495
    :cond_2
    invoke-virtual {p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    #@2c
    move-result-object v0

    #@2d
    .line 496
    .local v0, "crop":Landroid/graphics/Rect;
    iget-wide v2, p0, Landroid/media/ImageWriter;->mNativeContext:J

    #@2f
    invoke-virtual {p1}, Landroid/media/Image;->getNativeContext()J

    #@32
    move-result-wide v4

    #@33
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    #@36
    move-result v6

    #@37
    .line 497
    invoke-virtual {p1}, Landroid/media/Image;->getTimestamp()J

    #@3a
    move-result-wide v7

    #@3b
    iget v9, v0, Landroid/graphics/Rect;->left:I

    #@3d
    iget v10, v0, Landroid/graphics/Rect;->top:I

    #@3f
    iget v11, v0, Landroid/graphics/Rect;->right:I

    #@41
    iget v12, v0, Landroid/graphics/Rect;->bottom:I

    #@43
    move-object v1, p0

    #@44
    .line 496
    invoke-direct/range {v1 .. v12}, Landroid/media/ImageWriter;->nativeAttachAndQueueImage(JJIJIIII)I

    #@47
    .line 473
    return-void
.end method

.method private synchronized native declared-synchronized cancelImage(JLandroid/media/Image;)V
.end method

.method private isImageOwnedByMe(Landroid/media/Image;)Z
    .locals 3
    .param p1, "image"    # Landroid/media/Image;

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 590
    instance-of v1, p1, Landroid/media/ImageWriter$WriterSurfaceImage;

    #@3
    if-nez v1, :cond_0

    #@5
    .line 591
    return v2

    #@6
    :cond_0
    move-object v0, p1

    #@7
    .line 593
    check-cast v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    #@9
    .line 594
    .local v0, "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    invoke-virtual {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->getOwner()Landroid/media/ImageWriter;

    #@c
    move-result-object v1

    #@d
    if-eq v1, p0, :cond_1

    #@f
    .line 595
    return v2

    #@10
    .line 598
    :cond_1
    const/4 v1, 0x1

    #@11
    return v1
.end method

.method private synchronized native declared-synchronized nativeAttachAndQueueImage(JJIJIIII)I
.end method

.method private static native nativeClassInit()V
.end method

.method private synchronized native declared-synchronized nativeClose(J)V
.end method

.method private synchronized native declared-synchronized nativeDequeueInputImage(JLandroid/media/Image;)V
.end method

.method private synchronized native declared-synchronized nativeInit(Ljava/lang/Object;Landroid/view/Surface;I)J
.end method

.method private synchronized native declared-synchronized nativeQueueInputImage(JLandroid/media/Image;JIIII)V
.end method

.method public static newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;
    .locals 1
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "maxImages"    # I

    #@0
    .prologue
    .line 115
    new-instance v0, Landroid/media/ImageWriter;

    #@2
    invoke-direct {v0, p0, p1}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;I)V

    #@5
    return-object v0
.end method

.method private static postEventFromNative(Ljava/lang/Object;)V
    .locals 5
    .param p0, "selfRef"    # Ljava/lang/Object;

    #@0
    .prologue
    move-object v2, p0

    #@1
    .line 528
    check-cast v2, Ljava/lang/ref/WeakReference;

    #@3
    .line 529
    .local v2, "weakSelf":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/ImageWriter;>;"
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    #@6
    move-result-object v1

    #@7
    check-cast v1, Landroid/media/ImageWriter;

    #@9
    .line 530
    .local v1, "iw":Landroid/media/ImageWriter;
    if-nez v1, :cond_0

    #@b
    .line 531
    return-void

    #@c
    .line 535
    :cond_0
    iget-object v3, v1, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    #@e
    monitor-enter v3

    #@f
    .line 536
    :try_start_0
    iget-object v0, v1, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@11
    .local v0, "handler":Landroid/os/Handler;
    monitor-exit v3

    #@12
    .line 538
    if-eqz v0, :cond_1

    #@14
    .line 539
    const/4 v3, 0x0

    #@15
    invoke-virtual {v0, v3}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    #@18
    .line 526
    :cond_1
    return-void

    #@19
    .line 535
    .end local v0    # "handler":Landroid/os/Handler;
    :catchall_0
    move-exception v4

    #@1a
    monitor-exit v3

    #@1b
    throw v4
.end method


# virtual methods
.method public close()V
    .locals 4

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 428
    invoke-virtual {p0, v2, v2}, Landroid/media/ImageWriter;->setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V

    #@4
    .line 429
    iget-object v2, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    #@6
    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    #@9
    move-result-object v1

    #@a
    .local v1, "image$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    #@d
    move-result v2

    #@e
    if-eqz v2, :cond_0

    #@10
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    #@13
    move-result-object v0

    #@14
    check-cast v0, Landroid/media/Image;

    #@16
    .line 430
    .local v0, "image":Landroid/media/Image;
    invoke-virtual {v0}, Landroid/media/Image;->close()V

    #@19
    goto :goto_0

    #@1a
    .line 432
    .end local v0    # "image":Landroid/media/Image;
    :cond_0
    iget-object v2, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    #@1c
    invoke-interface {v2}, Ljava/util/List;->clear()V

    #@1f
    .line 433
    iget-wide v2, p0, Landroid/media/ImageWriter;->mNativeContext:J

    #@21
    invoke-direct {p0, v2, v3}, Landroid/media/ImageWriter;->nativeClose(J)V

    #@24
    .line 434
    const-wide/16 v2, 0x0

    #@26
    iput-wide v2, p0, Landroid/media/ImageWriter;->mNativeContext:J

    #@28
    .line 427
    return-void
.end method

.method public dequeueInputImage()Landroid/media/Image;
    .locals 4

    #@0
    .prologue
    .line 205
    iget v1, p0, Landroid/media/ImageWriter;->mWriterFormat:I

    #@2
    const/16 v2, 0x22

    #@4
    if-ne v1, v2, :cond_0

    #@6
    .line 206
    new-instance v1, Ljava/lang/IllegalStateException;

    #@8
    .line 207
    const-string/jumbo v2, "PRIVATE format ImageWriter doesn\'t support this operation since the images are inaccessible to the application!"

    #@b
    .line 206
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@e
    throw v1

    #@f
    .line 211
    :cond_0
    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    #@11
    invoke-interface {v1}, Ljava/util/List;->size()I

    #@14
    move-result v1

    #@15
    iget v2, p0, Landroid/media/ImageWriter;->mMaxImages:I

    #@17
    if-lt v1, v2, :cond_1

    #@19
    .line 212
    new-instance v1, Ljava/lang/IllegalStateException;

    #@1b
    new-instance v2, Ljava/lang/StringBuilder;

    #@1d
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@20
    const-string/jumbo v3, "Already dequeued max number of Images "

    #@23
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v2

    #@27
    iget v3, p0, Landroid/media/ImageWriter;->mMaxImages:I

    #@29
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2c
    move-result-object v2

    #@2d
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@30
    move-result-object v2

    #@31
    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@34
    throw v1

    #@35
    .line 214
    :cond_1
    new-instance v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    #@37
    invoke-direct {v0, p0}, Landroid/media/ImageWriter$WriterSurfaceImage;-><init>(Landroid/media/ImageWriter;)V

    #@3a
    .line 215
    .local v0, "newImage":Landroid/media/ImageWriter$WriterSurfaceImage;
    iget-wide v2, p0, Landroid/media/ImageWriter;->mNativeContext:J

    #@3c
    invoke-direct {p0, v2, v3, v0}, Landroid/media/ImageWriter;->nativeDequeueInputImage(JLandroid/media/Image;)V

    #@3f
    .line 216
    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    #@41
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    #@44
    .line 217
    const/4 v1, 0x1

    #@45
    iput-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    #@47
    .line 218
    return-object v0
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    #@0
    .prologue
    .line 440
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageWriter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@3
    .line 442
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@6
    .line 438
    return-void

    #@7
    .line 441
    :catchall_0
    move-exception v0

    #@8
    .line 442
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    #@b
    .line 441
    throw v0
.end method

.method public getFormat()I
    .locals 1

    #@0
    .prologue
    .line 346
    iget v0, p0, Landroid/media/ImageWriter;->mWriterFormat:I

    #@2
    return v0
.end method

.method public getMaxImages()I
    .locals 1

    #@0
    .prologue
    .line 157
    iget v0, p0, Landroid/media/ImageWriter;->mMaxImages:I

    #@2
    return v0
.end method

.method public queueInputImage(Landroid/media/Image;)V
    .locals 17
    .param p1, "image"    # Landroid/media/Image;

    #@0
    .prologue
    .line 274
    if-nez p1, :cond_0

    #@2
    .line 275
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@4
    const-string/jumbo v3, "image shouldn\'t be null"

    #@7
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@a
    throw v2

    #@b
    .line 277
    :cond_0
    invoke-direct/range {p0 .. p1}, Landroid/media/ImageWriter;->isImageOwnedByMe(Landroid/media/Image;)Z

    #@e
    move-result v14

    #@f
    .line 278
    .local v14, "ownedByMe":Z
    if-eqz v14, :cond_1

    #@11
    move-object/from16 v2, p1

    #@13
    check-cast v2, Landroid/media/ImageWriter$WriterSurfaceImage;

    #@15
    iget-boolean v2, v2, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    #@17
    if-eqz v2, :cond_2

    #@19
    .line 283
    :cond_1
    if-nez v14, :cond_5

    #@1b
    .line 284
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    #@1e
    move-result-object v2

    #@1f
    instance-of v2, v2, Landroid/media/ImageReader;

    #@21
    if-nez v2, :cond_3

    #@23
    .line 285
    new-instance v2, Ljava/lang/IllegalArgumentException;

    #@25
    const-string/jumbo v3, "Only images from ImageReader can be queued to ImageWriter, other image source is not supported yet!"

    #@28
    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v2

    #@2c
    .line 279
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    #@2e
    const-string/jumbo v3, "Image from ImageWriter is invalid"

    #@31
    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    #@34
    throw v2

    #@35
    .line 289
    :cond_3
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    #@38
    move-result-object v15

    #@39
    check-cast v15, Landroid/media/ImageReader;

    #@3b
    .line 295
    .local v15, "prevOwner":Landroid/media/ImageReader;
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    #@3e
    move-result v2

    #@3f
    const/16 v3, 0x22

    #@41
    if-ne v2, v3, :cond_4

    #@43
    .line 296
    move-object/from16 v0, p1

    #@45
    invoke-virtual {v15, v0}, Landroid/media/ImageReader;->detachImage(Landroid/media/Image;)V

    #@48
    .line 297
    invoke-direct/range {p0 .. p1}, Landroid/media/ImageWriter;->attachAndQueueInputImage(Landroid/media/Image;)V

    #@4b
    .line 301
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->close()V

    #@4e
    .line 302
    return-void

    #@4f
    .line 304
    :cond_4
    invoke-virtual/range {p0 .. p0}, Landroid/media/ImageWriter;->dequeueInputImage()Landroid/media/Image;

    #@52
    move-result-object v13

    #@53
    .line 305
    .local v13, "inputImage":Landroid/media/Image;
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTimestamp()J

    #@56
    move-result-wide v2

    #@57
    invoke-virtual {v13, v2, v3}, Landroid/media/Image;->setTimestamp(J)V

    #@5a
    .line 306
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    #@5d
    move-result-object v2

    #@5e
    invoke-virtual {v13, v2}, Landroid/media/Image;->setCropRect(Landroid/graphics/Rect;)V

    #@61
    .line 307
    move-object/from16 v0, p1

    #@63
    invoke-static {v0, v13}, Landroid/media/ImageUtils;->imageCopy(Landroid/media/Image;Landroid/media/Image;)V

    #@66
    .line 308
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->close()V

    #@69
    .line 309
    move-object/from16 p1, v13

    #@6b
    .line 310
    const/4 v14, 0x1

    #@6c
    .line 314
    .end local v13    # "inputImage":Landroid/media/Image;
    .end local v14    # "ownedByMe":Z
    .end local v15    # "prevOwner":Landroid/media/ImageReader;
    :cond_5
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    #@6f
    move-result-object v12

    #@70
    .line 315
    .local v12, "crop":Landroid/graphics/Rect;
    move-object/from16 v0, p0

    #@72
    iget-wide v3, v0, Landroid/media/ImageWriter;->mNativeContext:J

    #@74
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTimestamp()J

    #@77
    move-result-wide v6

    #@78
    iget v8, v12, Landroid/graphics/Rect;->left:I

    #@7a
    iget v9, v12, Landroid/graphics/Rect;->top:I

    #@7c
    .line 316
    iget v10, v12, Landroid/graphics/Rect;->right:I

    #@7e
    iget v11, v12, Landroid/graphics/Rect;->bottom:I

    #@80
    move-object/from16 v2, p0

    #@82
    move-object/from16 v5, p1

    #@84
    .line 315
    invoke-direct/range {v2 .. v11}, Landroid/media/ImageWriter;->nativeQueueInputImage(JLandroid/media/Image;JIIII)V

    #@87
    .line 325
    if-eqz v14, :cond_6

    #@89
    .line 326
    move-object/from16 v0, p0

    #@8b
    iget-object v2, v0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    #@8d
    move-object/from16 v0, p1

    #@8f
    invoke-interface {v2, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    #@92
    move-object/from16 v16, p1

    #@94
    .line 328
    check-cast v16, Landroid/media/ImageWriter$WriterSurfaceImage;

    #@96
    .line 329
    .local v16, "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    invoke-static/range {v16 .. v16}, Landroid/media/ImageWriter$WriterSurfaceImage;->-wrap0(Landroid/media/ImageWriter$WriterSurfaceImage;)V

    #@99
    .line 330
    const/4 v2, 0x0

    #@9a
    move-object/from16 v0, v16

    #@9c
    iput-boolean v2, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    #@9e
    .line 273
    .end local v16    # "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    :cond_6
    return-void
.end method

.method public setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V
    .locals 4
    .param p1, "listener"    # Landroid/media/ImageWriter$OnImageReleasedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 396
    iget-object v2, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    #@2
    monitor-enter v2

    #@3
    .line 397
    if-eqz p1, :cond_4

    #@5
    .line 398
    if-eqz p2, :cond_0

    #@7
    :try_start_0
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    #@a
    move-result-object v0

    #@b
    .line 399
    .local v0, "looper":Landroid/os/Looper;
    :goto_0
    if-nez v0, :cond_1

    #@d
    .line 400
    new-instance v1, Ljava/lang/IllegalArgumentException;

    #@f
    .line 401
    const-string/jumbo v3, "handler is null but the current thread is not a looper"

    #@12
    .line 400
    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    #@15
    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    #@16
    .line 396
    .end local v0    # "looper":Landroid/os/Looper;
    :catchall_0
    move-exception v1

    #@17
    monitor-exit v2

    #@18
    throw v1

    #@19
    .line 398
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    #@1c
    move-result-object v0

    #@1d
    .restart local v0    # "looper":Landroid/os/Looper;
    goto :goto_0

    #@1e
    .line 403
    :cond_1
    iget-object v1, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    #@20
    if-eqz v1, :cond_2

    #@22
    iget-object v1, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    #@24
    invoke-virtual {v1}, Landroid/media/ImageWriter$ListenerHandler;->getLooper()Landroid/os/Looper;

    #@27
    move-result-object v1

    #@28
    if-eq v1, v0, :cond_3

    #@2a
    .line 404
    :cond_2
    new-instance v1, Landroid/media/ImageWriter$ListenerHandler;

    #@2c
    invoke-direct {v1, p0, v0}, Landroid/media/ImageWriter$ListenerHandler;-><init>(Landroid/media/ImageWriter;Landroid/os/Looper;)V

    #@2f
    iput-object v1, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    #@31
    .line 406
    :cond_3
    iput-object p1, p0, Landroid/media/ImageWriter;->mListener:Landroid/media/ImageWriter$OnImageReleasedListener;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    #@33
    .end local v0    # "looper":Landroid/os/Looper;
    :goto_1
    monitor-exit v2

    #@34
    .line 395
    return-void

    #@35
    .line 408
    :cond_4
    const/4 v1, 0x0

    #@36
    :try_start_2
    iput-object v1, p0, Landroid/media/ImageWriter;->mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

    #@38
    .line 409
    const/4 v1, 0x0

    #@39
    iput-object v1, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    #@3b
    goto :goto_1
.end method
