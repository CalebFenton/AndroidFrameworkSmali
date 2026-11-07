.class public Landroid/media/ImageWriter;
.super Ljava/lang/Object;
.source "ImageWriter.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/ImageWriter$WriterSurfaceImage;,
        Landroid/media/ImageWriter$ListenerHandler;,
        Landroid/media/ImageWriter$OnImageReleasedListener;,
        Landroid/media/ImageWriter$Builder;
    }
.end annotation


# instance fields
.field private final blacklist mCloseLock:Ljava/lang/Object;

.field private blacklist mDataSpace:I

.field private greylist-max-o mDequeuedImages:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/media/Image;",
            ">;"
        }
    .end annotation
.end field

.field private greylist-max-o mEstimatedNativeAllocBytes:I

.field private blacklist mHardwareBufferFormat:I

.field private blacklist mHeight:I

.field private blacklist mIsWriterValid:Z

.field private greylist-max-o mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

.field private greylist-max-o mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

.field private final greylist-max-o mListenerLock:Ljava/lang/Object;

.field private final greylist-max-o mMaxImages:I

.field private greylist-max-o mNativeContext:J

.field private blacklist mUsage:J

.field private blacklist mWidth:I

.field private greylist-max-o mWriterFormat:I


# direct methods
.method static bridge synthetic blacklist -$$Nest$fgetmCloseLock(Landroid/media/ImageWriter;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/ImageWriter;->mCloseLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmDataSpace(Landroid/media/ImageWriter;)I
    .registers 1

    iget p0, p0, Landroid/media/ImageWriter;->mDataSpace:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmHeight(Landroid/media/ImageWriter;)I
    .registers 1

    iget p0, p0, Landroid/media/ImageWriter;->mHeight:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmIsWriterValid(Landroid/media/ImageWriter;)Z
    .registers 1

    iget-boolean p0, p0, Landroid/media/ImageWriter;->mIsWriterValid:Z

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListener(Landroid/media/ImageWriter;)Landroid/media/ImageWriter$OnImageReleasedListener;
    .registers 1

    iget-object p0, p0, Landroid/media/ImageWriter;->mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmListenerLock(Landroid/media/ImageWriter;)Ljava/lang/Object;
    .registers 1

    iget-object p0, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    return-object p0
.end method

.method static bridge synthetic blacklist -$$Nest$fgetmWidth(Landroid/media/ImageWriter;)I
    .registers 1

    iget p0, p0, Landroid/media/ImageWriter;->mWidth:I

    return p0
.end method

.method static bridge synthetic blacklist -$$Nest$mabortImage(Landroid/media/ImageWriter;Landroid/media/Image;)V
    .registers 2

    invoke-direct {p0, p1}, Landroid/media/ImageWriter;->abortImage(Landroid/media/Image;)V

    return-void
.end method

.method static constructor blacklist <clinit>()V
    .registers 1

    .line 1325
    const-string v0, "media_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 1326
    invoke-static {}, Landroid/media/ImageWriter;->nativeClassInit()V

    .line 1327
    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/Surface;IZIII)V
    .registers 18
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "maxImages"    # I
    .param p3, "useSurfaceImageFormatInfo"    # Z
    .param p4, "imageFormat"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I

    .line 292
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    .line 102
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/ImageWriter;->mCloseLock:Ljava/lang/Object;

    .line 103
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/ImageWriter;->mIsWriterValid:Z

    .line 109
    const-wide/16 v1, 0x30

    iput-wide v1, p0, Landroid/media/ImageWriter;->mUsage:J

    .line 118
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    .line 293
    iput p2, p0, Landroid/media/ImageWriter;->mMaxImages:I

    .line 294
    if-nez p3, :cond_2f

    .line 295
    invoke-static {p4}, Landroid/media/PublicFormatUtils;->getHalFormat(I)I

    move-result v1

    iput v1, p0, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    .line 296
    invoke-static {p4}, Landroid/media/PublicFormatUtils;->getHalDataspace(I)I

    move-result v1

    iput v1, p0, Landroid/media/ImageWriter;->mDataSpace:I

    .line 299
    :cond_2f
    iget v5, p0, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    iget v6, p0, Landroid/media/ImageWriter;->mDataSpace:I

    iget-wide v9, p0, Landroid/media/ImageWriter;->mUsage:J

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v10}, Landroid/media/ImageWriter;->initializeImageWriter(Landroid/view/Surface;IZIIIIIJ)V

    .line 301
    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/Surface;IZIIIIJ)V
    .registers 21
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "maxImages"    # I
    .param p3, "useSurfaceImageFormatInfo"    # Z
    .param p4, "hardwareBufferFormat"    # I
    .param p5, "dataSpace"    # I
    .param p6, "width"    # I
    .param p7, "height"    # I
    .param p8, "usage"    # J

    .line 317
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    .line 102
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/ImageWriter;->mCloseLock:Ljava/lang/Object;

    .line 103
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/ImageWriter;->mIsWriterValid:Z

    .line 109
    const-wide/16 v1, 0x30

    iput-wide v1, p0, Landroid/media/ImageWriter;->mUsage:J

    .line 118
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    .line 318
    iput p2, p0, Landroid/media/ImageWriter;->mMaxImages:I

    .line 319
    move-wide/from16 v9, p8

    iput-wide v9, p0, Landroid/media/ImageWriter;->mUsage:J

    .line 323
    if-eqz p3, :cond_2c

    .line 324
    const/4 v1, 0x0

    move/from16 v6, p5

    move v4, v1

    .local v1, "imageFormat":I
    goto :goto_37

    .line 326
    .end local v1    # "imageFormat":I
    :cond_2c
    invoke-static/range {p4 .. p5}, Landroid/media/PublicFormatUtils;->getPublicFormat(II)I

    move-result v1

    .line 327
    .restart local v1    # "imageFormat":I
    iput p4, p0, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    .line 328
    move/from16 v6, p5

    iput v6, p0, Landroid/media/ImageWriter;->mDataSpace:I

    move v4, v1

    .line 331
    .end local v1    # "imageFormat":I
    .local v4, "imageFormat":I
    :goto_37
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move/from16 v7, p6

    move/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Landroid/media/ImageWriter;->initializeImageWriter(Landroid/view/Surface;IZIIIIIJ)V

    .line 333
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/Surface;IZIIIIJLandroid/media/ImageWriter-IA;)V
    .registers 11

    invoke-direct/range {p0 .. p9}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIIIIJ)V

    return-void
