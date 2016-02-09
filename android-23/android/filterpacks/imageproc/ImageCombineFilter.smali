.class public abstract Landroid/filterpacks/imageproc/ImageCombineFilter;
.super Landroid/filterfw/core/Filter;
.source "ImageCombineFilter.java"


# instance fields
.field protected mCurrentTarget:I

.field protected mInputNames:[Ljava/lang/String;

.field protected mOutputName:Ljava/lang/String;

.field protected mParameterName:Ljava/lang/String;

.field protected mProgram:Landroid/filterfw/core/Program;


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "inputNames"    # [Ljava/lang/String;
    .param p3, "outputName"    # Ljava/lang/String;
    .param p4, "parameterName"    # Ljava/lang/String;

    #@0
    .prologue
    .line 44
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    #@3
    .line 38
    const/4 v0, 0x0

    #@4
    iput v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mCurrentTarget:I

    #@6
    .line 45
    iput-object p2, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mInputNames:[Ljava/lang/String;

    #@8
    .line 46
    iput-object p3, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mOutputName:Ljava/lang/String;

    #@a
    .line 47
    iput-object p4, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mParameterName:Ljava/lang/String;

    #@c
    .line 43
    return-void
.end method

.method private assertAllInputTargetsMatch()V
    .locals 6

    #@0
    .prologue
    const/4 v2, 0x0

    #@1
    .line 72
    iget-object v3, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mInputNames:[Ljava/lang/String;

    #@3
    aget-object v3, v3, v2

    #@5
    invoke-virtual {p0, v3}, Landroid/filterpacks/imageproc/ImageCombineFilter;->getInputFormat(Ljava/lang/String;)Landroid/filterfw/core/FrameFormat;

    #@8
    move-result-object v3

    #@9
    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@c
    move-result v1

    #@d
    .line 73
    .local v1, "target":I
    iget-object v3, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mInputNames:[Ljava/lang/String;

    #@f
    array-length v4, v3

    #@10
    :goto_0
    if-ge v2, v4, :cond_1

    #@12
    aget-object v0, v3, v2

    #@14
    .line 74
    .local v0, "inputName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/ImageCombineFilter;->getInputFormat(Ljava/lang/String;)Landroid/filterfw/core/FrameFormat;

    #@17
    move-result-object v5

    #@18
    invoke-virtual {v5}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@1b
    move-result v5

    #@1c
    if-eq v1, v5, :cond_0

    #@1e
    .line 75
    new-instance v2, Ljava/lang/RuntimeException;

    #@20
    new-instance v3, Ljava/lang/StringBuilder;

    #@22
    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    #@25
    const-string/jumbo v4, "Type mismatch of input formats in filter "

    #@28
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@2b
    move-result-object v3

    #@2c
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@2f
    move-result-object v3

    #@30
    .line 76
    const-string/jumbo v4, ". All input frames must have the same target!"

    #@33
    .line 75
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@36
    move-result-object v3

    #@37
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@3a
    move-result-object v3

    #@3b
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@3e
    throw v2

    #@3f
    .line 73
    :cond_0
    add-int/lit8 v2, v2, 0x1

    #@41
    goto :goto_0

    #@42
    .line 71
    .end local v0    # "inputName":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method protected abstract getNativeProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;
.end method

.method public getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .locals 0
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    #@0
    .prologue
    .line 68
    return-object p2
.end method

.method protected abstract getShaderProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;
.end method

.method public process(Landroid/filterfw/core/FilterContext;)V
    .locals 10
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v6, 0x0

    #@1
    .line 84
    const/4 v0, 0x0

    #@2
    .line 85
    .local v0, "i":I
    iget-object v5, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mInputNames:[Ljava/lang/String;

    #@4
    array-length v5, v5

    #@5
    new-array v3, v5, [Landroid/filterfw/core/Frame;

    #@7
    .line 86
    .local v3, "inputs":[Landroid/filterfw/core/Frame;
    iget-object v7, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mInputNames:[Ljava/lang/String;

    #@9
    array-length v8, v7

    #@a
    move v5, v6

    #@b
    move v1, v0

    #@c
    .end local v0    # "i":I
    .local v1, "i":I
    :goto_0
    if-ge v5, v8, :cond_0

    #@e
    aget-object v2, v7, v5

    #@10
    .line 87
    .local v2, "inputName":Ljava/lang/String;
    add-int/lit8 v0, v1, 0x1

    #@12
    .end local v1    # "i":I
    .restart local v0    # "i":I
    invoke-virtual {p0, v2}, Landroid/filterpacks/imageproc/ImageCombineFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    #@15
    move-result-object v9

    #@16
    aput-object v9, v3, v1

    #@18
    .line 86
    add-int/lit8 v5, v5, 0x1

    #@1a
    move v1, v0

    #@1b
    .end local v0    # "i":I
    .restart local v1    # "i":I
    goto :goto_0

    #@1c
    .line 91
    .end local v2    # "inputName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    #@1f
    move-result-object v5

    #@20
    aget-object v7, v3, v6

    #@22
    invoke-virtual {v7}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@25
    move-result-object v7

    #@26
    invoke-virtual {v5, v7}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    #@29
    move-result-object v4

    #@2a
    .line 94
    .local v4, "output":Landroid/filterfw/core/Frame;
    aget-object v5, v3, v6

    #@2c
    invoke-virtual {v5}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    #@2f
    move-result-object v5

    #@30
    invoke-virtual {v5}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    #@33
    move-result v5

    #@34
    invoke-virtual {p0, v5, p1}, Landroid/filterpacks/imageproc/ImageCombineFilter;->updateProgramWithTarget(ILandroid/filterfw/core/FilterContext;)V

    #@37
    .line 97
    iget-object v5, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mProgram:Landroid/filterfw/core/Program;

    #@39
    invoke-virtual {v5, v3, v4}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    #@3c
    .line 100
    iget-object v5, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mOutputName:Ljava/lang/String;

    #@3e
    invoke-virtual {p0, v5, v4}, Landroid/filterpacks/imageproc/ImageCombineFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    #@41
    .line 103
    invoke-virtual {v4}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    #@44
    .line 82
    return-void
.end method

.method public setupPorts()V
    .locals 9

    #@0
    .prologue
    const/4 v8, 0x0

    #@1
    .line 52
    iget-object v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mParameterName:Ljava/lang/String;

    #@3
    if-eqz v0, :cond_0

    #@5
    .line 54
    :try_start_0
    const-class v0, Landroid/filterpacks/imageproc/ImageCombineFilter;

    #@7
    const-string/jumbo v1, "mProgram"

    #@a
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    #@d
    move-result-object v3

    #@e
    .line 55
    .local v3, "programField":Ljava/lang/reflect/Field;
    iget-object v1, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mParameterName:Ljava/lang/String;

    #@10
    iget-object v2, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mParameterName:Ljava/lang/String;

    #@12
    sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    #@14
    const/4 v5, 0x0

    #@15
    move-object v0, p0

    #@16
    invoke-virtual/range {v0 .. v5}, Landroid/filterpacks/imageproc/ImageCombineFilter;->addProgramPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Class;Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    #@19
    .line 60
    .end local v3    # "programField":Ljava/lang/reflect/Field;
    :cond_0
    iget-object v1, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mInputNames:[Ljava/lang/String;

    #@1b
    array-length v2, v1

    #@1c
    move v0, v8

    #@1d
    :goto_0
    if-ge v0, v2, :cond_1

    #@1f
    aget-object v7, v1, v0

    #@21
    .line 61
    .local v7, "inputName":Ljava/lang/String;
    const/4 v4, 0x3

    #@22
    invoke-static {v4}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    #@25
    move-result-object v4

    #@26
    invoke-virtual {p0, v7, v4}, Landroid/filterpacks/imageproc/ImageCombineFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    #@29
    .line 60
    add-int/lit8 v0, v0, 0x1

    #@2b
    goto :goto_0

    #@2c
    .line 56
    .end local v7    # "inputName":Ljava/lang/String;
    :catch_0
    move-exception v6

    #@2d
    .line 57
    .local v6, "e":Ljava/lang/NoSuchFieldException;
    new-instance v0, Ljava/lang/RuntimeException;

    #@2f
    const-string/jumbo v1, "Internal Error: mProgram field not found!"

    #@32
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@35
    throw v0

    #@36
    .line 63
    .end local v6    # "e":Ljava/lang/NoSuchFieldException;
    :cond_1
    iget-object v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mOutputName:Ljava/lang/String;

    #@38
    iget-object v1, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mInputNames:[Ljava/lang/String;

    #@3a
    aget-object v1, v1, v8

    #@3c
    invoke-virtual {p0, v0, v1}, Landroid/filterpacks/imageproc/ImageCombineFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    #@3f
    .line 51
    return-void
.end method

.method protected updateProgramWithTarget(ILandroid/filterfw/core/FilterContext;)V
    .locals 3
    .param p1, "target"    # I
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    #@0
    .prologue
    const/4 v1, 0x0

    #@1
    .line 107
    iget v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mCurrentTarget:I

    #@3
    if-eq p1, v0, :cond_1

    #@5
    .line 108
    packed-switch p1, :pswitch_data_0

    #@8
    .line 118
    iput-object v1, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mProgram:Landroid/filterfw/core/Program;

    #@a
    .line 121
    :goto_0
    iget-object v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mProgram:Landroid/filterfw/core/Program;

    #@c
    if-nez v0, :cond_0

    #@e
    .line 122
    new-instance v0, Ljava/lang/RuntimeException;

    #@10
    new-instance v1, Ljava/lang/StringBuilder;

    #@12
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    #@15
    const-string/jumbo v2, "Could not create a program for image filter "

    #@18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@1b
    move-result-object v1

    #@1c
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    #@1f
    move-result-object v1

    #@20
    .line 123
    const-string/jumbo v2, "!"

    #@23
    .line 122
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    #@26
    move-result-object v1

    #@27
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    #@2a
    move-result-object v1

    #@2b
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    #@2e
    throw v0

    #@2f
    .line 110
    :pswitch_0
    invoke-virtual {p0, p2}, Landroid/filterpacks/imageproc/ImageCombineFilter;->getNativeProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;

    #@32
    move-result-object v0

    #@33
    iput-object v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mProgram:Landroid/filterfw/core/Program;

    #@35
    goto :goto_0

    #@36
    .line 114
    :pswitch_1
    invoke-virtual {p0, p2}, Landroid/filterpacks/imageproc/ImageCombineFilter;->getShaderProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;

    #@39
    move-result-object v0

    #@3a
    iput-object v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mProgram:Landroid/filterfw/core/Program;

    #@3c
    goto :goto_0

    #@3d
    .line 125
    :cond_0
    iget-object v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mProgram:Landroid/filterfw/core/Program;

    #@3f
    invoke-virtual {p0, v0, p2}, Landroid/filterpacks/imageproc/ImageCombineFilter;->initProgramInputs(Landroid/filterfw/core/Program;Landroid/filterfw/core/FilterContext;)V

    #@42
    .line 126
    iput p1, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mCurrentTarget:I

    #@44
    .line 106
    :cond_1
    return-void

    #@45
    .line 108
    nop

    #@46
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
