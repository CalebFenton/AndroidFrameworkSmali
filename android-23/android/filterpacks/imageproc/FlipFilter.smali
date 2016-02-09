.class public Landroid/filterpacks/imageproc/FlipFilter;
.super Landroid/filterfw/core/Filter;
.source "FlipFilter.java"


# instance fields
.field private mHorizontal:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "horizontal"
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

.field private mVertical:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "vertical"
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
    .line 46
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@4
    .line 34
    iput-boolean v1, p0, Landroid/filterpacks/imageproc/FlipFilter;->mVertical:Z

    #@6
    .line 37
    iput-boolean v1, p0, Landroid/filterpacks/imageproc/FlipFilter;->mHorizontal:Z

    #@8
    .line 40
    const/16 v0, 0x280

    #@a
    iput v0, p0, Landroid/filterpacks/imageproc/FlipFilter;->mTileSize:I

    #@c
    .line 43
    iput v1, p0, Landroid/filterpacks/imageproc/FlipFilter;->mTarget:I

    #@e
    .line 45
    return-void
.end method

.method private updateParameters()V
    .locals 5

    #@0
    .prologue
    .line 108
    iget-boolean v4, p0, Landroid/filterpacks/imageproc/FlipFilter;->mHorizontal:Z

    #@2
    if-eqz v4, :cond_0

    #@4
    const/high16 v2, 0x3f800000    # 1.0f

    #@6
    .line 109
    .local v2, "x_origin":F
    :goto_0
    iget-boolean v4, p0, Landroid/filterpacks/imageproc/FlipFilter;->mVertical:Z

    #@8
    if-eqz v4, :cond_1

    #@a
    const/high16 v3, 0x3f800000    # 1.0f

    #@c
    .line 111
    .local v3, "y_origin":F
    :goto_1
    iget-boolean v4, p0, Landroid/filterpacks/imageproc/FlipFilter;->mHorizontal:Z

    #@e
    if-eqz v4, :cond_2

    #@10
    const/high16 v1, -0x40800000    # -1.0f

    #@12
    .line 112
    .local v1, "width":F
    :goto_2
    iget-boolean v4, p0, Landroid/filterpacks/imageproc/FlipFilter;->mVertical:Z

    #@14
    if-eqz v4, :cond_3

    #@16
    const/high16 v0, -0x40800000    # -1.0f

    #@18
    .line 114
    .local v0, "height":F
    :goto_3
    iget-object v4, p0, Landroid/filterpacks/imageproc/FlipFilter;->mProgram:Landroid/filterfw/core/Program;

    #@1a
    check-cast v4, Landroid/filterfw/core/ShaderProgram;

    #@1c
    invoke-virtual {v4, v2, v3, v1, v0}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    #@1f
    .line 107
    return-void

    #@20
    .line 108
    .end local v0    # "height":F
    .end local v1    # "width":F
    .end local v2    # "x_origin":F
    .end local v3    # "y_origin":F
    :cond_0
    const/4 v2, 0x0

    #@21
    .restart local v2    # "x_origin":F
    goto :goto_0

    #@22
    .line 109
    :cond_1
    const/4 v3, 0x0

    #@23
    .restart local v3    # "y_origin":F
    goto :goto_1

    #@24
    .line 111
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    #@26
    .restart local v1    # "width":F
    goto :goto_2

    #@27
    .line 112
    :cond_3
    const/high16 v0, 0x3f800000    # 1.0f

    #@29
    .restart local v0    # "height":F
    goto :goto_3
.end method


# virtual methods
.method public fieldPortValueUpdated(Ljava/lang/String;Landroid/filterfw/core/FilterContext;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 78
    iget-object v0, p0, Landroid/filterpacks/imageproc/FlipFilter;->mProgram:Landroid/filterfw/core/Program;

    #@2
    if-eqz v0, :cond_0

    #@4
    .line 79
    invoke-direct {p0}, Landroid/filterpacks/imageproc/FlipFilter;->updateParameters()V

    #@7
    .line 77
    :cond_0
    return-void
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 57
    return-object p2
.end method

.method public initProgram(Landroid/filterfw/core/FilterContext;I)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "target"    # I

    #@0
    .prologue
    .line 61
    packed-switch p2, :pswitch_data_0

    #@3
    .line 69
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
    .line 70
    const-string/jumbo v3, "!"

    #@18
    .line 69
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
    .line 63
    :pswitch_0
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    #@27
    move-result-object v0

    #@28
    .line 64
    .local v0, "shaderProgram":Landroid/filterfw/core/ShaderProgram;
    iget v1, p0, Landroid/filterpacks/imageproc/FlipFilter;->mTileSize:I

    #@2a
    invoke-virtual {v0, v1}, Landroid/filterfw/core/ShaderProgram;->setMaximumTileSize(I)V

    #@2d
    .line 65
    iput-object v0, p0, Landroid/filterpacks/imageproc/FlipFilter;->mProgram:Landroid/filterfw/core/Program;

    #@2f
    .line 72
    iput p2, p0, Landroid/filterpacks/imageproc/FlipFilter;->mTarget:I

    #@31
    .line 73
    invoke-direct {p0}, Landroid/filterpacks/imageproc/FlipFilter;->updateParameters()V

    #@34
    .line 60
    return-void

    #@35
    .line 61
    nop

    #@36
    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 86
    const-string/jumbo v3, "image"

    #@3
    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/FlipFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v0

    #@7
    .line 87
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@a
    move-result-object v1

    #@b
    .line 90
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget-object v3, p0, Landroid/filterpacks/imageproc/FlipFilter;->mProgram:Landroid/filterfw/core/Program;

    #@d
    if-eqz v3, :cond_0

    #@f
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@12
    move-result v3

    #@13
    iget v4, p0, Landroid/filterpacks/imageproc/FlipFilter;->mTarget:I

    #@15
    if-eq v3, v4, :cond_1

    #@17
    .line 91
    :cond_0
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@1a
    move-result v3

    #@1b
    invoke-virtual {p0, p1, v3}, Landroid/filterpacks/imageproc/FlipFilter;->initProgram(Landroid/filterfw/core/FilterContext;I)V

    #@1e
    .line 95
    :cond_1
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@21
    move-result-object v3

    #@22
    invoke-virtual {v3, v1}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@25
    move-result-object v2

    #@26
    .line 98
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/FlipFilter;->mProgram:Landroid/filterfw/core/Program;

    #@28
    invoke-virtual {v3, v0, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@2b
    .line 101
    const-string/jumbo v3, "image"

    #@2e
    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/FlipFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@31
    .line 104
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@34
    .line 84
    return-void
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    .line 51
    const-string/jumbo v0, "image"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/FlipFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 52
    const-string/jumbo v0, "image"

    #@e
    const-string/jumbo v1, "image"

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/FlipFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 50
    return-void
.end method