.end method

.method private constructor blacklist <init>(Landroid/view/Surface;IZIIIJ)V
    .registers 20
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "maxImages"    # I
    .param p3, "useSurfaceImageFormatInfo"    # Z
    .param p4, "imageFormat"    # I
    .param p5, "width"    # I
    .param p6, "height"    # I
    .param p7, "usage"    # J

    .line 304
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    .line 102
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Landroid/media/ImageWriter;->mCloseLock:Ljava/lang/Object;

    .line 103
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/media/ImageWriter;->mIsWriterValid:Z

    .line 109
    const-wide/16 v1, 0x30

    iput-wide v1, p0, Landroid/media/ImageWriter;->mUsage:J

    .line 118
    new-instance v1, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    .line 305
    iput p2, p0, Landroid/media/ImageWriter;->mMaxImages:I

    .line 306
    move-wide/from16 v9, p7

    iput-wide v9, p0, Landroid/media/ImageWriter;->mUsage:J

    .line 307
    if-nez p3, :cond_33

    .line 308
    invoke-static {p4}, Landroid/media/PublicFormatUtils;->getHalFormat(I)I

    move-result v1

    iput v1, p0, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    .line 309
    invoke-static {p4}, Landroid/media/PublicFormatUtils;->getHalDataspace(I)I

    move-result v1

    iput v1, p0, Landroid/media/ImageWriter;->mDataSpace:I

    .line 312
    :cond_33
    iget v5, p0, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    iget v6, p0, Landroid/media/ImageWriter;->mDataSpace:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v10}, Landroid/media/ImageWriter;->initializeImageWriter(Landroid/view/Surface;IZIIIIIJ)V

    .line 314
    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/view/Surface;IZIIIJLandroid/media/ImageWriter-IA;)V
    .registers 10

    invoke-direct/range {p0 .. p8}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIIIJ)V

    return-void
.end method

