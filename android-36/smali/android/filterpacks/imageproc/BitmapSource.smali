.class public Landroid/filterpacks/imageproc/BitmapSource;
.super Landroid/filterfw/core/Filter;
.source "BitmapSource.java"


# instance fields
.field private blacklist mBitmap:Landroid/graphics/Bitmap;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "bitmap"
    .end annotation
.end field

.field private blacklist mImageFrame:Landroid/filterfw/core/Frame;

.field private blacklist mRecycleBitmap:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recycleBitmap"
    .end annotation
.end field

.field blacklist mRepeatFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "repeatFrame"
    .end annotation
.end field

.field private blacklist mTarget:I

.field blacklist mTargetString:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "target"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mRecycleBitmap:Z

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mRepeatFrame:Z

    .line 50
    return-void
.end method


# virtual methods
.method public blacklist fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 84
    const-string v0, "bitmap"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    const-string/jumbo v0, "target"

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 85
    :cond_11
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_1d

    .line 86
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    .line 90
    :cond_1d
    return-void
.end method

.method public blacklist loadImage(Landroid/filterfw/core/FilterContext;)V
    .registers 6
    .param p1, "filterContext"    # Landroid/filterfw/core/FilterContext;

    .line 65
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mTargetString:Ljava/lang/String;

    invoke-static {v0}, Landroid/filterfw/core/FrameFormat;->readTargetString(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mTarget:I

    .line 66
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    iget-object v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mBitmap:Landroid/graphics/Bitmap;

    .line 67
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/filterpacks/imageproc/BitmapSource;->mTarget:I

    .line 66
    const/4 v3, 0x3

    invoke-static {v0, v1, v3, v2}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 70
    .local v0, "outputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v1

    iput-object v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    .line 71
    iget-object v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    iget-object v2, p0, Landroid/filterpacks/imageproc/BitmapSource;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Landroid/filterfw/core/Frame;->setBitmap(Landroid/graphics/Bitmap;)V

    .line 72
    iget-object v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    const-wide/16 v2, -0x1

    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    .line 75
    iget-boolean v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mRecycleBitmap:Z

    if-eqz v1, :cond_3c

    .line 76
    iget-object v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    .line 78
    :cond_3c
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mBitmap:Landroid/graphics/Bitmap;

    .line 79
    return-void
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 94
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    if-nez v0, :cond_7

    .line 95
    invoke-virtual {p0, p1}, Landroid/filterpacks/imageproc/BitmapSource;->loadImage(Landroid/filterfw/core/FilterContext;)V

    .line 98
    :cond_7
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/BitmapSource;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 100
    iget-boolean v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mRepeatFrame:Z

    if-nez v0, :cond_16

    .line 101
    invoke-virtual {p0, v1}, Landroid/filterpacks/imageproc/BitmapSource;->closeOutputPort(Ljava/lang/String;)V

    .line 103
    :cond_16
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 56
    const/4 v0, 0x3

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 60
    .local v0, "outputFormat":Landroid/filterfw/core/FrameFormat;
    const-string/jumbo v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/BitmapSource;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 61
    return-void
.end method

.method public blacklist tearDown(Landroid/filterfw/core/FilterContext;)V
    .registers 3
    .param p1, "env"    # Landroid/filterfw/core/FilterContext;

    .line 107
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    if-eqz v0, :cond_c

    .line 108
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 109
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    .line 111
    :cond_c
    return-void
.end method
