.class public Landroid/filterpacks/imageproc/CropRectFilter;
.super Landroid/filterfw/core/Filter;
.source "CropRectFilter.java"


# instance fields
.field private blacklist mHeight:I

.field private blacklist mOutputHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "height"
    .end annotation
.end field

.field private blacklist mOutputWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "width"
    .end annotation
.end field

.field private blacklist mProgram:Landroid/filterfw/core/Program;

.field private blacklist mTarget:I

.field private blacklist mTileSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "tile_size"
    .end annotation
.end field

.field private blacklist mWidth:I

.field private blacklist mXorigin:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "xorigin"
    .end annotation
.end field

.field private blacklist mYorigin:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "yorigin"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 45
    const/16 v0, 0x280

    iput v0, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mTileSize:I

    .line 50
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mWidth:I

    .line 51
    iput v0, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mHeight:I

    .line 53
    iput v0, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mTarget:I

    .line 57
    return-void
.end method


# virtual methods
.method public blacklist fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .registers 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 82
    iget-object v0, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_b

    .line 83
    iget v0, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mWidth:I

    iget v1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mHeight:I

    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/CropRectFilter;->updateSourceRect(II)V

    .line 85
    :cond_b
    return-void
.end method

.method public blacklist initProgram(Landroid/filterfw/core/FilterContext;I)V
    .registers 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    .line 66
    packed-switch p2, :pswitch_data_32

    .line 74
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Filter Sharpen does not support frames of target "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 68
    :pswitch_22
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    .line 69
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mTileSize:I

    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    .line 70
    iput-object v0, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 71
    nop

    .line 77
    .end local v0    # "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iput p2, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mTarget:I

    .line 78
    return-void

    nop

    :pswitch_data_32
    .packed-switch 0x3
        :pswitch_22
    .end packed-switch
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 9
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 90
    const-string/jumbo v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/CropRectFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 91
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 94
    .local v2, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget v3, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mOutputWidth:I

    iget v4, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mOutputHeight:I

    const/4 v5, 0x3

    invoke-static {v3, v4, v5, v5}, Landroid/filterfw/format/ImageFormat;->create(IIII)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v3

    .line 97
    .local v3, "outputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v4

    .line 100
    .local v4, "output":Landroid/filterfw/core/Frame;
    iget-object v5, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v5, :cond_28

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v5

    iget v6, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mTarget:I

    if-eq v5, v6, :cond_2f

    .line 101
    :cond_28
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v5

    invoke-virtual {p0, p1, v5}, Landroid/filterpacks/imageproc/CropRectFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    .line 105
    :cond_2f
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v5

    iget v6, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mWidth:I

    if-ne v5, v6, :cond_3f

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v5

    iget v6, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mHeight:I

    if-eq v5, v6, :cond_4a

    .line 106
    :cond_3f
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v5

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v6

    invoke-virtual {p0, v5, v6}, Landroid/filterpacks/imageproc/CropRectFilter;->updateSourceRect(II)V

    .line 110
    :cond_4a
    iget-object v5, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v5, v1, v4}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 113
    invoke-virtual {p0, v0, v4}, Landroid/filterpacks/imageproc/CropRectFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 116
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 117
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 61
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/CropRectFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 62
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/CropRectFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 63
    return-void
.end method

.method blacklist updateSourceRect(II)V
    .registers 9
    .param p1, "width"    # I
    .param p2, "height"    # I

    .line 120
    iput p1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mWidth:I

    .line 121
    iput p2, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mHeight:I

    .line 131
    iget-object v0, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mProgram:Landroid/filterfw/core/Program;

    check-cast v0, Landroid/filterfw/core/ShaderProgram;

    iget v1, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mXorigin:I

    int-to-float v1, v1

    iget v2, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mWidth:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mYorigin:I

    int-to-float v2, v2

    iget v3, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mHeight:I

    int-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mOutputWidth:I

    int-to-float v3, v3

    iget v4, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    iget v4, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mOutputHeight:I

    int-to-float v4, v4

    iget v5, p0, Landroid/filterpacks/imageproc/CropRectFilter;->mHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 135
    return-void
.end method