.method private greylist-max-o abortImage(Landroid/media/Image;)V
    .registers 5
    .param p1, "image"    # Landroid/media/Image;

    .line 845
    if-eqz p1, :cond_2b

    .line 849
    iget-object v0, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_23

    .line 854
    move-object v0, p1

    check-cast v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    .line 855
    .local v0, "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    iget-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    if-nez v1, :cond_12

    .line 856
    return-void

    .line 865
    :cond_12
    iget-wide v1, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-direct {p0, v1, v2, p1}, Landroid/media/ImageWriter;->cancelImage(JLandroid/media/Image;)V

    .line 866
    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 867
    invoke-static {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->-$$Nest$mclearSurfacePlanes(Landroid/media/ImageWriter$WriterSurfaceImage;)V

    .line 868
    const/4 v1, 0x0

    iput-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    .line 869
    return-void

    .line 850
    .end local v0    # "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    :cond_23
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "It is illegal to abort some image that is not dequeued yet"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 846
    :cond_2b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "image shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private greylist-max-o attachAndQueueInputImage(Landroid/media/Image;)V
    .registers 18
    .param p1, "image"    # Landroid/media/Image;

    .line 737
    move-object/from16 v0, p0

    if-eqz p1, :cond_88

    .line 740
    invoke-direct/range {p0 .. p1}, Landroid/media/ImageWriter;->isImageOwnedByMe(Landroid/media/Image;)Z

    move-result v1

    if-nez v1, :cond_80

    .line 750
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->isAttachable()Z

    move-result v1

    if-eqz v1, :cond_78

    .line 758
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v15

    .line 759
    .local v15, "crop":Landroid/graphics/Rect;
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getFormat()I

    move-result v1

    invoke-static {v1}, Landroid/media/PublicFormatUtils;->getHalFormat(I)I

    move-result v4

    .line 760
    .local v4, "hardwareBufferFormat":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getNativeContext()J

    move-result-wide v1

    const-wide/16 v5, 0x0

    cmp-long v1, v1, v5

    if-eqz v1, :cond_49

    .line 761
    iget-wide v1, v0, Landroid/media/ImageWriter;->mNativeContext:J

    move v5, v4

    .end local v4    # "hardwareBufferFormat":I
    .local v5, "hardwareBufferFormat":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getNativeContext()J

    move-result-wide v3

    .line 762
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v6

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getDataSpace()I

    move-result v8

    iget v9, v15, Landroid/graphics/Rect;->left:I

    iget v10, v15, Landroid/graphics/Rect;->top:I

    iget v11, v15, Landroid/graphics/Rect;->right:I

    iget v12, v15, Landroid/graphics/Rect;->bottom:I

    .line 763
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTransform()I

    move-result v13

    .line 764
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getScalingMode()I

    move-result v14

    .line 761
    invoke-direct/range {v0 .. v14}, Landroid/media/ImageWriter;->nativeAttachAndQueueImage(JJIJIIIIIII)I

    goto :goto_77

    .line 766
    .end local v5    # "hardwareBufferFormat":I
    .restart local v4    # "hardwareBufferFormat":I
    :cond_49
    move v5, v4

    .end local v4    # "hardwareBufferFormat":I
    .restart local v5    # "hardwareBufferFormat":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getHardwareBuffer()Landroid/hardware/HardwareBuffer;

    move-result-object v1

    invoke-static {v1}, Landroid/graphics/GraphicBuffer;->createFromHardwareBuffer(Landroid/hardware/HardwareBuffer;)Landroid/graphics/GraphicBuffer;

    move-result-object v3

    .line 767
    .local v3, "gb":Landroid/graphics/GraphicBuffer;
    iget-wide v1, v0, Landroid/media/ImageWriter;->mNativeContext:J

    .line 768
    nop

    .end local v5    # "hardwareBufferFormat":I
    .restart local v4    # "hardwareBufferFormat":I
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v5

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getDataSpace()I

    move-result v7

    iget v8, v15, Landroid/graphics/Rect;->left:I

    iget v9, v15, Landroid/graphics/Rect;->top:I

    iget v10, v15, Landroid/graphics/Rect;->right:I

    iget v11, v15, Landroid/graphics/Rect;->bottom:I

    .line 769
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getTransform()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->getScalingMode()I

    move-result v13

    .line 767
    invoke-direct/range {v0 .. v13}, Landroid/media/ImageWriter;->nativeAttachAndQueueGraphicBuffer(JLandroid/graphics/GraphicBuffer;IJIIIIIII)I

    .line 770
    move v5, v4

    .end local v4    # "hardwareBufferFormat":I
    .restart local v5    # "hardwareBufferFormat":I
    invoke-virtual {v3}, Landroid/graphics/GraphicBuffer;->destroy()V

    .line 771
    invoke-virtual/range {p1 .. p1}, Landroid/media/Image;->close()V

    .line 773
    .end local v3    # "gb":Landroid/graphics/GraphicBuffer;
    :goto_77
    return-void

    .line 751
    .end local v5    # "hardwareBufferFormat":I
    .end local v15    # "crop":Landroid/graphics/Rect;
    :cond_78
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image was not detached from last owner, or image  is not detachable"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 741
    :cond_80
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can not attach an image that is owned ImageWriter already"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 738
    :cond_88
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "image shouldn\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private synchronized native greylist-max-o cancelImage(JLandroid/media/Image;)V
.end method

.method private blacklist initializeImageWriter(Landroid/view/Surface;IZIIIIIJ)V
    .registers 25
    .param p1, "surface"    # Landroid/view/Surface;
    .param p2, "maxImages"    # I
    .param p3, "useSurfaceImageFormatInfo"    # Z
    .param p4, "imageFormat"    # I
    .param p5, "hardwareBufferFormat"    # I
    .param p6, "dataSpace"    # I
    .param p7, "width"    # I
    .param p8, "height"    # I
    .param p9, "usage"    # J

    .line 255
    move/from16 v3, p2

    if-eqz p1, :cond_6e

    const/4 v11, 0x1

    if-lt v3, v11, :cond_6e

    .line 262
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    move-object v0, p0

    move-object v2, p1

    move/from16 v6, p3

    move/from16 v7, p5

    move/from16 v8, p6

    move/from16 v4, p7

    move/from16 v5, p8

    move-wide/from16 v9, p9

    invoke-direct/range {v0 .. v10}, Landroid/media/ImageWriter;->nativeInit(Ljava/lang/Object;Landroid/view/Surface;IIIZIIJ)J

    move-result-wide v12

    iput-wide v12, p0, Landroid/media/ImageWriter;->mNativeContext:J

    .line 266
    if-eqz p3, :cond_35

    .line 269
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceFormat(Landroid/view/Surface;)I

    move-result v1

    move v4, v1

    .end local p5    # "hardwareBufferFormat":I
    .local v4, "hardwareBufferFormat":I
    iput v1, p0, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    .line 270
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceDataspace(Landroid/view/Surface;)I

    move-result v1

    move v5, v1

    .end local p6    # "dataSpace":I
    .local v5, "dataSpace":I
    iput v1, p0, Landroid/media/ImageWriter;->mDataSpace:I

    .line 271
    invoke-static {v4, v5}, Landroid/media/PublicFormatUtils;->getPublicFormat(II)I

    move-result v1

    .end local p4    # "imageFormat":I
    .local v1, "imageFormat":I
    goto :goto_3b

    .line 266
    .end local v1    # "imageFormat":I
    .end local v4    # "hardwareBufferFormat":I
    .end local v5    # "dataSpace":I
    .restart local p4    # "imageFormat":I
    .restart local p5    # "hardwareBufferFormat":I
    .restart local p6    # "dataSpace":I
    :cond_35
    move/from16 v1, p4

    move/from16 v4, p5

    move/from16 v5, p6

    .line 280
    .end local p4    # "imageFormat":I
    .end local p5    # "hardwareBufferFormat":I
    .end local p6    # "dataSpace":I
    .restart local v1    # "imageFormat":I
    .restart local v4    # "hardwareBufferFormat":I
    .restart local v5    # "dataSpace":I
    :goto_3b
    invoke-static {p1}, Landroid/hardware/camera2/utils/SurfaceUtils;->getSurfaceSize(Landroid/view/Surface;)Landroid/util/Size;

    move-result-object v6

    .line 281
    .local v6, "surfSize":Landroid/util/Size;
    const/4 v7, -0x1

    move/from16 v8, p7

    if-ne v8, v7, :cond_49

    invoke-virtual {v6}, Landroid/util/Size;->getWidth()I

    move-result v9

    goto :goto_4a

    :cond_49
    move v9, v8

    :goto_4a
    iput v9, p0, Landroid/media/ImageWriter;->mWidth:I

    .line 282
    move/from16 v9, p8

    if-ne v9, v7, :cond_55

    invoke-virtual {v6}, Landroid/util/Size;->getHeight()I

    move-result v7

    goto :goto_56

    :cond_55
    move v7, v9

    :goto_56
    iput v7, p0, Landroid/media/ImageWriter;->mHeight:I

    .line 284
    iget v7, p0, Landroid/media/ImageWriter;->mWidth:I

    iget v10, p0, Landroid/media/ImageWriter;->mHeight:I

    invoke-static {v7, v10, v1, v11}, Landroid/media/ImageUtils;->getEstimatedNativeAllocBytes(IIII)I

    move-result v7

    iput v7, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    .line 286
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v7

    iget v10, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v7, v10}, Ldalvik/system/VMRuntime;->registerNativeAllocation(I)V

    .line 288
    iput-boolean v11, p0, Landroid/media/ImageWriter;->mIsWriterValid:Z

    .line 289
    return-void

    .line 255
    .end local v1    # "imageFormat":I
    .end local v4    # "hardwareBufferFormat":I
    .end local v5    # "dataSpace":I
    .end local v6    # "surfSize":Landroid/util/Size;
    .restart local p4    # "imageFormat":I
    .restart local p5    # "hardwareBufferFormat":I
    .restart local p6    # "dataSpace":I
    :cond_6e
    move/from16 v8, p7

    move/from16 v9, p8

    .line 256
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Illegal input argument: surface "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", maxImages: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private greylist-max-o isImageOwnedByMe(Landroid/media/Image;)Z
    .registers 5
    .param p1, "image"    # Landroid/media/Image;

    .line 872
    instance-of v0, p1, Landroid/media/ImageWriter$WriterSurfaceImage;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 873
    return v1

    .line 875
    :cond_6
    move-object v0, p1

    check-cast v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    .line 876
    .local v0, "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    invoke-virtual {v0}, Landroid/media/ImageWriter$WriterSurfaceImage;->getOwner()Landroid/media/ImageWriter;

    move-result-object v2

    if-eq v2, p0, :cond_10

    .line 877
    return v1

    .line 880
    :cond_10
    const/4 v1, 0x1

    return v1
