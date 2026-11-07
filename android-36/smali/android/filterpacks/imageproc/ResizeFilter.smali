.class public Landroid/filterpacks/imageproc/ResizeFilter;
.super Landroid/filterfw/core/Filter;
.source "ResizeFilter.java"


# instance fields
.field private blacklist mGenerateMipMap:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "generateMipMap"
    .end annotation
.end field

.field private blacklist mInputChannels:I

.field private blacklist mKeepAspectRatio:Z
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        hasDefault = true
        name = "keepAspectRatio"
    .end annotation
.end field

.field private blacklist mLastFormat:Landroid/filterfw/core/FrameFormat;

.field private blacklist mOHeight:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "oheight"
    .end annotation
.end field

.field private blacklist mOWidth:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "owidth"
    .end annotation
.end field

.field private blacklist mOutputFormat:Landroid/filterfw/core/MutableFrameFormat;

.field private blacklist mProgram:Landroid/filterfw/core/Program;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 54
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 42
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mKeepAspectRatio:Z

    .line 44
    iput-boolean v0, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mGenerateMipMap:Z

    .line 48
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    .line 55
    return-void
.end method


# virtual methods
.method protected blacklist createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V
    .registers 5
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "format"    # Landroid/filterfw/core/FrameFormat;

    .line 69
    iget-object v0, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    if-eqz v0, :cond_11

    iget-object v0, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v0

    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v1

    if-ne v0, v1, :cond_11

    return-void

    .line 70
    :cond_11
    iput-object p2, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    .line 71
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v0

    packed-switch v0, :pswitch_data_32

    .line 82
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ResizeFilter could not create suitable program!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :pswitch_22
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v0

    .line 78
    .local v0, "prog":Landroid/filterfw/core/ShaderProgram;
    iput-object v0, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 79
    nop

    .line 84
    .end local v0    # "prog":Landroid/filterfw/core/ShaderProgram;
    return-void

    .line 73
    :pswitch_2a
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Native ResizeFilter not implemented yet!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_32
    .packed-switch 0x2
        :pswitch_2a
        :pswitch_22
    .end packed-switch
.end method

.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 65
    return-object p2
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 9
    .param p1, "env"    # Landroid/filterfw/core/FilterContext;

    .line 88
    const-string/jumbo v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/ResizeFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 89
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/filterpacks/imageproc/ResizeFilter;->createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V

    .line 92
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v2

    .line 93
    .local v2, "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    iget-boolean v3, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mKeepAspectRatio:Z

    if-eqz v3, :cond_2c

    .line 94
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    .line 95
    .local v3, "inputFormat":Landroid/filterfw/core/FrameFormat;
    iget v4, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mOWidth:I

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v5

    mul-int/2addr v4, v5

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v5

    div-int/2addr v4, v5

    iput v4, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mOHeight:I

    .line 97
    .end local v3    # "inputFormat":Landroid/filterfw/core/FrameFormat;
    :cond_2c
    iget v3, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mOWidth:I

    iget v4, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mOHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 98
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 101
    .local v3, "output":Landroid/filterfw/core/Frame;
    iget-boolean v4, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mGenerateMipMap:Z

    if-eqz v4, :cond_63

    .line 102
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v4

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v4

    check-cast v4, Landroid/filterfw/core/GLFrame;

    .line 103
    .local v4, "mipmapped":Landroid/filterfw/core/GLFrame;
    const/16 v5, 0x2801

    const/16 v6, 0x2701

    invoke-virtual {v4, v5, v6}, Landroid/filterfw/core/GLFrame;->setTextureParameter(II)V

    .line 105
    invoke-virtual {v4, v1}, Landroid/filterfw/core/GLFrame;->setDataFromFrame(Landroid/filterfw/core/Frame;)V

    .line 106
    invoke-virtual {v4}, Landroid/filterfw/core/GLFrame;->generateMipMap()V

    .line 107
    iget-object v5, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v5, v4, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 108
    invoke-virtual {v4}, Landroid/filterfw/core/GLFrame;->release()Landroid/filterfw/core/Frame;

    .line 109
    .end local v4    # "mipmapped":Landroid/filterfw/core/GLFrame;
    goto :goto_68

    .line 110
    :cond_63
    iget-object v4, p0, Landroid/filterpacks/imageproc/ResizeFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v4, v1, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 114
    :goto_68
    invoke-virtual {p0, v0, v3}, Landroid/filterpacks/imageproc/ResizeFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 117
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 118
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 59
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/ResizeFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 60
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/ResizeFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    return-void
.end method
