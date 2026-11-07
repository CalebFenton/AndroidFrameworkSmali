.class public Landroid/filterpacks/imageproc/ImageStitcher;
.super Landroid/filterfw/core/Filter;
.source "ImageStitcher.java"


# instance fields
.field private blacklist mImageHeight:I

.field private blacklist mImageWidth:I

.field private blacklist mInputHeight:I

.field private blacklist mInputWidth:I

.field private blacklist mOutputFrame:Landroid/filterfw/core/Frame;

.field private blacklist mPadSize:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "padSize"
    .end annotation
.end field

.field private blacklist mProgram:Landroid/filterfw/core/Program;

.field private blacklist mSliceHeight:I

.field private blacklist mSliceIndex:I

.field private blacklist mSliceWidth:I

.field private blacklist mXSlices:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "xSlices"
    .end annotation
.end field

.field private blacklist mYSlices:I
    .annotation runtime Landroid/filterfw/core/GenerateFieldPort;
        name = "ySlices"
    .end annotation
.end field


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 55
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    .line 57
    return-void
.end method

.method private blacklist calcOutputFormatForInput(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 5
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;

    .line 72
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 74
    .local v0, "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v1

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    .line 75
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v1

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    .line 77
    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    .line 78
    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    mul-int/lit8 v2, v2, 0x2

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    .line 80
    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    mul-int/2addr v1, v2

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    .line 81
    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mYSlices:I

    mul-int/2addr v1, v2

    iput v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    .line 83
    iget v1, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    iget v2, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 84
    return-object v0
.end method


# virtual methods
.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 68
    return-object p2
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 16
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 90
    const-string/jumbo v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/ImageStitcher;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 91
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 94
    .local v2, "format":Landroid/filterfw/core/FrameFormat;
    iget v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    if-nez v3, :cond_1e

    .line 95
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-direct {p0, v2}, Landroid/filterpacks/imageproc/ImageStitcher;->calcOutputFormatForInput(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    iput-object v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    goto :goto_2e

    .line 97
    :cond_1e
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    if-ne v3, v4, :cond_ba

    .line 98
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v3

    iget v4, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    if-ne v3, v4, :cond_ba

    .line 105
    :goto_2e
    iget-object v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    if-nez v3, :cond_38

    .line 106
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v3

    iput-object v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    .line 110
    :cond_38
    iget v3, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    int-to-float v3, v3

    iget v4, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    int-to-float v4, v4

    div-float/2addr v3, v4

    .line 111
    .local v3, "x0":F
    iget v4, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mPadSize:I

    int-to-float v4, v4

    iget v5, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 113
    .local v4, "y0":F
    iget v5, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    iget v6, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    rem-int/2addr v5, v6

    iget v6, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    mul-int/2addr v5, v6

    .line 114
    .local v5, "outputOffsetX":I
    iget v6, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    iget v7, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    div-int/2addr v6, v7

    iget v7, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    mul-int/2addr v6, v7

    .line 116
    .local v6, "outputOffsetY":I
    iget v7, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceWidth:I

    iget v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    sub-int/2addr v8, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v7

    int-to-float v7, v7

    .line 117
    .local v7, "outputWidth":F
    iget v8, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceHeight:I

    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    sub-int/2addr v9, v6

    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v8

    int-to-float v8, v8

    .line 120
    .local v8, "outputHeight":F
    iget-object v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    check-cast v9, Landroid/filterfw/core/ShaderProgram;

    iget v10, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputWidth:I

    int-to-float v10, v10

    div-float v10, v7, v10

    iget v11, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mInputHeight:I

    int-to-float v11, v11

    div-float v11, v8, v11

    invoke-virtual {v9, v3, v4, v10, v11}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 124
    iget-object v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    check-cast v9, Landroid/filterfw/core/ShaderProgram;

    int-to-float v10, v5

    iget v11, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    int-to-float v11, v6

    iget v12, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    int-to-float v12, v12

    div-float/2addr v11, v12

    iget v12, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageWidth:I

    int-to-float v12, v12

    div-float v12, v7, v12

    iget v13, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mImageHeight:I

    int-to-float v13, v13

    div-float v13, v8, v13

    invoke-virtual {v9, v10, v11, v12, v13}, Landroid/filterfw/core/ShaderProgram;->setTargetRect(FFFF)V

    .line 130
    iget-object v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mProgram:Landroid/filterfw/core/Program;

    iget-object v10, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v9, v1, v10}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 131
    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    add-int/lit8 v9, v9, 0x1

    iput v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    .line 134
    iget v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    iget v10, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mXSlices:I

    iget v11, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mYSlices:I

    mul-int/2addr v10, v11

    if-ne v9, v10, :cond_b9

    .line 135
    iget-object v9, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {p0, v0, v9}, Landroid/filterpacks/imageproc/ImageStitcher;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 136
    iget-object v0, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mOutputFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 137
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/ImageStitcher;->mSliceIndex:I

    .line 139
    :cond_b9
    return-void

    .line 100
    .end local v3    # "x0":F
    .end local v4    # "y0":F
    .end local v5    # "outputOffsetX":I
    .end local v6    # "outputOffsetY":I
    .end local v7    # "outputWidth":F
    .end local v8    # "outputHeight":F
    :cond_ba
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v3, "Image size should not change."

    invoke-direct {v0, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 61
    const/4 v0, 0x3

    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/ImageStitcher;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 63
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/ImageStitcher;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method