.end method

.method private synchronized native blacklist nativeAttachAndQueueGraphicBuffer(JLandroid/graphics/GraphicBuffer;IJIIIIIII)I
.end method

.method private synchronized native blacklist nativeAttachAndQueueImage(JJIJIIIIIII)I
.end method

.method private static native greylist-max-o nativeClassInit()V
.end method

.method private synchronized native greylist-max-o nativeClose(J)V
.end method

.method private synchronized native greylist-max-o nativeDequeueInputImage(JLandroid/media/Image;)V
.end method

.method private synchronized native blacklist nativeInit(Ljava/lang/Object;Landroid/view/Surface;IIIZIIJ)J
.end method

.method private synchronized native blacklist nativeQueueInputImage(JLandroid/media/Image;JIIIIIII)V
.end method

.method public static whitelist newInstance(Landroid/view/Surface;I)Landroid/media/ImageWriter;
    .registers 9
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "maxImages"    # I

    .line 148
    new-instance v0, Landroid/media/ImageWriter;

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v3, 0x1

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    .end local p0    # "surface":Landroid/view/Surface;
    .end local p1    # "maxImages":I
    .local v1, "surface":Landroid/view/Surface;
    .local v2, "maxImages":I
    invoke-direct/range {v0 .. v6}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIII)V

    return-object v0
