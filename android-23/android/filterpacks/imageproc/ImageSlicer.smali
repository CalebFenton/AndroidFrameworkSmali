.class public Landroid/filterpacks/imageproc/ImageSlicer;
.super Landroid/filterfw/core/Filter;
.source "ImageSlicer.java"


# instance fields
.field private mInputHeight:I

.field private mInputWidth:I

.field private mOriginalFrame:Landroid/filterfw/core/Frame;

.field private mOutputHeight:I

.field private mOutputWidth:I

.field private mPadSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "padSize"
    .end annotation
.end field

.field private mProgram:Landroid/filterfw/core/Program;

.field private mSliceHeight:I

.field private mSliceIndex:I

.field private mSliceWidth:I

.field private mXSlices:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "xSlices"
    .end annotation
.end field

.field private mYSlices:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "ySlices"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 57
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 58
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    #@6
    .line 56
    return-void
.end method

.method private calcOutputFormatForInput(Landroid/filterfw/core/Frame;)V
    .locals 2
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    #@0
    .prologue
    .line 76
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@3
    move-result-object v0

    #@4
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@7
    move-result v0

    #@8
    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputWidth:I

    #@a
    .line 77
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@d
    move-result-object v0

    #@e
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@11
    move-result v0

    #@12
    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputHeight:I

    #@14
    .line 79
    iget v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputWidth:I

    #@16
    iget v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mXSlices:I

    #@18
    add-int/2addr v0, v1

    #@19
    add-int/lit8 v0, v0, -0x1

    #@1b
    iget v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mXSlices:I

    #@1d
    div-int/2addr v0, v1

    #@1e
    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceWidth:I

    #@20
    .line 80
    iget v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputHeight:I

    #@22
    iget v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mYSlices:I

    #@24
    add-int/2addr v0, v1

    #@25
    add-int/lit8 v0, v0, -0x1

    #@27
    iget v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mYSlices:I

    #@29
    div-int/2addr v0, v1

    #@2a
    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceHeight:I

    #@2c
    .line 82
    iget v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceWidth:I

    #@2e
    iget v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mPadSize:I

    #@30
    mul-int/lit8 v1, v1, 0x2

    #@32
    add-int/2addr v0, v1

    #@33
    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputWidth:I

    #@35
    .line 83
    iget v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceHeight:I

    #@37
    iget v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mPadSize:I

    #@39
    mul-int/lit8 v1, v1, 0x2

    #@3b
    add-int/2addr v0, v1

    #@3c
    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputHeight:I

    #@3e
    .line 73
    return-void
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 70
    return-object p2
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 12
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v11, 0x0

    #@1
    .line 91
    iget v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    #@3
    if-nez v7, :cond_0

    #@5
    .line 92
    const-string/jumbo v7, "image"

    #@8
    invoke-virtual {p0, v7}, Landroid/filterpacks/imageproc/ImageSlicer;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@b
    move-result-object v7

    #@c
    iput-object v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    #@e
    .line 93
    iget-object v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    #@10
    invoke-direct {p0, v7}, Landroid/filterpacks/imageproc/ImageSlicer;->calcOutputFormatForInput(Landroid/filterfw/core/Frame;)V

    #@13
    .line 96
    :cond_0
    iget-object v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    #@15
    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@18
    move-result-object v0

    #@19
    .line 97
    .local v0, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    #@1c
    move-result-object v2

    #@1d
    .line 98
    .local v2, "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    iget v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputWidth:I

    #@1f
    iget v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputHeight:I

    #@21
    invoke-virtual {v2, v7, v8}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    #@24
    .line 101
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@27
    move-result-object v7

    #@28
    invoke-virtual {v7, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@2b
    move-result-object v1

    #@2c
    .line 104
    .local v1, "output":Landroid/filterfw/core/Frame;
    iget-object v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mProgram:Landroid/filterfw/core/Program;

    #@2e
    if-nez v7, :cond_1

    #@30
    .line 105
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    #@33
    move-result-object v7

    #@34
    iput-object v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mProgram:Landroid/filterfw/core/Program;

    #@36
    .line 109
    :cond_1
    iget v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    #@38
    iget v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mXSlices:I

    #@3a
    rem-int v4, v7, v8

    #@3c
    .line 110
    .local v4, "xSliceIndex":I
    iget v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    #@3e
    iget v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mXSlices:I

    #@40
    div-int v6, v7, v8

    #@42
    .line 113
    .local v6, "ySliceIndex":I
    iget v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceWidth:I

    #@44
    mul-int/2addr v7, v4

    #@45
    iget v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mPadSize:I

    #@47
    sub-int/2addr v7, v8

    #@48
    int-to-float v7, v7

    #@49
    iget v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputWidth:I

    #@4b
    int-to-float v8, v8

    #@4c
    div-float v3, v7, v8

    #@4e
    .line 114
    .local v3, "x0":F
    iget v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceHeight:I

    #@50
    mul-int/2addr v7, v6

    #@51
    iget v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mPadSize:I

    #@53
    sub-int/2addr v7, v8

    #@54
    int-to-float v7, v7

    #@55
    iget v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputHeight:I

    #@57
    int-to-float v8, v8

    #@58
    div-float v5, v7, v8

    #@5a
    .line 116
    .local v5, "y0":F
    iget-object v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mProgram:Landroid/filterfw/core/Program;

    #@5c
    check-cast v7, Landroid/filterfw/core/ShaderProgram;

    #@5e
    .line 117
    iget v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputWidth:I

    #@60
    int-to-float v8, v8

    #@61
    iget v9, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputWidth:I

    #@63
    int-to-float v9, v9

    #@64
    div-float/2addr v8, v9

    #@65
    .line 118
    iget v9, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputHeight:I

    #@67
    int-to-float v9, v9

    #@68
    iget v10, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputHeight:I

    #@6a
    int-to-float v10, v10

    #@6b
    div-float/2addr v9, v10

    #@6c
    .line 116
    invoke-virtual {v7, v3, v5, v8, v9}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    #@6f
    .line 121
    iget-object v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mProgram:Landroid/filterfw/core/Program;

    #@71
    iget-object v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    #@73
    invoke-virtual {v7, v8, v1}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@76
    .line 122
    iget v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    #@78
    add-int/lit8 v7, v7, 0x1

    #@7a
    iput v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    #@7c
    .line 124
    iget v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    #@7e
    iget v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mXSlices:I

    #@80
    iget v9, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mYSlices:I

    #@82
    mul-int/2addr v8, v9

    #@83
    if-ne v7, v8, :cond_2

    #@85
    .line 125
    iput v11, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    #@87
    .line 126
    iget-object v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    #@89
    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@8c
    .line 127
    const-string/jumbo v7, "image"

    #@8f
    const/4 v8, 0x1

    #@90
    invoke-virtual {p0, v7, v8}, Landroid/filterpacks/imageproc/ImageSlicer;->setWaitsOnInputPort(Ljava/lang/String;Z)V

    #@93
    .line 135
    :goto_0
    const-string/jumbo v7, "image"

    #@96
    invoke-virtual {p0, v7, v1}, Landroid/filterpacks/imageproc/ImageSlicer;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@99
    .line 138
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@9c
    .line 88
    return-void

    #@9d
    .line 130
    :cond_2
    iget-object v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    #@9f
    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->retain()Landroid/filterfw/core/Frame;

    #@a2
    .line 131
    const-string/jumbo v7, "image"

    #@a5
    invoke-virtual {p0, v7, v11}, Landroid/filterpacks/imageproc/ImageSlicer;->setWaitsOnInputPort(Ljava/lang/String;Z)V

    #@a8
    goto :goto_0
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    .line 63
    const-string/jumbo v0, "image"

    #@4
    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ImageSlicer;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 65
    const-string/jumbo v0, "image"

    #@e
    const-string/jumbo v1, "image"

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ImageSlicer;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 62
    return-void
.end method
