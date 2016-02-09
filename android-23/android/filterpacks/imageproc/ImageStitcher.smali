.class public Landroid/filterpacks/imageproc/ImageStitcher;
.super Landroid/filterfw/core/Filter;
.source "ImageStitcher.java"


# instance fields
.field private mImageHeight:I

.field private mImageWidth:I

.field private mInputHeight:I

.field private mInputWidth:I

.field private mOutputFrame:Landroid/filterfw/core/Frame;

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
    .line 55
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 56
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    #@6
    .line 54
    return-void
.end method

.method private calcOutputFormatForInput(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 3
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 72
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    #@3
    move-result-object v0

    #@4
    .line 74
    .local v0, "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@7
    move-result v1

    #@8
    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    #@a
    .line 75
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@d
    move-result v1

    #@e
    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    #@10
    .line 77
    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    #@12
    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    #@14
    mul-int/lit8 v2, v2, 0x2

    #@16
    sub-int/2addr v1, v2

    #@17
    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    #@19
    .line 78
    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    #@1b
    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    #@1d
    mul-int/lit8 v2, v2, 0x2

    #@1f
    sub-int/2addr v1, v2

    #@20
    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    #@22
    .line 80
    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    #@24
    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    #@26
    mul-int/2addr v1, v2

    #@27
    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    #@29
    .line 81
    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    #@2b
    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mYSlices:I

    #@2d
    mul-int/2addr v1, v2

    #@2e
    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    #@30
    .line 83
    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    #@32
    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    #@34
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    #@37
    .line 84
    return-object v0
.end method


# virtual methods
.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 68
    return-object p2
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 14
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v13, 0x0

    #@1
    .line 90
    const-string/jumbo v8, "image"

    #@4
    invoke-virtual {p0, v8}, Landroid/filterpacks/imageproc/ImageStitcher;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@7
    move-result-object v1

    #@8
    .line 91
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@b
    move-result-object v0

    #@c
    .line 94
    .local v0, "format":Landroid/filterfw/core/FrameFormat;
    iget v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    #@e
    if-nez v8, :cond_3

    #@10
    .line 95
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@13
    move-result-object v8

    #@14
    invoke-direct {p0, v0}, Landroid/filterpacks/imageproc/ImageStitcher;->calcOutputFormatForInput(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    #@17
    move-result-object v9

    #@18
    invoke-virtual {v8, v9}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@1b
    move-result-object v8

    #@1c
    iput-object v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    #@1e
    .line 105
    :cond_0
    iget-object v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    #@20
    if-nez v8, :cond_1

    #@22
    .line 106
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    #@25
    move-result-object v8

    #@26
    iput-object v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    #@28
    .line 110
    :cond_1
    iget v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    #@2a
    int-to-float v8, v8

    #@2b
    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    #@2d
    int-to-float v9, v9

    #@2e
    div-float v6, v8, v9

    #@30
    .line 111
    .local v6, "x0":F
    iget v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    #@32
    int-to-float v8, v8

    #@33
    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    #@35
    int-to-float v9, v9

    #@36
    div-float v7, v8, v9

    #@38
    .line 113
    .local v7, "y0":F
    iget v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    #@3a
    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    #@3c
    rem-int/2addr v8, v9

    #@3d
    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    #@3f
    mul-int v3, v8, v9

    #@41
    .line 114
    .local v3, "outputOffsetX":I
    iget v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    #@43
    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    #@45
    div-int/2addr v8, v9

    #@46
    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    #@48
    mul-int v4, v8, v9

    #@4a
    .line 116
    .local v4, "outputOffsetY":I
    iget v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    #@4c
    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    #@4e
    sub-int/2addr v9, v3

    #@4f
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    #@52
    move-result v8

    #@53
    int-to-float v5, v8

    #@54
    .line 117
    .local v5, "outputWidth":F
    iget v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    #@56
    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    #@58
    sub-int/2addr v9, v4

    #@59
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    #@5c
    move-result v8

    #@5d
    int-to-float v2, v8

    #@5e
    .line 120
    .local v2, "outputHeight":F
    iget-object v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    #@60
    check-cast v8, Landroid/filterfw/core/ShaderProgram;

    #@62
    .line 121
    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    #@64
    int-to-float v9, v9

    #@65
    div-float v9, v5, v9

    #@67
    .line 122
    iget v10, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    #@69
    int-to-float v10, v10

    #@6a
    div-float v10, v2, v10

    #@6c
    .line 120
    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    #@6f
    .line 124
    iget-object v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    #@71
    check-cast v8, Landroid/filterfw/core/ShaderProgram;

    #@73
    int-to-float v9, v3

    #@74
    iget v10, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    #@76
    int-to-float v10, v10

    #@77
    div-float/2addr v9, v10

    #@78
    .line 125
    int-to-float v10, v4

    #@79
    iget v11, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    #@7b
    int-to-float v11, v11

    #@7c
    div-float/2addr v10, v11

    #@7d
    .line 126
    iget v11, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    #@7f
    int-to-float v11, v11

    #@80
    div-float v11, v5, v11

    #@82
    .line 127
    iget v12, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    #@84
    int-to-float v12, v12

    #@85
    div-float v12, v2, v12

    #@87
    .line 124
    invoke-virtual {v8, v9, v10, v11, v12}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    #@8a
    .line 130
    iget-object v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    #@8c
    iget-object v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    #@8e
    invoke-virtual {v8, v1, v9}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@91
    .line 131
    iget v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    #@93
    add-int/lit8 v8, v8, 0x1

    #@95
    iput v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    #@97
    .line 134
    iget v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    #@99
    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    #@9b
    iget v10, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mYSlices:I

    #@9d
    mul-int/2addr v9, v10

    #@9e
    if-ne v8, v9, :cond_2

    #@a0
    .line 135
    const-string/jumbo v8, "image"

    #@a3
    iget-object v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    #@a5
    invoke-virtual {p0, v8, v9}, Landroid/filterpacks/imageproc/ImageStitcher;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@a8
    .line 136
    iget-object v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    #@aa
    invoke-virtual {v8}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@ad
    .line 137
    iput v13, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    #@af
    .line 88
    :cond_2
    return-void

    #@b0
    .line 97
    .end local v2    # "outputHeight":F
    .end local v3    # "outputOffsetX":I
    .end local v4    # "outputOffsetY":I
    .end local v5    # "outputWidth":F
    .end local v6    # "x0":F
    .end local v7    # "y0":F
    :cond_3
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    #@b3
    move-result v8

    #@b4
    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    #@b6
    if-ne v8, v9, :cond_4

    #@b8
    .line 98
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    #@bb
    move-result v8

    #@bc
    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    #@be
    if-eq v8, v9, :cond_0

    #@c0
    .line 100
    :cond_4
    new-instance v8, Ljava/lang/RuntimeException;

    #@c2
    const-string/jumbo v9, "Image size should not change."

    #@c5
    invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@c8
    throw v8
.end method

.method public setupPorts()V
    .locals 2

    #@0
    .prologue
    const/4 v1, 0x3

    #@1
    .line 61
    const-string/jumbo v0, "image"

    #@4
    invoke-static {v1, v1}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    #@7
    move-result-object v1

    #@8
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ImageStitcher;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@b
    .line 63
    const-string/jumbo v0, "image"

    #@e
    const-string/jumbo v1, "image"

    #@11
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ImageStitcher;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@14
    .line 60
    return-void
.end method