.end method

.method public static whitelist newInstance(Landroid/view/Surface;II)Landroid/media/ImageWriter;
    .registers 12
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "maxImages"    # I
    .param p2, "format"    # I

    .line 246
    invoke-static {p2}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {p2}, Landroid/graphics/PixelFormat;->isPublicFormat(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_26

    .line 247
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid format is specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 249
    :cond_26
    :goto_26
    new-instance v2, Landroid/media/ImageWriter;

    const/4 v7, -0x1

    const/4 v8, -0x1

    const/4 v5, 0x0

    move-object v3, p0

    move v4, p1

    move v6, p2

    .end local p0    # "surface":Landroid/view/Surface;
    .end local p1    # "maxImages":I
    .end local p2    # "format":I
    .local v3, "surface":Landroid/view/Surface;
    .local v4, "maxImages":I
    .local v6, "format":I
    invoke-direct/range {v2 .. v8}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIII)V

    return-object v2
.end method

.method public static blacklist newInstance(Landroid/view/Surface;IIII)Landroid/media/ImageWriter;
    .registers 14
    .param p0, "surface"    # Landroid/view/Surface;
    .param p1, "maxImages"    # I
    .param p2, "format"    # I
    .param p3, "width"    # I
    .param p4, "height"    # I

    .line 197
    invoke-static {p2}, Landroid/graphics/ImageFormat;->isPublicFormat(I)Z

    move-result v0

    if-nez v0, :cond_26

    invoke-static {p2}, Landroid/graphics/PixelFormat;->isPublicFormat(I)Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_26

    .line 198
    :cond_d
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid format is specified: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 200
    :cond_26
    :goto_26
    new-instance v2, Landroid/media/ImageWriter;

    const/4 v5, 0x0

    move-object v3, p0

    move v4, p1

    move v6, p2

    move v7, p3

    move v8, p4

    .end local p0    # "surface":Landroid/view/Surface;
    .end local p1    # "maxImages":I
    .end local p2    # "format":I
    .end local p3    # "width":I
    .end local p4    # "height":I
    .local v3, "surface":Landroid/view/Surface;
    .local v4, "maxImages":I
    .local v6, "format":I
    .local v7, "width":I
    .local v8, "height":I
    invoke-direct/range {v2 .. v8}, Landroid/media/ImageWriter;-><init>(Landroid/view/Surface;IZIII)V

    return-object v2
