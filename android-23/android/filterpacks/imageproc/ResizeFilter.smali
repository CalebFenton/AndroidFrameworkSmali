.class public Landroid/filterpacks/imageproc/ResizeFilter;
.super Landroid/filterfw/core/Filter;
.source "ResizeFilter.java"


# instance fields
.field private mGenerateMipMap:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "generateMipMap"
    .end annotation
.end field

.field private mInputChannels:I

.field private mKeepAspectRatio:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "keepAspectRatio"
    .end annotation
.end field

.field private mLastFormat:Landroid/filterfw/core/FrameFormat;

.field private mOHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "oheight"
    .end annotation
.end field

.field private mOWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "owidth"
    .end annotation
.end field

.field private mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private mProgram:Landroid/filterfw/core/Program;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    const/4 v0, 0x0

    #@1
    .line 54
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@4
    .line 43
    iput-boolean v0, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mKeepAspectRatio:Z

    #@6
    .line 45
    iput-boolean v0, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mGenerateMipMap:Z

    #@8
    .line 48
    const/4 v0, 0x0

    #@9
    iput-object v0, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    #@b
    .line 53
    return-void
.end method


# virtual methods
.method protected createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "format"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 69
    iget-object v1, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    #@2
    if-eqz v1, :cond_0

    #@4
    iget-object v1, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    #@6
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@9
    move-result v1

    #@a
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@d
    move-result v2

    #@e
    if-ne v1, v2, :cond_0

    #@10
    return-void

    #@11
    .line 70
    :cond_0
    iput-object p2, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    #@13
    .line 71
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@16
    move-result v1

    #@17
    packed-switch v1, :pswitch_data_0

    #@1a
    .line 82
    new-instance v1, Ljava/lang/RuntimeException;

    #@1c
    const-string/jumbo v2, "ResizeFilter could not create suitable program!"

    #@1f
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@22
    throw v1

    #@23
    .line 73
    :pswitch_0
    new-instance v1, Ljava/lang/RuntimeException;

    #@25
    const-string/jumbo v2, "Native ResizeFilter not implemented yet!"

    #@28
    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2b
    throw v1

    #@2c
    .line 77
    :pswitch_1
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    #@2f
    move-result-object v0

    #@30
    .line 78
    .local v0, "prog":Landroid/filterfw/core/ShaderProgram;
    iput-object v0, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mProgram:Landroid/filterfw/core/Program;

    #@32
    .line 68
    return-void

    #@33
    .line 71
    nop

    #@34
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 65
    return-object p2
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 7
    .param p1, "env"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 88
    const-string/jumbo v5, "image"

    #@3
    invoke-virtual {p0, v5}, Landroid/filterpacks/imageproc/ResizeFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v0

    #@7
    .line 89
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@a
    move-result-object v5

    #@b
    invoke-virtual {p0, p1, v5}, Landroid/filterpacks/imageproc/ResizeFilter;->createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V

    #@e
    .line 92
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@11
    move-result-object v5

    #@12
    invoke-virtual {v5}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    #@15
    move-result-object v4

    #@16
    .line 93
    .local v4, "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    iget-boolean v5, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mKeepAspectRatio:Z

    #@18
    if-eqz v5, :cond_0

    #@1a
    .line 94
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@1d
    move-result-object v1

    #@1e
    .line 95
    .local v1, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget v5, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mOWidth:I

    #@20
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@23
    move-result v6

    #@24
    mul-int/2addr v5, v6

    #@25
    invoke-virtual {v1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@28
    move-result v6

    #@29
    div-int/2addr v5, v6

    #@2a
    iput v5, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mOHeight:I

    #@2c
    .line 97
    .end local v1    # "inputFormat":Landroid/filterfw/core/FrameFormat;
    :cond_0
    iget v5, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mOWidth:I

    #@2e
    iget v6, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mOHeight:I

    #@30
    invoke-virtual {v4, v5, v6}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    #@33
    .line 98
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@36
    move-result-object v5

    #@37
    invoke-virtual {v5, v4}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@3a
    move-result-object v3

    #@3b
    .line 101
    .local v3, "output":Landroid/filterfw/core/Frame;
    iget-boolean v5, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mGenerateMipMap:Z

    #@3d
    if-eqz v5, :cond_1

    #@3f
    .line 102
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@42
    move-result-object v5

    #@43
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@46
    move-result-object v6

    #@47
    invoke-virtual {v5, v6}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@4a
    move-result-object v2

    #@4b
    check-cast v2, Landroid/filterfw/core/GLFrame;

    #@4d
    .line 103
    .local v2, "mipmapped":Landroid/filterfw/core/GLFrame;
    const/16 v5, 0x2801

    #@4f
    .line 104
    const/16 v6, 0x2701

    #@51
    .line 103
    invoke-virtual {v2, v5, v6}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    #@54
    .line 105
    invoke-virtual {v2, v0}, Landroid/filterfw/core/GLFrame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    #@57
    .line 106
    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    #@5a
    .line 107
    iget-object v5, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mProgram:Landroid/filterfw/core/Program;

    #@5c
    invoke-virtual {v5, v2, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@5f
    .line 108
    invoke-virtual {v2}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    #@62
    .line 114
    .end local v2    # "mipmapped":Landroid/filterfw/core/GLFrame;
    :goto_0
    const-string/jumbo v5, "image"

    #@65
    invoke-virtual {p0, v5, v3}, Landroid/filterpacks/imageproc/ResizeFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@68
    .line 117
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@6b
    .line 86
    return-void

    #@6c
    .line 110
    :cond_1
    iget-object v5, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mProgram:Landroid/filterfw/core/Program;

    #@6e
    invoke-virtual {v5, v0, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@71
    goto :goto_0
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    .line 59
    const-string/jumbo v0, "image"

    #@3
    const/4 v1, 0x3

    #@4
    invoke-static {v1}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ResizeFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 60
    const-string/jumbo v0, "image"

    #@e
    const-string/jumbo v1, "image"

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ResizeFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 58
    return-void
.end method
