.class public Landroid/filterpacks/imageproc/BitmapSource;
.super Landroid/filterfw/core/Filter;
.source "BitmapSource.java"


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "bitmap"
    .end annotation
.end field

.field private mImageFrame:Landroid/filterfw/core/Frame;

.field private mRecycleBitmap:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "recycleBitmap"
    .end annotation
.end field

.field mRepeatFrame:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "repeatFrame"
    .end annotation
.end field

.field private mTarget:I

.field mTargetString:Ljava/lang/String;
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "target"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 49
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 40
    const/4 v0, 0x1

    #@4
    iput-boolean v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mRecycleBitmap:Z

    #@6
    .line 43
    const/4 v0, 0x0

    #@7
    iput-boolean v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mRepeatFrame:Z

    #@9
    .line 48
    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 84
    const-string/jumbo v0, "bitmap"

    #@4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@7
    move-result v0

    #@8
    if-nez v0, :cond_0

    #@a
    const-string/jumbo v0, "target"

    #@d
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    #@10
    move-result v0

    #@11
    if-eqz v0, :cond_1

    #@13
    .line 85
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    #@15
    if-eqz v0, :cond_1

    #@17
    .line 86
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    #@19
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@1c
    .line 87
    iput-object v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    #@1e
    .line 82
    :cond_1
    return-void
.end method

.method public loadImage(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "filterContext"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 65
    iget-object v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mTargetString:Ljava/lang/String;

    #@2
    invoke-static {v1}, Landroid/filterfw/core/FrameFormat;->readTargetString(Ljava/lang/String;)I

    #@5
    move-result v1

    #@6
    iput v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mTarget:I

    #@8
    .line 66
    iget-object v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mBitmap:Landroid/graphics/Bitmap;

    #@a
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    #@d
    move-result v1

    #@e
    .line 67
    iget-object v2, p0, Landroid/filterpacks/imageproc/BitmapSource;->mBitmap:Landroid/graphics/Bitmap;

    #@10
    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    #@13
    move-result v2

    #@14
    .line 69
    iget v3, p0, Landroid/filterpacks/imageproc/BitmapSource;->mTarget:I

    #@16
    .line 68
    const/4 v4, 0x3

    #@17
    .line 66
    invoke-static {v1, v2, v4, v3}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    #@1a
    move-result-object v0

    #@1b
    .line 70
    .local v0, "outputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@1e
    move-result-object v1

    #@1f
    invoke-virtual {v1, v0}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@22
    move-result-object v1

    #@23
    iput-object v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    #@25
    .line 71
    iget-object v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    #@27
    iget-object v2, p0, Landroid/filterpacks/imageproc/BitmapSource;->mBitmap:Landroid/graphics/Bitmap;

    #@29
    invoke-virtual {v1, v2}, Landroid/filterfw/core/Frame;->setBitmap(Landroid/graphics/Bitmap;)V

    #@2c
    .line 72
    iget-object v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    #@2e
    const-wide/16 v2, -0x1

    #@30
    invoke-virtual {v1, v2, v3}, Landroid/filterfw/core/Frame;->setTimestamp(J)V

    #@33
    .line 75
    iget-boolean v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mRecycleBitmap:Z

    #@35
    if-eqz v1, :cond_0

    #@37
    .line 76
    iget-object v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mBitmap:Landroid/graphics/Bitmap;

    #@39
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V

    #@3c
    .line 78
    :cond_0
    const/4 v1, 0x0

    #@3d
    iput-object v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mBitmap:Landroid/graphics/Bitmap;

    #@3f
    .line 63
    return-void
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 94
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    #@2
    if-nez v0, :cond_0

    #@4
    .line 95
    invoke-virtual {p0, p1}, Landroid/filterpacks/imageproc/BitmapSource;->loadImage(Landroid/filterfw/core/FilterContext;)V

    #@7
    .line 98
    :cond_0
    const-string/jumbo v0, "image"

    #@a
    iget-object v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    #@c
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/BitmapSource;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@f
    .line 100
    iget-boolean v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mRepeatFrame:Z

    #@11
    if-nez v0, :cond_1

    #@13
    .line 101
    const-string/jumbo v0, "image"

    #@16
    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/BitmapSource;->closeOutputPort(Ljava/lang/String;)V

    #@19
    .line 93
    :cond_1
    return-void
.end method

.method public setupPorts()V
    .locals 3

    #@0
    .prologue
    .line 56
    const/4 v1, 0x3

    #@1
    .line 57
    const/4 v2, 0x0

    #@2
    .line 56
    invoke-static {v1, v2}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    #@5
    move-result-object v0

    #@6
    .line 60
    .local v0, "outputFormat":Landroid/filterfw/core/FrameFormat;
    const-string/jumbo v1, "image"

    #@9
    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/BitmapSource;->addOutputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@c
    .line 54
    return-void
.end method

.method public tearDown(Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "env"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 107
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 108
    iget-object v0, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    #@7
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@a
    .line 109
    iput-object v1, p0, Landroid/filterpacks/imageproc/BitmapSource;->mImageFrame:Landroid/filterfw/core/Frame;

    #@c
    .line 106
    :cond_0
    return-void
.end method
