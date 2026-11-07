.class public abstract Landroid/filterpacks/imageproc/SimpleImageFilter;
.super Landroid/filterfw/core/Filter;
.source "SimpleImageFilter.java"


# instance fields
.field protected blacklist mCurrentTarget:I

.field protected blacklist mParameterName:Ljava/lang/String;

.field protected blacklist mProgram:Landroid/filterfw/core/Program;


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "parameterName"    # Ljava/lang/String;

    .line 39
    invoke-direct {p0, p1}, Landroid/filterfw/core/Filter;-><init>(Ljava/lang/String;)V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mCurrentTarget:I

    .line 40
    iput-object p2, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mParameterName:Ljava/lang/String;

    .line 41
    return-void
.end method


# virtual methods
.method protected abstract blacklist getNativeProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;
.end method

.method public blacklist getOutputFormat(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/FrameFormat;
    .registers 3
    .param p1, "portName"    # Ljava/lang/String;
    .param p2, "inputFormat"    # Landroid/filterfw/core/FrameFormat;

    .line 59
    return-object p2
.end method

.method protected abstract blacklist getShaderProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;
.end method

.method public blacklist process(Landroid/filterfw/core/FilterContext;)V
    .registers 7
    .param p1, "context"    # Landroid/filterfw/core/FilterContext;

    .line 65
    const-string/jumbo v0, "image"

    invoke-virtual {p0, v0}, Landroid/filterpacks/imageproc/SimpleImageFilter;->pullInput(Ljava/lang/String;)Landroid/filterfw/core/Frame;

    move-result-object v1

    .line 66
    .local v1, "input":Landroid/filterfw/core/Frame;
    invoke-virtual {v1}, Landroid/filterfw/core/Frame;->getFormat()Landroid/filterfw/core/FrameFormat;

    move-result-object v2

    .line 69
    .local v2, "inputFormat":Landroid/filterfw/core/FrameFormat;
    invoke-virtual {p1}, Landroid/filterfw/core/FilterContext;->getFrameManager()Landroid/filterfw/core/FrameManager;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/filterfw/core/FrameManager;->newFrame(Landroid/filterfw/core/FrameFormat;)Landroid/filterfw/core/Frame;

    move-result-object v3

    .line 72
    .local v3, "output":Landroid/filterfw/core/Frame;
    invoke-virtual {v2}, Landroid/filterfw/core/FrameFormat;->getTarget()I

    move-result v4

    invoke-virtual {p0, v4, p1}, Landroid/filterpacks/imageproc/SimpleImageFilter;->updateProgramWithTarget(ILandroid/filterfw/core/FilterContext;)V

    .line 75
    iget-object v4, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {v4, v1, v3}, Landroid/filterfw/core/Program;->process(Landroid/filterfw/core/Frame;Landroid/filterfw/core/Frame;)V

    .line 78
    invoke-virtual {p0, v0, v3}, Landroid/filterpacks/imageproc/SimpleImageFilter;->pushOutput(Ljava/lang/String;Landroid/filterfw/core/Frame;)V

    .line 81
    invoke-virtual {v3}, Landroid/filterfw/core/Frame;->release()Landroid/filterfw/core/Frame;

    .line 82
    return-void
.end method

.method public blacklist setupPorts()V
    .registers 8

    .line 45
    iget-object v0, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mParameterName:Ljava/lang/String;

    if-eqz v0, :cond_26

    .line 47
    :try_start_4
    const-class v0, Landroid/filterpacks/imageproc/SimpleImageFilter;

    const-string/jumbo v1, "mProgram"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    move-object v4, v0

    .line 48
    .local v4, "programField":Ljava/lang/reflect/Field;
    iget-object v2, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mParameterName:Ljava/lang/String;

    iget-object v3, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mParameterName:Ljava/lang/String;

    sget-object v5, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
    :try_end_14
    .catch Ljava/lang/NoSuchFieldException; {:try_start_4 .. :try_end_14} :catch_1c

    const/4 v6, 0x0

    move-object v1, p0

    :try_start_16
    invoke-virtual/range {v1 .. v6}, Landroid/filterpacks/imageproc/SimpleImageFilter;->addProgramPort(Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/Class;Z)V
    :try_end_19
    .catch Ljava/lang/NoSuchFieldException; {:try_start_16 .. :try_end_19} :catch_1a

    .line 51
    .end local v4    # "programField":Ljava/lang/reflect/Field;
    goto :goto_27

    .line 49
    :catch_1a
    move-exception v0

    goto :goto_1e

    :catch_1c
    move-exception v0

    move-object v1, p0

    .line 50
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    :goto_1e
    new-instance v2, Ljava/lang/RuntimeException;

    const-string v3, "Internal Error: mProgram field not found!"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 45
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :cond_26
    move-object v1, p0

    .line 53
    :goto_27
    const/4 v0, 0x3

    invoke-static {v0}, Landroid/filterfw/format/ImageFormat;->create(I)Landroid/filterfw/core/MutableFrameFormat;

    move-result-object v0

    const-string/jumbo v2, "image"

    invoke-virtual {p0, v2, v0}, Landroid/filterpacks/imageproc/SimpleImageFilter;->addMaskedInputPort(Ljava/lang/String;Landroid/filterfw/core/FrameFormat;)V

    .line 54
    invoke-virtual {p0, v2, v2}, Landroid/filterpacks/imageproc/SimpleImageFilter;->addOutputBasedOnInput(Ljava/lang/String;Ljava/lang/String;)V

    .line 55
    return-void
.end method

.method protected blacklist updateProgramWithTarget(ILandroid/filterfw/core/FilterContext;)V
    .registers 6
    .param p1, "target"    # I
    .param p2, "context"    # Landroid/filterfw/core/FilterContext;

    .line 85
    iget v0, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mCurrentTarget:I

    if-eq p1, v0, :cond_44

    .line 86
    packed-switch p1, :pswitch_data_46

    .line 96
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mProgram:Landroid/filterfw/core/Program;

    goto :goto_19

    .line 92
    :pswitch_b
    invoke-virtual {p0, p2}, Landroid/filterpacks/imageproc/SimpleImageFilter;->getShaderProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 93
    goto :goto_19

    .line 88
    :pswitch_12
    invoke-virtual {p0, p2}, Landroid/filterpacks/imageproc/SimpleImageFilter;->getNativeProgram(Landroid/filterfw/core/FilterContext;)Landroid/filterfw/core/Program;

    move-result-object v0

    iput-object v0, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mProgram:Landroid/filterfw/core/Program;

    .line 89
    nop

    .line 99
    :goto_19
    iget-object v0, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mProgram:Landroid/filterfw/core/Program;

    if-eqz v0, :cond_25

    .line 102
    iget-object v0, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mProgram:Landroid/filterfw/core/Program;

    invoke-virtual {p0, v0, p2}, Landroid/filterpacks/imageproc/SimpleImageFilter;->initProgramInputs(Landroid/filterfw/core/Program;Landroid/filterfw/core/FilterContext;)V

    .line 103
    iput p1, p0, Landroid/filterpacks/imageproc/SimpleImageFilter;->mCurrentTarget:I

    goto :goto_44

    .line 100
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

    .line 105
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
