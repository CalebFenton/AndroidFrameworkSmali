.class public abstract Landroid/filterpacks/imageproc/ImageCombineFilter;
.super Landroid/filterfw/core/Filter;
.source "ImageCombineFilter.java"


# instance fields
.field protected blacklist mCurrentTarget:I

.field protected blacklist mInputNames:[Ljava/lang/String;

.field protected blacklist mOutputName:Ljava/lang/String;

.field protected blacklist mParameterName:Ljava/lang/String;

.field protected blacklist mProgram:Landroid/filterfw/core/Program;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "inputNames"    # [Ljava/lang/String;
    .param p3, "outputName"    # Ljava/lang/String;
    .param p4, "parameterName"    # Ljava/lang/String;

    .line 44
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 38
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mCurrentTarget:I

    .line 45
    iput-object p2, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mInputNames:[Ljava/lang/String;

    .line 46
    iput-object p3, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mOutputName:Ljava/lang/String;

    .line 47
    iput-object p4, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mParameterName:Ljava/lang/String;

    .line 48
    return-void
.end method

.method private blacklist assertAllInputTargetsMatch()V
    .registers 7

    .line 72
    iget-object v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mInputNames:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/ImageCombineFilter;->getInputFormat(Ljava/lang/String;)Landroid/filterfw/core/FrameFormat;

    move-result-object v0

    invoke-virtual {v0}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v0

    .line 73
    .local v0, "target":I
    iget-object v2, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mInputNames:[Ljava/lang/String;

    array-length v3, v2

    :goto_10
    if-ge v1, v3, :cond_40

    aget-object v4, v2, v1

    .line 74
    .local v4, "inputName":Ljava/lang/String;
    invoke-virtual {p0, v4}, Landroid/filterpacks/imageproc/ImageCombineFilter;->getInputFormat(Ljava/lang/String;)Landroid/filterfw/core/FrameFormat;

    move-result-object v5

    invoke-virtual {v5}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v5

    if-ne v0, v5, :cond_21

    .line 73
    .end local v4    # "inputName":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_10

    .line 75
    .restart local v4    # "inputName":Ljava/lang/String;
    :cond_21
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Type mismatch of input formats in filter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ". All input frames must have the same target!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 79
    .end local v4    # "inputName":Ljava/lang/String;
    :cond_40
    return-void
.end method


# virtual methods
.method protected abstract blacklist getNativeProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;
.end method

.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 68
    return-object p2
.end method

.method protected abstract blacklist getShaderProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 11
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 84
    const/4 v0, 0x0

    .line 85
    .local v0, "i":I
    iget-object v1, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mInputNames:[Ljava/lang/String;

    array-length v1, v1

    new-array v1, v1, [Landroid/filterfw/core/Frame;

    .line 86
    .local v1, "inputs":[Landroid/filterfw/core/Frame;
    iget-object v2, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mInputNames:[Ljava/lang/String;

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_b
    if-ge v5, v3, :cond_1b

    aget-object v6, v2, v5

    .line 87
    .local v6, "inputName":Ljava/lang/String;
    add-int/lit8 v7, v0, 0x1

    .end local v0    # "i":I
    .local v7, "i":I
    invoke-virtual {p0, v6}, Landroid/filterpacks/imageproc/ImageCombineFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v8

    aput-object v8, v1, v0

    .line 86
    .end local v6    # "inputName":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    move v0, v7

    goto :goto_b

    .line 91
    .end local v7    # "i":I
    .restart local v0    # "i":I
    :cond_1b
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v2

    aget-object v3, v1, v4

    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v2

    .line 94
    .local v2, "output":Landroid/filterfw/core/Frame;
    aget-object v3, v1, v4

    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v3

    invoke-virtual {v3}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v3

    invoke-virtual {p0, v3, p1}, Landroid/filterpacks/imageproc/ImageCombineFilter;->updateProgramWithTarget(ILandroid/filterfw/core/FilterContext;)V

    .line 97
    iget-object v3, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v3, v1, v2}, Landroid/filterfw/core/Program;->process([Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 100
    iget-object v3, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mOutputName:Ljava/lang/String;

    invoke-virtual {p0, v3, v2}, Landroid/filterpacks/imageproc/ImageCombineFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 103
    invoke-virtual {v2}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 104
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 8

    .line 52
    iget-object v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mParameterName:Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 54
    :try_start_4
    const-class v0, Landroid/filterpacks/imageproc/ImageCombineFilter;

    const-string/jumbo v1, "mProgram"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    move-object v4, v0

    .line 55
    .local v4, "programField":Ljava/lang/reflect/Field;
    iget-object v2, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mParameterName:Ljava/lang/String;

    iget-object v3, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mParameterName:Ljava/lang/String;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_14} :catch_1c

    const/4 v6, 0x0

    move-object v1, p0

    :try_start_16
    invoke-virtual/range {v1 .. v6}, Landroid/filterpacks/imageproc/ImageCombineFilter;->addProgramPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Class;Z)V
    :try_end_19
    .catch Ljava/lang/NoSuchFieldException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 58
    .end local v4    # "programField":Ljava/lang/reflect/Field;
    goto :goto_27

    .line 56
    :catch_1a
    move-exception v0

    goto :goto_1e

    :catch_1c
    move-exception v0

    move-object v1, p0

    .line 57
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    :goto_1e
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Internal Error: mProgram field not found!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 52
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :cond_26
    move-object v1, p0

    .line 60
    :goto_27
    iget-object v0, v1, Landroid/filterpacks/imageproc/ImageCombineFilter;->mInputNames:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_2c
    if-ge v4, v2, :cond_3b

    aget-object v5, v0, v4

    .line 61
    .local v5, "inputName":Ljava/lang/String;
    const/4 v6, 0x3

    invoke-static {v6}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v6

    invoke-virtual {p0, v5, v6}, Landroid/filterpacks/imageproc/ImageCombineFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 60
    .end local v5    # "inputName":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_2c

    .line 63
    :cond_3b
    iget-object v0, v1, Landroid/filterpacks/imageproc/ImageCombineFilter;->mOutputName:Ljava/lang/String;

    iget-object v2, v1, Landroid/filterpacks/imageproc/ImageCombineFilter;->mInputNames:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {p0, v0, v2}, Landroid/filterpacks/imageproc/ImageCombineFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    return-void
.end method

.method protected blacklist updateProgramWithTarget(ILandroid/filterfw/core/FilterContext;)V
    .registers 6
    .param p1, "target"    # I
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 107
    iget v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mCurrentTarget:I

    if-eq p1, v0, :cond_44

    .line 108
    packed-switch p1, :pswitch_data_46

    .line 118
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mProgram:Landroid/filterfw/core/Program;

    goto :goto_19

    .line 114
    :pswitch_b
    invoke-virtual {p0, p2}, Landroid/filterpacks/imageproc/ImageCombineFilter;->getShaderProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 115
    goto :goto_19

    .line 110
    :pswitch_12
    invoke-virtual {p0, p2}, Landroid/filterpacks/imageproc/ImageCombineFilter;->getNativeProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 111
    nop

    .line 121
    :goto_19
    iget-object v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_25

    .line 125
    iget-object v0, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {p0, v0, p2}, Landroid/filterpacks/imageproc/ImageCombineFilter;->initProgramInputs(Landroid/filterfw/core/Program;Landroid/filterfw/core/FilterContext;)V

    .line 126
    iput p1, p0, Landroid/filterpacks/imageproc/ImageCombineFilter;->mCurrentTarget:I

    goto :goto_44

    .line 122
    :cond_25
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not create a program for image filter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_44
    :goto_44
    return-void

    nop

    :pswitch_data_46
    .packed-switch 0x2
        :pswitch_12
        :pswitch_b
    .end packed-switch
.end method
