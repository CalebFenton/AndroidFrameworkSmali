.class public Landroid/filterpacks/imageproc/ImageSlicer;
.super Landroid/filterfw/core/Filter;
.source "ImageSlicer.java"


# instance fields
.field private blacklist mInputHeight:I

.field private blacklist mInputWidth:I

.field private blacklist mOriginalFrame:Landroid/filterfw/core/Frame;

.field private blacklist mOutputHeight:I

.field private blacklist mOutputWidth:I

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

    .line 57
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 58
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    .line 59
    return-void
.end method

.method private blacklist calcOutputFormatForInput(Landroid/filterfw/core/Frame;)V
    .registers 4
    .param p1, "frame"    # Landroid/filterfw/core/Frame;

    .line 76
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputWidth:I

    .line 77
    invoke-virtual {p1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getHeight()I

    move-result v0

    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputHeight:I

    .line 79
    iget v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputWidth:I

    iget v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mXSlices:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mXSlices:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceWidth:I

    .line 80
    iget v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputHeight:I

    iget v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mYSlices:I

    add-int/2addr v0, v1

    add-int/lit8 v0, v0, -0x1

    iget v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mYSlices:I

    div-int/2addr v0, v1

    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceHeight:I

    .line 82
    iget v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceWidth:I

    iget v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mPadSize:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputWidth:I

    .line 83
    iget v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceHeight:I

    iget v1, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mPadSize:I

    mul-int/lit8 v1, v1, 0x2

    add-int/2addr v0, v1

    iput v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputHeight:I

    .line 84
    return-void
.end method


# virtual methods
.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 70
    return-object p2
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 14
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 91
    iget v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    const-string/jumbo v1, "image"

    if-nez v0, :cond_12

    .line 92
    invoke-virtual {p0, v1}, Landroid/filterpacks/imageproc/ImageSlicer;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    .line 93
    iget-object v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    invoke-direct {p0, v0}, Landroid/filterpacks/imageproc/ImageSlicer;->calcOutputFormatForInput(Landroid/filterfw/core/Frame;)V

    .line 96
    :cond_12
    iget-object v0, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    .line 97
    .local v0, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v2

    .line 98
    .local v2, "outputFormat":Landroid/filterfw/core/MutableFrameFormat;
    iget v3, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputWidth:I

    iget v4, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputHeight:I

    invoke-virtual {v2, v3, v4}, Landroid/filterfw/core/MutableFrameFormat;->setDimensions(II)V

    .line 101
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 104
    .local v3, "output":Landroid/filterfw/core/Frame;
    iget-object v4, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mProgram:Landroid/filterfw/core/Program;

    if-nez v4, :cond_35

    .line 105
    invoke-static {p1}, Landroid/filterfw/core/ShaderProgram;->createIdentity(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/ShaderProgram;

    move-result-object v4

    iput-object v4, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mProgram:Landroid/filterfw/core/Program;

    .line 109
    :cond_35
    iget v4, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    iget v5, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mXSlices:I

    rem-int/2addr v4, v5

    .line 110
    .local v4, "xSliceIndex":I
    iget v5, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    iget v6, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mXSlices:I

    div-int/2addr v5, v6

    .line 113
    .local v5, "ySliceIndex":I
    iget v6, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceWidth:I

    mul-int/2addr v6, v4

    iget v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mPadSize:I

    sub-int/2addr v6, v7

    int-to-float v6, v6

    iget v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputWidth:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    .line 114
    .local v6, "x0":F
    iget v7, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceHeight:I

    mul-int/2addr v7, v5

    iget v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mPadSize:I

    sub-int/2addr v7, v8

    int-to-float v7, v7

    iget v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputHeight:I

    int-to-float v8, v8

    div-float/2addr v7, v8

    .line 116
    .local v7, "y0":F
    iget-object v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mProgram:Landroid/filterfw/core/Program;

    check-cast v8, Landroid/filterfw/core/ShaderProgram;

    iget v9, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputWidth:I

    int-to-float v9, v9

    iget v10, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputWidth:I

    int-to-float v10, v10

    div-float/2addr v9, v10

    iget v10, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOutputHeight:I

    int-to-float v10, v10

    iget v11, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mInputHeight:I

    int-to-float v11, v11

    div-float/2addr v10, v11

    invoke-virtual {v8, v6, v7, v9, v10}, Landroid/filterfw/core/ShaderProgram;->setSourceRect(FFFF)V

    .line 121
    iget-object v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mProgram:Landroid/filterfw/core/Program;

    iget-object v9, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v8, v9, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 122
    iget v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    const/4 v9, 0x1

    add-int/2addr v8, v9

    iput v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    .line 124
    iget v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    iget v10, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mXSlices:I

    iget v11, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mYSlices:I

    mul-int/2addr v10, v11

    const/4 v11, 0x0

    if-ne v8, v10, :cond_8c

    .line 125
    iput v11, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mSliceIndex:I

    .line 126
    iget-object v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v8}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 127
    invoke-virtual {p0, v1, v9}, Landroid/filterpacks/imageproc/ImageSlicer;->setWaitsOnInputPort(Ljava/lang/String;Z)V

    goto :goto_94

    .line 130
    :cond_8c
    iget-object v8, p0, Landroid/filterpacks/imageproc/ImageSlicer;->mOriginalFrame:Landroid/filterfw/core/Frame;

    invoke-virtual {v8}, Landroid/filterfw/core/Frame;->retain()Landroid/filterfw/core/Frame;

    .line 131
    invoke-virtual {p0, v1, v11}, Landroid/filterpacks/imageproc/ImageSlicer;->setWaitsOnInputPort(Ljava/lang/String;Z)V

    .line 135
    :goto_94
    invoke-virtual {p0, v1, v3}, Landroid/filterpacks/imageproc/ImageSlicer;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 138
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 139
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 63
    const/4 v0, 0x3

    invoke-static {v0, v0}, Landroid/filterfw/format/ImageFormat;->create(II)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/ImageSlicer;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 65
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/ImageSlicer;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    return-void
.end method