.end method

.method private static greylist-max-o postEventFromNative(Ljava/lang/Object;)V
    .registers 5
    .param p0, "selfRef"    # Ljava/lang/Object;

    .line 809
    move-object v0, p0

    check-cast v0, Ljava/lang/ref/WeakReference;

    .line 810
    .local v0, "weakSelf":Ljava/lang/ref/WeakReference;, "Ljava/lang/ref/WeakReference<Landroid/media/ImageWriter;>;"
    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/ImageWriter;

    .line 811
    .local v1, "iw":Landroid/media/ImageWriter;
    if-nez v1, :cond_c

    .line 812
    return-void

    .line 816
    :cond_c
    iget-object v2, v1, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 817
    :try_start_f
    iget-object v3, v1, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    .line 818
    .local v3, "handler":Landroid/os/Handler;
    monitor-exit v2
    :try_end_12
    .catchall {:try_start_f .. :try_end_12} :catchall_19

    .line 820
    if-eqz v3, :cond_18

    .line 822
    const/4 v2, 0x0

    invoke-virtual {v3, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 824
    :cond_18
    return-void

    .line 818
    .end local v3    # "handler":Landroid/os/Handler;
    :catchall_19
    move-exception v3

    :try_start_1a
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_1a .. :try_end_1b} :catchall_19

    throw v3
.end method


# virtual methods
.method public whitelist test-api close()V
    .registers 5

    .line 680
    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Landroid/media/ImageWriter;->setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V

    .line 681
    iget-object v0, p0, Landroid/media/ImageWriter;->mCloseLock:Ljava/lang/Object;

    monitor-enter v0

    .line 682
    :try_start_7
    iget-boolean v1, p0, Landroid/media/ImageWriter;->mIsWriterValid:Z

    if-nez v1, :cond_d

    .line 683
    monitor-exit v0

    return-void

    .line 685
    :cond_d
    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_23

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/Image;

    .line 686
    .local v2, "image":Landroid/media/Image;
    invoke-virtual {v2}, Landroid/media/Image;->close()V

    .line 687
    .end local v2    # "image":Landroid/media/Image;
    goto :goto_13

    .line 688
    :cond_23
    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 689
    iget-wide v1, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-direct {p0, v1, v2}, Landroid/media/ImageWriter;->nativeClose(J)V

    .line 690
    const-wide/16 v1, 0x0

    iput-wide v1, p0, Landroid/media/ImageWriter;->mNativeContext:J

    .line 692
    iget v1, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    const/4 v2, 0x0

    if-lez v1, :cond_41

    .line 693
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    iget v3, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    invoke-virtual {v1, v3}, Ldalvik/system/VMRuntime;->registerNativeFree(I)V

    .line 694
    iput v2, p0, Landroid/media/ImageWriter;->mEstimatedNativeAllocBytes:I

    .line 696
    :cond_41
    iput-boolean v2, p0, Landroid/media/ImageWriter;->mIsWriterValid:Z

    .line 697
    monitor-exit v0

    .line 698
    return-void

    .line 697
    :catchall_45
    move-exception v1

    monitor-exit v0
    :try_end_47
    .catchall {:try_start_7 .. :try_end_47} :catchall_45

    throw v1
.end method

