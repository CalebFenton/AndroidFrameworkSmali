.class public Landroid/filterpacks/imageproc/ToRGBFilter;
.super Landroid/filterfw/core/Filter;
.source "ToRGBFilter.java"


# instance fields
.field private blacklist mInputBPP:I

.field private blacklist mLastFormat:Landroid/filterfw/core/FrameFormat;

.field private blacklist mProgram:Landroid/filterfw/core/Program;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "name"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 36
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    .line 40
    return-void
.end method


# virtual methods
.method public blacklist createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V
    .registers 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "format"    # Landroid/filterfw/core/FrameFormat;

    .line 64
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v0

    iput v0, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mInputBPP:I

    .line 65
    iget-object v0, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    if-eqz v0, :cond_15

    iget-object v0, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    move-result v0

    iget v1, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mInputBPP:I

    if-ne v0, v1, :cond_15

    return-void

    .line 66
    :cond_15
    iput-object p2, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    .line 67
    iget v0, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mInputBPP:I

    const-string v1, "filterpack_imageproc"

    sparse-switch v0, :sswitch_data_56

    .line 75
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unsupported BytesPerPixel: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mInputBPP:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :sswitch_3f
    new-instance v0, Landroid/filterfw/core/NativeProgram;

    const-string/jumbo v2, "rgba_to_rgb"

    invoke-direct {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 73
    goto :goto_55

    .line 69
    :sswitch_4a
    new-instance v0, Landroid/filterfw/core/NativeProgram;

    const-string/jumbo v2, "gray_to_rgb"

    invoke-direct {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 70
    nop

    .line 77
    :goto_55
    return-void

    :sswitch_data_56
    .sparse-switch
        0x1 -> :sswitch_4a
        0x4 -> :sswitch_3f
    .end sparse-switch
.end method

.method public blacklist getConvertedFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 5
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;

    .line 57
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    .line 58
    .local v0, "result":Landroid/filterfw/core/MutableFrameFormat;
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "colorspace"

    invoke-virtual {v0, v2, v1}, Landroid/filterfw/core/MutableFrameFormat;->setMetaValue(Ljava/lang/String;Ljava/lang/Object;)V

    .line 59
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    .line 60
    return-object v0
.end method

.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 4
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 53
    invoke-virtual {p0, p2}, Landroid/filterpacks/imageproc/ToRGBFilter;->getConvertedFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    return-object v0
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 6
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 82
    const-string/jumbo v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/ToRGBFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 83
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Landroid/filterpacks/imageproc/ToRGBFilter;->createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V

    .line 86
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/ToRGBFilter;->getConvertedFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 89
    .local v2, "output":Landroid/filterfw/core/Frame;
    iget-object v3, p0, Landroid/filterpacks/imageproc/ToRGBFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v1, v2}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 92
    invoke-virtual {p0, v0, v2}, Landroid/filterpacks/imageproc/ToRGBFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 95
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 96
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 3

    .line 44
    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    const/4 v1, 0x2

    invoke-direct {v0, v1, v1}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    .line 46
    .local v0, "mask":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensionCount(I)V

    .line 47
    const-string/jumbo v1, "image"

    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/ToRGBFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 48
    invoke-virtual {p0, v1, v1}, Landroid/filterpacks/imageproc/ToRGBFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    return-void
.end method
