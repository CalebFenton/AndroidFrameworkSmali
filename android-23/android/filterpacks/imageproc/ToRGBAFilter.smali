.class public Landroid/filterpacks/imageproc/ToRGBAFilter;
.super Landroid/filterfw/core/Filter;
.source "ToRGBAFilter.java"


# instance fields
.field private mInputBPP:I

.field private mLastFormat:Landroid/filterfw/core/FrameFormat;

.field private mProgram:Landroid/filterfw/core/Program;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    #@0
    .prologue
    .line 39
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 36
    const/4 v0, 0x0

    #@4
    iput-object v0, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    #@6
    .line 38
    return-void
.end method


# virtual methods
.method public createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V
    .locals 3
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;
    .param p2, "format"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 64
    invoke-virtual {p2}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    #@3
    move-result v0

    #@4
    iput v0, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mInputBPP:I

    #@6
    .line 65
    iget-object v0, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    #@8
    if-eqz v0, :cond_0

    #@a
    iget-object v0, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    #@c
    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getBytesPerSample()I

    #@f
    move-result v0

    #@10
    iget v1, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mInputBPP:I

    #@12
    if-ne v0, v1, :cond_0

    #@14
    return-void

    #@15
    .line 66
    :cond_0
    iput-object p2, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mLastFormat:Landroid/filterfw/core/FrameFormat;

    #@17
    .line 67
    iget v0, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mInputBPP:I

    #@19
    packed-switch v0, :pswitch_data_0

    #@1c
    .line 75
    :pswitch_0
    new-instance v0, Ljava/lang/RuntimeException;

    #@1e
    new-instance v1, Ljava/lang/StringBuilder;

    #@20
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@23
    const-string/jumbo v2, "Unsupported BytesPerPixel: "

    #@26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@29
    move-result-object v1

    #@2a
    iget v2, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mInputBPP:I

    #@2c
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v1

    #@30
    const-string/jumbo v2, "!"

    #@33
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v1

    #@37
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v1

    #@3b
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v0

    #@3f
    .line 69
    :pswitch_1
    new-instance v0, Landroid/filterfw/core/NativeProgram;

    #@41
    const-string/jumbo v1, "filterpack_imageproc"

    #@44
    const-string/jumbo v2, "gray_to_rgba"

    #@47
    invoke-direct {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@4a
    iput-object v0, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mProgram:Landroid/filterfw/core/Program;

    #@4c
    .line 63
    :goto_0
    return-void

    #@4d
    .line 72
    :pswitch_2
    new-instance v0, Landroid/filterfw/core/NativeProgram;

    #@4f
    const-string/jumbo v1, "filterpack_imageproc"

    #@52
    const-string/jumbo v2, "rgb_to_rgba"

    #@55
    invoke-direct {v0, v1, v2}, Landroid/filterfw/core/NativeProgram;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    #@58
    iput-object v0, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mProgram:Landroid/filterfw/core/Program;

    #@5a
    goto :goto_0

    #@5b
    .line 67
    nop

    #@5c
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public getConvertedFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 3
    .param p1, "format"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 57
    invoke-virtual {p1}, Landroid/filterfw/core/FrameFormat;->mutableCopy()Landroid/filterfw/core/MutableFrameFormat;

    #@3
    move-result-object v0

    #@4
    .line 58
    .local v0, "result":Landroid/filterfw/core/MutableFrameFormat;
    const-string/jumbo v1, "colorspace"

    #@7
    const/4 v2, 0x3

    #@8
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    #@b
    move-result-object v2

    #@c
    invoke-virtual {v0, v1, v2}, Landroid/filterfw/core/MutableFrameFormat;->setMetaValue(Ljava/lang/String;Ljava/lang/Object;)V

    #@f
    .line 59
    const/4 v1, 0x4

    #@10
    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setBytesPerSample(I)V

    #@13
    .line 60
    return-object v0
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 1
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 53
    invoke-virtual {p0, p2}, Landroid/filterpacks/imageproc/ToRGBAFilter;->getConvertedFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    #@3
    move-result-object v0

    #@4
    return-object v0
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 4
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    .line 82
    const-string/jumbo v2, "image"

    #@3
    invoke-virtual {p0, v2}, Landroid/filterpacks/imageproc/ToRGBAFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@6
    move-result-object v0

    #@7
    .line 83
    .local v0, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@a
    move-result-object v2

    #@b
    invoke-virtual {p0, p1, v2}, Landroid/filterpacks/imageproc/ToRGBAFilter;->createProgram(Landroid/filterfw/core/FilterContext;Landroid/filterfw/core/FrameFormat;)V

    #@e
    .line 86
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@11
    move-result-object v2

    #@12
    invoke-virtual {v0}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@15
    move-result-object v3

    #@16
    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/ToRGBAFilter;->getConvertedFormat(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;

    #@19
    move-result-object v3

    #@1a
    invoke-virtual {v2, v3}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@1d
    move-result-object v1

    #@1e
    .line 89
    .local v1, "output":Landroid/filterfw/core/Frame;
    iget-object v2, p0, Landroid/filterpacks/imageproc/ToRGBAFilter;->mProgram:Landroid/filterfw/core/Program;

    #@20
    invoke-virtual {v2, v0, v1}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@23
    .line 92
    const-string/jumbo v2, "image"

    #@26
    invoke-virtual {p0, v2, v1}, Landroid/filterpacks/imageproc/ToRGBAFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@29
    .line 95
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@2c
    .line 80
    return-void
.end method

.method public setupPorts()V
    .locals 3

    #@0
    .prologue
    const/4 v1, 0x2

    #@1
    .line 44
    new-instance v0, Landroid/filterfw/core/MutableFrameFormat;

    #@3
    invoke-direct {v0, v1, v1}, Landroid/filterfw/core/MutableFrameFormat;-><init>(II)V

    #@6
    .line 46
    .local v0, "mask":Landroid/filterfw/core/MutableFrameFormat;
    invoke-virtual {v0, v1}, Landroid/filterfw/core/MutableFrameFormat;->setDimensionCount(I)V

    #@9
    .line 47
    const-string/jumbo v1, "image"

    #@c
    invoke-virtual {p0, v1, v0}, Landroid/filterpacks/imageproc/ToRGBAFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@f
    .line 48
    const-string/jumbo v1, "image"

    #@12
    const-string/jumbo v2, "image"

    #@15
    invoke-virtual {p0, v1, v2}, Landroid/filterpacks/imageproc/ToRGBAFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@18
    .line 43
    return-void
.end method
