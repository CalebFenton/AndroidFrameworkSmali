.class public Landroid/filterpacks/imageproc/CropRectFilter;
.super Landroid/filterfw/core/Filter;
.source "CropRectFilter.java"


# instance fields
.field private mHeight:I

.field private mOutputHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "height"
    .end annotation
.end field

.field private mOutputWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "width"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/Program;

.field private mTarget:I

.field private mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private mWidth:I

.field private mXorigin:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "xorigin"
    .end annotation
.end field

.field private mYorigin:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "yorigin"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 56
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@4
    .line 46
    const/16 v0, 0x280

    #@6
    iput v0, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mTileSize:I

    #@8
    .line 50
    iput v1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mWidth:I

    #@a
    .line 51
    iput v1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mHeight:I

    #@c
    .line 53
    iput v1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mTarget:I

    #@e
    .line 55
    return-void
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 82
    iget-object v0, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mProgram:Landroid/filterfw/core/Program;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 83
    iget v0, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mWidth:I

    #@6
    iget v1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mHeight:I

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/CropRectFilter;->updateSourceRect(II)V

    #@b
    .line 81
    :cond_0
    return-void
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    #@0
    .prologue
    .line 66
    packed-switch p2, :pswitch_data_0

    #@3
    .line 74
    new-instance v1, Ljava/lang/RuntimeException;

    #@5
    new-instance v2, Ljava/lang/StringBuilder;

    #@7
    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    #@a
    const-string/jumbo v3, "Filter Sharpen does not support frames of target "

    #@d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@10
    move-result-object v2

    #@11
    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@14
    move-result-object v2

    #@15
    .line 75
    const-string/jumbo v3, "!"

    #@18
    .line 74
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v2

    #@1c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@1f
    move-result-object v2

    #@20
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@23
    throw v1

    #@24
    .line 68
    :pswitch_0
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    #@27
    move-result-object v0

    #@28
    .line 69
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mTileSize:I

    #@2a
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    #@2d
    .line 70
    iput-object v0, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mProgram:Landroid/filterfw/core/Program;

    #@2f
    .line 77
    iput p2, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mTarget:I

    #@31
    .line 65
    return-void

    #@32
    .line 66
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 7
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v6, 0x3

    #@1
    .line 90
    const-string/jumbo v4, "image"

    #@4
    invoke-virtual {p0, v4}, Landroid/filterpacks/imageproc/CropRectFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@7
    move-result-object v0

    #@8
    .line 91
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@b
    move-result-object v1

    #@c
    .line 94
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget v4, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mOutputWidth:I

    #@e
    iget v5, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mOutputHeight:I

    #@10
    invoke-static {v4, v5, v6, v6}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    #@13
    move-result-object v3

    #@14
    .line 97
    .local v3, "outputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@17
    move-result-object v4

    #@18
    invoke-virtual {v4, v3}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@1b
    move-result-object v2

    #@1c
    .line 100
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget-object v4, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mProgram:Landroid/filterfw/core/Program;

    #@1e
    if-eqz v4, :cond_0

    #@20
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@23
    move-result v4

    #@24
    iget v5, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mTarget:I

    #@26
    if-eq v4, v5, :cond_1

    #@28
    .line 101
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@2b
    move-result v4

    #@2c
    invoke-virtual {p0, p1, v4}, Landroid/filterpacks/imageproc/CropRectFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    #@2f
    .line 105
    :cond_1
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@32
    move-result v4

    #@33
    iget v5, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mWidth:I

    #@35
    if-ne v4, v5, :cond_2

    #@37
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@3a
    move-result v4

    #@3b
    iget v5, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mHeight:I

    #@3d
    if-eq v4, v5, :cond_3

    #@3f
    .line 106
    :cond_2
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@42
    move-result v4

    #@43
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@46
    move-result v5

    #@47
    invoke-virtual {p0, v4, v5}, Landroid/filterpacks/imageproc/CropRectFilter;->updateSourceRect(II)V

    #@4a
    .line 110
    :cond_3
    iget-object v4, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mProgram:Landroid/filterfw/core/Program;

    #@4c
    invoke-virtual {v4, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@4f
    .line 113
    const-string/jumbo v4, "image"

    #@52
    invoke-virtual {p0, v4, v2}, Landroid/filterpacks/imageproc/CropRectFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@55
    .line 116
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@58
    .line 88
    return-void
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    .line 61
    const-string/jumbo v0, "image"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/CropRectFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 62
    const-string/jumbo v0, "image"

    #@e
    const-string/jumbo v1, "image"

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/CropRectFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 60
    return-void
.end method

.method updateSourceRect(II)V
    .locals 6
    .param p1, "width"    # I
    .param p2, "height"    # I

    #@0
    .prologue
    .line 120
    iput p1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mWidth:I

    #@2
    .line 121
    iput p2, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mHeight:I

    #@4
    .line 131
    iget-object v0, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mProgram:Landroid/filterfw/core/Program;

    #@6
    check-cast v0, Landroid/filterfw/core/ShaderProgram;

    #@8
    iget v1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mXorigin:I

    #@a
    int-to-float v1, v1

    #@b
    iget v2, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mWidth:I

    #@d
    int-to-float v2, v2

    #@e
    div-float/2addr v1, v2

    #@f
    .line 132
    iget v2, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mYorigin:I

    #@11
    int-to-float v2, v2

    #@12
    iget v3, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mHeight:I

    #@14
    int-to-float v3, v3

    #@15
    div-float/2addr v2, v3

    #@16
    .line 133
    iget v3, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mOutputWidth:I

    #@18
    int-to-float v3, v3

    #@19
    iget v4, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mWidth:I

    #@1b
    int-to-float v4, v4

    #@1c
    div-float/2addr v3, v4

    #@1d
    .line 134
    iget v4, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mOutputHeight:I

    #@1f
    int-to-float v4, v4

    #@20
    iget v5, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mHeight:I

    #@22
    int-to-float v5, v5

    #@23
    div-float/2addr v4, v5

    #@24
    .line 131
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    #@27
    .line 119
    return-void
.end method