.method public whitelist dequeueInputImage()Landroid/media/Image;
    .registers 4

    .line 434
    iget-object v0, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget v1, p0, Landroid/media/ImageWriter;->mMaxImages:I

    if-ge v0, v1, :cond_1d

    .line 438
    new-instance v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    invoke-direct {v0, p0}, Landroid/media/ImageWriter$WriterSurfaceImage;-><init>(Landroid/media/ImageWriter;)V

    .line 439
    .local v0, "newImage":Landroid/media/ImageWriter$WriterSurfaceImage;
    iget-wide v1, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-direct {p0, v1, v2, v0}, Landroid/media/ImageWriter;->nativeDequeueInputImage(JLandroid/media/Image;)V

    .line 440
    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 441
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    .line 442
    return-object v0

    .line 435
    .end local v0    # "newImage":Landroid/media/ImageWriter$WriterSurfaceImage;
    :cond_1d
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Already dequeued max number of Images "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/media/ImageWriter;->mMaxImages:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected whitelist test-api finalize()V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 703
    :try_start_0
    invoke-virtual {p0}, Landroid/media/ImageWriter;->close()V
    :try_end_3
    .catchall {:try_start_0 .. :try_end_3} :catchall_8

    .line 705
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 706
    nop

    .line 707
    return-void

    .line 705
    :catchall_8
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 706
    throw v0
.end method

.method public whitelist getDataSpace()I
    .registers 2

    .line 598
    iget v0, p0, Landroid/media/ImageWriter;->mDataSpace:I

    return v0
.end method

.method public whitelist getFormat()I
    .registers 2

    .line 560
    iget v0, p0, Landroid/media/ImageWriter;->mWriterFormat:I

    return v0
.end method

.method public whitelist getHardwareBufferFormat()I
    .registers 2

    .line 585
    iget v0, p0, Landroid/media/ImageWriter;->mHardwareBufferFormat:I

    return v0
.end method

.method public whitelist getHeight()I
    .registers 2

    .line 383
    iget v0, p0, Landroid/media/ImageWriter;->mHeight:I

    return v0
.end method

.method public whitelist getMaxImages()I
    .registers 2

    .line 359
    iget v0, p0, Landroid/media/ImageWriter;->mMaxImages:I

    return v0
.end method

.method public whitelist getUsage()J
    .registers 3

    .line 572
    iget-wide v0, p0, Landroid/media/ImageWriter;->mUsage:J

    return-wide v0
.end method

.method public whitelist getWidth()I
    .registers 2

    .line 371
    iget v0, p0, Landroid/media/ImageWriter;->mWidth:I

    return v0
.end method

.method public whitelist queueInputImage(Landroid/media/Image;)V
    .registers 17
    .param p1, "image"    # Landroid/media/Image;

    .line 497
    move-object/from16 v3, p1

    if-eqz v3, :cond_77

    .line 501
    invoke-direct/range {p0 .. p1}, Landroid/media/ImageWriter;->isImageOwnedByMe(Landroid/media/Image;)Z

    move-result v13

    .line 502
    .local v13, "ownedByMe":Z
    if-eqz v13, :cond_1a

    move-object v0, v3

    check-cast v0, Landroid/media/ImageWriter$WriterSurfaceImage;

    iget-boolean v0, v0, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    if-eqz v0, :cond_12

    goto :goto_1a

    .line 503
    :cond_12
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Image from ImageWriter is invalid"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 508
    :cond_1a
    :goto_1a
    if-nez v13, :cond_44

    .line 509
    invoke-virtual {v3}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Landroid/media/ImageReader;

    if-eqz v0, :cond_2e

    .line 510
    invoke-virtual {v3}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/ImageReader;

    .line 512
    .local v0, "prevOwner":Landroid/media/ImageReader;
    invoke-virtual {v0, v3}, Landroid/media/ImageReader;->detachImage(Landroid/media/Image;)V

    .end local v0    # "prevOwner":Landroid/media/ImageReader;
    goto :goto_34

    .line 513
    :cond_2e
    invoke-virtual {v3}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_3c

    :goto_34
    nop

    .line 519
    invoke-direct/range {p0 .. p1}, Landroid/media/ImageWriter;->attachAndQueueInputImage(Landroid/media/Image;)V

    .line 523
    invoke-virtual {v3}, Landroid/media/Image;->close()V

    .line 524
    return-void

    .line 514
    :cond_3c
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Only images from ImageReader can be queued to ImageWriter, other image source is not supported yet!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 527
    :cond_44
    invoke-virtual {v3}, Landroid/media/Image;->getCropRect()Landroid/graphics/Rect;

    move-result-object v14

    .line 528
    .local v14, "crop":Landroid/graphics/Rect;
    iget-wide v1, p0, Landroid/media/ImageWriter;->mNativeContext:J

    invoke-virtual {v3}, Landroid/media/Image;->getTimestamp()J

    move-result-wide v4

    invoke-virtual {v3}, Landroid/media/Image;->getDataSpace()I

    move-result v6

    iget v7, v14, Landroid/graphics/Rect;->left:I

    iget v8, v14, Landroid/graphics/Rect;->top:I

    iget v9, v14, Landroid/graphics/Rect;->right:I

    iget v10, v14, Landroid/graphics/Rect;->bottom:I

    .line 529
    invoke-virtual {v3}, Landroid/media/Image;->getTransform()I

    move-result v11

    .line 530
    invoke-virtual {v3}, Landroid/media/Image;->getScalingMode()I

    move-result v12

    .line 528
    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Landroid/media/ImageWriter;->nativeQueueInputImage(JLandroid/media/Image;JIIIIIII)V

    .line 539
    if-eqz v13, :cond_76

    .line 540
    iget-object v1, p0, Landroid/media/ImageWriter;->mDequeuedImages:Ljava/util/List;

    invoke-interface {v1, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 542
    move-object v1, v3

    check-cast v1, Landroid/media/ImageWriter$WriterSurfaceImage;

    .line 543
    .local v1, "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    invoke-static {v1}, Landroid/media/ImageWriter$WriterSurfaceImage;->-$$Nest$mclearSurfacePlanes(Landroid/media/ImageWriter$WriterSurfaceImage;)V

    .line 544
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/media/ImageWriter$WriterSurfaceImage;->mIsImageValid:Z

    .line 546
    .end local v1    # "wi":Landroid/media/ImageWriter$WriterSurfaceImage;
    :cond_76
    return-void

    .line 498
    .end local v13    # "ownedByMe":Z
    .end local v14    # "crop":Landroid/graphics/Rect;
    :cond_77
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "image shouldn\'t be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public whitelist setOnImageReleasedListener(Landroid/media/ImageWriter$OnImageReleasedListener;Landroid/os/Handler;)V
    .registers 7
    .param p1, "listener"    # Landroid/media/ImageWriter$OnImageReleasedListener;
    .param p2, "handler"    # Landroid/os/Handler;

    .line 648
    iget-object v0, p0, Landroid/media/ImageWriter;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 649
    if-eqz p1, :cond_30

    .line 650
    if-eqz p2, :cond_c

    :try_start_7
    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    goto :goto_10

    :cond_c
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    .line 651
    .local v1, "looper":Landroid/os/Looper;
    :goto_10
    if-eqz v1, :cond_28

    .line 655
    iget-object v2, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    if-eqz v2, :cond_1e

    iget-object v2, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    invoke-virtual {v2}, Landroid/media/ImageWriter$ListenerHandler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    if-eq v2, v1, :cond_25

    .line 656
    :cond_1e
    new-instance v2, Landroid/media/ImageWriter$ListenerHandler;

    invoke-direct {v2, p0, v1}, Landroid/media/ImageWriter$ListenerHandler;-><init>(Landroid/media/ImageWriter;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    .line 658
    :cond_25
    iput-object p1, p0, Landroid/media/ImageWriter;->mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

    .line 659
    .end local v1    # "looper":Landroid/os/Looper;
    goto :goto_35

    .line 652
    .restart local v1    # "looper":Landroid/os/Looper;
    :cond_28
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v3, "handler is null but the current thread is not a looper"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0    # "this":Landroid/media/ImageWriter;
    .end local p1    # "listener":Landroid/media/ImageWriter$OnImageReleasedListener;
    .end local p2    # "handler":Landroid/os/Handler;
    throw v2

    .line 660
    .end local v1    # "looper":Landroid/os/Looper;
    .restart local p0    # "this":Landroid/media/ImageWriter;
    .restart local p1    # "listener":Landroid/media/ImageWriter$OnImageReleasedListener;
    .restart local p2    # "handler":Landroid/os/Handler;
    :cond_30
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/media/ImageWriter;->mListener:Landroid/media/ImageWriter$OnImageReleasedListener;

    .line 661
    iput-object v1, p0, Landroid/media/ImageWriter;->mListenerHandler:Landroid/media/ImageWriter$ListenerHandler;

    .line 663
    :goto_35
    monitor-exit v0

    .line 664
    return-void

    .line 663
    :catchall_37
    move-exception v1

    monitor-exit v0
    :try_end_39
    .catchall {:try_start_7 .. :try_end_39} :catchall_37

    throw v1
.end method
